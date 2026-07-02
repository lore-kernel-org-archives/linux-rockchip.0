Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1A57C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q2XOYEkDsyk1g1ULODZKO7EVbiyKwj5+jTpo2pJ/LfM=; b=cCGfh4PIPHjVKg
	dSJWfVibBsGJRMXRDO/u/W8liejQTY3VqQGxVOJFeX+4vXwYl3XstUW/1ek4nNhMLYph7F492HsgA
	27iYcA37FiGO4xnEEgWpDZB1IypHS5q7QELbNZYxMKTkCaP+lxkqw7fO/lN5aPw/T5mla70p8nngD
	bIsfcxC9wsi8wWPA9IkO6edZ8ib8PjBoIeu4M4UNyw0HZmvZYM7w5ed/B0Jprv2kdZLXNX0cInXwT
	7Ty0kEQ6aDOQ5OVYd5PC68ujuxvUoGCawPR/tlx3smpr3fOP1+ZJVlMJ3se4/OiQKQXgkBFtodnlH
	FdMJTCZV92wMPujmOKFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkWH-00000001d8Q-1baH;
	Thu, 09 Jul 2026 08:54:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJeQ-00000004rvN-25s4;
	Thu, 02 Jul 2026 15:48:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Sender:Reply-To:Content-ID:Content-Description;
	bh=5atlpZlTCUF3UwiQeLgveR9ESY+oLknBUYFppcenK8w=; b=VAkXcVq4QScdqpALMEISbrrQMm
	clnQ3hz+K7vjvenggnxXn+wHZ/gapGswfeX7ofYjT7vbDWoEZYtgwpiKF2hf9fPS1mHr6eLvwZsLG
	qkVNzfSkjCbl+cbCPkLcADb6JW0sXio5b/rRANg3QL6UHEeedaKvWTZNCj1umgNY6xhenSnBgjr/a
	OM46ZfvFUnVE6pAr7BAitaEBmt7R7RNPclbakXB7w21z84ZQAXt13aSUKsoWRRTl/rWQfFnOKPEge
	ezhgOHiPvbSSnuXDWZNMUQNqM+xafNfj43gqhrtupIK0lmvs5fAqvB0DwIj/DzPR/ZXWSaFWopF+E
	luExM+Hw==;
