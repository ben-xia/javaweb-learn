CREATE TABLE `top_trans_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ord_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易订单流水号',
  `region_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分区号',
  `product_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '产品号',
  `req_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求日期',
  `req_seq_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '请求流水号',
  `hf_seq_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '汇付全局流水号',
  `mer_ord_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商户订单号',
  `trans_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易日期',
  `route_region_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收银台分区号',
  `cash_req_date` char(14) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收银台请求日期',
  `real_cust_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主账真实用户号',
  `real_acct_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主账真实账户号',
  `fee_real_cust_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手续费真实用户号',
  `fee_acct_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '手续费账户号',
  `goods_desc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商品描述',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易备注',
  `ord_amt` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `fee_amt` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '手续费金额',
  `settle_amt` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '应结金额',
  `unconfirm_amt` decimal(16,2) DEFAULT '0.00' COMMENT '未确认金额',
  `ref_amt` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '可退金额',
  `ref_fee_amt` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '可退手续费金额',
  `ref_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '已退笔数',
  `pay_channel` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支付渠道',
  `pay_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '付款方式',
  `pay_scene` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支付场景/费率类型',
  `pay_channel_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '渠道号',
  `is_delay_acct` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否延迟入账',
  `fee_source` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '''SERVER''' COMMENT '手续费金额来源',
  `fee_formula` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手续费公式',
  `fee_rec_type` int(11) NOT NULL DEFAULT '1' COMMENT '手续费扣取方式,1:实收,2:后收',
  `fee_flag` int(11) NOT NULL DEFAULT '2' COMMENT '手续费收费方式,1:外扣,2:内扣',
  `is_acct_div` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否分账，0未分账，1分账',
  `trans_stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'I' COMMENT '交易状态',
  `trans_finish_time` timestamp NULL DEFAULT NULL COMMENT '交易完成时间',
  `channel_stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'I' COMMENT '通道状态',
  `channel_finish_time` timestamp NULL DEFAULT NULL COMMENT '通道完成时间',
  `channel_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通道返回码',
  `channel_message` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通道返回消息',
  `acct_stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'I' COMMENT '账务状态',
  `acct_finish_time` timestamp NULL DEFAULT NULL COMMENT '账务完成时间',
  `acct_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账务返回码',
  `acct_message` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账务返回消息',
  `time_expire` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '到期时间',
  `bank_mer_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信/支付宝/银联入驻接口返回商户号',
  `gate_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '网关号/通道路由',
  `route_mer_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路由商户号',
  `route_terminal_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路由终端号',
  `area_info` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '路由地域信息',
  `trans_notify_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易通知地址',
  `check_cash_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'I' COMMENT '收银台对账标识',
  `check_cash_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收银台对账日期',
  `cash_trans_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收银台生成订单号',
  `cash_resp_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收银台返回码',
  `cash_resp_desc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收银台返回描述',
  `acct_trans_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账务系统流水号',
  `acct_trans_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '账务系统入账日期',
  `out_trans_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '外部订单流水号',
  `party_order_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通道流水号/第三方订单号',
  `channel_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通道类型',
  `bank_resp_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通道/银行返回码',
  `bank_resp_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通道/银行返回描述',
  `promotion_detail` json DEFAULT NULL COMMENT '优惠信息',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `modifier` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改者',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建时间',
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单修改时间',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本号',
  `acct_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '主账账户号',
  `fee_real_acct_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手续费真实账户号',
  `acct_fee_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手续费账户日期',
  `term_div_coupon_type` int(11) NOT NULL DEFAULT '3' COMMENT '遇优惠分账处理方式，1:按比例分,2:按顺序保障,3:仅扣交易商户（默认）',
  `is_acct_div_param` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否传入分账参数，0未传参，1已传参',
  `bank_mer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '微信/支付宝/银联入驻接口返回商户名称',
  `fee_split_type` char(8) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '延迟入账手续费承担方式',
  `close_trans_stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '关单状态',
  `source_region_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '来源分区号',
  `huifu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主账客户号',
  `fee_huifu_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手续费客户号',
  `unconfirm_fee_amt` decimal(16,2) DEFAULT '0.00' COMMENT '未承担手续费金额',
  `settle_trans_stat` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '结算状态',
  `sys_trace_audit_num` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '终端带入',
  `out_ord_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '外部订单号（商户传入）',
  `acc_split_bunch` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '原分账json串',
  `mer_info` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '小票打印',
  `pa_product_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'pa产品号',
  `pa_mer_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'pa商户号',
  `pa_trans_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'pa流水号',
  `pay_card_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '付款银行卡号，加密机加密密文',
  `pay_card_id_enc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行卡密文',
  `batch_id` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'posp回填该信息，批次号',
  `auth_no` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'posp回填该信息，授权号',
  `ref_num` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'posp回填该信息，参考号',
  `posp_seq_id` varchar(32) DEFAULT NULL COMMENT 'posp回填该信息，POSP交易凭证号',
  `card_bank_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银联标准的发卡银行号，posp回填',
  `acqr_inst_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'posp回填该信息，收单机构行',
  `oper_type` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '021-刷卡输pin022-刷卡不输pin051-ic卡插卡输pin052-ic卡插卡不输pin071-ic卡挥卡输pin072-ic卡挥卡不输pin072 双免',
  `cloud_pay` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'hce-----hce,ap----apple pay,sp-----samsung pay,hp----huawei pay,mp-----mi pay',
  `par` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'par',
  `double_exempt` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '双免标志，0/1 第一位：免签 第二位：免密',
  `bank_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行名称',
  `org_ord_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '原订单号',
  `bank_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行代号',
  `bank_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行日期',
  `double_limit_amt` decimal(16,2) DEFAULT '0.00' COMMENT '小额双免额度',
  `debit_fee_formula` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银联借记卡费率公式',
  `bank_seq_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银行流水号',
  `div_info` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '分账指令串',
  `dev_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '设备类型,1:智能终端;2:蓝牙终端,3:pos终端,4:扫码终端',
  `bank_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '收单银行',
  `fee_member_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '手续费外扣商户号',
  `chk_time` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '对账时间',
  `real_pay_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实际支付类型',
  `term_batch_id` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '终端批次号',
  `sys_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '系统id',
  `correct_stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '冲正状态:n-未冲正;x-已冲正',
  `dc_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'd -借记卡c -贷记卡s -准贷记卡p -预付费卡 o-其他卡',
  `devs_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机具id',
  `mer_oper_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务系统操作员号',
  `pos_mer_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '汇付在清算行开设的商户号和终端号，posp回填该信息',
  `pos_mer_name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '特约商户名，和pos_mer_id对应，posp回填该信息',
  `pos_term_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'posp回填该信息',
  `trans_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '1000-消费1010-预授权1020-预授权完成',
  `auth_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '预授权标志:1-是；0-否',
  `org_auth_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '交易类型为预授权完成时必填',
  `real_gate_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '实际网关号',
  `bagent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属渠道商',
  `agent_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所属代理',
  `pnr_dev_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'posp唯一识别pos机的逻辑编号',
  `mer_priv` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户的私有数据项',
  `mer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户名称',
  `shop_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '商户自定义简称(小票名称)',
  `bank_term_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '银联商户termId',
  `lc` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '基站信息',
  `debit_fee_amt` decimal(14,2) DEFAULT '0.00' COMMENT '借记卡手续费金额',
  `credit_fee_amt` decimal(14,2) DEFAULT '0.00' COMMENT '贷记手续费金额',
  `trans_close_notify_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '关单异步通知地址',
  `bagent_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '渠道商名称',
  `org_acct_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '原始主账账户号',
  `send_time` varchar(17) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '终端交易发起',
  `network` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '终端网络环境',
  `mypaytsf_discount` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '核销优惠金额',
  `credit_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '分期类型(HBG-普通花呗支付，HBP-花呗分期支付，BC-银行卡分期)',
  `mcc` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '行业类型-银联mcc',
  `org_huifu_seq_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '原预授权交易汇付全局流水号(预授权完成入库-预授权交易后返回的汇付全局流水号)',
  `org_auth_no` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '原预授权号（预授权完成入库-预授权交易后返回的授权码）',
  `org_trans_date` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '原预授权交易日期',
  `subsidy_amt` decimal(16,2) DEFAULT '0.00' COMMENT '补贴金额',
  `subsidy_ref_amt` decimal(16,2) DEFAULT '0.00' COMMENT '补贴可退金额，初值与补贴金额相同',
  `subsidy_stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '补贴处理状态，IPSF',
  `iss_inst_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '发卡机构代码',
  `is_route` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '是否过路由系统(Y-是,N-否)',
  `maze_resp_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'maze应答返回码',
  `maze_resp_desc` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'maze应答返回描述',
  `maze_bg_seq_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'maze订单流水号',
  `maze_bg_date` varchar(14) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'maze订单日期',
  `maze_pnr_dev_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'maze逻辑终端号',
  `icc_data` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'IC卡数据域',
  `sn_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '终端sn号',
  `fq_fee_amt` decimal(16,2) DEFAULT NULL COMMENT '分期手续金额',
  `fq_ref_fee_amt` decimal(16,2) DEFAULT NULL COMMENT '分期未退手续费',
  `fq_mer_discount_flag` tinyint(4) DEFAULT NULL COMMENT '分期贴息类型，1:商户贴息',
  `fee_allowance_flag` tinyint(4) DEFAULT NULL COMMENT '手续费补贴：0-不补贴，1-补贴',
  `labels` tinyint(4) DEFAULT NULL COMMENT '标签：1 大额理财',
  `card_channel_type` varchar(8) DEFAULT '' COMMENT '卡交易类型(UPF-银联,EC-运通)',
  `actual_pay_channel` varchar(8) DEFAULT NULL COMMENT '实际支付渠道\n1：富友\n空：汇付',
  `un_scene_info` varchar(32) DEFAULT '' COMMENT '场景标识',
  `db_unit` varchar(32) DEFAULT NULL COMMENT '记录所在数据库',
  `card_sign` varchar(2) DEFAULT '' COMMENT '卡标志(0-境内卡,1-境外卡)',
  `pay_amt` decimal(16,2) DEFAULT NULL COMMENT '现金支付金额',
  `discount_amt` decimal(16,2) DEFAULT NULL COMMENT '优惠金额',
  `cashier_version` varchar(16) DEFAULT NULL COMMENT '收银台版本号',
  `actual_pay_channel_sub_mer_id` varchar(32) DEFAULT NULL COMMENT '实际支付渠道商户号',
  `atu_sub_mer_id` varchar(32) DEFAULT NULL COMMENT 'ATU真实商户号',
  `market_flag` varchar(2) DEFAULT NULL COMMENT '会员核销标志(NM-会员核销)',
  `cashier_amt` decimal(14,2) DEFAULT NULL COMMENT '发送收银台订单金额',
  `helipay_fee_rate` varchar(14) DEFAULT NULL COMMENT '合利宝商户费率',
  `helipay_fee_account_amt` varchar(14) DEFAULT NULL COMMENT '合利宝平台商补贴的手续费',
  `busstype` varchar(5) DEFAULT NULL COMMENT '数字货币业务种类编码',
  `busscode` varchar(4) DEFAULT NULL COMMENT '数字货币业务类型编码',
  `dc_response` json DEFAULT NULL COMMENT '数字货币响应信息',
  `router_channel_type` varchar(32) DEFAULT NULL COMMENT '路由通道类型（空或00代表汇付、01-代表ypay、02-代表四方收银台）',
  UNIQUE KEY `uk_hf_seq_id` (`hf_seq_id`),
  UNIQUE KEY `uk_ord_id` (`ord_id`),
  UNIQUE KEY `uk_seq_id_date_product_huifu_id` (`req_seq_id`,`req_date`,`product_id`,`huifu_id`),
  KEY `idx_auth_no` (`product_id`,`auth_no`,`trans_type`,`sys_id`),
  KEY `idx_cash_trans_id` (`cash_trans_id`),
  KEY `idx_mer_ord_id` (`huifu_id`,`mer_ord_id`),
  KEY `idx_out_trans_id` (`out_trans_id`),
  KEY `idx_party_order_id` (`party_order_id`),
  KEY `idx_reqdate_merordid` (`req_date`,`mer_ord_id`),
  KEY `idx_trans_date_auth_no` (`trans_date`,`auth_no`),
  KEY `idx_req_product_bagent_id` (`req_date`,`product_id`,`bagent_id`),
  KEY `idx_huifu_id_req_date` (`huifu_id`,`req_date`),
  KEY `idx_req_date_product_bagent` (`req_date`,`product_id`,`bagent_id`),
  KEY `idx_create_time_huifu_devs_id` (`create_time`,`huifu_id`,`devs_id`),
  KEY `idk_top_trans_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=186790982613 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='交易订单表'


