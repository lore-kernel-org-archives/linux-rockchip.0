Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 182EEECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 16:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JaNsW5+sIvFfyveYrXZ5nJX/uHvD9mOIWbScLi++QJA=; b=B7wzy71Bqp9reI
	QuTe81OmOS4lL87infzFbx1Tf82z32CZXHpmwW3MpDSlk5FmYx/j9g3YzLU5lxAtiQFoZ6rtZwDUH
	v3n4aVhXdZtvs18FN2Zjck0eML2c5vtbov9rR83UsZ4p4ICjUxmZrIypcZVW7V/YZZxgPVmykpb2E
	W/y+Ajlpm0hAByJHNc5pH5mZnkKEhdI/19KF/n8+3AH5tWQV9BCfTea2oGRyEb4DyKo5x9wyWpQKv
	S0LNNrR0TxHT/LOVxJsWwpKdjj9VuOjW1GkiR8UdrLiS4T9kWjZBwWfcXz6SEr8S/89tiNBIU+lEA
	8XGua1j/E6fIe0ovs0dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZE32-00EwhU-4e; Fri, 16 Sep 2022 16:18:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZD1e-00EUi9-98
	for linux-rockchip@bombadil.infradead.org; Fri, 16 Sep 2022 15:13:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Type:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=kQdJo1ED0w1eQMtbRoiyh1/I7RjAn50aIlizMpCfhVw=; b=Auc5LHOdfoWamlhrXnl5N7MIZl
	4sTqIsU1WPrQV2hXn3jZkfcw3YUwnFtf3tuNO82WbQZB7D2QpbBhE+jML+BFIasbu+AvQfMuTGhjb
	xglBq/k8EzHNDCyC1Tkb7WVwjinfoemMkBl46T9PvymXP8b/S7W0ONpJ3cs2Szc2cyFaeYfiqbRNr
	YpdQcZvP3KuitB/h0z1lfrdUMUOC4nwzBQY9XXeb1YncKZ4NRXdf0KHnbuRGz4NRWOwIA998JAWRA
	HxwDTFp8hBr2f1xHrTlQvCoYvZGVVMU1eFxAifpVvJ8pXlzwPTQWrPg9efDxlpdSlm+QC+JsaqNCM
	NIMR1nww==;
Received: from mx0b-00069f02.pphosted.com ([205.220.177.32])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZCUH-00D4Ps-1N
	for linux-rockchip@lists.infradead.org; Fri, 16 Sep 2022 14:38:41 +0000
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id 28GE3eQi001289;
	Fri, 16 Sep 2022 14:38:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2022-7-12;
 bh=kQdJo1ED0w1eQMtbRoiyh1/I7RjAn50aIlizMpCfhVw=;
 b=O2awsIvSCjPfhtLMQifpRNIroUNjlYiOy2AkZYwlrqoQY6NlE6XaD0G7d4LvNzf3rM7T
 LRdpddJDU6YJRuCzyQN62W7eimCoO67SpYm5xq6LhjWjlG7gLC7uBvBxl/Ctbic+DBTj
 Kej4loZupD2IaU0I7FprAey3IYhs063xFrZ0dz8MJ7XD0J2H+HoYtgjGx/NG1tAMURha
 Gnhm3eb6wJbYPXEYoBqtbAwMGDZMDmG1xQRP1lqZKNeZr5Cifd4xpk2aaDEyEzvb7U0M
 4DrHsv5jWzxCm1+eQJjh27KxGwORO4vPFZOlwbOnnEw/kkRUJCvVPdp8oWOf9+7fUf3Q ew== 
