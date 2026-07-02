Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 789A7C44506
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C4Gkb18LvvvRZTFQSrMGGU5ZmGEzPW1iF+xb7fxe82k=; b=TJDixWRlr34w/j
	94aZJYR/lV++8LibZMKkT64MQFsGo4O17dAMeDRFKtgw89Px5yi0MGUaGWPqLQ8dJ28HdkiShRx6K
	OoP0s0vmOutmJc2n7sBhrHLfRqSeh2qQeZwK+dxE4aSrFldAFZ41e4tGAPMF9m0YEcfNtQ/BSL0iy
	ADpN/dhUguT0DLmGazTF2p5DMy9ZIpR7Pe+ZO1uaR8wSoVkEh9HSw3UWKv6pFfdLCnmamzLpC/U/z
	5oq8kYvB6u0x43P1u5qyj/yjfiAKRJg2p8uUzJN4h4HPFVMaRkSeydjTzeR8f9jAExfUMFQbZOl2v
	X63FxFGtsDnqmC5PRyMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkWF-00000001d41-3EHb;
	Thu, 09 Jul 2026 08:54:07 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJeI-00000004rmN-1ave;
	Thu, 02 Jul 2026 15:48:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Sender:Reply-To:Content-ID:Content-Description;
	bh=mkWOYoNDXUKT9/dwlA3SRdGXjDO/1ApEoYxQcZI+x0U=; b=mW3Rx+jMSJa2hmUigxVGeZ6xoX
	fV5trHY3R1B7choovarCBrNSVSr8juThG/dLuI1MpK95xiM55fBgWgFwq7+tBQ0tSrGehHV/LGrjj
	hcDcCcO9Gvnt96uasmW2OGX2RSGvsVuViKSy6rAPU0Jg9desakEqA/6WL6tFFuofr8iFaUxFQ1Xrz
	6GXhght51Au6LKpJYbYjv4UP2oWz4FeLS9GX65/o0dzI0n2r3UzGXTCCuj9wBCFq3nDdKZLczf9LC
	KkAo6MXvUoTEU65ENelnx4zLTrM5cptaILcusBkaHLiMGQ/3lmqqIFhBHORl4Zx55h4CCM5V2V91i
	cmR3n+ug==;