Received: from mail-centralusazon11010040.outbound.protection.outlook.com ([52.101.61.40] helo=DM1PR04CU001.outbound.protection.outlook.com)
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wfJeK-00000003zig-0TJO;
	Thu, 02 Jul 2026 15:48:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wRPq1hkqEZmixNVZNQl1vteub6Ddx7gsZ8HIB91IgmRjtXZllrqI+7WrnhjtwHCiluByYCJgAUrpUeCC7TQmilk5pKPfm+9qfpBJlkqbgYqo74NPdpB8YoSLPDdtGB2dJutKLSuAg+yLilqCxmStvRTvoh38HrwptHLwW9DcFp/vKvX1S1wrjI8N28PVbc9vHg7OBTORwqS8w8wRle5AS2hszkHvfwBeyfJEx1Qz0X3uO0OuUD+LjWG+BcIdPj4wR15e16gzSWtinB6jOCxsIvB1yC9o0zJu/ssm5a2tKDEEoy5vVUh9HfC8U7VGRvt8zwHz61Agov25A3/SGdiHAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5atlpZlTCUF3UwiQeLgveR9ESY+oLknBUYFppcenK8w=;
 b=mWQ4LJgqN8qk22Pxymjt1g++/Fl8Eahcf97I0xrVYeIKz5zvyLo9zLvNAYjHa0u2r77AVkvYwyVl805X1Rs+7L6iTJn14lf6u8rql9US+LHuGH/5NZaV1Jj1H9eqMc/LgZlScaTjwJDXn86jh7WtXA7pGun+W6uf6fkjzWXyvjC1SerIxV9ZfLpmpShf/pwuTFdy5+4WCkMKmSHmtru3uzeRd+ClN1yWZ29usXrcb7AhS7UwaYcmHWJj/RZFADLIYIaAoMYpuEQ3blLQfBcEDLHx9jUTusqErDWdha8VJTvLAtRykf+qPjmgmDqh20FUjiucA2bsCPwoTY49QMuDVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5atlpZlTCUF3UwiQeLgveR9ESY+oLknBUYFppcenK8w=;
 b=b6vnOoBUjTtqKSfr2kIUnoBk0ZV3uyx2Q8fpq0Cbp3IB9RG8rBb02BdTle1WZRnOjjS7vEoUEK3HL+h1xoQCpei6+KPGwN8PdJUowI/hhbObrgT8mwfDwPt+f8nKsEEB35ynk5Dd3gKbypXpnZWKvkUV6wK5mGnclmT2VxV/HpCrYco/CbQuDQd6laMG7Wj82kr+/GebYOvaJ3+JcY165eS+/uHl8xK+f4e0G0OkYMi7ryreXxpMsKMjsxWmClIJmwkTRY4AHTLNiVYvj9iryZiNsb1+2W9gvEpW/qyVs8eWzX/CAUc7trwgWiJnR2cHNj8NYDl07ENWmXRgCo9wZA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV3PR12MB9356.namprd12.prod.outlook.com (2603:10b6:408:20c::21)
 by SA1PR12MB9471.namprd12.prod.outlook.com (2603:10b6:806:458::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Thu, 2 Jul
 2026 15:48:13 +0000
Received: from LV3PR12MB9356.namprd12.prod.outlook.com
 ([fe80::1c36:31b4:c420:6286]) by LV3PR12MB9356.namprd12.prod.outlook.com
 ([fe80::1c36:31b4:c420:6286%5]) with mapi id 15.21.0181.009; Thu, 2 Jul 2026
 15:48:13 +0000
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
Subject: [PATCH v2 11/11] lib/bitmap-str: get rid of cpumap_print_to_pagebuf()
Date: Thu,  2 Jul 2026 11:47:24 -0400
Message-ID: <20260702154725.185376-12-ynorov@nvidia.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260702154725.185376-1-ynorov@nvidia.com>
References: <20260702154725.185376-1-ynorov@nvidia.com>
X-ClientProxiedBy: SJ0PR13CA0051.namprd13.prod.outlook.com
 (2603:10b6:a03:2c2::26) To LV3PR12MB9356.namprd12.prod.outlook.com
 (2603:10b6:408:20c::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR12MB9356:EE_|SA1PR12MB9471:EE_
X-MS-Office365-Filtering-Correlation-Id: bcb5108f-7216-4883-017e-08ded851525a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|23010399003|1800799024|366016|22082099003|18002099003|11063799006|5023799004|56012099006|3023799007|6133799003;
X-Microsoft-Antispam-Message-Info: q1KTQgiU2bq+WRthXHABHnScX5V1A96/QbfTmnPRqsDBXeu1BtK5B7LY7amaQecx72IOjOXJiGwLptQWmo+YcC9sG3qWjTmd1/v1DQInfDSmF27T2qjZZomYq/mAptU2Vj6vkwtYZ6Gu6hnbifrHWUNfME0T9pk15FQB0v/20PYlu1g3osZC0XpVvU31691e9fNgWDA0I0olAeqRt6S67MYcaNQh3oi9R/OEPObKkHxL6CEFq1tBF05912qMLArF5Hk7iNh3CnFcdMqQ0FzE7JJdg5hyFlxbCeyhUBpN0Fm5OnaxuLFubSR2e5ViaGh9Yt3KUUxaG6yZrJrKYoYUaeoVpZQFdx6uvcgE2MSyZhyusn1P592Ld0pTqizCQ2psKi8ihRB6GhZ4JmOF1Hov1PnZ/+q3JoZ3g+6610kp2MM1qpPYYgLhFdp3yrfF7rJQUKcGUuhqjS4D1ddRz7kS4YYz5+d2YG9R1WBsNZKNxy85SVsFjGMvRX4x0slBP/zUtozTTbKHJFXdCKzKI+Qpey4rzjo5R6624hU/HFlv5A367CvvdQuoMDf71S5Ti4HgcQKoURmmKALquLs0BIlXf0yNCH/uLwhwpmih0P+heO/hTcj0X+8ieBtvpFr0Tbx3Chu8oU9hjE4kfAVUpmtXrA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV3PR12MB9356.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(23010399003)(1800799024)(366016)(22082099003)(18002099003)(11063799006)(5023799004)(56012099006)(3023799007)(6133799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KQnme4nSXXWQe/FUhVpYL9w1fdK2hIUP6eKiN0EhdqELUQTZm81unknZKpXw?=
 =?us-ascii?Q?tf2rwIWdOdJxwPMvCH2O7vsSadpg2x12Qr0zAL/5yCsqtq2DiqLwRJCalOq0?=
 =?us-ascii?Q?YAw+aMe33TZBtQSdrCSbWjCQfClGqgeA0mA2asWPJD83lDbMr1sAxEg+05Gw?=
 =?us-ascii?Q?OqC5ydc4Qyz7lF/J5xgvPd43Utmn4mq7893LQuRmXegLS1vLsoq1B5gvS+ob?=
 =?us-ascii?Q?XJ49JlcoAaO6cQdGG6Ufmkgslg2SYVa4P1YJDBvj4MA5R1N8cCuYqunQuteg?=
 =?us-ascii?Q?vNdMGz24NFAFZlwg7qaV+MrvN4x4B1+nBkV1lyI1FOktFovOTUqGFjkuzCtT?=
 =?us-ascii?Q?9m/qm/mDpcAbX1xHM81JL6qxLqgPHPkoHK+8HjpxUvV06Vy1RDhqCdgkq23p?=
 =?us-ascii?Q?oT1g1XAOUm3fEc3PmEDpuKWnFgwZXKQcLtx9Nstos2qS9eTNLhEtKpRhM1yy?=
 =?us-ascii?Q?pWJUwxozYoSkUzpMZZUmWzy8HFzq64QVE2QeQninGTuJXs4FXquu+Cnupjwq?=
 =?us-ascii?Q?BygY4N+i8LD6hfCshXVTxNtPhzB1ZMyNng3y63f9D1GoqPWUId5hEDwsAdvo?=
 =?us-ascii?Q?4la0fA0z2vzjhlKHHL7fZTwbScQHYKcfqn8xOoartVY1jX1G1xFJoA/T7qZm?=
 =?us-ascii?Q?uw7n4AElOjb+wbZzeOhw6EmsocvdblqJjVTN1f9bHqPcpkH7b0tEHq2BUIS1?=
 =?us-ascii?Q?+4T8W23a+mvEqc0dV3TH32maLRjhhVG2lB650P40R9/k9pckla+FVrImAxM7?=
 =?us-ascii?Q?xkDFEFFlmDWO1pSrhv5hQqZToMGJGS7QlHsOU9zsvnquvkm6BErfTLfdU6rW?=
 =?us-ascii?Q?D+JbDuwYJrVTwjl7MU3X68lK3pNi9T89YNktgpaH7QWcNDvDehU17arr7tOM?=
 =?us-ascii?Q?L2t5lLMKSjG3M6CrkY7iAmAG0/pETa7BAaLLHrS4E9XDRz33EtswPyF48VvN?=
 =?us-ascii?Q?yRIJCBXkNT2RwYzYFVxV0T7UrKowEZdZXrwmwvsjVbcU2q2CfCrPf/zp1gn4?=
 =?us-ascii?Q?b/AaOG28RsT3MdglMOa0ip+slxIMmV0AW0l9x/j5QeMbHR8Ry+FiG0n7Rd9+?=
 =?us-ascii?Q?gu1w86eyh73YGTYk0xv7UHnw/xiVbnvGiXsGBu+3B87UtnZWcpWgkP+zhxQu?=
 =?us-ascii?Q?Gjm0A6iK3/X3XHw6WeMG/TYmc3nspbTz18v881Nox/Q3dbSkLQvsqsl6U/6O?=
 =?us-ascii?Q?l1ZuKG2yzpFIjwD7QFtbBDr5wkwEf8Uu+os/51h6YJ0lQ8ymEFs8uwzRlKQG?=
 =?us-ascii?Q?HLzFKOmypzL2dFxl8cAt5u8B4lpxWrBaMlpBM5znRr6zv6GniNoLWjQVKYIr?=
 =?us-ascii?Q?goFbaMMRFVX7WPP9n9sX5h5h24koU7HPKQSCYY5+q8IsDKRuTV8TXJqLEltp?=
 =?us-ascii?Q?TMT6EZkafgBkutyC3+vYEetQmCDRdM+tip1COiQkhq8/AX4eOPnIWLWyrjGV?=
 =?us-ascii?Q?Ffuhbp3qQXxcyZZNmb2Y5k1ojtrXbbgAA++U3bawpzm+30NoLhX/5shi5vCr?=
 =?us-ascii?Q?i6kibuYT4LPJYVpBoLWkPc2BGg70gsEBGqh+JfTJnMa1VTj1vFQux9+DBp90?=
 =?us-ascii?Q?b9vCrEj+renIkkvRkj3gXGwCcv45iCduhlnsffZ5OToxBFRHYWmyPiPkjdEM?=
 =?us-ascii?Q?tPC0Bv9/Wv8wmtJnk0LDUtMYvov3PsOFaH4/9ixZE5aS5kPG4j9XVFtSrsEJ?=
 =?us-ascii?Q?Ox81qTHWtsAkYT2M8t+zgxTpBNvcRbu4Rgoxdiu9alvOilEwVNtgPQ+CrSz0?=
 =?us-ascii?Q?jHnH0dmZmw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcb5108f-7216-4883-017e-08ded851525a
X-MS-Exchange-CrossTenant-AuthSource: LV3PR12MB9356.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2026 15:48:12.0054
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VXhMNNXWB6ODo+hk2RmazhV1VbVrQX3+9VQsrOuPSBKolDfiW4zkiyd7Cm5OpP+3U1yWLzQQnG2bxt7+4bmKJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR12MB9471
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_164824_188728_8CC25CF7 
X-CRM114-Status: GOOD (  18.03  )
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

Now that all users of the function are switched to the alternatives,
drop the function.

Signed-off-by: Yury Norov <ynorov@nvidia.com>
---
 include/linux/cpumask.h | 19 -------------------
 lib/bitmap-str.c        |  9 ++++-----
 2 files changed, 4 insertions(+), 24 deletions(-)

diff --git a/include/linux/cpumask.h b/include/linux/cpumask.h
index d3cda0544954..4c8bb6953107 100644
--- a/include/linux/cpumask.h
+++ b/include/linux/cpumask.h
@@ -13,7 +13,6 @@
 #include <linux/cpumask_types.h>
 #include <linux/gfp_types.h>
 #include <linux/numa.h>
-#include <linux/sprintf.h>
 #include <linux/threads.h>
 #include <linux/types.h>
 #include <vdso/page.h>
@@ -1315,24 +1314,6 @@ static __always_inline bool cpu_dying(unsigned int cpu)
 }
 #endif /* NR_CPUS > BITS_PER_LONG */
 
-/**
- * cpumap_print_to_pagebuf  - copies the cpumask into the buffer either
- *	as comma-separated list of cpus or hex values of cpumask
- * @list: indicates whether the cpumap must be list
- * @mask: the cpumask to copy
- * @buf: the buffer to copy into
- *
- * Return: the length of the (null-terminated) @buf string, zero if
- * nothing is copied.
- */
-static __always_inline ssize_t
-cpumap_print_to_pagebuf(bool list, char *buf, const struct cpumask *mask)
-{
-	/* Opencode offset_in_page(buf) to not include linux/mm.h */
-	return scnprintf(buf, PAGE_SIZE - ((unsigned long)buf & ~PAGE_MASK),
-			 list ? "%*pbl\n" : "%*pb\n", cpumask_pr_args(mask));
-}
-
 /**
  * cpumap_print_bitmask_to_buf  - copies the cpumask into the buffer as
  *	hex values of cpumask
diff --git a/lib/bitmap-str.c b/lib/bitmap-str.c
index 26d36c938c6a..dd9aa0635fa5 100644
--- a/lib/bitmap-str.c
+++ b/lib/bitmap-str.c
@@ -75,8 +75,7 @@ static int bitmap_print_to_buf(bool list, char *buf, const unsigned long *maskp,
  * @off: in the string from which we are copying, We copy to @buf
  * @count: the maximum number of bytes to print
  *
- * The sprintf("%*pb[l]") is used indirectly via its cpumap wrapper
- * cpumap_print_to_pagebuf() or directly by drivers to export hexadecimal
+ * The sprintf("%*pb[l]") format is used by drivers to export hexadecimal
  * bitmask and decimal list to userspace by sysfs ABI.
  * Drivers might be using a normal attribute for this kind of ABIs. A
  * normal attribute typically has show entry as below::
@@ -115,9 +114,9 @@ static int bitmap_print_to_buf(bool list, char *buf, const unsigned long *maskp,
  * parameters such as off, count from bin_attribute show entry to this API.
  *
  * The role of cpumap_print_bitmask_to_buf() and cpumap_print_list_to_buf()
- * is similar with cpumap_print_to_pagebuf(),  the difference is that
- * scnprintf("%*pb[l]") mainly serves sysfs attribute with the assumption
- * the destination buffer is exactly one page and won't be more than one page.
+ * is similar to direct sysfs_emit("%*pb[l]") formatting, but the latter
+ * assumes the destination buffer is exactly one page and won't be more than
+ * one page.
  * cpumap_print_bitmask_to_buf() and cpumap_print_list_to_buf(), on the other
  * hand, mainly serves bin_attribute which doesn't work with exact one page,
  * and it can break the size limit of converted decimal list and hexadecimal
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
