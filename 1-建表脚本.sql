
DROP TABLE IF EXISTS `m_fnd_user`;
CREATE TABLE `m_fnd_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名称',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `region_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大区',
  `job_number` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工号',
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户基础表' ROW_FORMAT = Compact;


DROP TABLE IF EXISTS `m_fnd_role`;
CREATE TABLE `m_fnd_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编码',
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础角色表' ROW_FORMAT = Compact;


DROP TABLE IF EXISTS `m_fnd_permission`;
CREATE TABLE `m_fnd_permission`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `permission_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限代码',
  `permission_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限描述',
  `resources` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限路径',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础权限表' ROW_FORMAT = Compact;

DROP TABLE IF EXISTS `b_user_role_relation`;
CREATE TABLE `b_user_role_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关系表' ROW_FORMAT = Compact;


DROP TABLE IF EXISTS `b_role_perm_relation`;
CREATE TABLE `b_role_perm_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NOT NULL,
  `perm_id` bigint(20) NOT NULL,
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色权限关系表' ROW_FORMAT = Compact;

DROP TABLE IF EXISTS `m_fnd_flex_set`;
CREATE TABLE `m_fnd_flex_set`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flex_set_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `flex_set_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典值的头表,也称作字典表' ROW_FORMAT = Compact;

DROP TABLE IF EXISTS `m_fnd_flex_value`;
CREATE TABLE `m_fnd_flex_value`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `flex_set_id` bigint(20) NOT NULL,
  `flex_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flex_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `flex_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attribute1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段1',
  `attribute2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备用字段2',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '具体的字典值，也就是每个字典flex_code下对应的具体的字典值。' ROW_FORMAT = Compact;

DROP TABLE IF EXISTS `m_fnd_vendor`;
CREATE TABLE `m_fnd_vendor`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vendor_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商家编码',
  `vendor_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家名称',
  `access_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接入编码',
  `region_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大区',
  `vendor_connect_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家接口人',
  `vendor_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家联系电话',
  `vendor_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商家寄件联系地址',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商家基础表' ROW_FORMAT = Compact;

DROP TABLE IF EXISTS `order_form_info`;
CREATE TABLE `order_form_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cust_order_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户订单号',
  `sf_order_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顺丰订单号',
  `order_source` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单来源',
  `recipients_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收方联系人',
  `recipients_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收方地址',
  `recipients_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收方联系电话',
  `mail_things` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '托寄物内容',
  `mail_type` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '业务类型',
  `payment_method` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式',
  `sender_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '寄件人姓名',
  `sender_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '寄件人地址',
  `sender_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '寄件人联系方式',
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订货单信息表' ROW_FORMAT = Compact;


DROP TABLE IF EXISTS `point_region_info`;
CREATE TABLE `point_region_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `point_region_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网点代码',
  `point_region_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网点名称',
  `region_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '大区',
  `longitude` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经度',
  `latitude` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `province` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `county` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区\\县',
  `point_region_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网点部详细地址',
  `point_connect_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '点部接口人',
  `point_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网点基础表' ROW_FORMAT = Compact;

DROP TABLE IF EXISTS `point_order_form_info`;
CREATE TABLE `point_order_form_info`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cust_order_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户订单号',
  `sf_order_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顺丰订单号',
  `sub_order_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子单号',
  `ret_order_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签回单号',
  `point_region_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网点代码',
  `recipients_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收方联系人',
  `recipients_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收方地址',
  `recipients_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收方联系电话',
  `mail_things` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '托寄物内容',
  `mail_type` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务类型',
  `payment_method` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式',
  `sender_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '寄件人姓名',
  `sender_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '寄件人地址',
  `sender_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '寄件人联系方式',
  `insure_amount` decimal(16, 8) NULL DEFAULT NULL COMMENT '保价金额',
  `replace_receive_amount` decimal(16, 8) NULL DEFAULT NULL COMMENT '保价金额',
  `package_qty` decimal(16, 8) NULL DEFAULT NULL COMMENT '包裹数量',
  `package_weight` decimal(16, 8) NULL DEFAULT NULL COMMENT '包裹重量（/kg）',
  `ret_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否签回单',
  `order_json` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '最后更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '最后更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网点导入的订单信息表' ROW_FORMAT = Compact;


DROP TABLE IF EXISTS `m_fnd_customer`;
CREATE TABLE `m_fnd_customer`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cust_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '月结卡号',
  `client_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'BSP接口编码',
  `check_word` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'BSP校验码',
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '顾客名称',
  `point_region_code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网点代码',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `enable_flag` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'Y' COMMENT '是否有效标志',
  `s_cid` bigint(20) NULL DEFAULT NULL COMMENT '创建人id',
  `s_ct` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `s_uid` bigint(20) NULL DEFAULT NULL COMMENT '更新人',
  `s_ut` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '月结卡号信息表' ROW_FORMAT = Compact;

