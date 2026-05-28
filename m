Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 480F0C44507
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XtCEDVBZfdUfErbeJYBRMMmPfVhIlWdin6Lq1bCww+E=; b=e9Be8hoR4gFgSQ
	wbA6z6A2mWA0EkgD3bei0ReWYLzYwpf2/5Ti4A1jrIC39iIJJH9uKQOS7M0B1VmZKMcv5MzBwQLlI
	yEC949igXGRQ0nGZICWhmpQy/zTM5wrLsstR5/Z2wLjQMQ8ds0IpansNdfsupqmKo1O7e3lyNqSeT
	KCPYEXnl33PNRULWqiXcHkEQtlSeP+R2EsWMOsHdX9V35a/0rLnKvz0Jf+6kDA5dV4GRU/DNGkj7F
	HWxn1CXZVdmTnRlj5A4fSzLZ/oLIkR2woyffqfQc59S5VqVuZBgPdlFdIg8YnhFpZQB3aqvyiLCc+
	GS32jZCdeA1mtKnyND9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVO-00000001aZQ-2bmQ;
	Thu, 09 Jul 2026 08:53:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSfcV-00000006Cnh-1rHW;
	Thu, 28 May 2026 18:38:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Sender:Reply-To:Content-ID:Content-Description;
	bh=YsvVyf9BXeN5i9s0Ek/ePTVtLYmCwCukts291jfSOMw=; b=UUdNo3M2QFTnLHkBLlpbVAmcHk
	QcCRyPopye8KI1TdFCuoc8nJjhHfgL64IZsBDZHyPl+V0MhKUTqRfOlqasmXucJGvCAbzPhRX1yWf
	G8zQjmiFZWfQ3Ypn3/1xIAZRjKAwI4B28SNmJXYIccGBsvM1RTpIbk0ju6MJHufApg9/XymE6dI80
	pvmqNDhXNsYYmZ2Iaxhc4qEF7UksjNAhbT/GKAyq6QLH3xvhqxqMrPGZYrfxaO511TJPRmtLnnyru
	ahP7CKBoT2CsLTFkLA/SyEUo17f8noY/k4QvrVfPz8Ea1Q7261YbXuGpwyQg/hy0YMPPk+rUqbhCb
	oIYyVU+w==;
Received: from mail-northcentralusazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c105::1] helo=CH1PR05CU001.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSfcN-0000000H9X7-1oBb;
	Thu, 28 May 2026 18:38:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=G12U4cToqMKwl4bILf3yW8fme1fbgTuyrtMc4EDGRKa1B1qvDWH21GuHSFxkY10PXNlJRagGLP8YPCOJ1OUqAgoYBRCgIMUqxaP6VsDkqImMO2STRX+rcFwwxKRov8mPG9stZjbhJlQa26HW7+5UODPGeuYST4jg7PfZ4oLqs0uAVLZPV1tVRVtqbFX5jRK/FWRBMLNx62nLZ7zE+E3RDqa6+Do9GvzGFs8xZUL5y9bkqnDXwLSwk4Rqc8LrhYhhKZJOm09jPLROKJH5ZbPEv7kw2kHu6aisHC4d8TM7FXFreO13qa15W+lF34DwTcOQCT0IBvhQVU7i8VkA79lK2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YsvVyf9BXeN5i9s0Ek/ePTVtLYmCwCukts291jfSOMw=;
 b=Bya3+WECxTenCjn5xyj/wI3tMGHwH9UC3XfjeIX+W5n9j+qixFiF41ZqaYEilS3cvpqW4SfNrz2RLtMP2EmCsSThbfCBZS6aASQ0x+gBj6xc5p53k0ej/qJk2ib+JEyQJbIYYmKbWg7MhiV362iz06wa0jP663Lze4yfgWtaHn8kzwLeCS6IZgSePCllkM4zFZDUf+hjS9PljPNccbbsVhzLN00ROr46zkStuA1mM4yK41UTMtSjEXkg+d4VJGZuiPeljUeFOkRD5Y2UFPWr/3Zr7Mtm2UwlpQBDQAlQTASYZYux1QQ9yAjYAztOJrWvq6a9wO6IRAoxIg3HV8f0Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YsvVyf9BXeN5i9s0Ek/ePTVtLYmCwCukts291jfSOMw=;
 b=L4O0Ut/GXvqavrNUaga2spI7zdZtKRIyXIHQLUPyHiQ8jw8u1oXsrEBWKB7QDvSvKyZxrviAOPvTF7Ofz1FFLg0vU8Fg0kWy4qZkxUciHR/ptmdi/woB1wLtYHU1xI1OgPszeiLl1xZ5rcidAS0RgHtSshnutueri/E2+kRBri92SKrVPt/rg8t8TUaNZfTkluOfvrnBipqUIntHJkT42Q0VJZiX1pVrArfLzhZkYuGEkvKtiLm3dv6HdIfuTln3o5P1XvH4+BRQU0W7yLoliSep2urMfhW7WlPkAIgkauTYr1jM6NSuoqjKH0WmjfSLJEK8iITfYyjJB2IrAkwcEA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV3PR12MB9356.namprd12.prod.outlook.com (2603:10b6:408:20c::21)
 by SJ5PPF01781787B.namprd12.prod.outlook.com (2603:10b6:a0f:fc02::986) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Thu, 28 May
 2026 18:37:17 +0000