Received: from mail-centralusazon11010040.outbound.protection.outlook.com ([52.101.61.40] helo=DM1PR04CU001.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wfJeD-00000003zig-0aZd;
	Thu, 02 Jul 2026 15:48:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aKb3xSJTLpH/bfZuZ3oYrEynUeDuzg3xjFP2FX/NFcuAA8CgSI4r3Z5gP2j5aKqONDPu4EDv/b/rSz9Z5GlkaE/DV43P1S+9+MVgKUi1Pp//cGbKkl58pcqWtVbIkiwBzYz6qQq+h7gf/QcFSN4FBGsTrugzN82e3WaxmFD/+iuVL5+6ECAqZviwwTw5KIdqbMADFiq21PctjOE9XTBXqG3h3RomwFme3L/V5emGs9rOckSzVTguhz+MEH9TXEeloH2CMBfHShZ9ANUl1Vp9iEKok1p8vdOIaCLa/ByuSGWiWXH+krDkyuEL6Mwn2mDPtDX5xtgbB+VysW5Qpqxpjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mkWOYoNDXUKT9/dwlA3SRdGXjDO/1ApEoYxQcZI+x0U=;
 b=e8z2eP/R5roSpEjimKayolnoNYIfIWSf6HczRTDrHTNLlvpF5y3Uj4StRBXOMq0yAkJTGOvxOccXOjuhUX+kdUhsjyR924V+2oGFc0OgoOEsezbJbv3sBms0RwBV1NytxvfR3LXUMZ2FtGRQz/IFjeVcRaw8kxRdSrZ+aSgs0ehII6HUDOJGOLC71bjSJVATbJ3MuEYzxIFvND4k8j6m0jYiyv7h6rqNQcJATgbcVnFEN4uScy2LwWnY21PRQaVULPJ/fWlE8gdt8mx0CsbZdzYK5ao/LucNAq7CzgNFlsxCFTMq21Jsvv83K5XHFkba5DCUAZ6/GhcGAgh7J2/RDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mkWOYoNDXUKT9/dwlA3SRdGXjDO/1ApEoYxQcZI+x0U=;
 b=aXQz5UnF/M/6yM9+UrnUZAPZcfgKGaz0EEMI/ztjEkjASwHc+ClXAVDR9X+R9jhIW0f5J6vRzFIqKUV71DgN+Mg3YAtXK/EOF9wh7E3BmQMket6rkUaGTVzIRaHpmFfv0NlymQstK6tDuFkyKC+XEMdpVslgKTtZPslhLqk2wVAen1j2aZbPONgWWUnDoc8yEL51GBkDjxOnkry86a0gitj1XRL4OxuqjqPx3F6EZ73UArX7VVBwE3zgreIMJl/xwyoxd9LSJzkbLrSUp2CBxH82CJYQSYQio4MjxziuEUfDg7NEiZAC4t92F/pJIIcB7qdyvaPrKjd+Sa0GmFAvFg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV3PR12MB9356.namprd12.prod.outlook.com (2603:10b6:408:20c::21)
 by SA1PR12MB9471.namprd12.prod.outlook.com (2603:10b6:806:458::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Thu, 2 Jul
 2026 15:48:05 +0000
Received: from LV3PR12MB9356.namprd12.prod.outlook.com
 ([fe80::1c36:31b4:c420:6286]) by LV3PR12MB9356.namprd12.prod.outlook.com
 ([fe80::1c36:31b4:c420:6286%5]) with mapi id 15.21.0181.009; Thu, 2 Jul 2026
 15:48:05 +0000
From: Yury Norov <ynorov@nvidia.com>
To: Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Yury Norov <ynorov@nvidia.com>
Cc: "Russell King" <linux@armlinux.org.uk>,
	"Frank Li" <Frank.Li@nxp.com>,
	"Sascha Hauer" <s.hauer@pengutronix.de>,
	"Pengutronix Kernel Team" <kernel@pengutronix.de>,
	"Fabio Estevam" <festevam@gmail.com>,
	"Madhavan Srinivasan" <maddy@linux.ibm.com>,
	"Michael Ellerman" <mpe@ellerman.id.au>,
	"Nicholas Piggin" <npiggin@gmail.com>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	"Peter Zijlstra" <peterz@infradead.org>,
	"Ingo Molnar" <mingo@redhat.com>,
	"Arnaldo Carvalho de Melo" <acme@kernel.org>,
	"Namhyung Kim" <namhyung@kernel.org>,
	"Mark Rutland" <mark.rutland@arm.com>,
	"Alexander Shishkin" <alexander.shishkin@linux.intel.com>,
	"Jiri Olsa" <jolsa@kernel.org>,
	"Ian Rogers" <irogers@google.com>,
	"Adrian Hunter" <adrian.hunter@intel.com>,
	"James Clark" <james.clark@linaro.org>,
	"Thomas Gleixner" <tglx@kernel.org>,
	"Borislav Petkov" <bp@alien8.de>,
	"Dave Hansen" <dave.hansen@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	"Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
	"Danilo Krummrich" <dakr@kernel.org>,
	"Chanwoo Choi" <cw00.choi@samsung.com>,
	"MyungJoo Ham" <myungjoo.ham@samsung.com>,
	"Kyungmin Park" <kyungmin.park@samsung.com>,
	"Heiko Stuebner" <heiko@sntech.de>,
	"Xu Yilun" <yilun.xu@intel.com>,
	"Tom Rix" <trix@redhat.com>,
	"Moritz Fischer" <mdf@kernel.org>,
	"Yicong Yang" <yangyicong@hisilicon.com>,
	"Jonathan Cameron" <jic23@kernel.org>,
	"Dennis Dalessandro" <dennis.dalessandro@cornelisnetworks.com>,
	"Jason Gunthorpe" <jgg@ziepe.ca>,
	"Leon Romanovsky" <leon@kernel.org>,
	"Bjorn Helgaas" <bhelgaas@google.com>,
	"Shuai Xue" <xueshuai@linux.alibaba.com>,
	"Will Deacon" <will@kernel.org>,
	"Jiucheng Xu" <jiucheng.xu@amlogic.com>,
	"Neil Armstrong" <neil.armstrong@linaro.org>,
	"Kevin Hilman" <khilman@baylibre.com>,
	"Jerome Brunet" <jbrunet@baylibre.com>,
	"Martin Blumenstingl" <martin.blumenstingl@googlemail.com>,
	"Robin Murphy" <robin.murphy@arm.com>,
	"Jing Zhang" <renyu.zj@linux.alibaba.com>,
	"Xu Yang" <xu.yang_2@nxp.com>,
	"Linu Cherian" <lcherian@marvell.com>,
	"Gowthami Thiagarajan" <gthiagarajan@marvell.com>,
	"Ji Sheng Teoh" <jisheng.teoh@starfivetech.com>,
	"Khuong Dinh" <khuong@os.amperecomputing.com>,
	"Yury Norov" <yury.norov@gmail.com>,
	"Kees Cook" <kees@kernel.org>,
	=?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>,
	"Aboorva Devarajan" <aboorvad@linux.ibm.com>,
	"Ilkka Koskinen" <ilkka@os.amperecomputing.com>,
	"Besar Wicaksono" <bwicaksono@nvidia.com>,
	"Ma Ke" <make24@iscas.ac.cn>,
	"Chengwen Feng" <fengchengwen@huawei.com>,
	Ritesh Harjani <ritesh.list@gmail.com>,
	Yushan Wang <wangyushan12@huawei.com>,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-perf-users@vger.kernel.org,
	x86@kernel.org,
	driver-core@lists.linux.dev,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-fpga@vger.kernel.org,
	linux-rdma@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-amlogic@lists.infradead.org,
	linux-cxl@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH v2 09/11] PCI/sysfs: Use sysfs_emit() for cpumask show callbacks
Date: Thu,  2 Jul 2026 11:47:22 -0400
Message-ID: <20260702154725.185376-10-ynorov@nvidia.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260702154725.185376-1-ynorov@nvidia.com>
References: <20260702154725.185376-1-ynorov@nvidia.com>
X-ClientProxiedBy: SJ0PR05CA0140.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::25) To LV3PR12MB9356.namprd12.prod.outlook.com
 (2603:10b6:408:20c::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR12MB9356:EE_|SA1PR12MB9471:EE_
X-MS-Office365-Filtering-Correlation-Id: ec35f984-63e9-4bf7-d3bb-08ded8514e8c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|23010399003|1800799024|366016|22082099003|18002099003|11063799006|56012099006|6133799003;
X-Microsoft-Antispam-Message-Info: Dw5vaMBO/8iRt8eANDeNIEdMD1a7mcSJdCkoddf1aP2KEl06seU9WR9rVWe1NJWNyNXL4YSIkfWHLCCzCSQNSIbwfTyXaIHCbua+S+mkEbZTmqRY6kAOeTS22pcjohhO2pir1Ssy3eqb9VfuT5SSxBlw/ypq/RkCk3FuLC1b4KsSTJDvlW8a58bI4nRuo2eMD6/JNhjEbB3EuuNSRk82zOq4ehmmIVMeRrTaDycjfI8EexgQDI9xfhveYiS3T5SUKff4eyaeXU5/xPauOrP9kZa8zX4dG7ZThWO7HE2vfVizpky96yjG5myrOrIf6uGhsmPkfdx11g9697p1LI7Yc3zCEF4J9gF9zbSpFREC6ZacsaktaJvNzkgsPvDaG8vS7vyD/KBN1jhXnjQ2hryWCWVn4SXB0on/Zvq3quleOcknO/6S736wpRPD0zi+68nFaaaFCL3hceP2tGOe5pHlnzJzDngyJ59JSssZjfjmw2ICM5bFAwp3aaVwc2s+FSM2WIL5/zp/pVLsbplEFPk+aPSd4KkW+HiOlXdO7/MW4wqkB+mcuNkKqVjXPqOzmT0+CDjDXtyYRA4C6HhuKXyMG+lGFMFw4w6nIVAdpYHK1suIhSoatYl2EMfPy/QWMlcrsZ3tHmiQFaTR4zwFjWF/o5VLo/80LNXBSJTrLFux9SY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV3PR12MB9356.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(23010399003)(1800799024)(366016)(22082099003)(18002099003)(11063799006)(56012099006)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7xKixeSjy+iKINMrC1PdhiRBQaOIzlC2+dMS3wzYtY45Ut5xKppkA1YcvJMa?=
 =?us-ascii?Q?vSDm/b6CQoiOke6zvDhP9rBXgY2xRZILkjp17wboYNLTzKjwPm8i1xAWPUon?=
 =?us-ascii?Q?+sE6nyzFGImBXihNFXCxs4KiQCa7Mrn4JmkyxA1JBUAoyatXS0sJXhuIoz8r?=
 =?us-ascii?Q?MSTIdwz8zXlKYZu279yl93oUeM1HKusq9qEx7V/bJhqEjlz99UmAJr3Fm31n?=
 =?us-ascii?Q?NDG+t+Y2i/AR2FKT8k7XVjZCPuIrHiBQtGDyneidSYuV37Gge5nKRTyqHSe5?=
 =?us-ascii?Q?1Xher2J4HQ4V624EGUPHWMt4fIhCslqewfvsipkFezlQXjIHUjJ+7yI9Pa/Z?=
 =?us-ascii?Q?X5xYZRVnceuKUvyJiwVmT310BVIWo8+Y6Xb7NxWHm0cjzcDQnnfrcRPyLhio?=
 =?us-ascii?Q?ZOlk5zTUoRXGV3KdPMFeL7blgfBGWeT0Ip6I5feUMVtY3GvZVZsH3r3jragd?=
 =?us-ascii?Q?vUia/KAJNaZEy0nzwxJvhGaNbzKboFbNkD/GpieCYHGu2EYF0CENks0yBhPM?=
 =?us-ascii?Q?Xh8Z+5DGwRPn+oizo5UY5D1u+9I6xhjyv9igUwpervMAltZpDqb76fFwedSi?=
 =?us-ascii?Q?oqdUv5wc7IXgbNqducme7NqCnU4TPGIW4/v7KYkfZ/In3Z/3+UEnMPH+6X7/?=
 =?us-ascii?Q?FNjoIXLoze3SSwl6RKlO6ZB0pzzS3M2QobEBxUXqZModvcjJz3lGEi1o5qZe?=
 =?us-ascii?Q?G199PtHiPDN8YHBENSHLaJrY1KciUbY3mmHhgYmdx+Ol4jA3LIo3hnwCu1yE?=
 =?us-ascii?Q?4qwW1GcdIhi3m+FCpWUEeCEc/LBlWifwI+e1hs4EUwz/lhd/dMUxIKf1dkp/?=
 =?us-ascii?Q?qp8eNTEZES0z8UyFbapDcRI+lZ04sCzAopuum2ZsPUR9+AV2clOALFN1EOji?=
 =?us-ascii?Q?WPH5mIH53jpt6t698oIcVwmsBxh+hQyYlbVrO5h4INuIBhokpZK+Z47V4Scf?=
 =?us-ascii?Q?cRwleNdNbT2CQoTwfctsaWLB8zPbhO/T9QPONhmv6ezgWZ9UFtdiwRRZ994N?=
 =?us-ascii?Q?+rrJ+2Mfy1zaO+VxvqpsugYhyGRVMNiFvYiVdYWmFsD4s20OYxU9CrhwTRC7?=
 =?us-ascii?Q?t6vy0tJ+kwi+0O7zaQO3hTzZArsl5TVcDb+80OakmNpFVFALhJnHzbHk43gS?=
 =?us-ascii?Q?9wLFs5yArmJOKh5YK56sDERQXi0VBPLHD3j1RDqKslpY/j1AlgzhjQTZIWVS?=
 =?us-ascii?Q?5Gvq1N4IJihWNrjdhBOXDk+0tQ8XFXJxim68z42zdXxC+RWTIq393v+89RSc?=
 =?us-ascii?Q?okBVzntY6RDVEa8RW42oktRYuHQG/FqZlkNH09CI8XuLGA7oCYGz2JnRTVId?=
 =?us-ascii?Q?9KVZ3qWOsCjoqxlnks8nqdcptbvSSfY/Ir6V/Vwo+HzpR0EaZNo6T8E/H+uy?=
 =?us-ascii?Q?64LOYp5CcNQyF/Km49V3+fRe/qe25Tg+gJiVd3I8KkQLH60Uj1z8YCpO548E?=
 =?us-ascii?Q?Wt/5ZwmOzOxxGzha4UMQagXI9d4yXeWfrzsSDOdAtZ949Z0BPuMWGdBXzqF/?=
 =?us-ascii?Q?8fHe1NRdDF9xHbBjMSmUB3/eo4UY+m5+cduDF4IYmpzb+Md6MG9LNXiuOUJx?=
 =?us-ascii?Q?gLUewLNiFZZo/yUTfupjloJvXivLQmgmnAY0Gsa4t1DiCgWIj+dggLqu+uf+?=
 =?us-ascii?Q?v8gMTztu3x8oH3FUnCIC85f/c7sBxUfjzOVDudV2E8aK33V8gJk0++OkznsA?=
 =?us-ascii?Q?WGo6zdx835731GrZhdrd7opIskUqKUs2+3xqeoUo2t4VZoXjolPb6J5bk01F?=
 =?us-ascii?Q?DkfFpvP7/w=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec35f984-63e9-4bf7-d3bb-08ded8514e8c
X-MS-Exchange-CrossTenant-AuthSource: LV3PR12MB9356.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 15:48:05.6175
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f6s2nfUcH6hD542sY86PA9NOIxxJKgcjCifSAUtUV7DoAMAU3S+Q0yy+V8SWs8anS2VEXbU3fIAcK0dVQl+Qcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB9471
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_164817_309724_6D5EEC99 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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

These callbacks are sysfs show paths.

Use sysfs_emit() and cpumask_pr_args() to emit the masks.

This prepares for removing cpumap_print_to_pagebuf().

Signed-off-by: Yury Norov <ynorov@nvidia.com>
---
 drivers/pci/pci-sysfs.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci-sysfs.c b/drivers/pci/pci-sysfs.c
index 5ec0b245a69b..d6083552b287 100644
--- a/drivers/pci/pci-sysfs.c
+++ b/drivers/pci/pci-sysfs.c
@@ -112,7 +112,8 @@ static ssize_t pci_dev_show_local_cpu(struct device *dev, bool list,
 #else
 	mask = cpumask_of_pcibus(to_pci_dev(dev)->bus);
 #endif
-	return cpumap_print_to_pagebuf(list, buf, mask);
+	return sysfs_emit(buf, list ? "%*pbl\n" : "%*pb\n",
+			  cpumask_pr_args(mask));
 }
 
 static ssize_t local_cpus_show(struct device *dev,
@@ -137,7 +138,7 @@ static ssize_t cpuaffinity_show(struct device *dev,
 {
 	const struct cpumask *cpumask = cpumask_of_pcibus(to_pci_bus(dev));
 
-	return cpumap_print_to_pagebuf(false, buf, cpumask);
+	return sysfs_emit(buf, "%*pb\n", cpumask_pr_args(cpumask));
 }
 static DEVICE_ATTR_RO(cpuaffinity);
 
@@ -146,7 +147,7 @@ static ssize_t cpulistaffinity_show(struct device *dev,
 {
 	const struct cpumask *cpumask = cpumask_of_pcibus(to_pci_bus(dev));
 
-	return cpumap_print_to_pagebuf(true, buf, cpumask);
+	return sysfs_emit(buf, "%*pbl\n", cpumask_pr_args(cpumask));
 }
 static DEVICE_ATTR_RO(cpulistaffinity);
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
