Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B169C44508
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5C3hPkgk/9S9tZX8T13Bkpe8aqFtEHK5MSS4x+xhiv4=; b=coazS5GTBdNh+E
	MkeV49uMTSo6P9Vj/GudFxqWV01EQgxQRg5D0YSeWOEvAZ67UuwsJVznO1RanJTZ5vKv9xQ8X4HKb
	xfm3wEgGbNayp0Q8Gm38FCI1jUTOoyTV/rq6G19mqfH9wxICPt5oQdMKeAc5jGJZMTy6gOUg9Ku2H
	Wu/qQSFN9qCzh3/vx3vsryQh+kH62+NB48rHd/TOSKfpVPOoSNt08nsgt+IcNbY78rBVZRGXUUneh
	dvSMSYeDjKO2D4hGztpIyzoH2upgIAMNlxDwe8c42yvbLzhSmi0h2vxZ7OHzJXDuGqCP712m4PqFm
	TZ7a5Ao8F+cyctp6fhUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVO-00000001aZf-3U5j;
	Thu, 09 Jul 2026 08:53:14 +0000
Received: from mail-centralusazlp170100005.outbound.protection.outlook.com ([2a01:111:f403:c111::5] helo=DM1PR04CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSgmt-00000006Iiy-1R1g;
	Thu, 28 May 2026 19:53:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CMgCJ2ZRexuwC/Fp6r792ahTrBiwW3DU83e880pWOCbO0tgOHblYPtPin9K+LSr5QrHfdNOXO1cmep4+U0W6ekmzrFcHbiAqzJUEW/0fAWCksPGVEn+WDRNaP+RBMDAlpbc8cBHSiZtYXbfFHPgrOpN089b7cweP75/uyIHvf58zs0uieqBDsEU4OPmMg3eWHk364V/tAboPTEiHgEx1mqPiAmN9Ws4ZzzaasRSNcHtxXB3KZJEmCco5oNL3D2ytrndaq1kDnNvDUlHO4JAQBRlddd3kMSngg3laU7aMImT67Yrz4yBBU9c0MO3Ld0nBXh2/mHiIszzh6r9foIxxaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D953EbN5WR5coQg1hVPQ2lQ6Z5sZqXmKMawPOkcfx78=;
 b=KBNfkhFx9UZjZQV8UzEpJ89Zm4rd8KxwqoUfoocieCihPtkr+29UQ/Na220JjzZgKZpuS5AcX82RNBqBQEveNK1nUXMOofq30do26ub9wJraZFrQF1ks7JCPJeneoP8XxQK5ZaGmPnBhqx7OmA4l10AvfhP+71AxuZRpq1C7Kp0M4T/V1H3MSaLtvGawP1YySWXVQTa2jiq3XXBfAuCo+NxFboNBHuLql2AMJEqwi7w4wT5sPROj77rhNBMaFyT13TOfz07mojI05jMogYw3OTwqgPByjPilmxMJcJjufPvappHdbkDQx/SG7pAcBC/fjxP/PkGXle3asisjp16LIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=D953EbN5WR5coQg1hVPQ2lQ6Z5sZqXmKMawPOkcfx78=;
 b=VQsm8hMB/meDN4KYHpFRRUNcL18YjUaCAMpDxvN421BkyoZOIfSvyTS4WoH96+0ZgLPNN4pR+CoRBX4jNGaiZXfflcA0s+a1R2nrx5Cq/JERVqi9xzhTCww+ZtC4TdYqJDBXZ01GNk7iRRUvzaKmi4LlXIKVV3VXwan5P5vZrYSWY38GFk0bDG02TbqKcZI1zIccqPK/KtffwsvTrZOPtyH+tT3PsUs7EJlQQFyd6UcK3UuqKqDBjznHyPbpi4XB4v5j3Jsk2O1Ka+EesuwIhTCH2q3ZHCpkI+Z5r5JVeYslvq3b+5COz6uCs4f0vo5Ay3yIMedeGFzFvW77T2n6rw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV3PR12MB9356.namprd12.prod.outlook.com (2603:10b6:408:20c::21)
 by DM4PR12MB7549.namprd12.prod.outlook.com (2603:10b6:8:10f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Thu, 28 May
 2026 19:52:41 +0000
Received: from LV3PR12MB9356.namprd12.prod.outlook.com
 ([fe80::1c36:31b4:c420:6286]) by LV3PR12MB9356.namprd12.prod.outlook.com
 ([fe80::1c36:31b4:c420:6286%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 19:52:37 +0000
Date: Thu, 28 May 2026 15:52:29 -0400
From: Yury Norov <ynorov@nvidia.com>
To: Ian Rogers <irogers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Russell King <linux@armlinux.org.uk>, Frank Li <Frank.Li@nxp.com>,
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
	Adrian Hunter <adrian.hunter@intel.com>,
	James Clark <james.clark@linaro.org>,
	Thomas Gleixner <tglx@kernel.org>, Borislav Petkov <bp@alien8.de>,
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
	Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>,
	Moritz Fischer <mdf@kernel.org>,
	Yicong Yang <yangyicong@hisilicon.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>,
	Dan Williams <djbw@kernel.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dave Jiang <dave.jiang@intel.com>, Ira Weiny <ira.weiny@intel.com>,
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
	Xu Yang <xu.yang_2@nxp.com>, Linu Cherian <lcherian@marvell.com>,
	Gowthami Thiagarajan <gthiagarajan@marvell.com>,
	Ji Sheng Teoh <jisheng.teoh@starfivetech.com>,
	Khuong Dinh <khuong@os.amperecomputing.com>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Yury Norov <yury.norov@gmail.com>, Kees Cook <kees@kernel.org>,
	Thomas =?iso-8859-1?Q?Wei=DFschuh?= <thomas.weissschuh@linutronix.de>,
	Aboorva Devarajan <aboorvad@linux.ibm.com>,
	"Ritesh Harjani (IBM)" <ritesh.list@gmail.com>,
	Ilkka Koskinen <ilkka@os.amperecomputing.com>,
	Besar Wicaksono <bwicaksono@nvidia.com>, Ma Ke <make24@iscas.ac.cn>,
	Chengwen Feng <fengchengwen@huawei.com>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-perf-users@vger.kernel.org, linux-acpi@vger.kernel.org,
	driver-core@lists.linux.dev, linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-fpga@vger.kernel.org,
	linux-rdma@vger.kernel.org, nvdimm@lists.linux.dev,
	linux-pci@vger.kernel.org, linux-amlogic@lists.infradead.org,
	linux-cxl@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	Roman Gushchin <roman.gushchin@linux.dev>
Subject: Re: [PATCH 00/16] lib/cpumask: get rid of cpumap_print_to_pagebuf()
Message-ID: <ahic_YusKJFaSDLU@yury>
References: <20260528183625.870813-1-ynorov@nvidia.com>
 <20260528121806.2b54606ba6e42f7f371d95c3@linux-foundation.org>
 <ahiW5LKLiPMC6il_@yury>
 <20260528122903.cf74cf905418ab2d144607c3@linux-foundation.org>
 <ahiYUr0dO_dhOHTU@yury>
 <CAP-5=fXXg+PqH7EZ8X599CKYFWCwQgyH2H-4-+5M3_b9w_dTNw@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAP-5=fXXg+PqH7EZ8X599CKYFWCwQgyH2H-4-+5M3_b9w_dTNw@mail.gmail.com>
X-ClientProxiedBy: SJ0PR03CA0356.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::31) To LV3PR12MB9356.namprd12.prod.outlook.com
 (2603:10b6:408:20c::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR12MB9356:EE_|DM4PR12MB7549:EE_
X-MS-Office365-Filtering-Correlation-Id: cc33e445-b4a0-4d1c-ace0-08debcf2ab42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|10070799003|376014|1800799024|366016|11063799006|4143699003|56012099006|22082099003|6133799003|18002099003;
X-Microsoft-Antispam-Message-Info: dy7zgLQjK/I4q1qquUPJAQpI0oQ2qfBzHkpz+7Igg2Z6YgM5RCSe6Od9p05jPOe0QS8+PBCLxblXZn02g0u3b7FTSj8Cr+gs7iQo+8dnEU4tBrTMKPJ042NRhmCeo3YqIS0qagjj6iPzNnZybCaZ9AbeQvFVPVAKR/aezMdHrmbgLgxygujha0te3Xf9aF4Si7ZJBKhebE3cbihIxonHvrXRSXdAsCS5LY0Xsvicbcy2bvaw7rNdrrAx++fBmAGfrFFj2SiYzYcrYoBn+JDsuq+azVr+JrGdtQeSvc25n5syKDmvs7i4uXCk6Bg1LXNSfIoX974RKxTy7PX4PLybvRZUZcZjGMSDuVggYcdYupnAGg3uSwdE8Q7EN9cN+8CWOMKLHynAYBx3SnqvGVR1XPZeQN/XBkZwFpnbpoS15EOQeyg0ZZckW1tOT1rKQIKcqSacaNFgCX3gHvfZG7Ue07WbDAav+SLCrkbPZ6vRGG7AcI7Ig9rRDCJ1zuTnNSHFH9Wd1HiQMPDihxaCQP8eC1uo6w7UrtMNFOttQ5bFEX7OSMZQMwUR7y5EnSzrVw5OuoTtKRbJLbfZQO2wyV+mr71lh3HTJE509W9R4nHTJ4w2hqPvPJAm5Bww0E0J/BPgKnunvDaiCCtsRKOVVRO6ApA+fyxLyPQLlPwhJYx7I/BWK1ZygoDabc1y1tcBHin0
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV3PR12MB9356.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(10070799003)(376014)(1800799024)(366016)(11063799006)(4143699003)(56012099006)(22082099003)(6133799003)(18002099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1V6OENIdkRiQ0hEbzZ6ZVBXZkJ6ZzZEYnBxZHlmeHltekpNcWVaM1NSWS9l?=
 =?utf-8?B?K3VqeVIrNlF4UmRGUlZCZW55c3NuMWR6QWJSSnBWUi94eStHTHhndzNqSmVJ?=
 =?utf-8?B?V3J6bkkrVGxpSG1FdzdkcHZYRWkzZ3dmc2hCZHAxdmlDcHM5WERwZGdhWTVE?=
 =?utf-8?B?M3lTbys0czVid1ptN0V3N2E5dTNERi94bWdpcHY3TFNBc1JyVVQxaHhSYnpI?=
 =?utf-8?B?S01HVjRKMkE1OG1nSlM5SFgxUkkyb1NxRlR3YTJZZmJJRU45b1NyVVdVOXVD?=
 =?utf-8?B?MCt6ZUR1Z1RTUmZWaUliZTZ4eitZKzFRMTZKVjRWaUZMRm1XckJDdHhmVGJv?=
 =?utf-8?B?QXhyeENGekhxbVpneDMxTzlmQlN3a2t1a2tab09RQThDMUdKN2JoWUNlTUpa?=
 =?utf-8?B?WGxZWDR2RlNEY0ovQitXZHdrT3dxMEdjM0ZVSHJtaW9PekpVb3UzQXN2UEp5?=
 =?utf-8?B?dnA3VlhJRHVoczdIL2NLempNMzZ4WjZtRmJZWVNqTzVLTytNcXVuWkpIR3VQ?=
 =?utf-8?B?Wi84aHV2ejBLeXRTMjd6cUVFWjNUWDNKR1Vsdjc1RzU3akh5WmN6Y0d1Ukhi?=
 =?utf-8?B?OHZxbEFLYm9wZnpxUExhSEhMNmIvMmVNS3hMQW9wNlljUnZoWkdjMzlKTGpa?=
 =?utf-8?B?ZnVLSlZMcmJFY2wwQU1BY0hUTi9oV3dNK1Y4YWhhaUNpQWFUM2cxazIwSERt?=
 =?utf-8?B?dmV0WUxDSHZtSkNNNXk0OVJBSVdIN0ZwcVZHWFFINzZNWGhMOGJwZnovSjk3?=
 =?utf-8?B?aTR0SFhtNDRqZCtJUWtpMzBRb3NnQWV2dkxwQjgxRnpNYUlmS1hyVnYrMUhp?=
 =?utf-8?B?b2swVkc2ZGsrNFhmNVZPUUI4Y203cHRtcWszUGJNSDBZSG94aDdrUmZjOEVZ?=
 =?utf-8?B?RzN0YldTNWpkZWdlbFZQNnJQMU1sdWRBd1J1bXRKTWlNYjlsU3gwcFRYS3pv?=
 =?utf-8?B?MktYSDEwc1pEWEFDYWthRHl5TjU4bWtCY1RJaUcvZVRTTXFJZFUydE9ZUjd1?=
 =?utf-8?B?RC9LckJZaWkxcTliZHdkbnVSK1Z2enBYSjgzamZuTGlVV0FhbEFHTDU0ZTV4?=
 =?utf-8?B?TzhzMURkbUdRNU1mMjUyVU81NG5maU5QbjE2YUhVUXNKby9TZS9zUGlqOW9j?=
 =?utf-8?B?dkkyaURTeHF1RldEQ0tnaGlSOFh5Y202cFRmRExxblRSOGRnTGZRb1A4WmdI?=
 =?utf-8?B?aGwzR0I1b2t5eGVGVWpkRkZLdFpELzQyNkh2ZGJXR2xtT1JlQmFGMU1SdU44?=
 =?utf-8?B?Y0c2Rmh0aUM0M0FXb1pWdTljN3pVanhYOGVUWjA4UzhGTzMzaEh2NWlEeHd0?=
 =?utf-8?B?RXNoZEwrOGkrRENFNUVKNGovTUU5eEFpL2NSOUJxVjZjRCsxRHhaR3FFclBW?=
 =?utf-8?B?cnBFMmRGa2hXS0xqSGJjaFlaZjRZR1JuU3pVcUx5T0Qwalkvb3NSL2h2dXht?=
 =?utf-8?B?cG9TL0JwbDlOckNXb29nV3VsNUY4cXlIcW80UEpnVDlZWTNLUkhzWUs0RjRO?=
 =?utf-8?B?QUdtOEdJd1I4RDBkVUg3TEFMWmNJR3kwZnlJU1F2cWxucjFCNnN4cGtQbkR5?=
 =?utf-8?B?NUFqeVkwYTF6dzZmYkpzWVYySTF2T1hSNVUwb3dtNUNSNTNQRldRUVVLUXNW?=
 =?utf-8?B?NFNtZ2cvM2Z5YjQ4TWFFcEFNSkRUUXhMcE1PdTl0bmhIT2hrSTRLNnhsdE1Q?=
 =?utf-8?B?RUZhZVpVdmFpR0xlWTRSRlBsUFk5ODRRc1FETWJ2Tmo4OTVWa21reXlablM4?=
 =?utf-8?B?c2tRQzZ0dmVGQjhaaVRoVmhXVFlaVjFuNjlFVDc5TERNMUZzU0g5RkZaS3M3?=
 =?utf-8?B?czl2aVEzRDhxQWVCNGdwVXZTVlZCMm9BOWhUcFh5cHF0Y3lGWmhlQVVoK3M1?=
 =?utf-8?B?MnRCSVhvdFBPWlRCd1ZDcG1IeWlydGM1TmVsUk9VbmlSdlBmMmE1U256NW96?=
 =?utf-8?B?WWpMS0lRcjFQdFE2cGhob1dvZWlYZmxLSE1Va04xcUFQUnVtZE1JZ0JYeEpn?=
 =?utf-8?B?S1lGbGN1OHl6ZDB0bzM0anF3YTdtc2ZmZEcrV1pqZWk2TEJVWXBPK1A2K0tQ?=
 =?utf-8?B?aGd2RDhOUGZQRmlGSk16ckgrd0dkQ25JZWh4WXhadU5aZWRDM1ZHbStxbDMw?=
 =?utf-8?B?eWEyZSt5eXZkUG1ibmVSc0ZLMzNmWTlEZllxOEsrUGhhVHNGYUtOTXAvcitu?=
 =?utf-8?B?SWNsbTdKN3kyK3IwVGJKNHBKdnB1dnd1RVVJWXV3eEozM3hIN2lla291U204?=
 =?utf-8?B?WHJMclRyUTlBcVdWTkVxUXlaeHhQdEpVOVJnd0RBajllcVBzYWtFdFNDdTRV?=
 =?utf-8?B?SmRzS29vSEQyUHAreTB0VXRzT3pjQVRVSjZpeTJLNWJkVEdQNys3K3YxVmpj?=
 =?utf-8?Q?XpVPUOSAS4fenAnbW5Mp9hFYfpRzFOGhZ3IkV?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc33e445-b4a0-4d1c-ace0-08debcf2ab42
X-MS-Exchange-CrossTenant-AuthSource: LV3PR12MB9356.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 19:52:37.6543
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B2iQlUvyEqeqjpH8YzLED08KCblDIn2RL086B4FdB1c1RRtgJvkCz7U7qONOpWTcNDX8njZoS/JKruXvnOnElQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB7549
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_125303_410500_65F8BC14 
X-CRM114-Status: GOOD (  24.88  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBNYXkgMjgsIDIwMjYgYXQgMTI6NDQ6MTVQTSAtMDcwMCwgSWFuIFJvZ2VycyB3cm90
ZToKPiBPbiBUaHUsIE1heSAyOCwgMjAyNiBhdCAxMjozMuKAr1BNIFl1cnkgTm9yb3YgPHlub3Jv
dkBudmlkaWEuY29tPiB3cm90ZToKPiA+Cj4gPiBPbiBUaHUsIE1heSAyOCwgMjAyNiBhdCAxMjoy
OTowM1BNIC0wNzAwLCBBbmRyZXcgTW9ydG9uIHdyb3RlOgo+ID4gPiBPbiBUaHUsIDI4IE1heSAy
MDI2IDE1OjI2OjI4IC0wNDAwIFl1cnkgTm9yb3YgPHlub3JvdkBudmlkaWEuY29tPiB3cm90ZToK
PiA+ID4KPiA+ID4gPiBPbiBUaHUsIE1heSAyOCwgMjAyNiBhdCAxMjoxODowNlBNIC0wNzAwLCBB
bmRyZXcgTW9ydG9uIHdyb3RlOgo+ID4gPiA+ID4gT24gVGh1LCAyOCBNYXkgMjAyNiAxNDozNjow
NyAtMDQwMCBZdXJ5IE5vcm92IDx5bm9yb3ZAbnZpZGlhLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPgo+
ID4gPiA+ID4gPiBjcHVtYXBfcHJpbnRfdG9fcGFnZWJ1ZigpIGlzIHRoZSBlcXVpdmFsZW50IGZv
ciB0aGUgIiYqcGJbbF0iIG5vdGF0aW9uCj4gPiA+ID4gPiA+IGluIHByaW50ay1saWtlIGZ1bmN0
aW9ucy4gSW4gc29tZSBjYXNlcywgaXQgbWFrZXMgcGVvcGxlIHRvIGNyZWF0ZQo+ID4gPiA+ID4g
PiB0ZW1wb3JhcnkgYnVmZmVycyBmb3IgdGhlIHByaW50ZWQgY3B1bWFza3MsIHdoZXJlIGl0IGNh
biBiZSBhdm9pZGVkLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBHZXQgcmlkIG9mIGl0IGluIGEg
ZmF2b3Igb2YgbW9yZSBzdGFuZGFyZCBwcmludGluZyBBUEkuCj4gPiA+ID4gPiA+Cj4gPiA+ID4g
PiA+IEVhY2ggcGF0Y2gsIGV4Y2VwdCBmb3IgdGhlIGxhc3Qgb25lLCBpcyBpbmRlcGVuZGVudCBh
bmQgbWF5IGJlIG1vdmVkIHdpdGgKPiA+ID4gPiA+ID4gdGhlIGNvcnJlc3BvbmRpbmcgc3Vic3lz
dGVtLiBPciBJIGNhbiB0YWtlIGl0IGluIGJpdG1hcC1mb3ItbmV4dCwgYXQKPiA+ID4gPiA+ID4g
bWFpbnRhaW5lcnMnIGRpc2NyZXRpb24uCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IE9uIHRvcCBv
ZiBiaXRtYXAtZm9yLW5leHQuCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2FzaGlrbyBkb2Vzbid0IGF0
dGVtcHQgYml0bWFwLWZvci1uZXh0LCBzbyBpdCBjb3VsZG4ndCBhcHBseSB0aGlzIHNlcmllcy4K
PiA+ID4gPiA+ICAgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTI4MTgzNjI1
Ljg3MDgxMy0xLXlub3JvdkBudmlkaWEuY29tCj4gPiA+ID4KPiA+ID4gPiBPSy4uLiBXaGF0IHNo
b3VsZCBJIGRvIGFib3V0IHRoYXQ/Cj4gPiA+Cj4gPiA+IFJlYmFzZSBvbnRvIHNvbWV0aGluZyB3
aGljaCBTYXNoaWtvICpkb2VzKiBhdHRlbXB0LiAgTWFpbmxpbmUsIGEgZmV3Cj4gPiA+IG1tLmdp
dCBicmFuY2hlcy4gIE1heWJlIGxpbnV4LW5leHQuCj4gPgo+ID4gSXMgU2FzaGlrbyBhIG5ldyBt
YW5kYXRvcnkgcmVxdWlyZW1lbnQgbm93PyBEb2N1bWVudGF0aW9uIGRvZXNuJ3QgZXZlbgo+ID4g
bWVudGlvbiB0aGUgYm90Lgo+ID4KPiA+ID4gUm9tYW4sIGlzIHRoZXJlIGEgbGlzdCBvZiB0cmVl
cy9icmFuY2hlcyB3aGljaCBTYXNoaWtvIHRyaWVzIHRvIGFwcGx5Cj4gPiA+IHNlcmllcyB0bz8K
PiA+Cj4gPiBIaSBSb21hbiwKPiA+Cj4gPiBDYW4geW91IGFkZCBiaXRtYXAtZm9yLW5leHQgaW4g
dGhlIGxpc3Q/Cj4gCj4gRndpdywgeW91IGNhbiBzZWUgdGhlIGxpc3Qgb2YgYnJhbmNoZXMgYXR0
ZW1wdGVkIGFuZCB0aGUgU0hBIHRoZXkgYXJlCj4gYXQgaW4gdGhlIEJhc2VsaW5lIGRyb3AgZG93
bjoKPiAKPiBCYXNlbGluZSBTdGF0dXMgTG9nCj4gdGlwL3g4Ni9jb3JlICgwZjYxYjE4NjBjYzNm
NTJhZWY5MDM2ZDcyMzVlZDFmMDE3NjMyMTkzKSBGYWlsZWQgVmlldyBMb2cKPiBwb3dlcnBjL0hF
QUQgKDY5MTZkNTcwM2RkZjlhMzhmMWY2YzJjYzc5MzM4MWEyNGVlOTE0YzYpIEZhaWxlZCBWaWV3
IExvZwo+IGNoYW53b28vSEVBRCAoN2ZkMmRmMjA0ZjM0MmZjMTdkMWEwYmZjZDQ3NGIyNDIzMmZi
MGYzMikgRmFpbGVkIFZpZXcgTG9nCj4gbGludXgtYXJtL0hFQUQgKGRkNmM0MzhjM2U2NGE1ZmYw
YjVkN2U3OGY3ZjliZTU0NzgwM2VmMWIpIEZhaWxlZCBWaWV3IExvZwo+IGxpbnV4LXBtL0hFQUQg
KGU3YWU4OWEwYzk3Y2UyYjY4YjA5ODNjZDAxZWRhNjdjZjM3MzUxN2QpIEZhaWxlZCBWaWV3IExv
Zwo+IGxpbnV4LWZwZ2EvSEVBRCBGYWlsZWQgVmlldyBMb2cKPiBwY2kvSEVBRCAoMjU0ZjQ5NjM0
ZWUxNmE3MzExNzRkMmFlMzRiYzUwYmQ1ZjQ1ZTczMSkgRmFpbGVkIFZpZXcgTG9nCj4gbGludXgt
cG0vdGhlcm1hbCAoMjFjMzE1MzQyYjgxNTI2ODc0YWNmYTMxMWYxMWIzZjcyYmVkNGUxNCkgRmFp
bGVkIFZpZXcgTG9nCj4gcmRtYS9IRUFEICg2NzQ2NGYzODhkNTJlYzE3MmJlNjJjOTlmYzQzNjk3
NDM3ZmZhMzg0KSBGYWlsZWQgVmlldyBMb2cKPiBsaW51eC1uZXh0L0hFQUQgKGY3YWY5MWFkYzIz
MGFhOTllMjMzMzBlY2Y4NWJjOWJhZGQ5NzgwYWQpIEZhaWxlZCBWaWV3IExvZwo+IEhFQUQgKDkx
NzcxOWM0MTJjNDg2ODdkNGExNzY5NjVkMWZhMzUzMjBlYzQ1N2MpIEZhaWxlZCBWaWV3IExvZwoK
VGhhbmtzLCBJYW4uIEJpdG1hcC1mb3ItbmV4dCBpcyB0cmFja2VkIHdpdGggbGludXgtbmV4dC4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