CREATE TABLE `top_trans_acct_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `acct_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL COMMENT '账户号',
  `acct_detail_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '交易分账流水号',
  `trans_ord_id` varchar(128) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `real_cust_id` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '账户用户号',
  `real_acct_id` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '账户号',
  `is_delay_acct` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否是延迟入账,系统所生成的分账',
  `acct_serial_no` int(11) NOT NULL COMMENT '分账序列号',
  `acct_trans_date` char(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账务系统入账日期',
  `acct_trans_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账务系统流水号',
  `acct_seq_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '账务分账ACCT流水号',
  `acct_stat` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'I' COMMENT '账务状态',
  `settle_stat` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'I' COMMENT '结算状态',
  `div_amt` decimal(16,2) NOT NULL COMMENT '分账金额',
  `settle_amt` decimal(16,2) NOT NULL COMMENT '应结金额',
  `ref_amt` decimal(16,2) NOT NULL COMMENT '可退金额',
  `ref_cnt` int(11) NOT NULL DEFAULT '0' COMMENT '已退笔数',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  `modifier` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '修改者',
  `creator` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建时间',
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单修改时间',
  `version` int(11) NOT NULL DEFAULT '1' COMMENT '版本号',
  `huifu_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '汇付客户号',
  `trans_type` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '类型',
  `db_unit` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '分库数据库名称',
  `fee_amt` decimal(16,2) DEFAULT NULL COMMENT '手续费金额',
  `ref_fee_amt` decimal(16,2) DEFAULT NULL COMMENT '可退手续费',
  `org_fee_amt` decimal(16,2) DEFAULT NULL COMMENT '原手续费金额',
  `fee_pa_mer_id` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'pa商户号',
  `fee_huifu_id` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手续费承担方',
  `fee_acct_id` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手续费承担方账户号',
  `fee_flag` char(2) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手续费收费方式；1:外扣,2:内扣',
  `fee_rec_type` char(2) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手续费扣取方式；1:实收,2:后收',
  `fee_formula` varchar(512) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手续费费率公式',
  UNIQUE KEY `uk_acct_detail_id` (`acct_detail_id`),
  KEY `idx_trans_ord_id` (`trans_ord_id`),
  KEY `idk_top_trans_acct_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2145976826 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC COMMENT='交易分账明细表'






CREATE TABLE `top_trans_refund` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ord_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '退款订单号',
  `req_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '请求日期',
  `req_seq_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '请求流水号',
  `product_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '产品号',
  `org_ord_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '原交易订单号',
  `ord_amt` decimal(16,2) NOT NULL COMMENT '退款金额',
  `fee_amt` decimal(16,2) NOT NULL COMMENT '手续费退款金额',
  `hf_seq_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '汇付全局流水号',
  `trans_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '交易日期',
  `region_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分区号',
  `route_region_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收银台分区号',
  `cash_req_seq_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收银台请求流水号',
  `cash_req_date` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收银台请求日期',
  `trans_stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '交易状态（I/P/S/F）',
  `trans_finish_time` timestamp NULL DEFAULT NULL COMMENT '交易完成时间',
  `cash_trans_stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收银台交易状态（I/P/S/F）',
  `channel_stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '通道状态',
  `channel_finish_time` timestamp NULL DEFAULT NULL COMMENT '通道完成时间',
  `cash_trans_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收银台返回的订单号',
  `cash_resp_code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收银台返回码',
  `cash_resp_desc` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收银台返回描述',
  `bank_resp_code` varchar(64) NOT NULL DEFAULT '' COMMENT '通道/银行返回码',
  `bank_resp_desc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '通道/银行返回描述',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除。0=正常，1=删除',
  `modifier` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改者',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建时间',
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单修改时间',
  `version` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '版本号',
  `mer_ord_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户订单号',
  `acct_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '账务日期',
  `fee_acct_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手续费账务日期',
  `mark` varchar(84) NOT NULL DEFAULT '' COMMENT '备注',
  `is_manual_process` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '是否人工介入 (Y:是,N:否)',
  `terminal_device_info` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '设备信息',
  `actual_ref_amt` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '实际退款金额',
  `trans_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用于区分,普通退款和特殊退款',
  `acct_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'SSP的账户号',
  `real_cust_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '真实的custId',
  `real_acct_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '真实的acctId',
  `huifu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主账客户号',
  `trans_confirm_info` json DEFAULT NULL COMMENT '交易确认信息',
  `trans_confirm_detail_info` json DEFAULT NULL COMMENT '交易确认明细信息',
  `front_region_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'front分区号',
  `unconfirm_amt` decimal(16,2) DEFAULT '0.00' COMMENT '退款的未确认金额',
  `sys_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '系统ID',
  `mer_oper_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '业务操作员',
  `acc_split_bunch` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '请求分账串',
  `mer_info` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '小票打印',
  `mer_priv` varchar(1500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户私有信息',
  `devs_id` varchar(32) NOT NULL DEFAULT '' COMMENT '机具id',
  `pnr_dev_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'POSP唯一识别pos机的逻辑编号',
  `pos_mer_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '汇付在清算行开设的商户号和终端号，POSP回填该信息',
  `pos_mer_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '特约商户名，和POS_MER_ID对应，POSP回填该信息',
  `pos_term_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'POSP回填该信息',
  `pay_type` char(2) NOT NULL DEFAULT '' COMMENT '10 刷卡 20支付宝反扫 21支付宝正扫 22无机具支付宝正扫 23无机具支付宝反扫 30微信反扫 31微信正扫 32无机具微信正扫 33无机具微信反扫 50银联二维码 51银联无机具二维码',
  `bank_mer_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '银行商户号，二维码交易时必填',
  `bank_mer_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '银行商户名，二维码交易时必填',
  `buyer_logon_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '买家支付宝账号，二维码交易时必填，和buyerId不能同时为空',
  `buyer_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '买家的支付宝用户 ID，二维码交易时必填，和buyerLogonId不能同时为空',
  `open_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '微信用户关注商家公众号的 openid，微信公众号支付时必填',
  `app_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '微信公众号支付时必填',
  `pay_card_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '掩码',
  `pay_card_id_enc` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密文',
  `check_cash_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账标识',
  `check_cash_date` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账日期',
  `check_cash_time` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对账时间',
  `batch_id` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '批次号',
  `auth_code` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'POSP回填该信息',
  `ref_num` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'POSP回填该信息',
  `posp_seq_id` varchar(32) NOT NULL DEFAULT '' COMMENT 'POSP回填该信息',
  `card_bank_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '银联标准的发卡银行号，POSP回填',
  `real_gate_id` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'POSP回填该信息',
  `oper_type` varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '021-刷卡输PIN022-刷卡不输PIN051-IC卡插卡输PIN052-IC卡插卡不输PIN071-IC卡挥卡输PIN072-IC卡挥卡不输PIN072 双免',
  `cloud_pay` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'HCE-----HCE,AP----Apple Pay,SP-----Samsung Pay,HP----Huawei Pay,MP-----MI Pay',
  `longitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '可选，变长最大20位',
  `latitude` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '可选，变长最大20位',
  `imei` varchar(63) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '网关号',
  `softversion` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '软件版本号',
  `osversion` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '终端版本号',
  `par` varchar(29) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '云闪付专用',
  `macip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '终端使用',
  `double_exempt` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '双免标识',
  `party_ord_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `acqr_inst_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收单机构标志',
  `oem_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所属OEM号',
  `bagent_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所属渠道商',
  `agent_id` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '所属代理',
  `proc_dri` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '处理渠道',
  `call_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '终端来源',
  `notify_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户异步通知地址',
  `dev_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '设备类型,1:智能终端;2:蓝牙终端,3:POS终端,4:扫码终端',
  `cash_out_mode` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '退款出金模式',
  `sn_code` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '21号文sn号',
  `out_ord_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `real_pay_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '实际支付类型',
  `gate_id` varchar(32) NOT NULL DEFAULT '' COMMENT '网关号',
  `bank_id` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '银行代号',
  `bank_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '银行名称',
  `bank_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收单银行',
  `org_term_ord_id` varchar(128) NOT NULL DEFAULT '' COMMENT '原支付交易终端订单号',
  `acct_stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'I—初始P—处理中S—成功R—回滚',
  `out_trans_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '外部订单号',
  `dc_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'd -借记卡c -贷记卡s -准贷记卡p -预付费卡 o-其他卡',
  `mer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '商户简称',
  `trans_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '交易时间hhmmss',
  `pa_trans_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'pa退款交易流水号',
  `atu_request` json DEFAULT NULL COMMENT '直连请求报文',
  `atu_response` json DEFAULT NULL COMMENT '直连响应报文',
  `mypaytsf_discount` decimal(16,2) NOT NULL DEFAULT '0.00' COMMENT '核销优惠金额',
  `credit_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '分期类型(HBP-花呗分期支付，BC-银行卡分期)',
  `mcc` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '行业类型-银联mcc',
  `iss_inst_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT '发卡机构代码',
  `icc_data` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '' COMMENT 'IC卡数据域',
  `fq_fee_amt` decimal(16,2) DEFAULT NULL COMMENT '分期手续费金额',
  `org_party_ord_id` varchar(128) DEFAULT NULL COMMENT '原交易partyOrdId',
  `org_out_trans_id` varchar(64) DEFAULT NULL COMMENT '原交易outTransId',
  `actual_pay_channel` varchar(8) DEFAULT NULL COMMENT '实际支付渠道\n1：富友\n空：汇付',
  `db_unit` varchar(32) DEFAULT NULL COMMENT '分库数据库名称',
  `client_ip` varchar(16) DEFAULT NULL COMMENT '设备IP地址',
  `lc` varchar(256) DEFAULT NULL COMMENT '基站信息',
  `is_direct_div_refund` char(1) DEFAULT NULL COMMENT '0 非直连分账退款，1 直连分账退款',
  `cashier_version` varchar(32) DEFAULT '' COMMENT '收银台版本号',
  `actual_pay_channel_sub_mer_id` varchar(32) DEFAULT NULL COMMENT '实际支付渠道商户号',
  `atu_sub_mer_id` varchar(32) DEFAULT NULL COMMENT 'ATU真实商户号',
  `pay_amt` decimal(14,2) DEFAULT NULL COMMENT '实际支付金额',
  `discount_amt` decimal(14,2) DEFAULT NULL COMMENT '优惠金额',
  `helipay_product_fee` varchar(14) DEFAULT NULL COMMENT '合利宝退还手续费',
  `helipay_fee_account_amt` varchar(14) DEFAULT NULL COMMENT '合利宝退还平台商补贴的手续费',
  `dc_response` json DEFAULT NULL COMMENT '数字货币响应信息',
  `api_version` varchar(8) DEFAULT NULL COMMENT 'api版本号',
  `router_channel_type` varchar(32) DEFAULT NULL COMMENT '路由通道类型（空或00代表汇付、01-代表ypay、02-代表四方收银台）',
  `fq_acq_ord_amt` decimal(16,2) DEFAULT NULL COMMENT '分期退款金额',
  `oth_ord_amt` decimal(16,2) DEFAULT NULL COMMENT '除分期外的退款金额',
  `oth_fee_amt` decimal(16,2) DEFAULT NULL COMMENT '除分期外的退款手续费金额',
  `fq_act_fee_amt` decimal(16,2) DEFAULT NULL COMMENT '分期退款手续费金额',
  UNIQUE KEY `uk_hf_seq_id` (`hf_seq_id`),
  UNIQUE KEY `uk_ord_id` (`ord_id`),
  UNIQUE KEY `uk_seq_id_date_product_huifu_id` (`req_seq_id`,`req_date`,`product_id`,`huifu_id`),
  KEY `idx_mer_ord_huifu_id` (`mer_ord_id`,`huifu_id`),
  KEY `idx_org_ord_id` (`org_ord_id`),
  KEY `idx_huifu_id_req_date` (`huifu_id`,`req_date`),
  KEY `idx_create_time_huifu_devs_id` (`create_time`,`huifu_id`,`devs_id`),
  KEY `idk_top_trans_refund` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4416373 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='交易退款表'


CREATE TABLE `top_trans_refund_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `refund_detail_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '业务主键',
  `refund_ord_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '退款交易订单流水号',
  `real_cust_id` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'PA账户用户号',
  `acct_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'SSP账户号',
  `acct_serial_no` int(10) unsigned NOT NULL COMMENT '分账序号',
  `div_amt` decimal(16,2) NOT NULL COMMENT '分账金额',
  `is_deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否删除 0-正常 1-删除',
  `modifier` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '修改者',
  `creator` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '创建者',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `version` int(10) unsigned NOT NULL DEFAULT '1' COMMENT '版本号',
  `real_acct_id` varchar(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'PA的账户号',
  `div_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分账类型',
  `split_prop` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分账交易说明',
  `loan` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否垫资,默认为1(0:是 1:否)',
  `huifu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主账客户号',
  `spin_acct_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '01-结算户,02-钱包户,03-延时户 04 充值户',
  `div_acct_serial_no` int(10) unsigned DEFAULT NULL COMMENT '对应分账表的分账序号',
  `db_unit` varchar(32) DEFAULT NULL COMMENT '分库数据库名称',
  `fee_amt` decimal(16,2) DEFAULT NULL COMMENT '手续费金额',
  `fee_pa_mer_id` varchar(10) DEFAULT NULL COMMENT 'pa商户号',
  `fee_huifu_id` varchar(32) DEFAULT NULL COMMENT '手续费承担方',
  `fee_acct_id` varchar(32) DEFAULT NULL COMMENT '手续费承担方账户号',
  `fee_flag` char(2) DEFAULT NULL COMMENT '手续费扣取方式；1:实收,2:后收',
  `fee_rec_type` char(2) DEFAULT NULL COMMENT '手续费收费方式；1:外扣,2:内扣',
  `fee_formula` varchar(512) DEFAULT NULL COMMENT '手续费费率公式',
  UNIQUE KEY `uk_refund_detail_id` (`refund_detail_id`),
  KEY `idx_create_time` (`create_time`),
  KEY `idx_refund_ord_id` (`refund_ord_id`),
  KEY `idk_top_trans_refund_detail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11129914 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='退款明细表'