Received: from iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta02.appoci.oracle.com [147.154.18.20])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 3jm8x8aptc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 16 Sep 2022 14:38:20 +0000
Received: from pps.filterd (iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (8.17.1.5/8.17.1.5) with ESMTP id 28GEQSIg039088;
	Fri, 16 Sep 2022 14:38:19 GMT
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2169.outbound.protection.outlook.com [104.47.58.169])
	by iadpaimrmta02.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 3jm8xed2ba-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Fri, 16 Sep 2022 14:38:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UBAFd4Kmt/9doBawe2wNcJ1z1Z78xE9vSzucxuUFc5qXNPPTfB/mvrM1BeLGSAeUEbYBwiM69+LuMmktGZiSdWoaIiBYta36eWXdDhjKvY5uOkHoXt26nKztdKtf7hGSUuP4RA6AsbVrtKMyEvQwho+q607mS91CtFguaijMfvqA0WEbqvPKvlFfP32eZS1UH9xr4QP1xYgVjxg/zb5lSygD6LKt/6vqNGtwjbBWSRWiCq+vFDbOfADdtQfq4nzOKUUM/6vE9Oa7X9N36pnW2iY6bsf5rC5b+qeIK3c4QsvGFtTzTZTmOh9WkmY8uk7pV9eCtKy7lX+kZ/WJv5K7Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kQdJo1ED0w1eQMtbRoiyh1/I7RjAn50aIlizMpCfhVw=;
 b=cpfSTHwOaErQpC7/1SngiMTojSEAk71nsq7/8Rj7qPYqKOw7lueRVmQARZEk66ASDyNdAxzG3Dqo/0Ows3YYISGLCcfVrEyUZPfqVnyqXvclCpW7E6Q8gf+7W6XWOcmaUBU6MXiaayvJA6Lpyk24eQ/IH1N8mu16h6s40hVEBjGOs1mLuuvYMde8tN2MCrGlTNweUnJXSw1LuQ4NS2aCSdcJWlZJr+y6QLBNlmUuH3CRoIUDWX14gSoCtYySxvbPFUW8Bj8Zdo750xRjR6uXxAktuJQ2QuCnvLtIhAYBRqjpmLOOKrxVOJYJdqVTAb1eLC8vzm0Q6WrjfmthXYCUww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kQdJo1ED0w1eQMtbRoiyh1/I7RjAn50aIlizMpCfhVw=;
 b=s2ki4mTgOjUyfX2svRteHnsG1/SGlS4cT2khJ9Y5Bb22UT3i+0ZB82XURvsrAH2nCmrQNcL7JmvxSCFKQMO9r+bnLiaWiyxa25W4yrBAKbeOZRr014kHCDTcrmpSNAl71Gp1uPODQ7ZYByON7PtZRMeuq+FJ/I8h69YOfoY8uDg=
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by DS0PR10MB6103.namprd10.prod.outlook.com
 (2603:10b6:8:c8::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Fri, 16 Sep
 2022 14:38:16 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::a493:38d9:86ee:73d6]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::a493:38d9:86ee:73d6%6]) with mapi id 15.20.5632.016; Fri, 16 Sep 2022
 14:38:16 +0000
Date: Fri, 16 Sep 2022 17:38:09 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: judyhsiao@chromium.org
Cc: alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org
Subject: [bug report] ASoC: rockchip: i2s: use regmap_read_poll_timeout to
 poll I2S_CLR
