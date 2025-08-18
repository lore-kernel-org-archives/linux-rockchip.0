Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57C04CA0ED1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Aug 2025 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0MVMNFz6oKAlKTN8cjImFXwhHd6bua6dwnrxYzVOmA=; b=iBoHBOhX/UPTNu
	40Gr/pjF5NeDo0I6xpAk1RiIsdWeXHuCLpmZEPc5pgeFMQLbQVaa8U/aMr0jqurjns0Eo+/Q25eaI
	dyJlvCr3O6kLtBbPVQwi44fLMmNNNNpZfszposGhXUNQ2ZyzY6aPFKvc8yxCOXwxkAfQtG2rawvds
	F6u87JLwZt5bYNu3EptjcYFZIfC6qx4/PfWw70MLpOcpnKIl3PRp6D559ys43pWa4AehL0+6c5MaW
	WihDvO0mHDj9Gog6QNzm92vlob1rCxM7xvLo9t++866IH/bKo4ZacPrzm/oovzKPE79OnNe5CLOol
	diXHVmhuge4vT7AqfCiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3iM-00000008AJ6-3UMb;
	Mon, 18 Aug 2025 17:32:10 +0000
Received: from mail-bn1nam02olkn20831.outbound.protection.outlook.com ([2a01:111:f403:2c07::831] helo=NAM02-BN1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo1kU-00000007uxr-0w90
	for linux-rockchip@lists.infradead.org;
	Mon, 18 Aug 2025 15:26:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J8WfiuDziFktPDfPP3ovJdAFrlPO/Q+XSpZfJ0HilR+K0XYB86Op1hf8MtyFDXBFUwuHrcTKH1BUhtj9IyJjer7Yn/CH+LZy2GVP/yjD9TZxHFi9JZ/5p89OoJ0O1ULKJDkKMYU+DPLPj11twzUkvzNIU6fadGNgJwLA8jfRw2YcZt+RVIly1JeGVJ5V7jH/Y8//ZhgOfbtyaucqUQveo/lqJ0O05LtwTFRiQdlEg9P/n2Qv/mHjjcoMtv/i0lHuPEmWMDMWDixCt0AZgi1kBDBXQgl2x3M6U26DF7DvYDM9EHSCUpPWyicOiOptVenzRI3/j0Dlr4QWbyd0Nn4W5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K3Llq+VAyc0skznjQRGaFfppz08H0aC0+trt+WS5kmk=;
 b=TzucCcn/q4+i/OSy/PxKaX6LsK56hqMKEj9xJVKBi2srZ+PJoNNe7oWpSod0W1cCBGsdZ//MFScSM98byU5PVF7A25nPo5wt6x8FrZhc24d3dAinG2yYEohYnsnz6DGx47V0eZWVrraFAbeWILviQtB+DLClpNK7dSazsoqybyHzWLqw8oofoUhz2FlEWfqH+m0J2jYxFUb2q9CLjibKfpbbkNk595F5odmPicYFhybv4E3NFWWoT1PhcE3NLI5gUPBPgSvwpyUnNswNiTgWh2m1NYFfj7ihSpZQwgQib//qmf6Zuz6tF6b0vZ6shbouGlaUqHp6USTaPT39MJjuEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K3Llq+VAyc0skznjQRGaFfppz08H0aC0+trt+WS5kmk=;
 b=YG7KDNuWsLRES1XxDNCpl64/AOlTJ1IdMOaCi8zeH3SXGX29Hen0EtZcu/ByTc5SNU8RykiXWF9vedZg01Ji28cVIkHH6QkmCRWSTDMrQ9D3Y2sFmFHKKN+TtCsXQt+EpPSVnMjVWiCWDFSqb+pfwZsujgDCZg3jQHIgCB4/jP6ouODpT3+WSkWXdaOa4yiKCNKAFfsfY9tiEvmujUJq3y/8BCt68PGe5Cs2/svyFO2tketlMLDY0/IgtVw9v1I7SmBTHY2qwPdqRkPY16TYCTOzD7HgP3/PF7Gox6em13NELm/akJeSkXrF/Wm6ij47dQYXn7utTz34WS+aG1xnIg==
Received: from DM5PR19MB4646.namprd19.prod.outlook.com (2603:10b6:4:a9::21) by
 SN7PR19MB6637.namprd19.prod.outlook.com (2603:10b6:806:26b::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.24; Mon, 18 Aug
 2025 15:26:07 +0000
Received: from DM5PR19MB4646.namprd19.prod.outlook.com
 ([fe80::11db:b5b:1230:2947]) by DM5PR19MB4646.namprd19.prod.outlook.com
 ([fe80::11db:b5b:1230:2947%4]) with mapi id 15.20.9031.012; Mon, 18 Aug 2025
 15:26:07 +0000
Date: Mon, 18 Aug 2025 10:26:02 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: oe-kbuild@lists.linux.dev, Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org, lkp@intel.com,
	oe-kbuild-all@lists.linux.dev, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, broonie@kernel.org, lee@kernel.org,
	lgirdwood@gmail.com, sre@kernel.org, heiko@sntech.de,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH V6 3/5] power: supply: bq257xx: Add support for BQ257XX
 charger
Message-ID: <DM5PR19MB46465603FC8FAC28C275C374A531A@DM5PR19MB4646.namprd19.prod.outlook.com>
References: <20250812214300.123129-4-macroalpha82@gmail.com>
 <202508181503.GrRD2T4C-lkp@intel.com>
Content-Disposition: inline
In-Reply-To: <202508181503.GrRD2T4C-lkp@intel.com>
X-ClientProxiedBy: DM6PR06CA0093.namprd06.prod.outlook.com
 (2603:10b6:5:336::26) To DM5PR19MB4646.namprd19.prod.outlook.com
 (2603:10b6:4:a9::21)
X-Microsoft-Original-Message-ID: <aKNGCg2rWT7GLNnt@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR19MB4646:EE_|SN7PR19MB6637:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d12c3f1-fbb4-4136-2574-08ddde6b8c1c
X-Microsoft-Antispam: BCL:0;ARA:14566002|19110799012|461199028|5072599009|23021999003|6090799003|15080799012|41001999006|8060799015|40105399003|4302099013|440099028|3412199025|52005399003|1602099012|10035399007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?MEjSeZix8WRjrtrIQy8RI9pYn1mWP6XCceV4+SQZ2jGZszYne3YcDW5hFUn4?=
 =?us-ascii?Q?6xJeq82h3xvSMMYZuZMMrt+10A7t3SLZnxhLzR6bMa5oy0PWOrXW0aJuTPvx?=
 =?us-ascii?Q?EN63rkrAxhNo0WeqNc+u4GnfHAFu6efTr4JrecgmCguXL5PpGhhCZ0CovQBm?=
 =?us-ascii?Q?RIevblyf0j4hw3kAW1xe12XTwX1igGNb7oXJ3xtaWjrZGZVaIzAxaTFBf1yn?=
 =?us-ascii?Q?R1/Acvosrd4D6hU4wp8jI2SsrecbHX4FBUw+o4BjumhTmvKBEHuhvbl/Tkcm?=
 =?us-ascii?Q?IWKFC49sLK1YzYABI7REwKyfBV9rvVC1JYn/KFwhFif3JpNNy06vp8R8FqFA?=
 =?us-ascii?Q?mPYVJomgoV93yIArLVofeKHPQahIneKbgmOUuUtVfCr4//UKbSpX4dcnHAk2?=
 =?us-ascii?Q?dI99eEv1lPVojTSeD8oPutpZEPxslgqszRwgtiH0m6fSUzteu4hlJWAvbWIE?=
 =?us-ascii?Q?RkNN4YjYqjNWAGwB8N8KQzhSqpTAKqJ0O3IS7+Z8PnOLorOXWPN7CptclArp?=
 =?us-ascii?Q?k9LSl0HtIXY0qsMXHXOo2h/bGEDGApkOYHoNrIL+7kNWtF7vzk2QqywjyfWy?=
 =?us-ascii?Q?9ww/92gRw2Rq9ndazFDQO6TYujVHpsE4qjHu5mZ6R+9sQ5ldIgDsMJrByFw2?=
 =?us-ascii?Q?b7FDw0NfGjMD7Ajlqdm6UcWgzqvR6aiQ+t69vlW9sjHbExIc//qaB/7ZDcW1?=
 =?us-ascii?Q?ol/U5l3EiIBXYlYpU3WO+f0v9CB+IGbNujmN6qgjXpHctQFzd83tllmDN6e+?=
 =?us-ascii?Q?UpYfuUbGX8bBAtKLvo6fVreAfggnandxy8hirBYBBbk8ysVq92POxnghzmIR?=
 =?us-ascii?Q?718/Sl2AjT+zYfBxpwLoQ3xDXVwbkTj3i2eA8OXml/3CVhiavVUii9FPm18w?=
 =?us-ascii?Q?YGbiNMemnWJ4cplqFzAwnr5AEuVntQfwC3M0pXNeFtjFzlBnw1S3JBozzO21?=
 =?us-ascii?Q?re6DDH2nHalRoCwIZAJAohJgg4UD7mVuvAR64t798hGXOFvKAFFHPpaXV6Q5?=
 =?us-ascii?Q?i34ddJXIPL1RMr8FhLK18cWSWmG6zlatyVbjYEUiKjjnuD4jJgZmovjPHd87?=
 =?us-ascii?Q?GPZDp1DP1bBQSizspBLAxVQp/OhRQ9HRDeq9flGFlrYaFznOwLli6/6CW+jS?=
 =?us-ascii?Q?dkQHrxZR2vcpoWJ4TgKEnecj4Ni1iCrThbybsARQPY4KEsc/twCD+E5vmdzN?=
 =?us-ascii?Q?MUIC+SptHVxjuO2/0Z/YJ/i6wteDIuPGydpSb3l0TeQfORBj2U0/gk6YZR1K?=
 =?us-ascii?Q?fshfnFF9AQaAi5/qn7JbHAY5COyhheA5pFWMjB+FJOTNMlAdN36CmI5HiB0n?=
 =?us-ascii?Q?NuymLyCfPRHqgRm1vjEw1fYI?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7Wp+QY7Yr1s/0FvNzMqv3XcCVCwc/s76F/lbEexXFrILEZiW/n5ZRHyq8FrW?=
 =?us-ascii?Q?MD3GUbLgYBuu6ILwykzSICqMVYgIko5H2FA3OHUmBE6GJZYKo3F4QFnWu6q4?=
 =?us-ascii?Q?xQcT66os6npcT05/8PNGrVhROQ6idLLptRZdqcA9sWLkGbMl5QspiXvAyNJS?=
 =?us-ascii?Q?AVJMYl5dKEvzJ1ZyZVNg87Slaxhiv/O6mdBQOnBPlijjFOjONnRWpkgsp0/y?=
 =?us-ascii?Q?m5lD/+SG+SHGFhMscBF3pGXfcOUsy5/4v9uh6+Uk6bI0gKKy5qdYIv9r+H2m?=
 =?us-ascii?Q?BCV6x7GtEpauA6TY55EQFYZvUAp0wLm7Za/kF60FLuAOiljWBZwyhj3q69u8?=
 =?us-ascii?Q?b26bsT5dt2LZRkf7ml2u0Zyn1aaIScdPwni5KNlhr17OsXmKnPHnZ9e2terH?=
 =?us-ascii?Q?4DDo0KhfVMJOUPLjsUSOCx33UHIzWiZVRu05YZgtuMpUPLWfLRbKbS/mBIKU?=
 =?us-ascii?Q?7vluK+D/3b0NvAxZV+j4QO28J56OP1DaSMEUmKt+T52q9mUcQAn/6eK0eP9l?=
 =?us-ascii?Q?oxoM7njL/cCJZrs4DRNcJu7xHoqUXB8i6CJbtXALl6MSI1bSNg/Ogd53YfsF?=
 =?us-ascii?Q?j7n9ku99OSuPreDYVfR7fMj6Y+Z21LdZgsSwN+eBRtpUATbGy4JmHxnuheBs?=
 =?us-ascii?Q?UJjfSKPhaVEubXSU32ijWcSmnC9XNOLKg3qOWVs3TYGPGroJHGMBnCwhdn99?=
 =?us-ascii?Q?LvfE3uAhTZF67xXmIxE5HKRjRcILeZxTEdqfgf/0HY6ixJ48YGwelgvqAHNf?=
 =?us-ascii?Q?yiMzqZGYwcpOLbau3l9Xz/+O65Xe/t/ceSLs0Iqa9P4hmGTbhYcw6WB2nAmg?=
 =?us-ascii?Q?W1YpcnZfHphNsDA24F0OIkq74vXZvPaM3eTgTodryw8K26mamaez1sq8cvMh?=
 =?us-ascii?Q?EHE0wTQ6hvoRvOxoMmTbdWZDjzN9CxrONnWQbWMyVB+G3KM0BocGG/F50led?=
 =?us-ascii?Q?WBv/qSgZLCXNao/MolUbn2Iw40SBtfbIhrpcI1/XtuQBGCZx1XRUO3diPY73?=
 =?us-ascii?Q?bprqMFhWG5BKwzCHWrjOpzAlbek5yA6JCXefIExQLs1rCR4iiI8S36sTj7Ty?=
 =?us-ascii?Q?HHSAMnSnFWASmAu1QbMtDsZOBJb8OVj+LCx4YOjHg+FJnMuKol99qOTb9oyc?=
 =?us-ascii?Q?otWhUdPLBZ5bKkP6HNxgrB39D5/x8bP4pH430f6bEaKvd7yKkZ424lVCVnBA?=
 =?us-ascii?Q?LELdztyO+rj66cR6F0iryQE8DYgXjhImT48LMDYfXTUdRrzXJvgvEkzS1tQW?=
 =?us-ascii?Q?CRdQXiMRHUCigY3jfHMbe11DNVmJ5KvPHXWbin8vvg=3D=3D?=
X-OriginatorOrg: sct-15-20-8534-20-msonline-outlook-2c339.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d12c3f1-fbb4-4136-2574-08ddde6b8c1c
X-MS-Exchange-CrossTenant-AuthSource: DM5PR19MB4646.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2025 15:26:06.9730
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR19MB6637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_082614_442240_71F73996 
X-CRM114-Status: GOOD (  13.91  )
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

On Mon, Aug 18, 2025 at 11:22:35AM +0300, Dan Carpenter wrote:
> Hi Chris,
> 
> kernel test robot noticed the following build warnings:
> 
> https://git-scm.com/docs/git-format-patch#_base_tree_information]
> 
> url:    https://github.com/intel-lab-lkp/linux/commits/Chris-Morgan/dt-bindings-mfd-ti-bq25703a-Add-TI-BQ25703A-Charger/20250813-054704
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next
> patch link:    https://lore.kernel.org/r/20250812214300.123129-4-macroalpha82%40gmail.com
> patch subject: [PATCH V6 3/5] power: supply: bq257xx: Add support for BQ257XX charger
> config: parisc-randconfig-r072-20250818 (https://download.01.org/0day-ci/archive/20250818/202508181503.GrRD2T4C-lkp@intel.com/config)
> compiler: hppa-linux-gcc (GCC) 8.5.0
> 
> If you fix the issue in a separate patch/commit (i.e. not just a new version of
> the same patch/commit), kindly add following tags
> | Reported-by: kernel test robot <lkp@intel.com>
> | Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> | Closes: https://lore.kernel.org/r/202508181503.GrRD2T4C-lkp@intel.com/
> 
> smatch warnings:
> drivers/power/supply/bq257xx_charger.c:392 bq25703_hw_init() warn: potential ! vs ~ typo
> 
> vim +392 drivers/power/supply/bq257xx_charger.c
> 
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  365  static int bq25703_hw_init(struct bq257xx_chg *pdata)
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  366  {
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  367  	struct regmap *regmap = pdata->bq->regmap;
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  368  	int ret = 0;
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  369  
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  370  	regmap_update_bits(regmap, BQ25703_CHARGE_OPTION_0,
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  371  			   BQ25703_WDTMR_ADJ_MASK,
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  372  			   FIELD_PREP(BQ25703_WDTMR_ADJ_MASK,
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  373  			   BQ25703_WDTMR_DISABLE));
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  374  
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  375  	ret = pdata->chip->bq257xx_set_ichg(pdata, pdata->ichg_max);
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  376  	if (ret)
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  377  		return ret;
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  378  
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  379  	ret = pdata->chip->bq257xx_set_vbatreg(pdata, pdata->vbat_max);
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  380  	if (ret)
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  381  		return ret;
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  382  
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  383  	ret = bq25703_set_min_vsys(pdata, pdata->vsys_min);
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  384  	if (ret)
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  385  		return ret;
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  386  
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  387  	ret = pdata->chip->bq257xx_set_iindpm(pdata, pdata->iindpm_max);
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  388  	if (ret)
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  389  		return ret;
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  390  
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  391  	regmap_update_bits(regmap, BQ25703_CHARGE_OPTION_0,
> 7f3b6f1e51a925 Chris Morgan 2025-08-12 @392  			   BQ25703_EN_LWPWR, !BQ25703_EN_LWPWR);
> 
> Yeah.  This really looks like it should be bitwise negate ~ instead of
> logical negate !.

Since BQ25703_EN_LWPWR is defined as 1 and I want to write 0 here (to
disable low power mode) I was under the assumption either should work.
That said, I'll happily switch to the bitwise negate (~) and resubmit.

> 
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  393  
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  394  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  395  			   BQ25703_ADC_CONV_EN, BQ25703_ADC_CONV_EN);
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  396  
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  397  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  398  			   BQ25703_ADC_START, BQ25703_ADC_START);
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  399  
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  400  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  401  			   BQ25703_ADC_FULL_SCALE, BQ25703_ADC_FULL_SCALE);
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  402  
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  403  	regmap_update_bits(regmap, BQ25703_ADC_OPTION,
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  404  			   BQ25703_ADC_CH_MASK,
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  405  			   (BQ25703_ADC_CMPIN_EN | BQ25703_ADC_VBUS_EN |
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  406  			   BQ25703_ADC_PSYS_EN | BQ25703_ADC_IIN_EN |
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  407  			   BQ25703_ADC_IDCHG_EN | BQ25703_ADC_ICHG_EN |
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  408  			   BQ25703_ADC_VSYS_EN | BQ25703_ADC_VBAT_EN));
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  409  
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  410  	return ret;
> 7f3b6f1e51a925 Chris Morgan 2025-08-12  411  }
> 
> -- 
> 0-DAY CI Kernel Test Service
> https://github.com/intel/lkp-tests/wiki
> 

Thank you,
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