Received: from LV3PR12MB9356.namprd12.prod.outlook.com
 ([fe80::1c36:31b4:c420:6286]) by LV3PR12MB9356.namprd12.prod.outlook.com
 ([fe80::1c36:31b4:c420:6286%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 18:37:17 +0000
From: Yury Norov <ynorov@nvidia.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Yury Norov <ynorov@nvidia.com>
Cc: Russell King <linux@armlinux.org.uk>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@kernel.org>,
	Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	James Clark <james.clark@linaro.org>,
	Thomas Gleixner <tglx@kernel.org>,
	Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Len Brown <lenb@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Moritz Fischer <mdf@kernel.org>,
	Yicong Yang <yangyicong@hisilicon.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Jason Gunthorpe <jgg@ziepe.ca>,
	Leon Romanovsky <leon@kernel.org>,
	Dan Williams <djbw@kernel.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Ira Weiny <ira.weiny@intel.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Shuai Xue <xueshuai@linux.alibaba.com>,
	Will Deacon <will@kernel.org>,
	Jiucheng Xu <jiucheng.xu@amlogic.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Jing Zhang <renyu.zj@linux.alibaba.com>,
	Xu Yang <xu.yang_2@nxp.com>,
	Linu Cherian <lcherian@marvell.com>,
	Gowthami Thiagarajan <gthiagarajan@marvell.com>,
	Ji Sheng Teoh <jisheng.teoh@starfivetech.com>,
	Khuong Dinh <khuong@os.amperecomputing.com>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Yury Norov <yury.norov@gmail.com>,
	Kees Cook <kees@kernel.org>,
	=?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>,
	Aboorva Devarajan <aboorvad@linux.ibm.com>,
	"Ritesh Harjani (IBM)" <ritesh.list@gmail.com>,
	Ilkka Koskinen <ilkka@os.amperecomputing.com>,
	Besar Wicaksono <bwicaksono@nvidia.com>,
	Ma Ke <make24@iscas.ac.cn>,
	Chengwen Feng <fengchengwen@huawei.com>,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-perf-users@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	driver-core@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-fpga@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	nvdimm@lists.linux.dev,
	linux-pci@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-cxl@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH 14/16] powercap: intel_rapl: Use sysfs_emit() for cpumask show
Date: Thu, 28 May 2026 14:36:21 -0400
Message-ID: <20260528183625.870813-15-ynorov@nvidia.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260528183625.870813-1-ynorov@nvidia.com>
References: <20260528183625.870813-1-ynorov@nvidia.com>
X-ClientProxiedBy: BY1P220CA0045.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59e::14) To LV3PR12MB9356.namprd12.prod.outlook.com
 (2603:10b6:408:20c::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR12MB9356:EE_|SJ5PPF01781787B:EE_
X-MS-Office365-Filtering-Correlation-Id: 073171aa-cd75-494a-dced-08debce824f8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|10070799003|376014|366016|1800799024|11063799006|6133799003|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: XcpHPErZ6KTIxAuDYzYQ28QiEYbz6RIySXmiLOIsIAqGt49BShllZNYRHwVg7UVRfrn0vWcwX6xQBIPe2IUztFB+TLFsZfm+84rGe77mQpsOUX7GIrL2qc3o78fn5qJ6Q8y0y7ARts9gL86+ywTUnOZem1To+ldmtNota4g3/fe/FLNrUOOiYQcm3Z/0N0bo5FbsxNjE6Nb8yOHRJFtaVBptToTrUJ6Pr1V9PHaLGCTDbrdQPR+qNbl7o3WMY3nxRalLYIvHEIY9gZK5vzDzuZxulrWVXBUBZpy0Gp5p6RFyvRJYlW7GXSSpx+b+B0QuZJocDAO3ivyu47sR5jTv9qu1vCPySlIB1kV5n7StcqTQOHTPUFYJFZvo6y+bi/14u5nvf/sIjUDmbcOGSHxR1CCQv6JQ02ZrJpRoyPni30S4f8S7g+2pYNK71/ArKasq/If9OoQSvbnQjoTslqe6L7Qz4pBh2As9Su0P63cZZRFe88hjZnpbpnc449S/MWFGVRhzvT0jLR0H2P5nPbFep9rmSAY8QLY+dE9I61Ngp/9uqwqR+PkggEQaWeFUUsrYMPrD/poAAaFrZxzQ9FafFMnDgNw7ew2uTre7crzAwp0nCtL446Ffci47iNd6Px9kzeebnfWxpn/vPHdhgJFbcuFvE4psz5bA3lVfE+JTGgryu/KC8taFCRvd7scHJzAF
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV3PR12MB9356.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(10070799003)(376014)(366016)(1800799024)(11063799006)(6133799003)(56012099006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D7BYarsFdYcqSdyh+OZ1c/EDnXvRcSwqnBVp1tVM9D0MM1BToSLMbhYeLpKw?=
 =?us-ascii?Q?snSDhRG8qqgkXVeWGHaEai8q+76vMo5AtN8pbx6wuohnVYqVvyrlyLu1g+dk?=
 =?us-ascii?Q?2VDJTwI6itRDSCOPIYihh6Icj0qP6BjuW2CY0HRr2oz94BIUd2BrN69R3XxS?=
 =?us-ascii?Q?ey+utT6ssYbkoGZzeJQ4hkIX8ElDYKJvq9gnisXnWbsAIHf8biCrSBvd0t3F?=
 =?us-ascii?Q?eDhwpNObKZ2YQII+5r5WN257t3+BVJ2I4Rhk3UqkX7JynLV6jMogTnJlaDEj?=
 =?us-ascii?Q?Im3dJ6UIT2dBNKmy4eA7WNIRXXruieGcR/mZTTPva8iJHncHjtRaxfrrGNm6?=
 =?us-ascii?Q?bWzjGWJRuQszhRvzVxAn/SjvmoroN/DTetdlO53DkC3wDKaSWDw4o+gUNouL?=
 =?us-ascii?Q?vSGH9f7HOArsz3dPVR8Epq6YyPrxjgxJLr+XmALWyQGVxfIODafP9F8Ig/Y6?=
 =?us-ascii?Q?lmJZR3SLrKTEKyfO3QSUemtWT9jmHyjqCAG5xj/0pNv5kKrnS/gVqBUx+LGa?=
 =?us-ascii?Q?uqq8ISgglnXCits1imwnWKsYzs9RKtZPQE2Xjl3JBnui5qabZ4DPD4MUZkav?=
 =?us-ascii?Q?npMY9yrrBL80YxcvNiT+QqtN3m0M+xrVN7JS6IOkdXbz7uhZWoC/UHy8knHc?=
 =?us-ascii?Q?haNcclJ4yoB7s/VQMwFQsV0SM1sRHpu7xEnbhVr6f/S+uLWTYRBekdaoWKtg?=
 =?us-ascii?Q?fCWhNtuKZiBrU3vBUzc0qRffO2M3GayIILYqsN2YoBBP9vnX5hN6bXSNdSmh?=
 =?us-ascii?Q?W/XNoL2mw2CAT/D4WgmL1cHPme0HwMHqIQecjWU8+381NlDhMdCibYGKgSvX?=
 =?us-ascii?Q?6kdKDwlnsS6cPirA1FqDY1qAxTW/xqaf/BvVQdMyE4hcOCOAZVDoqPIKHqzm?=
 =?us-ascii?Q?VaP/qKnWeDAZOwSC1kCrMQNdnSzdse4gq50ypGQ1F2lW3C32Ir2lfbmPFEAx?=
 =?us-ascii?Q?j8NGpGH5o3obR8uTChT5d89UGZFZJDF4w3aDG9mRSjCLEiXlRU1pJc9yXpcQ?=
 =?us-ascii?Q?XWKiPOuXk3veQtQhx52EVMADv54pXaJvcCOesAWIUD0OYb3OVuTO4HbIA98b?=
 =?us-ascii?Q?2CdrJSQ5epeMPB5iePg/iNNnc4XIk0vdnkerGz0Sxeg8dAV7lLKjenGGNkJf?=
 =?us-ascii?Q?AmDTV4U29egDx96SRGottnsBiiOYd0y5WVIXijdTFjFQNnUc8F6gpJY2klkT?=
 =?us-ascii?Q?eYynwL+UBw8tKFKX53j1KQsTerhKp1AdtzJYyW9JaJzslnQtNwPIPShC9F4G?=
 =?us-ascii?Q?8IvTKWGBhyQuk41SgaEJRzw1gPpyVv2hlQKYLuF9RlMBs90/lmotpxu2M9Wv?=
 =?us-ascii?Q?ZKkVZouz/voM3IrBl31wqEflPF2c1Z++GP/1E4KkdgqZiACRn6Bs4Cq2ceje?=
 =?us-ascii?Q?++4geb9aCkXqF0LEd3I6RhNO/W3ZnZnI9dKl1IC9JiLa+gFmj4sOmlP7Yi/S?=
 =?us-ascii?Q?WQXMn2XkMJwrN93F9QT9yX5ZR/o1GfqAx6/8aTxphQ/t3olGoLFjbjmz0Bta?=
 =?us-ascii?Q?CpAWqEdO6dTb390CU/l8S8IpLwltnMI75R/TO/YgHHyfd/0Ehh/askHbP347?=
 =?us-ascii?Q?aCQfZQKD6VPxjg3EzRZ7kp62lzInUgtqqRZoq2TcrjHpcJqgGGR34VqYBX6G?=
 =?us-ascii?Q?dL0IG+gj5GkkPb3L0gn91YxuiLPNInGtdEeQserFTu7Pb/ZackdXDLGkwhZ4?=
 =?us-ascii?Q?0cZ7O1o3uBZ5oP/T15shrYAz2SjcTo3s8Eg6h4RldfOZneHWGInX9bot3555?=
 =?us-ascii?Q?KZ9I7ZiuQ3ffwdwfz+BSAsJ+7ciD7ObsVORXUFoUMOY4Ec+6kQIQ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 073171aa-cd75-494a-dced-08debce824f8
X-MS-Exchange-CrossTenant-AuthSource: LV3PR12MB9356.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 18:37:17.3260
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VRL09sWLAmcj6VOcDwq0/DqNmwA2f0jZM2RI4pNG1rQpD6GTOb6DlB6//Lao38sET7ImTecZyGAXhlHbtZGbjg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF01781787B
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:23 -0700
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

cpumask_show() is a sysfs show callback. Use sysfs_emit() and
cpumask_pr_args() to emit the mask.

This prepares for removing cpumap_print_to_pagebuf().

Signed-off-by: Yury Norov <ynorov@nvidia.com>
---
 drivers/powercap/intel_rapl_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/powercap/intel_rapl_common.c b/drivers/powercap/intel_rapl_common.c
index a8dd02dff0a0..b38d4a7799a8 100644
--- a/drivers/powercap/intel_rapl_common.c
+++ b/drivers/powercap/intel_rapl_common.c
@@ -1441,7 +1441,7 @@ static ssize_t cpumask_show(struct device *dev,
 	}
 	cpus_read_unlock();
 
-	ret = cpumap_print_to_pagebuf(true, buf, cpu_mask);
+	ret = sysfs_emit(buf, "%*pbl\n", cpumask_pr_args(cpu_mask));
 
 	free_cpumask_var(cpu_mask);
 
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
