Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A17D9FD5F6C
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Apr 2026 05:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:CC:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hDDLu/Lrjg80wrrWOI+LTjcwEoNoYw2G1hnooRcKusE=; b=OjPJyupXJQQxDJXokD8cX6Td//
	dqPvRRvI+yJHRz04qMfA5H2hkl/vWWt18lu4S99hV7OMnteXtSuFB2rByR8Exa3g90kenYs//urZz
	eZlqzWZSDiVdPtJTo+xV3+SJJQ7jAVwzK9n9jIL2MgMcJClnfUKludDVlYtJ5W62e/0RcCfldWuwB
	bn/0+yC4rulHt12OZuLdSePqh1m9nEul2QYpa28b2HzIZ6TM+CU84jaMxnEznd3D4MGl+4jw1t1bQ
	y9pLOiWEgLjmTw/00tYURyKnxLcIh2cP13x5DJfd0/M/wuryN9enWGcub3S6r5S8uH/L5wo+kSTqV
	IEfKzxww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAL7e-00000008Giy-3yNC;
	Wed, 08 Apr 2026 05:06:38 +0000
Received: from mgamail.intel.com ([192.198.163.9])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAL7c-00000008Gic-0Lte
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Apr 2026 05:06:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1775624796; x=1807160796;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=UDF+ZSu3wWOQ/sIS13oW5JePTdYGjxdwNT98lQkDPig=;
  b=bvZr+7AHsXzZaFTuSmiywgwBaux1e+BVz/1s4ZUCcOwk0AUJCOKU+0Gg
   lfxfcuxXVGuiHB/eHbnSYATz8GUb95bLILQM3N7h1SKTS0WpibWJ3IH9e
   MWx1PiBGp5h9dP4F/AscwTpph4fjIrVkz0qgYvEL4NWG1FwUCeLjiaMSo
   /dOCr92cSunHhiQAfJprh3ljeayGDfxlS+LQ56rYmqvyNQS9qCxDqPE2m
   2koppzvG58zpdtVDe4zscxM0jruhINtdIoKG32QXPvTICFkyiDC6iJtmp
   qq8j4+4IBAWm53FdOosW+Uj8pbouypDeJmDTGobIDk+3uBZr0cwzYexr7
   g==;
X-CSE-ConnectionGUID: coeWuPjXQqSLBw6Vg5dfvA==
X-CSE-MsgGUID: OFA07+OMTzWHejRN5WENSg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="87296647"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; 
   d="scan'208";a="87296647"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2026 22:06:35 -0700