Message-ID: <YySKUQelS41ip5+q@kili>
Content-Disposition: inline
X-ClientProxiedBy: ZR0P278CA0045.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1d::14) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2365:EE_|DS0PR10MB6103:EE_
X-MS-Office365-Filtering-Correlation-Id: fce3a3c7-6ae9-421e-65e4-08da97f1177a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	MhGUFNIt539/Ea4c7QJ9bjI6Yl/PDdLDEUGLLfj24/dLbsFkzXzzJzd+cEBhRhDYYi4D8J0w2nGq+Mb/cLscidgycevsTmWQ3GZ8LE3IQaiv1DmsjMwdEtpEz0PDWYVw0lgljrpO+AgMNVABGKHaQ9KeLaAGIXyD4KKjdYPS+e4cu7DZcRheJq7sGZZcSFrqbWvvGw1gRGqQTYp6h4UmtG9w+FdDUl/EvDZu8YwcsTXnto0KtNzUGMoLC7sT/oWFpuRjBzk2mgYfHf4ZEZxyUBOQ4SEBaN/tjIpVHsExGPTcaey2NUsEfJyHQuo7DJj4INRs1yN8pN657szd0E0IVgwDigUC4/+JvW2bfYtHmioPjKvbV+WoC3yeLEk3xC/bdzZuBF0iJNqcj6xNWXeILJuruf0bQFF7EO1thf4wmxHacyzzTd7NpTsUngq6AtYT8NDe+uY0EZGYhTfZ99mAPZ70gv0y1HACxfPU1hwSwBjBi6Cc088vjPOte9d6ppZWbIunr6vClCrfnkee1CblGqIqCH1CSlegEryOcszlTcpz8fFO4rGGjL4lQxlCydrUdT6r5p4dBGrht+65kNDEQygmU+cmA2TRHv1UqXV36xeGeqPibyTKAe+h9h903VW+UxRFOBbSX2A54PxLZnZ6CJbW3kVUNW3C2gK5bEvkP9vvlruy8n/+TGR85TAAUynKNTOpfiHs17AmjHDxL2xCDn0NoV0r6/obAzbebnfNJUNae+takLEWcwFLV7gfdc8k
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR1001MB2365.namprd10.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(7916004)(39860400002)(366004)(376002)(346002)(396003)(136003)(451199015)(86362001)(33716001)(8936002)(5660300002)(44832011)(2906002)(4326008)(66946007)(8676002)(66476007)(66556008)(186003)(26005)(41300700001)(6512007)(9686003)(6506007)(316002)(478600001)(6916009)(38100700002)(6666004)(6486002)(83380400001)(67856001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?O7Ir9eIGnmDSNTCxUgbtbwnsqiKAb6VgKg/ULDqKyBMdE9sLnmMzAj/YZPfA?=
 =?us-ascii?Q?FbSLaAZuWrxHXYP/yCB/4rmzSIjTvMzctUhUbmyL6tbMbN9aaOCga/XbB3rz?=
 =?us-ascii?Q?bdMzdiFsBPtF4HxVf8DJ50TVF3NVmdYSR3whtFHV3fDWr4wM0DF4eejSZ5gD?=
 =?us-ascii?Q?Zov29rxYlIYVOFYwkXwwsLTttbLGGxKFKRm3sQiZnGeXFAe/Kky8Zwg5QNdo?=
 =?us-ascii?Q?HvmkuuqaiIvScP2lT2X7gh76+XMxfjKfucoarfmqSWYAoNWNNly8iHFXpL6j?=
 =?us-ascii?Q?w2BY7XPAbChh5NfUI3Mtv/kO8xCAV/opIfQ1WOco1qy2rYe/0YIrJz8vV1f5?=
 =?us-ascii?Q?XeqmCgwlMctbIthZOjRf7O/UzfDhf9bj6GohPgFQPDVqgvEFNcP9aw7LvU20?=
 =?us-ascii?Q?xu3bKAi0S/Pnz3h78thVOgMfwK6xB1Gr6UROPGziCV6rIN9Lm1/uVm9XQVO3?=
 =?us-ascii?Q?OnXpQPEqSoNBc4+M5iraKZodZCykeT4AUL1v5rBgwA/HJCLTpZ89jWpZhzKT?=
 =?us-ascii?Q?2kf/ZWn+fi2tNhoF+Ak0loDTweb4qepghVt0eSxVcUaWyyKhV30J2dhQl3kU?=
 =?us-ascii?Q?aa7e6G7E1BgZg3oVEcV0Vf4UTyvq3Wk7EZp67cZjPh1xTX3IevkIBJMhQKk0?=
 =?us-ascii?Q?3Fqv296W2ibFM0Vmr4nAMcE5nhnevd1hCS9EvLRm8moYDzJjksUtUOWwrFBg?=
 =?us-ascii?Q?zbzo1eSkmvUP7I0DcPFatFeeOcaDwkRKfTbV64hLMlkb/Z6fpGlTzFjJFF7h?=
 =?us-ascii?Q?ogQ67n14biA2ibBkRUby/DRijDuOBHx4Lxrk8LGP2u2W5HrTUo2eSOyOqGkc?=
 =?us-ascii?Q?2P/duMAKjytWOfPgXNki7d4Z26qsBEPHFEQFelNpl42AFcmWNu7uqYOTzJJs?=
 =?us-ascii?Q?LLSztO0QlR/EDZRDL/gTPCD54Gq9V6LQSgsqOj7yIhc4qgH8pKxPLWYNo1sS?=
 =?us-ascii?Q?T43VAvwV9XQlF/B8+NrDmS7zC6engKEMUT2L5EmX/1o4JDoFoXkkrwQ/lv1O?=
 =?us-ascii?Q?FIpRL9mhFZnpk/QMB9rcgf1X9b8lRU2IkBDXJ2exi/X6DV3QO2QLzsRDZ7xX?=
 =?us-ascii?Q?45u9oJ6haNRPF0Mrbq0gN7y82ADhjNBiwMzy9HikmRywTFeLza/veWInq2fc?=
 =?us-ascii?Q?EzUNhcsdUzxadprIUSYLn+SzD/RbBSQsCAxsKXs+eCwBIKkf7xm2/vlkv7G2?=
 =?us-ascii?Q?42KPD+48A3rZcpIX9VKCqe5VTmVsdJtNuFUnNcMuOYR6qNf0SRLtKJleAtBa?=
 =?us-ascii?Q?GVYV5hLE8l8ChVg4gjbhQfSHbEvV08DTxblqw8EUeHjC/P4W0ehbWvIaXgfA?=
 =?us-ascii?Q?zWqbWIIUXdosTeoWmFdVDv3M+SsNLzhnuDl3qG/gr+wsndZwNhMvyM1Vki+5?=
 =?us-ascii?Q?OfuOCNgxzzFuwrT6JSOv0oHnQ7gzDFCgejnMHt/7s+grkQkWL75EgKs7x+B8?=
 =?us-ascii?Q?njYe/pekiGuepGLQpbcfpDZ2dlJ1LiwNO7xqN9sfq5EOWj3/vj+HcQDKVvxU?=
 =?us-ascii?Q?cePL5kShYYOhGV0F8N/LbYlOKtrX8L52dvoBNK/QKzA2X62dmr211fdHLpGU?=
 =?us-ascii?Q?AMVPQYXuFGrcKOQGWGaXLRozwrPV7uS1blt2lg7G?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fce3a3c7-6ae9-421e-65e4-08da97f1177a
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 14:38:16.6281
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FSnp8CrEisnNXLmAOYmzfDWJHYr6D1IGSHGbN/55k4csceTKL1OcCogd5AiR3ox2Jm+bLPXed/PzPZnaI9wAgqd4BWmcxKwrW7vPEI4Umes=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR10MB6103
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-16_08,2022-09-16_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=726
 suspectscore=0 bulkscore=0 mlxscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2209130000 definitions=main-2209160108
X-Proofpoint-GUID: 5BkTOinR4B3BwZ7Z6V0ru0z_QsqkaMTk
X-Proofpoint-ORIG-GUID: 5BkTOinR4B3BwZ7Z6V0ru0z_QsqkaMTk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_153839_226264_E85BEFBD 
X-CRM114-Status: GOOD (  10.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Judy Hsiao,

The patch fbb0ec656ee5: "ASoC: rockchip: i2s: use
regmap_read_poll_timeout to poll I2S_CLR" from Sep 14, 2022, leads to
the following Smatch static checker warning:

	sound/soc/rockchip/rockchip_i2s.c:165 rockchip_snd_txctrl()
	warn: sleeping in atomic context

sound/soc/rockchip/rockchip_i2s.c
    126 static int rockchip_snd_txctrl(struct rk_i2s_dev *i2s, int on)
    127 {
    128         unsigned int val = 0;
    129         int ret = 0;
    130 
    131         spin_lock(&i2s->lock);
                ^^^^^^^^^^^^^^^^^^^^^
Holding a spin lock.

    132         if (on) {
    133                 ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
    134                                          I2S_DMACR_TDE_ENABLE,
    135                                          I2S_DMACR_TDE_ENABLE);
    136                 if (ret < 0)
    137                         goto end;
    138                 ret = regmap_update_bits(i2s->regmap, I2S_XFER,
    139                                          I2S_XFER_TXS_START | I2S_XFER_RXS_START,
    140                                          I2S_XFER_TXS_START | I2S_XFER_RXS_START);
    141                 if (ret < 0)
    142                         goto end;
    143                 i2s->tx_start = true;
    144         } else {
    145                 i2s->tx_start = false;
    146 
    147                 ret = regmap_update_bits(i2s->regmap, I2S_DMACR,
    148                                          I2S_DMACR_TDE_ENABLE,
    149                                          I2S_DMACR_TDE_DISABLE);
    150                 if (ret < 0)
    151                         goto end;
    152 
    153                 if (!i2s->rx_start) {
    154                         ret = regmap_update_bits(i2s->regmap, I2S_XFER,
    155                                                  I2S_XFER_TXS_START | I2S_XFER_RXS_START,
    156                                                  I2S_XFER_TXS_STOP | I2S_XFER_RXS_STOP);
    157                         if (ret < 0)
    158                                 goto end;
    159                         udelay(150);
    160                         ret = regmap_update_bits(i2s->regmap, I2S_CLR,
    161                                                  I2S_CLR_TXC | I2S_CLR_RXC,
    162                                                  I2S_CLR_TXC | I2S_CLR_RXC);
    163                         if (ret < 0)
    164                                 goto end;
--> 165                         ret = regmap_read_poll_timeout(i2s->regmap,
    166                                                        I2S_CLR,
    167                                                        val,
    168                                                        val != 0,
    169                                                        20,
                                                               ^^
    170                                                        200);
                                                               ^^^
If the sleep_us or timeout_us values are non-zero then it can sleep so
it's a sleeping in atomic bug.

    171                         if (ret < 0)
    172                                 dev_warn(i2s->dev, "fail to clear: %d\n", ret);
    173                 }
    174         }
    175 end:
    176         spin_unlock(&i2s->lock);
    177         if (ret < 0)
    178                 dev_err(i2s->dev, "lrclk update failed\n");
    179 
    180         return ret;
    181 }

regards,
dan carpenter

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
