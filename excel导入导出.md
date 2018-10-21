#Java中excel的导入导出
## 1.excel的导出
> ***注意不要直接复制使用***  
> 我是直接在controller中使用，下面controller代码中，ColumnInfoEntity类只是用来存放导出excel标题的工具类而已，可以自己随便写一个，为了代码的简洁，就写导出三个字段了，ExcelUtil.exportExcelFile就是自定义的导出类和方法了，“汇总申请表”是导出的表名，headList表示标题的list,第三个参数就是导出的数据，最后一个就是response响应信息
> 
	@RequestMapping(value = "/exportSummaryApplication", method = RequestMethod.GET)
    public void exportSummaryApplication(HttpServletResponse response) throws IOException{
		List<MaterielFormQuery> list = materielFormMapper.findAllByQuery();
		List<ColumnInfoEntity> headList = new ArrayList<ColumnInfoEntity>();
		headList.add(new ColumnInfoEntity("测试字段1", "pointRegionCode"));
		headList.add(new ColumnInfoEntity("测试字段2", "pointRegionName"));
		headList.add(new ColumnInfoEntity("测试字段3", "cityLevel"));
		ExcelUtil.exportExcelFile("汇总申请表", headList, JSONArray.parseArray(JSON.toJSONString(list)), response);
	}

----------
> 先po出工具类的头吧
>
	import java.io.BufferedInputStream;
	import java.io.BufferedOutputStream;
	import java.io.ByteArrayInputStream;
	import java.io.ByteArrayOutputStream;
	import java.io.IOException;
	import java.io.InputStream;
	import java.io.OutputStream;
	import java.math.BigDecimal;
	import java.net.URLEncoder;
	import java.text.DecimalFormat;
	import java.text.SimpleDateFormat;
	import java.util.ArrayList;
	import java.util.Calendar;
	import java.util.Date;
	import java.util.HashMap;
	import java.util.List;
	import java.util.Map;
	import javax.servlet.ServletOutputStream;
	import javax.servlet.http.HttpServletResponse;
	import org.apache.commons.lang.StringUtils;
	import org.apache.poi.hssf.usermodel.HSSFCell;
	import org.apache.poi.hssf.usermodel.HSSFCellStyle;
	import org.apache.poi.hssf.usermodel.HSSFDateUtil;
	import org.apache.poi.hssf.usermodel.HSSFFont;
	import org.apache.poi.hssf.usermodel.HSSFRow;
	import org.apache.poi.hssf.usermodel.HSSFSheet;
	import org.apache.poi.hssf.usermodel.HSSFWorkbook;
	import org.apache.poi.hssf.util.HSSFColor;
	import org.apache.poi.ss.usermodel.Cell;
	import org.apache.poi.ss.usermodel.CellStyle;
	import org.apache.poi.ss.usermodel.DataFormat;
	import org.apache.poi.ss.usermodel.DateUtil;
	import org.apache.poi.ss.usermodel.Font;
	import org.apache.poi.ss.usermodel.IndexedColors;
	import org.apache.poi.xssf.streaming.SXSSFCell;
	import org.apache.poi.xssf.streaming.SXSSFRow;
	import org.apache.poi.xssf.streaming.SXSSFSheet;
	import org.apache.poi.xssf.streaming.SXSSFWorkbook;
	import org.apache.poi.xssf.usermodel.XSSFCell;
	import org.apache.poi.xssf.usermodel.XSSFRow;
	import org.apache.poi.xssf.usermodel.XSSFSheet;
	import org.apache.poi.xssf.usermodel.XSSFWorkbook;
	import org.springframework.web.multipart.MultipartFile;
	import com.alibaba.fastjson.JSONArray;
	import com.alibaba.fastjson.JSONObject;
	import com.sf.materielmanage.constant.MaterielManageConstant;
	public class ExcelUtil {
	    public static final String OFFICE_EXCEL_2003_POSTFIX = "xls";  
	    public static final String OFFICE_EXCEL_2010_POSTFIX = "xlsx";  
	    public static final String EMPTY = "";  
	    public static final String POINT = "."; 
	    public static int totalRows; //sheet中总行数  
	    public static int totalCells; //每一行总单元格数  
	    public static int totalHCells; //标题单元格数 
	    public static String DEFAULT_DATE_PATTERN="yyyy年MM月dd日";//默认日期格式
	    public static int DEFAULT_COLOUMN_WIDTH = 25;
	    public static SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd"); 
	}	
