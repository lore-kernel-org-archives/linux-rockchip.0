Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C265AC4450F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rAu3445/LY0hIVOMDbwDyoOlUc6cJSHSsh7PivWhv+o=; b=21tvkcVd6j5Bdq
	xNK4ccm7gNbCUMWch1CLgLO5jcdRm1M4FlPLpyWCXGeAM+tIYZ6+5CZWsfK2Cv+X3kQ7G6SDDm+Az
	x8Ji42OxV6WIaFvNJx0d+MubtZtl6YYJR51ue/eP7rtfvvvjLz8CSOxz1rZG0s3r32wW0mCHPAmmA
	SXWIIe+kD0j8YH0OExw3prHHI1IwziUKmZYF9aF3gK0ntQLxwrX8he2B6IfYz1Vzd4JMyBhMZeIyr
	1S52g/3aEIC0S7cVm81u1TIf0QW/mgUeXKz47QfG1Jnbb58h56GeoMqPlTTSMQPHJT2CeAZseTuqH
	4xl21iLpGeIjZi0Z50OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVn-00000001bqj-3mbi;
	Thu, 09 Jul 2026 08:53:39 +0000
Received: from mail-centralusazlp170110009.outbound.protection.outlook.com ([2a01:111:f403:c111::9] helo=DM5PR21CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSfbO-00000006BwX-25Ao;
	Thu, 28 May 2026 18:37:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OUxmGt/EXlewu+mcNoAaCTSeKn26fNaDPWTcuistAX4qoJxIL0uB2rt+WSwTYNccYywUeeP8HRPhJxlWYIw/6w4hXeA3XLOARd7TzBSSCUTrOmFZbr1S8lsHjkOmj4aomoNhLdH6x1H8G0HuRz6Bf8hE0k2ouRljDsQybynEFMklYBknn1Hp6IAA/pKUx1/BZg0s39UBMtXzwphVauTdjIXzOL75FytcBD037MVCliUtELd9d0ipceksgVZQpTfBtiI0eh4mDhIyNq+nIniLODDLqV6PRz6fpSEV720yk44gZomOgP1LU5KIkgUMPmZTs4H+G+KC5TTXrEBStNZWAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2A4QuTVZbTaHIhqOXP0/TP//2LEKtt9iowZYNB4FEHM=;
 b=HAjJfxm0BVRCEB2HKfmYxh4h103BSQL6scQ3oCpCUwDtnK90MtuTdZRZOrUTrgsateBJda1SYhD1PBkFOPhvpG4qF+tj3bGTa/wQeim0z21XNB9h2ZYaH44ZedZRCHVGwGdgkz7ILSXRLm6PhgELiwpvqIgDLPSDWmUgm7z/zb3QRtJLm8GFETWXv8ddW4ZVhiCmGqQ5fB834JXU7l+yXW/yg3DnPDYvke70YK258Ufp3bmGg++M52QiVHX9cNAUk0uUURH47IHjZBs1KBqiBr3X1XawKBmShDAJkQ7Lxw+4e+/TrsuUW0sWHcCEhaaau+cs2COFL0h+xPD8iXF2OQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2A4QuTVZbTaHIhqOXP0/TP//2LEKtt9iowZYNB4FEHM=;
 b=rfD439K5ByW29CF5R5TvRLYL5XoCAwMk+D6//13J4FD38nXPYa9xTxTUqkFHv/BlDTT/8w0WA6/nSUk6UpLGPShpCf/KFxAOvwXpRBScIyJwNSh7jzAxeLMO/V3YlehWHf9IHk75lfDPm2c5oH9gwraC/Q0GNvJTghJHuHmXk60dAuRer8nUHw/NUIiyN5QY4xUQ3eTGhNpkW4p2POGaN1FPyStD/sLrATTwYunIPj8ZE+UYrzE6NRGX7DMn0L6GTWU0WEsnoYSrbnEph/e9JmsdmyMCZAz81fGUfd6XLIjmgkv5mdY4KX8Ouj+4ffT/YUzLpMDMPGMGt1xBOfrCcA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from LV3PR12MB9356.namprd12.prod.outlook.com (2603:10b6:408:20c::21)
 by SA3PR12MB9228.namprd12.prod.outlook.com (2603:10b6:806:39c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.13; Thu, 28 May
 2026 18:36:53 +0000
Received: from LV3PR12MB9356.namprd12.prod.outlook.com
 ([fe80::1c36:31b4:c420:6286]) by LV3PR12MB9356.namprd12.prod.outlook.com
 ([fe80::1c36:31b4:c420:6286%5]) with mapi id 15.21.0071.011; Thu, 28 May 2026
 18:36:53 +0000
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
Subject: [PATCH 07/16] devfreq: Use sysfs_emit() for cpumask show callbacks
Date: Thu, 28 May 2026 14:36:14 -0400
Message-ID: <20260528183625.870813-8-ynorov@nvidia.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260528183625.870813-1-ynorov@nvidia.com>
References: <20260528183625.870813-1-ynorov@nvidia.com>
X-ClientProxiedBy: BY1P220CA0040.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:59e::16) To LV3PR12MB9356.namprd12.prod.outlook.com
 (2603:10b6:408:20c::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV3PR12MB9356:EE_|SA3PR12MB9228:EE_
X-MS-Office365-Filtering-Correlation-Id: cc8e7110-019a-4463-6e0f-08debce816a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|7416014|376014|10070799003|366016|18002099003|11063799006|6133799003|56012099006|22082099003;
X-Microsoft-Antispam-Message-Info: 1aDjbQ0hD7xYcvJOoZKKrnhH2SXyf0rX9XZ31R6kcAnqfIAa+w0XgGkAodPaafgvPFMF/eryEB8071f07G/u+CttjTM85PZoSoY5cfES8cW4NwUyD2hQCGQ4Yut9B5EaaSAFb8PS4Wat8bTGvKY2Kd4P8eK3LOAAq91qwAGwv8nA7pA0QHNTVf7GEw3js2F+kk+8Y4P9ccBYVwu5cRRLHAXwiJkcaoNpcl/DaL8z4mPYX1O6CTgTYBLmoB+3Bz+m+DREw0sTWO93F8iQgq+uT9198oMNHlCcyfVYeooU8RcZRBWCSVcSTPXPTlT5SqMCIuO5EJcTe3Msn/2hkCcEbpZwx7TXcAmRA8I8gkit62wTyj+Utv0Jv8onyyMFRm9MibeKPHSkR8bW2WaiFAo6HrJoQ+LyeqKls1mLYeXKXt1x8pPQFVbYYH3hzTZAJNAyJRhAHIQIFMt1Rrxk3MJpAhPukM6o3kaEACaR9bH6Oi3yIb/TgkOjg64fyRImYayj34eFRswjVPRYgpdX7dkxY39/muNZRq/jElEQVuILJnX6x68F0zD1bkdgPli/Ar6q2Hb1GWCMVmor0jyb73jCmEIffd/izZA2JSwc16fmMdPKq/xmZfGJerF3m8Sh107eDmhvEXu/q+Z2SBYb8wz+p8/+m7mXQGro9b8CsGtuclz0b3CRvJySn7JKWa9c7Np3
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:LV3PR12MB9356.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(7416014)(376014)(10070799003)(366016)(18002099003)(11063799006)(6133799003)(56012099006)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?98Wf+8Jw5+2NBJGvwzIJ664aubNfMvVPmzS+zDxCxjdclo+NLGQoNzjZqCXy?=
 =?us-ascii?Q?sdEFBEHCUpu4wITZEmB6PFriyoJHR+zm4vt+O/ISRU+8rz/BIQaYoSsuYyLy?=
 =?us-ascii?Q?BXQYSKYwVunSVf0JEOL/imw6U/fk74488hxpp86ITVoLYYj9+KiiexpbgibV?=
 =?us-ascii?Q?OTlPdOjbSszZh3Z3xBob2wX70U9+cET/sL6A9jBmRJSn8jzdRy0POzuIDs+f?=
 =?us-ascii?Q?CON+7Kz3W1L1aLA5+R+j2aefd2poDOdH1LyASOJs/3Pe5HkeJbnYozLmegu+?=
 =?us-ascii?Q?/OciQqpX7lNWE5a/oGMHfeBnB6K15RKz1L60caVG3yvEDVBDiY2FLpsKbfIy?=
 =?us-ascii?Q?girawdxcNBTItqUagRFnOmhrwlDGLXmmUU4/zXTts72eWYmeBKVp6Gp0ZgUr?=
 =?us-ascii?Q?YVKskjJ+t5gkGqT6gXPlXK3kbo6lv0I6+k4SYCi0BAul7i+q1UJYgg2484m5?=
 =?us-ascii?Q?esK+NWNvPvKqQpKemqoSUXCbkRpM1s+SKpnKirX0AGeCoa71iOOhdJYCldlT?=
 =?us-ascii?Q?AdaqP6sSFWGuBnvmHgaTpix53LnNmwUP50yGZJFowS0/pOxKzVmZkgdIgDwM?=
 =?us-ascii?Q?ZEh498DSR1DrRkLNN9ZCxc1FdyOxi+uPoZakjpqIiK4rvW5DmrKy9/eX0i+w?=
 =?us-ascii?Q?qSKvQqzdPnz9b16bME7Q3VJ+8NVfHQPWkvzQ8WNoYikt6gQCZeol5Ex46oLk?=
 =?us-ascii?Q?UtCUctZQv8RtAk7cUfGKAxCtIt4i/Maoq/oORVgGdgRRZzVqg/ipasGmz+PK?=
 =?us-ascii?Q?D5p2um55xWgJ9GFjxV0v6QRzMdrrI9hYbOTvf3WkRKrwntK5P1KB1Cb9KlBW?=
 =?us-ascii?Q?+ItAf8EJLMSAf8OcXn37hqCc7IoWh6e8dH6Hlma+kr2gAAbLOwyXSGQKXK20?=
 =?us-ascii?Q?YIP//DLuSm5/ecSAFBw36rBiedFYWrUvHANizYqlR6yqt1e8Hh0GkvzFxPvt?=
 =?us-ascii?Q?KE4lXqKKc0/LJ6tsmB2LWwSpYFHl57VsEixBgguwdoe0nElpM8gkIcPBZ9TV?=
 =?us-ascii?Q?C6y2/3TcRN6zZyzLd6yZFmPuOBqrA6rzcngbEITOSWnQMQ1KJhJSfV6KiN9z?=
 =?us-ascii?Q?TO4cHWsNY6LhG32as3Hs8yIKSUfHnW6A3IMjht7xzWuTReIIdrxJNbYBK/1z?=
 =?us-ascii?Q?Dl7s0q3X+OdZ1K6iJ3KQ5mfuza5svEoZok/emyjeE7PfGVBAYCKTM2pOxPZp?=
 =?us-ascii?Q?B0X6AZsRh+vr9Yg+lgdvUUzuFkp/UUdWcSQur/D1koZhMdEuCWG56JW1oEal?=
 =?us-ascii?Q?lNkgeoO1s5OVNvGEhTlG8OMI95koHiMpNU2p+S29SJ1oaRmNTJzmE2vEIml7?=
 =?us-ascii?Q?vPUIl8+XRsVmSu86BlZ4Xgi54u/jdvHgx+eBEXWWcfKmf7KUQ1Vdf++D0yOR?=
 =?us-ascii?Q?ftnGE7W1GBwolXamwGAxgI9ovtQhJxoj/88RvH7YFc/1mGkCOgqGVA3aJq/U?=
 =?us-ascii?Q?sSJ7N2QPeUsBWrvSJ4tbQqnrFXNjGTD3Ppb55MV8WmTuIufkcKW5ZVm54O8Z?=
 =?us-ascii?Q?0XbRPwBevLe6VohpXwwwHJ3zbGa0n18p4Gv01K/vRj1wBy17KKt/vRbwJcJ7?=
 =?us-ascii?Q?S2b1yd6TOmeDLJhvmHa9KmaVtD7Z/oT3aJtP/8zLYv4Ke2DYWi1xC0HZsobm?=
 =?us-ascii?Q?m+ngnJ/o3a3kwo1x+CmllrIuBYeFJqn/OtC/nAG/okaosBl0JhI7vREpTvu3?=
 =?us-ascii?Q?yVCIxUlQ23vCPg6FMx0DcwfmdjL/NHVah2Z44UbD2q0Z8q2qoiW9eqYro/M7?=
 =?us-ascii?Q?eT/Oif8d0begEeQlD9OrEKXqqS8JdHbvJ55AgdA36fzlOwmzbBdJ?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc8e7110-019a-4463-6e0f-08debce816a8
X-MS-Exchange-CrossTenant-AuthSource: LV3PR12MB9356.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2026 18:36:53.7440
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P8PziAEnThAGay94+rGLZz7FzthLJcdtNqGGui9kwRvHaYtak+iStqjbaa/hXmGwwlx6iLfmnckTvA+cjMmizg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR12MB9228
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_113706_541789_D6BFDA83 
X-CRM114-Status: GOOD (  13.93  )
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

These callbacks are sysfs show paths. Use sysfs_emit() and
cpumask_pr_args() to emit the masks.

This prepares for removing cpumap_print_to_pagebuf().

Signed-off-by: Yury Norov <ynorov@nvidia.com>
---
 drivers/devfreq/event/rockchip-dfi.c | 2 +-
 drivers/devfreq/hisi_uncore_freq.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 5e6e7e900bda..255aee1bdd91 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -354,7 +354,7 @@ static ssize_t ddr_perf_cpumask_show(struct device *dev,
 	struct pmu *pmu = dev_get_drvdata(dev);
 	struct rockchip_dfi *dfi = container_of(pmu, struct rockchip_dfi, pmu);
 
-	return cpumap_print_to_pagebuf(true, buf, cpumask_of(dfi->cpu));
+	return sysfs_emit(buf, "%*pbl\n", cpumask_pr_args(cpumask_of(dfi->cpu)));
 }
 
 static struct device_attribute ddr_perf_cpumask_attr =
diff --git a/drivers/devfreq/hisi_uncore_freq.c b/drivers/devfreq/hisi_uncore_freq.c
index 4d00d813c8ac..23b262d23a66 100644
--- a/drivers/devfreq/hisi_uncore_freq.c
+++ b/drivers/devfreq/hisi_uncore_freq.c
@@ -541,7 +541,7 @@ static ssize_t related_cpus_show(struct device *dev,
 {
 	struct hisi_uncore_freq *uncore = dev_get_drvdata(dev->parent);
 
-	return cpumap_print_to_pagebuf(true, buf, &uncore->related_cpus);
+	return sysfs_emit(buf, "%*pbl\n", cpumask_pr_args(&uncore->related_cpus));
 }
 
 static DEVICE_ATTR_RO(related_cpus);
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
