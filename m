Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0ADA8CCF9E3
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Nov 2025 16:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:CC:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C2oD0Vwa624plbEswIrf9yJY2c9OP9C0sSjcZheWJxU=; b=TGXUbBH2QowfTMMCrybmStNRKX
	MOJlpPelwfZpicFBqL9s2BQUiWUnmPBvV7XKenUsCYReFlfwYJFSgyU0fseBYRM3LUIXWvAQ/On11
	Q69+65kiUElhmJhCj2430Q5X1FbLVrCkSjr8HIPQQLx6l6rwmphgKG1nn9+E+gKVuj8tc8HDNCxDk
	erGLMvTC89CMptKrO0/Hdsnb6Nt5UeH0rurZ90B1IBX2hWUPG5xdNPAEitKnLPKWD6jBV2KJcB6RR
	Yv8bAIET27EElK3+6BCzj+1RCD5qeX/i9o7hzyJqhBFLUzp/5T0h1US4HUAc0FGF27E8OmTKKgvnN
	yL5E6wjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIV6K-00000005rH0-2f2x;
	Mon, 10 Nov 2025 16:50:44 +0000
Received: from mgamail.intel.com ([198.175.65.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIV6I-00000005rGH-2K3X
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Nov 2025 16:50:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1762793443; x=1794329443;
  h=message-id:date:subject:to:cc:references:from:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=d9ZZsxutvTWNUfm1A1T7BP3pP37huA8pUewDPy111hM=;
  b=BpktBpN9kEmKzbomZpCD6wbs/GrHwFZDYMTHATPOWaEYaCqe2vklowsP
   h1KWPBj/Sc1fdYc9UsGZsNfxCf6+pLb7fzIGKehBfoLcWXzm8PQnFBQ2k
   NPKyAw3EmL+LuNilTp7UczsyYMTknOxhUkZyJ/9iJxqq83Y7UTi4cNROX
   pBaKvbF194U6PVReiI4NR0yTzjydk2BBNSFgpXUE+Ha2r1a12jDD3hk7r
   HvJCirkfEVbn40s4lzhZwplxxtAUSPoCEaztl5aBluXkL8Ryar0FA/A33
   ukRArPooAoe9WLwa+wgH1Yc/VECy6fhUwYyM65DeBhMUpSxkda7XUt1XI
   g==;
X-CSE-ConnectionGUID: dlkgdFMPTm6uY2M9ooyYDg==
X-CSE-MsgGUID: PsEC57CbQT2YefSMV+vSoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="76297456"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; 
   d="scan'208";a="76297456"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
  by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2025 08:50:42 -0800
X-CSE-ConnectionGUID: r6JkN7OmRKCwiUvR5gumXA==
X-CSE-MsgGUID: 5mp5ZeSGSfWd/8aD7XEtrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; 
   d="scan'208";a="193098606"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
  by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2025 08:50:42 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 08:50:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 08:50:40 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.22) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 08:50:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XVZHqWnWh8ifmopTBN5qDVs0azz2/a9zrW6xdBlyZXqhZB0G/QtDe6sOoHJgUD73dGcwDzO47otFlcsCgQqhTRfVfrCDAlMxu3CvSgCtoYp5n2+AnYGIBIns9+F0V1MJODobrIP6TwiX5srNIxb99zZovgq5v/u68aYnDScqV5p8i+lb0F4vJ3spO4hnJ9SRHiiDGIY6TsGsMH48TnukGadyR5hVuevTxZiTdK00qL3ZGhKv7BAqxksFel/T/3k59JoZ+G31E0atpejsvzgYzw1SqL/qS/n4KzFtGj7hRyunSaqixB3u4CZxkJdVi7VmJboOTJoiEv3FXC7WvA+gxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=56C6wOXaWn5AvmCNXwZjJv5NkLBaojObnA4JdcA+1go=;
 b=fQ+cX5bfUpNvZWLivpju1yp6bTMPLsYqT/7v/KlJ5MuKtrXVLPu8+4uNu0VBlrPjc3YsAjAgIuVCRG3/M9SNiZWZWGTELKr2767Is58VFlGhwp7wOAHQLcchn7fdgGf9SF9ujj6NQ/2nXO4wsd04k5vWTIwoXkiw3xtfyeNkHyPw0fjN9KADPi5pGiJtv01R/o+sXaZc43odOnl+JZQhOXXa7lYBYshdZ+hXnvpyT0nd6tmA4gx/qZchYAAapbyS7L0Fjt4428H5oyUDoVIIIU1eBjwzH8aiIbUMs7V3XDdrBlb8VgSbrRsZSJt3bSbHdZrm0aO6cUDKla5ZUSXXWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7198.namprd11.prod.outlook.com (2603:10b6:208:419::15)
 by IA1PR11MB6489.namprd11.prod.outlook.com (2603:10b6:208:3a7::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.12; Mon, 10 Nov
 2025 16:50:38 +0000
Received: from IA1PR11MB7198.namprd11.prod.outlook.com
 ([fe80::eeac:69b0:1990:4905]) by IA1PR11MB7198.namprd11.prod.outlook.com
 ([fe80::eeac:69b0:1990:4905%7]) with mapi id 15.20.9298.015; Mon, 10 Nov 2025
 16:50:38 +0000
Message-ID: <01949bc9-4873-498b-ac7d-f008393ccc4c@intel.com>
Date: Mon, 10 Nov 2025 18:50:33 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] mmc: sdhci-of-dwcmshc: Add command queue support
 for rockchip SOCs
To: Sebastian Reichel <sebastian.reichel@collabora.com>
CC: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, <linux-mmc@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-rockchip@lists.infradead.org>, <kernel@collabora.com>, Yifeng Zhao
	<yifeng.zhao@rock-chips.com>
References: <20251031-rockchip-emmc-cqe-support-v2-0-958171f5edad@collabora.com>
 <20251031-rockchip-emmc-cqe-support-v2-1-958171f5edad@collabora.com>
 <abb4a253-6f4b-4547-a238-db6f60ee3244@intel.com>
 <hjxwedwtwksog67mz4unm4jita2q5vvp4vkdrtpznc6mllz7q4@7a7nn3c5l7fv>
Content-Language: en-US
From: Adrian Hunter <adrian.hunter@intel.com>
Organization: Intel Finland Oy, Registered Address: c/o Alberga Business Park,
 6 krs, Bertel Jungin Aukio 5, 02600 Espoo, Business Identity Code: 0357606 -
 4, Domiciled in Helsinki
In-Reply-To: <hjxwedwtwksog67mz4unm4jita2q5vvp4vkdrtpznc6mllz7q4@7a7nn3c5l7fv>
X-ClientProxiedBy: DU6P191CA0005.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::18) To IA1PR11MB7198.namprd11.prod.outlook.com
 (2603:10b6:208:419::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7198:EE_|IA1PR11MB6489:EE_
X-MS-Office365-Filtering-Correlation-Id: 56b73f9b-7e71-415c-d866-08de20794668
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eUxwc0NheEZTZ0FBWGJNUGc3enNZN1prOVllVkQzV0d6N0JITUwySkhmU3Rl?=
 =?utf-8?B?SmQ3VHZ3bXpJVFdIdC8yOGtDZldzSVhXNnM5NG9BS21KZ0RlT2M2ajVmTGFy?=
 =?utf-8?B?ek5aSlFjOU85Qm1mbDRiOTNkeHVvdjBjdzFLak8xcTNNczUvTzFBUmRqUEIx?=
 =?utf-8?B?QU5lTE96OXVUdHdNSWNJeFhaSHYxNk8rSFc5RVo2eVN0RVJBTGpTTmdwR1hG?=
 =?utf-8?B?M2lQNC9iYjhNL0pVZVA4THcrQk9HOUcxSU4vMFEwUzJZRDl5NjB3N3RIbU82?=
 =?utf-8?B?cm1ya1NMZU5TVUFTN1diZTV1aE5XcEZGaVcxbWNVNTZvS0FFcXpOd1FsaVBj?=
 =?utf-8?B?cVVjeTZZUVdSa0w3ZXA0cXcrSzY4U1k3YnhRQlJiQzdUOXRrNEpMQkVvTE81?=
 =?utf-8?B?NCt0QS92aWVTVHFpb1V4YjJZczE5cjEyL0dMZUY3R2RlbTdDVnJjZzVWbnhS?=
 =?utf-8?B?bzZKQy91YXRaNk5HOTgzSWdHSWUraTFmV1FYTzJ0dGVBeUVrUXZCNjVtNjBS?=
 =?utf-8?B?RnJ0STJuT2l5aGNqL1I3WE9yWmErYURKam01UGh0SGV6R1IyNG01ekQzWWZI?=
 =?utf-8?B?TU1WSnN0SGY0VTRLcVE4Sm9hQWI5TW1YZDE3bmRrVCthUVkxYllaMUQvcjBn?=
 =?utf-8?B?cjZlZHJQaTgvSUpKc2pHRDJQMG1lMk9pWi85NUNJQnB0bGFQM1p3UVBYRkVT?=
 =?utf-8?B?MmtpcU5oWmRvN0gvOWVnYTg3eVRDYVlHOHRDU01Yb2E2VWdBNlN3bm9TTGJu?=
 =?utf-8?B?dUxJNjEzVEF2VjllWVRtZHBjd00veFduelQ0RmJER0d4Rm0wRkR4MVhLZzZV?=
 =?utf-8?B?UXhlREdULzlPbDltNVVDaW1uTFd5a01veUoyS3lqdGJFOWh3YTNabVAzQ1U1?=
 =?utf-8?B?RDVoQVB5WmhoN0k5cHpXdHc2R2pCSXF0WnRsbEpCM04vV1o2VTNyZktmQkVR?=
 =?utf-8?B?cloyME8yemxUSnYyVUtWcVZuV2Zabkw4QkJmWUVqd2dkZ1JOMCs5UGpnQTYw?=
 =?utf-8?B?VUovekhraDRMMW5NbEhwWUZqWGt2Vjl6ZTdBUi9mNU5hZlU4bUJaT2NaNUQ1?=
 =?utf-8?B?MXplL25VSmdtWXZadmJSTFVUYTl5ZTVoOUozUXhQaWJTc2RFMnZ4eXNNQ2xL?=
 =?utf-8?B?UldvbmZSbWU5YkluSWxJSWE3Qzg0S09vNkFoUXBMTG52cnhhZFNmTHlJRHBL?=
 =?utf-8?B?U3BFek9ia2lvZk90RnNUajNCalErTENySDZMT2VkM2lkbkZHZ2xoZnNGWUEy?=
 =?utf-8?B?Q3JEaWx3WDR5VkZiQjRRaEszbHhoQlNQeWN4c3NGMUc3bEsyWDA1NW5icjBB?=
 =?utf-8?B?bjdGQzcvdDUrQjFCczN1T2J5YnI3OFlNS3dqUGN6NGU1bGFBbGw0bi9IdlFl?=
 =?utf-8?B?bXFuaENScmlTaU5oaE5aRmUxQ24vYU0xQ0tPVXZNMWlZZi9vVkl3WmZWaVha?=
 =?utf-8?B?RlJZYkpVREZlSEtobmNqZDU1VGYvT3ZKMmtRQ1krSElkdTByTlFwaE5NUGh1?=
 =?utf-8?B?b3hTTGxJSlhGSVRkaVA3MDg2Umd0RW15WU9McVdubWxhOU9HWnQzZ0NxUVU3?=
 =?utf-8?B?VWMzZ2U3UzRNTlZmcVBTa3FEWWJiRXUzS0NqUmg5YkxhbmhmdGhwNzhsYnY4?=
 =?utf-8?B?ejB6VmRTUWZPUHhSc2RtbzFNTGQyS0prWUovdjhxYjcxUk1ERXB3ejFzc293?=
 =?utf-8?B?U09JTXZHd0ptSGRwUVVSbTM4VU91em5JUWR1TTJIZkdiU292bzJXTS9MTFA3?=
 =?utf-8?B?MkduNWE4aURIRFVCODNOVjcxN2ZaeTdkYXoyZmYxTzNBQW5tbkRPclZuUi9T?=
 =?utf-8?B?U0tuQ3pZb0h0OU4yQmhIbDNLeitHUVhSZEFpUEhaRWIvVkJRVE8rcGIyc2c0?=
 =?utf-8?B?UzhBbFE4dnl3QjZVS0s0aDFveFFWbGVrYXg1YWJkZWYxY25saURzSk8rS3Bz?=
 =?utf-8?Q?HHLCBbxGWNui7Hjw7Yhs1Bseh72tqAlw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA1PR11MB7198.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckx2SGdHenJiY2FoaG5Wb0pONDc4RUhhVjNEM0JPOUhTY0VrMmVCTEhRSDQz?=
 =?utf-8?B?L1JHWmFuQnNkMjRHQkk0bVR5b1hLeUJMTDFMeE5Zem13WThOdHNaeXFYdVhZ?=
 =?utf-8?B?VjNwaVowd2lzMFU0a2tLbkViYkxkczRVVDNOZDhnRXN2N0ZjNVAreHBsWWlx?=
 =?utf-8?B?RlhsUUxmL0VGMHN2Y3d5ZGpJdzZUWHBjTU1LTGt5K0ZLVkFmdDNWUzVkTmRo?=
 =?utf-8?B?Wnc4aVZ5bG9wT25IUnlDNUdIUENJcmUvQ0xFcVgzUldUTkhWWUpQdHltc2Z4?=
 =?utf-8?B?TVk0Ky9zMlhrWTVqK2g4QWRseSt1RUdUMDg5WmVUS01IWVZsT1VMS2JYVXhU?=
 =?utf-8?B?c29iRVRKWXNoMlY0VU1lN3dWdG1tVDNieldNR2FWK202UThZM0RpbUhWWXFm?=
 =?utf-8?B?Y1RZMkRzZHUvWUlEbkJ0SUlzajNsVG9SekY5eVNvZDJhcVZUQVh2NUJXWHFm?=
 =?utf-8?B?Z2RTNlJyVUpjUWlNNmxkRkhNL3ZwWUdxUjN4bG1yNnZDbWdxNU1VMDlLRXZp?=
 =?utf-8?B?RmFhUGN3eWxWUDJ6bncwSE8xbHdFVDgveFoxb1Z3OXNvbzZhZlV5d2d3RFpL?=
 =?utf-8?B?YThtd0EzSm9QcVB2K3RCb3liRHpKRVJrTm9aNmJJL0p6ekU2WVAxZzAxcmJv?=
 =?utf-8?B?ZnNLbzliMTJjUzhUaHc3YTBvK2p3Q1pKL3FLaXF0WmJsQzdsQW1hRlNhbFdu?=
 =?utf-8?B?SzRRbElMR2lJR2taQ0l6T2VueDE2cGt1aGZxdEFuV3JLYTlNYmllUU5hY1FY?=
 =?utf-8?B?SVNLYkRaYXBOYkY4WTljNVl3VzN1emFQTVFacGE5QU5ya3FLZ1dyeEtEeGN6?=
 =?utf-8?B?Umdlck9jMWFXbmdwSWthdFNQY2M5cUtrUXFXSVBGTmd5dEp2YXFWN0FMRG14?=
 =?utf-8?B?ZDBDVmdONHNnM1M5NmtBS0plRFdjZzJTcENoWWE1NjVSVnEwN2JNNWtLb0M5?=
 =?utf-8?B?RU1XeUFjOFVudEVBV2ZMZWwwaTNQKytnVFV5dDk4akFKRjFjTmpOS09nMWJl?=
 =?utf-8?B?TXA1b3BFdk13VUNYNUQ3eHNVcllWYWNaYmVwa20rRzdJTVkyZFAvWTRkYWxI?=
 =?utf-8?B?R0ZWT3picFEyVDZ3TnZ0NENuVm9LVkdIR3drWElEQ2JxcFNKOHMzY1ByTlZm?=
 =?utf-8?B?b0Y1NXhIS1dZVjcvanJHVmtlQzdWTlFmZ3NZZ1hXRXpSQnJWcjBkUVJkVEdx?=
 =?utf-8?B?d3YraVhHMlpQY3oxT3ZlYzU2VDRUMHMzMlpmbm1mNWdSUk9RaFV6TkJHRWZh?=
 =?utf-8?B?Slo5S0ptakdMbDNwdUdNZlNuZkxVMDBHZmlpVnZrZE96aU1STnN1QUY0Z0ZC?=
 =?utf-8?B?eTIrdEtaRHlyamdBTkI2TEdrcFJDaks2bDZnUm1KWHJJSHVVSklHM3N6Mnpn?=
 =?utf-8?B?VDJ5ZHhHc2pQM3A3bysrMnpjS0kxMG5zWnp5bndIcUdheFBsck82VDFMbitm?=
 =?utf-8?B?VmVzTWNLbXhKWFd5Mm9GVDE2c0hpVERDdGJ2OGNhYllWWGFHK3JlTWxGNG16?=
 =?utf-8?B?eWdqZnFSOHM1OURJVjVHT3Nwc0lmaGRUeDg2aG5QSTl6YnVPYmZQLzk2ZHgv?=
 =?utf-8?B?YkZKbkRiVHNsQmtPZXR1ZXNHTkNsN0ZJa0lkenVIVVZxdlZLSnVlZ0NYNUtH?=
 =?utf-8?B?bHpwekR0T09LRGsrS2d2VE1NYmpJNVF1SGlNVFBoUTdFN0RaT1h5UjhjZS9p?=
 =?utf-8?B?ZHBQTXhYdmo4UkR1YzFDR0hKbndhOHF5clZ6ZERLM3dFd3BrRGl0V1kxdjdn?=
 =?utf-8?B?ZVBiVzY1UUd3Y1ByWkhRdzRBYmlCcXhxT2k1dzQxRG9KWkt6cUFSS0lmRlhm?=
 =?utf-8?B?enJienAwWnZicGVqNWdxWk85bit0bVdEVm1jVS9SUWNiWm5ndWRHZVVJL29Q?=
 =?utf-8?B?QnZxQkYyNGFVeFM1RjJVZnJIMCsyS25IUmFwazBzeEVBN2pZSUFuc3BKbWRt?=
 =?utf-8?B?QmJsOG5INmxjU29HdGdOVm1xZGFyVVFxd01XNGpiTW41TUlOS1RhSCs4eGg4?=
 =?utf-8?B?YiswTENiTGxURFVJV1ZWWFE2ZmJIdHkzTng0dFJVV1NBbVNNSGI4dktjdkw2?=
 =?utf-8?B?Vml4a2ZmSXYwbGZST25aYmtyTHRMTmxBUlJ6emhiUmtiYUpNamt0NGlxYVMy?=
 =?utf-8?B?TzV3bnV5bHpWemx4WFp4OWtZNXNWNitDSVBnT2tkbC9oQUlPQ2lRNFFZSndj?=
 =?utf-8?B?b2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56b73f9b-7e71-415c-d866-08de20794668
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7198.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2025 16:50:38.0893
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gx9DXLEC03N9fgCIlHbgtsbXA+/BGe1D0MNRYSQvmsU33Rz42DvMWLIkI8KUjNZereApq2VOxDFViSLrdubsow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6489
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_085042_663259_B6F34CAC 
X-CRM114-Status: GOOD (  15.62  )
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

On 10/11/2025 15:43, Sebastian Reichel wrote:
> Hi,
> 
> On Mon, Nov 10, 2025 at 09:58:24AM +0200, Adrian Hunter wrote:
>> On 31/10/2025 17:58, Sebastian Reichel wrote:
>>> This adds CQE support for the Rockchip RK3588 and RK3576 platform. To
>>> be functional, the eMMC device-tree node must have a 'supports-cqe;'
>>> flag property.
>>>
>>> As the RK3576 device-tree has been upstreamed with the 'supports-cqe;'
>>> property set by default, the kernel already tried to use CQE, which
>>> results in system hang during suspend. This fixes the issue.
>>>
>>> Co-developed-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
>>> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
>>> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
>>
>> One question below, otherwise:
>>
>> Acked-by: Adrian Hunter <adrian.hunter@intel.com>
> 
> Thanks,
> 
> [...]
> 
>>> @@ -687,6 +757,9 @@ static void rk35xx_sdhci_reset(struct sdhci_host *host, u8 mask)
>>>  	}
>>>  
>>>  	sdhci_reset(host, mask);
>>> +
>>> +	/* Enable INTERNAL CLOCK */
>>> +	sdhci_writel(host, MISC_INTCLK_EN | extra, DECMSHC_EMMC_MISC_CON);
>>
>> rk35xx_sdhci_reset() is in sdhci_dwcmshc_rk35xx_ops.
>> sdhci_dwcmshc_rk3576_pdata also uses sdhci_dwcmshc_rk35xx_ops but isn't
>> supporting CQE ops.  Is this change OK for rk3576?
> 
> How did you come to the conclusion, that rk3576 does not support CQE
> ops? Have you read the cover letter? :)

Just saw that sdhci_dwcmshc_rk35xx_pdata has:

	.cqhci_host_ops = &rk35xx_cqhci_ops

but sdhci_dwcmshc_rk3576_pdata does not.  So it uses the
default dwcmshc_cqhci_ops then. Ok.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