> ExcelUtil工具类的exportExcelFile的方法，调用了exportExcelXNoTitle方法，其中ExcelUtil工具类中的方法基本都可以复制套用的。
> 
    public static void exportExcelFile(String title, List<ColumnInfoEntity> headList, JSONArray dataArray, HttpServletResponse response) throws IOException{
    	ByteArrayOutputStream output = new ByteArrayOutputStream();	
    	exportExcelXNoTitle(headList,dataArray,null,0,output);
    	byte[] content = output.toByteArray();
        InputStream input = new ByteArrayInputStream(content);
    	response.reset();
    	response.setContentType("application/octet-stream");
    	title = URLEncoder.encode(title, "UTF-8");
        response.setHeader("Content-Disposition", "attachment;filename="+title+".xlsx");  
        response.setContentLength(content.length);
        ServletOutputStream outputStream = response.getOutputStream();
        BufferedInputStream bis = new BufferedInputStream(input);
        BufferedOutputStream bos = new BufferedOutputStream(outputStream);
        byte[] buff = new byte[8192];
        int bytesRead;
        while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
            bos.write(buff, 0, bytesRead);
        }
        bis.close();
        bos.close();
        outputStream.flush();
        outputStream.close();
    }
> exportExcelXNoTitle方法的代码
>
    private static void exportExcelXNoTitle(List<ColumnInfoEntity> headList,JSONArray jsonArray,String datePattern,int colWidth, OutputStream out) {
        if(datePattern==null) {
            datePattern = DEFAULT_DATE_PATTERN;
        }
        // 声明一个工作薄 缓存大于1000行时会把之前的行写入硬盘
        SXSSFWorkbook workbook = new SXSSFWorkbook(1000);
        workbook.setCompressTempFiles(true);
        //表头样式
        CellStyle titleStyle = workbook.createCellStyle();
        titleStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        Font titleFont = workbook.createFont();
        titleFont.setFontHeightInPoints((short) 20);
        titleFont.setBoldweight((short) 700);
        titleStyle.setFont(titleFont);
        titleStyle.setFillBackgroundColor(IndexedColors.YELLOW.getIndex());
        //titleStyle.setFillBackgroundColor(IndexedColors.WHITE.getIndex());
        titleStyle.setFillBackgroundColor(HSSFColor.RED.index);
        // 列头样式
        CellStyle headerStyle = workbook.createCellStyle();
        // 设置边框
        headerStyle.setBorderTop((short) 1);
        headerStyle.setBorderRight((short) 1);
        headerStyle.setBorderBottom((short) 1);
        headerStyle.setBorderLeft((short) 1);
        // 水平居中
        headerStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        // 生成一个字体
        Font headerFont = workbook.createFont();
        headerFont.setFontHeightInPoints((short) 12);
        headerFont.setColor(IndexedColors.BLACK.getIndex());
        headerFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);
        headerStyle.setFont(headerFont);
        // 单元格样式
        CellStyle cellStyle = workbook.createCellStyle();
        cellStyle.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
        cellStyle.setBorderBottom(HSSFCellStyle.BORDER_THIN);
        cellStyle.setBorderLeft(HSSFCellStyle.BORDER_THIN);
        cellStyle.setBorderRight(HSSFCellStyle.BORDER_THIN);
        cellStyle.setBorderTop(HSSFCellStyle.BORDER_THIN);
        cellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);
        // 垂直居中
        cellStyle.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
        // 生成一个字体
        Font cellFont = workbook.createFont();
        cellFont.setBoldweight(HSSFFont.BOLDWEIGHT_NORMAL);
        cellStyle.setFont(cellFont);
        cellStyle.setFillForegroundColor(IndexedColors.WHITE.getIndex());
        DataFormat format = workbook.createDataFormat();
        cellStyle.setDataFormat(format.getFormat("@"));
        // 生成一个(带标题)表格
        SXSSFSheet sheet = (SXSSFSheet) workbook.createSheet();
        //设置列宽 //至少字节数
        int minBytes = colWidth<DEFAULT_COLOUMN_WIDTH?DEFAULT_COLOUMN_WIDTH:colWidth;
        int[] arrColWidth = new int[headList.size()];
        // 产生表格标题行,以及设置列宽
        String[] properties = new String[headList.size()];
        String[] headers = new String[headList.size()];
        int ii = 0;
        for(ColumnInfoEntity columnInfo:headList){
            properties[ii] = columnInfo.getColumn();
            headers[ii] = columnInfo.getColumnName();
            int bytes = columnInfo.getColumn().getBytes().length;
            arrColWidth[ii] =  bytes < minBytes ? minBytes : bytes;
            sheet.setColumnWidth(ii,arrColWidth[ii]*256);
            ii++;
        }
        // 写导出表格标题
        int rowIndex = 0;
        if(rowIndex == 0){
            //如果数据超过了，则在第二页显示
            if ( rowIndex != 0 ) {
                sheet = (SXSSFSheet) workbook.createSheet();
            }
            //列头 rowIndex =0
            SXSSFRow headerRow = (SXSSFRow) sheet.createRow(0);
            for(int i=0;i<headers.length;i++)
            {
                headerRow.createCell(i).setCellValue(headers[i]);
                headerRow.getCell(i).setCellStyle(headerStyle);
            }
            //数据内容从 rowIndex=1开始
            rowIndex = 1;
        }
        // 遍历集合数据，产生数据行
        for (Object obj : jsonArray) {
            if(rowIndex == 65535){
                //如果数据超过了，则在第二页显示
                if ( rowIndex != 0 ) {
                    sheet = (SXSSFSheet) workbook.createSheet();
                }
                //列头 rowIndex =0
                SXSSFRow headerRow = (SXSSFRow) sheet.createRow(0);
                for(int i=0;i<headers.length;i++)
                {
                    headerRow.createCell(i).setCellValue(headers[i]);
                    headerRow.getCell(i).setCellStyle(headerStyle);
                }
                //数据内容从 rowIndex=1开始
                rowIndex = 1;
            }
            JSONObject jo = (JSONObject) JSONObject.toJSON(obj);
            SXSSFRow dataRow = (SXSSFRow) sheet.createRow(rowIndex);
            for (int i = 0; i < properties.length; i++)
            {
                SXSSFCell newCell = (SXSSFCell) dataRow.createCell(i);
                Object o =  jo.get(properties[i]);
                String cellValue = "";
                if(o==null) {
                    cellValue = "";
                }
                else if(o instanceof Date) {
                    cellValue = sdf.format(o);
                }
                else if(o instanceof Float || o instanceof Double || o instanceof BigDecimal) {
                    cellValue= new BigDecimal(o.toString()).setScale(5,BigDecimal.ROUND_HALF_UP).toString();
                }
                else {
                    cellValue = o.toString();
                }
                newCell.setCellValue(cellValue);
                newCell.setCellStyle(cellStyle);
            }
            rowIndex++;
        }
        try {
            workbook.write(out);
            workbook.dispose();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

## 2.excel的导入
> excel的导入也是利用自定义的ExcelUtil工具类中的方法，同样直接在controller层使用代码,同样请勿直接复制使用，因为下列代码中有多个自定义的类，下列代码只是作为导入工具类入口的引用，multpartFile为接收到的上传excel文件，ExcelUtil.readExcel为导入的工具类和方法
>
	@RequestMapping(value = "/uploadMaterielApply", method = RequestMethod.POST)
	@ResponseBody
	public ResultData uploadMaterielApply(MultipartFile multpartFile){
		if(multpartFile == null){
			logger.error("导入失败,导入文件为NULL");
			return new ResultData(false,"导入文件为NULL");	
		}
		MaterielApply apply = new MaterielApply();
		List<Map<String, Object>> list = null;
		List<MaterielApply> appList = new ArrayList<MaterielApply>();
		Map<String,Object> head = new HashMap<String,Object>();
		head.put("物料编码", "itemCode");
		head.put("申请数量", "applyQtyStr");
		head.put("其他说明", "remark");
		try {
			list = ExcelUtil.readExcel(multpartFile, head);
			for(Map<String, Object> map : list){
				MaterielApply materielApply = JSON.parseObject(JSON.toJSONString(map),MaterielApply.class);
				appList.add(materielApply);	
			}
			apply.setMaterielApplyList(appList);
			apply = materielApplyService.getUploadApplyMateriel(apply);
			return new ResultData(apply);
		} catch (IOException e) {
			return new ResultData(false,"导入失败");
		} catch (MaterielManageException e) {
			logger.error("导入失败{}"+e.getMsg());
			return new ResultData(false,e.getMsg());
		}
	}

----------
> readExcel方法代码如下，其中ExcelUtil工具类中的方法基本都可以复制套用的。
>
	public static List<Map<String, Object>> readExcel(MultipartFile file,Map<String,Object> head) throws IOException{
		// 判断file是否为空
		if(file == null || EMPTY.equals(file.getOriginalFilename().trim())){
			return null;
		}else{
			String postfix = getPostfix(file.getOriginalFilename());
			if(!EMPTY.equals(postfix)){
				if(OFFICE_EXCEL_2003_POSTFIX.equals(postfix)){
					//后缀名为xls
					return readXls(file,head);
				}else if(OFFICE_EXCEL_2010_POSTFIX.equals(postfix)){
					//后缀名为xlsx
					return readXlsx(file,head);	
				}else{
					return null;
				}
			}
		}
		return null;
	}

> 贴出后缀为xlsx的excel的导入方法
>
	public static List<Map<String, Object>> readXlsx(MultipartFile file,Map<String,Object> head) throws IOException{
		List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();  
		// IO流读取文件  
        InputStream input = null;  
        XSSFWorkbook wb = null; 
        try {
			input = file.getInputStream();
			long size = input.available();
			if(size > 10485760){
				return list;
			}
			// 创建文档
			wb = new XSSFWorkbook(input);
			// 读取sheet页
			int sheetNum = wb.getNumberOfSheets();
			if(sheetNum < MaterielManageConstant.LOOP_2000){
				for(int numSheet = 0;numSheet < sheetNum;numSheet++){
					XSSFSheet xssfSheet = wb.getSheetAt(numSheet);  
					if(xssfSheet == null){continue;}
					totalRows = xssfSheet.getLastRowNum(); 
					//获取excel上的标题
					XSSFRow headerRow = xssfSheet.getRow(0);
					if(headerRow == null){continue;}
					//标题的单元格数
					totalHCells = headerRow.getLastCellNum();
					Map<String,Object> mapHeader = new HashMap<String,Object>();
					if(totalHCells < MaterielManageConstant.LOOP_10000){
						for(int i = 0;i < totalHCells;i++){
							String headStr = headerRow.getCell(i).getStringCellValue().trim();
							if(StringUtils.isNotEmpty(headStr)){mapHeader.put(String.valueOf(i), head.get(headStr));}
						}	
					}
					//读取数据，从第二行开始
					if(totalRows < MaterielManageConstant.LOOP_100000){
						for(int j = 1;j <= totalRows;j++){
							XSSFRow xssfRow = xssfSheet.getRow(j);
							if(xssfRow != null){
								totalCells = xssfRow.getLastCellNum();
								//读取列，从第一列开始
		                        Map <String,Object> data = new HashMap<String,Object>();
		                        if(totalCells < MaterielManageConstant.LOOP_10000){
		                        	for(int m = 0;m < totalCells;m++){
			                        	XSSFCell cell = xssfRow.getCell(m); 
			                        	if(cell == null){continue;}
			                            data.put((String) mapHeader.get(String.valueOf(m)), getXValue(cell).trim());
			                        }	
		                        }
		                        list.add(data);
							}
						}	
					}
				}	
			}
			return list;
		} catch (IOException e) {
			e.printStackTrace();
		} finally{
			input.close();
		}
		return null;
	}

> 其实后缀为xls的excel方法和上面的方法差不多，只是把上面方法中的XSSFWorkbook换为了HSSFWorkbook，两者的区别可以去网上收索，
> 基本的方法就大概说了一下，有深入的理解会再补充