X-CSE-ConnectionGUID: 2JtG/FE3QMmw0oHaydmj5Q==
X-CSE-MsgGUID: 7vAFbn10TOOs5cU+oeGw/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; 
   d="scan'208";a="227529216"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
  by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Apr 2026 22:06:35 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 22:06:34 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 7 Apr 2026 22:06:34 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.29) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 7 Apr 2026 22:06:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TqminqEF9dvF2KRyml0yBxCM31wSKTnkBN2FnSBCOFyOGiK9XHvKVCk2AavDikNf0pHOzg+PCnY9ewO6clIV/VPZVLr7ulKuEN7adVUBUQWprY2ra/EkazSJ/FvlXB7fEwbIajVD9ZXYJsK3R1gOH2E72Yq1DxhuFnhcDF+zT80x0ehnc1WP888ROIAKZt3EZwX07pwe2oYm1b9Ap3bOZH8EZL8zi2uo7OeuGCPPRI5dPnBO6+0HupfESmmd5P0j8IGt4P7V1HRwC+IyTip4Qf5CstCFrXzzCS8ycM+fv3iiAehb/tuqmShgC964wPj5bj8LH/cgYojoTJYhiPAQ8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HqfMg8nO0ssuhgkf80Vec1maSncTfMskPd6dMhOy2tI=;
 b=KMK9qMh4w8G3S+e/gStYNfL4nOqzUwnNk6xCHBn06oQV+AJ8efgMO6Psr+EOB44klxm2zPn+Q9bSnhuA2g4zfX7sG3M/zeEF/AqDQz5Nr3riuqeB2y2+Hg00xOmWozP5kIrIf3lR1+yYfygcFJZF1MwRH9/AIBaTy9NhqUGYQXYlPL3rZeBBuzLtPsvyis+xNEuEwI7DHMyKjlGlwX0ssTZxYvE7n0Ubb0mBkj+FTY89tIt+jK3Ppa0GbtaQdyrQZjjPfRY3oif198kxWLV7ykOXA1VfyZitfiJY9a3Y0wtBfgMQRHq8Kon/GAYHt21eSRuTNekielzKJVtVt9yqOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7198.namprd11.prod.outlook.com (2603:10b6:208:419::15)
 by LV8PR11MB8486.namprd11.prod.outlook.com (2603:10b6:408:1e8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 8 Apr
 2026 05:06:32 +0000
Received: from IA1PR11MB7198.namprd11.prod.outlook.com
 ([fe80::2c4e:e92a:4fa:a456]) by IA1PR11MB7198.namprd11.prod.outlook.com
 ([fe80::2c4e:e92a:4fa:a456%6]) with mapi id 15.20.9769.015; Wed, 8 Apr 2026
 05:06:32 +0000
Message-ID: <e443c467-0d10-41e3-9195-793ad8d34662@intel.com>
Date: Wed, 8 Apr 2026 08:06:28 +0300
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: Disable clock before DLL
 configuration
To: Shawn Lin <shawn.lin@rock-chips.com>
CC: <linux-mmc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
	<Stable@vger.kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>
References: <1775014742-233407-1-git-send-email-shawn.lin@rock-chips.com>
 <da3b1b9c-fb92-4408-bb5a-485c050f7c60@intel.com>
 <a9c5d50f-b09d-2aa6-56e8-788675a7a8d6@rock-chips.com>
Content-Language: en-US
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: c/o Alberga Business Park,
 6 krs, Bertel Jungin Aukio 5, 02600 Espoo, Business Identity Code: 0357606 -
 4, Domiciled in Helsinki
In-Reply-To: <a9c5d50f-b09d-2aa6-56e8-788675a7a8d6@rock-chips.com>
X-ClientProxiedBy: DUZPR01CA0004.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::20) To IA1PR11MB7198.namprd11.prod.outlook.com
 (2603:10b6:208:419::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7198:EE_|LV8PR11MB8486:EE_
X-MS-Office365-Filtering-Correlation-Id: 9dc87dfd-1ef6-4631-04c8-08de952c99d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: Xkl3e9QuLGje7C7iSxOHgXuuSSmka8U+yrhXveeg2ZqCtBafNUK9p5jsrB8GlHlhSs3uSsSd4D0i+jJKUsxrpuAI9Oh38HrhS9YVtX08HNgGS7qFHE+pNY3aIsjgdBSaZgJ5C+vJlkXenziBOl9aUhq6PHJZr4+Y5I9GFu4K6pPwGWiRNSu5nA8vlPayU/IYonJz74gptsO0wvyH1QdpSYM5ZFdBOH8bGhAdUmGDVbPOuQZk/myfi8xdYkNXxpudlVEfFmfqeCm6JcWN9M63WmweCDfp5lphsZw0QpQgijt6HbNaLIMinwtmaD1Zn+iyNrkO33n7IJqenXz1+zBMLLI3fS0mAEYMm7kjmKwv15NCwqRnjqPWORLUaNuLENM6l0UlgoNRS7vyKJJ0cl+gT2Gj3ViHrzd6VOF6IhsoiQ8X6l863AiEqu6e1V4VBdlKx+77VhWXfdJzyDwD/aZ86kpJ85caSqU1/JjSQUACpFkORwz5nz/XKPWSDnZiF3LgO3ItFMWUg94RENWjvSmJWrMLY8kmD+lRh7WZ4RuOYg4tbH586nICr0EQNSxZjMQxgdeoNTfFWQqBYcd8g2353LfgB7bGpvcTVZpPgkucAc0BmGGRP2sCB6+KsHPCc0yLr+nmLjnSFooYIx5TUh4gWePrlMaiPcycxgsvHBQwsImp8oJV4RSsSHC2xm/d/WWvuAE2Q6wZetpfNq3bYa2OvZgjCSS39XYwGcEgfvQQwws=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR11MB7198.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(18002099003)(22082099003)(56012099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2VPQ29lcTFmUXl1d1dLcWljd0NWMmludFlTMCtTS0VnRkdDaStYekVrQ3h1?=
 =?utf-8?B?L3UvNzVvZ3pHekZIdENGTFcvR2lkdmlYbmhvVFcxNWlyWmJxWUdwRWdtaVpB?=
 =?utf-8?B?RFd1TzhMUXdTRGwyR2tnTGdqWk4veVJrdXZ5VUZZVlhWTkJpNHE1eU9IQ2RN?=
 =?utf-8?B?TkZlSUkrUWJ0dXBQSGpMbVdxMEYvUC9TR1p4TnBSNktpYktPYVM5WERLTUR0?=
 =?utf-8?B?emNGTkwwMklndXlseDZkdVR1TkQ5cnpFY0xZZ1lnSEI3RVJ2Z1hrTDVYVlFj?=
 =?utf-8?B?cHY5TWQ4ZDZmUDM4djJlMy9MVkFZMHNVNmtFYTUrR3lLMFdpeUpPdjE3cWNX?=
 =?utf-8?B?WTRHWW9kbUE1Y2NUcUd3RjR3TGEvd3hzMHAybll0RndZb3E1eVVHRVgzZ2F5?=
 =?utf-8?B?aEZyR1VlOTd3SGVqclRLVklFcjB2dWJ0ZjZxaWZ5RFpraDlLWlhoaDhNQVl3?=
 =?utf-8?B?Z2NJelhvTkk0bE8weU9BN1RUdTRVWEhRMGtpQUZuUS9tbm9YR3hDb3hscnFT?=
 =?utf-8?B?MVQ2QjB4RldhTi9uQUlxbXdsS2htL1UvbVRZQnJodkNwdktDUVRLYjlObGEz?=
 =?utf-8?B?Y3g2YzJaTjQvaHFhQ1MyQzFZQjkvVWVGOXM5MURoTERYRGdOcEY5Q2ViMVVq?=
 =?utf-8?B?MFpzNUVsOTg3RDJSSWV4dHd1eEZERDRTWmhWOEpCNmY4Z3I0RE94Z0dzVm9x?=
 =?utf-8?B?NlZPcktYUWxZVlQ2L1FVbU0rVVVmbkEvQ2VrZUpHTnc4dkloUGNBMGFMWnI1?=
 =?utf-8?B?cCtyQmx2VVF0cG1XWlNmd1lnbE1NN0NnRVFiMElKcmc5b0F5YXN5dkhSWGdn?=
 =?utf-8?B?d1VORDIvUHI5Qk04M2lUL2hMWXdLb2JUZHltU3FPeU1HeDgycXk0N09nVzdK?=
 =?utf-8?B?dzdOdGpBa2RRV0ZiekZTOEcyVkVDU1JpL0FGOEprRW8rWkJwMURUcWMwNlk0?=
 =?utf-8?B?amRkb3FvajQrdTA1Si9vSzdjRmFKSCtWT01tN0JDdHpsZlEvbDYvWk9uVmR0?=
 =?utf-8?B?eFVnb1hGRElUZHVyVVFhUFdRTVlwTFk4eXdNNy9EVUErbWtlKzZKWDIvZXgz?=
 =?utf-8?B?UVp2RzMrbE9Cd1EwQm03RlpoVVZUc2dCRklYQm9GdHNzd3JPcWdmU2hXZ0FW?=
 =?utf-8?B?TFZqeUZ4L2ZZTjNDeC9kZmx3aXhkYmljbFFFcEhHVmlJd0FSMU54M3dpdmhh?=
 =?utf-8?B?VDlqYldQMGtuY21mWTBQZVNNTkJ5WlpUeUN3RjI5UlJPVTc4K2M0Y29NTGxX?=
 =?utf-8?B?Q0JibWx0czhoRzQ1SFdJb2NrSWR6YmNCTUFxbi9tQXI1amhUOTRyZjIyRVJm?=
 =?utf-8?B?dlZ4Sk1paGpoaEhnSmlKdmJEM0dIcHRtVjhDdlpqYUZvU2FNT0d1S3NxaE9v?=
 =?utf-8?B?a0NNNWVEQjcydTM3N0dCb0JWOEw3anNrTFRndEZTVmR0L0tVSGd2UkQ1aTll?=
 =?utf-8?B?QVFKMXlWRVJYb2pPUi9kOVlhakpsUll3VFd1NnNsV2ZQNnNrSHd0UDZQTnA4?=
 =?utf-8?B?enFPRCtCRzJyMUk3MFBOcGcwUHlrNEZ3eFlrWnNZbEFXUURCanVRSlJ6V0ll?=
 =?utf-8?B?aVN0aFh6L1dpWGt3TVFzVFVTMzh2cStZSUpSS0xmeElMSGNmNnU2dHpGQm9y?=
 =?utf-8?B?UmNzVGIwVVF4UHM2ZlJhYlJOTDFUaTZra3FVQml0cWhaRGplV0RTcEt4eUE4?=
 =?utf-8?B?RitTMXpqcjNwOHJNZjRjV3huQVA1Nk1tMjFhZTA3TVFEYkpRWUEyaVVsdU5m?=
 =?utf-8?B?UVMvZFhFZmlCV1pSUXZNdVVKQW9NRG1sSWR5UkRnQ1VSbTRSdmNwWXNFRWxW?=
 =?utf-8?B?SXZiaml6NDZRR2FRdm9NMWgvMWZIWDM0cDRMV240bFNKVkg0K2M3V0luQVlD?=
 =?utf-8?B?TVRreTErVmFUQzkxVUVCL01IODRnMWtjcW9DM1g2KytQbHVDWDlPbjhXckEx?=
 =?utf-8?B?aFdXczNuaURYN0RTbjIybTR3UU9pS25ZcHNBdjZUcVg2Zm80OUREbXQ3VS9v?=
 =?utf-8?B?cEpSU2RtdWJrT0N0TGUxenM2akIrTVQwQ2Ntand0U3FRY3FlU2R5b2RnclJV?=
 =?utf-8?B?OWtyUmRsblZIUDJGUmIrbzZiYnBYM1VPa0ZWZmtRUkNHdmFOTUZmSzYrMUNQ?=
 =?utf-8?B?anQrcnQ4QzYvVU85UlBxeGc1OHMrbmdaOWVycE5nRFBiS1QydnRTaEptWWdH?=
 =?utf-8?B?dUdRRzBQQTRRZFhLUm5qSGZMbUZMWGEwK2tuZzNUS2d4bkFabGU4UmRzSzdw?=
 =?utf-8?B?VUk0Qlk3S2VSWDdDR1M2TkZkY2MzbWZ1WTVGL3lpTzBnR1lCQm5haG92Q3VV?=
 =?utf-8?B?aHZHSUFHSy9rVmE3clF4UjNjWWVrcTFON0IvWkI0MHlHaHd2Q3ZUbFBlYnM5?=
 =?utf-8?Q?j7IlM0iaOoBzlhtI=3D?=
X-Exchange-RoutingPolicyChecked: Z92HDS41sbrKstmrTLP5lP3SvMAiaesHFuTln+AyO2P39LJ+768g+iv9uhFR/ObzIp3h521EYqtEdgG4HPBLcL4oh+uJkgptESo1f2IcZfTkRYKlDFXbnrqPPcV9YBSecPTELSIHJyAaY3qlnLWN1ia4Xuj9AYREQo18S2+UrtbKiUFli0Z4AxBOYYiRGNoAB29+WrXP/3EwhJiAs5fouVKcUlF5AJKcnHDYot/Khz5OnM9hawCZCCVQJPIbnW1MaOPYY6/FsieAZNyMwxizJUXv+p2z4QnaPMRpbTaaII1B/VG+wNj/A/RsaXyEI4sTHOslCKlTl+oQBb/UOpk8Xg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dc87dfd-1ef6-4631-04c8-08de952c99d4
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7198.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2026 05:06:32.7586
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YVtYBAvmKfvA9NywBIITM3ze00zlhU5X1flOIwn3GWpBHrnelGc2VUvRKyfk2vBoIW8vyQ72HvVhcyDNtYbHug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8486
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_220636_165401_FFE9B768 
X-CRM114-Status: GOOD (  21.38  )
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

T24gMDgvMDQvMjAyNiAwNToxOCwgU2hhd24gTGluIHdyb3RlOgo+IOWcqCAyMDI2LzA0LzA3IOaY
n+acn+S6jCAxNDozOCwgQWRyaWFuIEh1bnRlciDlhpnpgZM6Cj4+IE9uIDAxLzA0LzIwMjYgMDY6
MzksIFNoYXduIExpbiB3cm90ZToKPj4+IEFjY29yZGluZyB0byB0aGUgQVNJQyBkZXNpZ24gcmVj
b21tZW5kYXRpb25zLCB0aGUgY2xvY2sgbXVzdCBiZQo+Pj4gZGlzYWJsZWQgYmVmb3JlIG9wZXJh
dGluZyB0aGUgRExMIHRvIHByZXZlbnQgZ2xpdGNoZXMgdGhhdCBjb3VsZAo+Pj4gYWZmZWN0IHRo
ZSBpbnRlcm5hbCBkaWdpdGFsIGxvZ2ljLiBJbiBleHRyZW1lIGNhc2VzLCBmYWlsaW5nIHRvCj4+
PiBkbyBzbyBtYXkgY2F1c2UgdGhlIGNvbnRyb2xsZXIgdG8gbWFsZnVuY3Rpb24gY29tcGxldGVs
eS4KPj4+Cj4+PiBBZGRzIGEgc3RlcCB0byBkaXNhYmxlIHRoZSBjbG9jayBiZWZvcmUgRExMIGNv
bmZpZ3VyYXRpb24gYW5kCj4+PiByZS1lbmFibGVzIGl0IGF0IHRoZSBlbmQuCj4+Pgo+Pj4gRml4
ZXM6IDA4ZjNkZmY3OTlkNCAoIm1tYzogc2RoY2ktb2YtZHdjbXNoYzogYWRkIHJvY2tjaGlwIHBs
YXRmb3JtIHN1cHBvcnQiKQo+Pj4gQ2M6IDxTdGFibGVAdmdlci5rZXJuZWwub3JnPgo+Pj4gU2ln
bmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+PiAtLS0K
Pj4+IFRoaXMgaXMgYmFzY2lhbGx5IGEgY29kZSBzeW5jIHdpdGggdGhlIGRvd25zdHJlYW0gdmVu
ZG9yIGtlcm5lbCB3aGljaCB3YXMgYmVlbgo+Pj4gZG9uZSB0aGlzIHdheSBhbmQgdGVzdGVkIGZv
ciBzb21lIHllYXJzIHRvIGNvbmZpcm0gaXQgY291bGQgZml4IHRoZSBpc3N1ZXMgaW4KPj4+IGFs
bCBjb3JuZXIgY2FzZXMuCj4+Pgo+Pj4gwqAgZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Nt
c2hjLmMgfCAxMiArKysrKysrKystLS0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbW1jL2hv
c3Qvc2RoY2ktb2YtZHdjbXNoYy5jIGIvZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hj
LmMKPj4+IGluZGV4IDYxMzk1MTYuLmUzYWUzMzQgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL21t
Yy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYwo+Pj4gKysrIGIvZHJpdmVycy9tbWMvaG9zdC9zZGhj
aS1vZi1kd2Ntc2hjLmMKPj4+IEBAIC03ODMsMTIgKzc4MywxNSBAQCBzdGF0aWMgdm9pZCBkd2Nt
c2hjX3JrMzU2OF9zZXRfY2xvY2soc3RydWN0IHNkaGNpX2hvc3QgKmhvc3QsIHVuc2lnbmVkIGlu
dCBjbG9jawo+Pj4gwqDCoMKgwqDCoCBleHRyYSB8PSBCSVQoNCk7Cj4+PiDCoMKgwqDCoMKgIHNk
aGNpX3dyaXRlbChob3N0LCBleHRyYSwgcmVnKTsKPj4+IMKgICvCoMKgwqAgLyogRGlzYWJsZSBj
bG9jayB3aGlsZSBjb25maWcgRExMICovCj4+PiArwqDCoMKgIHNkaGNpX3dyaXRldyhob3N0LCAw
LCBTREhDSV9DTE9DS19DT05UUk9MKTsKPj4+ICsKPj4+IMKgwqDCoMKgwqAgaWYgKGNsb2NrIDw9
IDUyMDAwMDAwKSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKGhvc3QtPm1tYy0+aW9zLnRp
bWluZyA9PSBNTUNfVElNSU5HX01NQ19IUzIwMCB8fAo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgaG9zdC0+bW1jLT5pb3MudGltaW5nID09IE1NQ19USU1JTkdfTU1DX0hTNDAwKSB7Cj4+
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKG1tY19kZXYoaG9zdC0+bW1jKSwK
Pj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIkNhbid0IHJlZHVjZSB0aGUg
Y2xvY2sgYmVsb3cgNTJNSHogaW4gSFMyMDAvSFM0MDAgbW9kZSIpOwo+Pj4gLcKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgcmV0dXJuOwo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBlbmFi
bGVfY2xrOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+IMKgIMKgwqDCoMKgwqDCoMKgwqDC
oCAvKgo+Pj4gQEAgLTgwOCw3ICs4MTEsNyBAQCBzdGF0aWMgdm9pZCBkd2Ntc2hjX3JrMzU2OF9z
ZXRfY2xvY2soc3RydWN0IHNkaGNpX2hvc3QgKmhvc3QsIHVuc2lnbmVkIGludCBjbG9jawo+Pj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRExMX1NUUkJJTl9ERUxBWV9OVU1fU0VMIHwKPj4+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIERMTF9TVFJCSU5fREVMQVlfTlVNX0RFRkFVTFQg
PDwgRExMX1NUUkJJTl9ERUxBWV9OVU1fT0ZGU0VUOwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHNk
aGNpX3dyaXRlbChob3N0LCBleHRyYSwgRFdDTVNIQ19FTU1DX0RMTF9TVFJCSU4pOwo+Pj4gLcKg
wqDCoMKgwqDCoMKgIHJldHVybjsKPj4+ICvCoMKgwqDCoMKgwqDCoCBnb3RvIGVuYWJsZV9jbGs7
Cj4+PiDCoMKgwqDCoMKgIH0KPj4+IMKgIMKgwqDCoMKgwqAgLyogUmVzZXQgRExMICovCj4+PiBA
QCAtODM1LDcgKzgzOCw3IEBAIHN0YXRpYyB2b2lkIGR3Y21zaGNfcmszNTY4X3NldF9jbG9jayhz
dHJ1Y3Qgc2RoY2lfaG9zdCAqaG9zdCwgdW5zaWduZWQgaW50IGNsb2NrCj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgNTAwICogVVNFQ19QRVJfTVNFQyk7Cj4+PiDCoMKg
wqDCoMKgIGlmIChlcnIpIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBkZXZfZXJyKG1tY19kZXYo
aG9zdC0+bW1jKSwgIkRMTCBsb2NrIHRpbWVvdXQhXG4iKTsKPj4+IC3CoMKgwqDCoMKgwqDCoCBy
ZXR1cm47Cj4+PiArwqDCoMKgwqDCoMKgwqAgZ290byBlbmFibGVfY2xrOwo+Pj4gwqDCoMKgwqDC
oCB9Cj4+PiDCoCDCoMKgwqDCoMKgIGV4dHJhID0gMHgxIDw8IDE2IHwgLyogdHVuZSBjbG9jayBz
dG9wIGVuICovCj4+PiBAQCAtODY4LDYgKzg3MSw5IEBAIHN0YXRpYyB2b2lkIGR3Y21zaGNfcmsz
NTY4X3NldF9jbG9jayhzdHJ1Y3Qgc2RoY2lfaG9zdCAqaG9zdCwgdW5zaWduZWQgaW50IGNsb2Nr
Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgRExMX1NUUkJJTl9UQVBOVU1fREVGQVVMVCB8Cj4+PiDC
oMKgwqDCoMKgwqDCoMKgwqAgRExMX1NUUkJJTl9UQVBOVU1fRlJPTV9TVzsKPj4+IMKgwqDCoMKg
wqAgc2RoY2lfd3JpdGVsKGhvc3QsIGV4dHJhLCBEV0NNU0hDX0VNTUNfRExMX1NUUkJJTik7Cj4+
PiArCj4+PiArZW5hYmxlX2NsazoKPj4+ICvCoMKgwqAgc2RoY2lfZW5hYmxlX2Nsayhob3N0LCAw
KTsKPj4KPj4gU2hvdWxkIHRoaXMgYmUgMD/CoCBJZiBzbywgbmVlZHMgc29tZSBleHBsYW5hdGlv
bi4KPiAKPiBZZXMsIHBhc3NpbmcgMCBpcyBpbnRlbnRpb25hbCBmb3IgdGhlIFJvY2tjaGlwIHBs
YXRmb3JtLgo+IFRoaXMgY29udHJvbGxlciBvbiBSb2NrY2hpcCBoYXMgU0RIQ0lfUVVJUktfQ0FQ
X0NMT0NLX0JBU0VfQlJPS0VOCj4gc2V0LCBpbmRpY2F0aW5nIHRoYXQgdGhlIGJhc2UgY2xvY2sg
Y2FwYWJpbGl0eSByZXBvcnRpbmcgaXMgdW5yZWxpYWJsZS4KPiBNb3JlIGltcG9ydGFudGx5LCB0
aGUgc2RjbGsgZnJlcXVlbmN5IHNlbGVjdCBiaXRzIGluIHRoZQo+IFNESENJX0NMT0NLX0NPTlRS
T0wgcmVnaXN0ZXIgYXJlIGFjdHVhbGx5IG5vbi1mdW5jdGlvbmFsIG9uIHRoaXMgaGFyZHdhcmUu
IFRoZSBzZGNsayBmcmVxdWVuY3kgaXMgaW5zdGVhZCBzZXQgdmlhIGNsa19zZXRfcmF0ZSgpZm9y
IGFsbAo+IG1vZGVzLiBGcm9tIHRoaXMgcG9pbnQsIGFsbCBvZiB0aGUgc2RoY2lfc2V0X2Nsb2Nr
KCkgY2FsbHMgYW5kIGluCj4gZHdjbXNoY19yazM1Njhfc2V0X2Nsb2NrKCkgYXJlIGFsc28gc2Vy
dmVkIGFzIGVuYWJsaW5nIGFuZCBkaXNhYmxpbmcKPiBjbGsgb25seS4KPiAKPiBUaGVyZWZvcmUs
IHNkaGNpX2VuYWJsZV9jbGsoaG9zdCwgMCkgaXMgc2ltcGx5IHJlLWVuYWJsaW5nIHRoZQo+IGNs
b2NrIHdpdGhvdXQgbW9kaWZ5aW5nIHRoZSBmcmVxdWVuY3kgc2VsZWN0aW9uIGJpdHMsIHdoaWNo
IGFsaWducyB3aXRoCj4gdGhlIGhhcmR3YXJlJ3MgYWN0dWFsIGJlaGF2aW9yLgo+IAo+IFRlY2hu
aWNhbGx5IHNwZWFraW5nLCB3ZSBjb3VsZCBzYXZlIHRoZSBwcmV2aW91c2x5IGNhbGN1bGF0ZWQg
c2RjbGsKPiB2YWx1ZSBhbmQgcGFzcyBpdCB0byBzZGhjaV9lbmFibGVfY2xrKCkuIEhvd2V2ZXIs
IHNpbmNlIHRoZSBmcmVxdWVuY3kKPiBzZWxlY3QgYml0cyBhcmUgaWdub3JlZCBieSB0aGUgaGFy
ZHdhcmUsIHBhc3NpbmcgMCBpcyBzYWZlIGFuZAo+IGZ1bmN0aW9uYWxseSBlcXVpdmFsZW50LiBJ
IGNvdWxkIGFkZCBhIGNvbW1lbnQgZm9yIGp1c3QgdGhpcyBsaW5lIGNoYW5nZQoKWWVzIHBsZWFz
ZQoKPiBvciB3b3VsZCB5b3UgbGlrZSBtZSB0byBhZGQgYSBjb21tZW50IGZvciB0aGUgd2hvbGUg
c2RjbGsgc3R1ZmYgaW4KPiBkd2Ntc2hjX3JrMzU2OF9zZXRfY2xvY2soKT8KPiAKPiAKPj4KPj4+
IMKgIH0KPj4+IMKgIMKgIHN0YXRpYyB2b2lkIHJrMzV4eF9zZGhjaV9yZXNldChzdHJ1Y3Qgc2Ro
Y2lfaG9zdCAqaG9zdCwgdTggbWFzaykKPj4KPj4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
