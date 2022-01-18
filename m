Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 065A8C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jan 2022 10:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:CC:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OEb8HitreGpo/bIa8Eb2RnAc2SG9zfhsSKQmRzjSQME=; b=uNsJhbWsp1Up9Tmc1CXZWxmEv7
	cwa+KJJu9CG9aqCFZ8oBO6HT89NIt8mTS+p+gcBRdH82TipcDsDuyX8+X+yfqBXyxRq90Is8y/HF9
	kSqlQBLN07vDi3cIETmXNZX6BYwA6290xEJiPOyovUyBSgBcKFX5CoCcPEjVf4S8mspss5jb+u4xm
	eSy3G/Uz239SV0YB36DLtYaaHxPCJ2R9neJjXzIYesxzKDGinKS0vJpz30SFhHwml/xBFI3ZdPxnV
	DwGVfLTksCw8ry3L8lRudESbRj3ZM+E1C5EHvHAMtqhAKkZ9nG9LpT8mnth/UczbYA1b3GqxBwPyo
	MISr+C4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9lyo-001EJ5-Qy; Tue, 18 Jan 2022 10:44:46 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9lyZ-001EGM-Ky; Tue, 18 Jan 2022 10:44:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642502671; x=1674038671;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=awMVed4u7MSxgOIeHIsbqb/hbWbo34EYms8M6wav7ic=;
 b=bTf0rOR4W1Bf4D7MWwO3sEJCL9/Kiy63Xedek6kaXFgtbTn26Lc7iS8f
 /EEQyGPWQ1OZGqzptRLzCC51CAbY/m6jHm/mq9fRyaRoFx+Aq5u6Divmu
 rL8Kiiqy7eLM7q0TGMPWcv+mWh4wgvagip62PLVm7gDOMMHkKzjP89aFs
 Kxc1LCxu/4kUFlDqtxsBGyMq2atNXlp/WJaVZchwhsnGPIcYu4Vb6957j
 uQEcb+uL38Ib2WBb25g6H5lEbENZAUJdVDT/5d/gptHi0rueeYh2hCb0p
 axGB3BBFXZLFmVcP3j7xfPoHGyuzEH7UvYvauiEN4YgDxZ0idJ83wkKe6 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="224764877"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="224764877"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 02:44:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="530260300"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jan 2022 02:44:30 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 02:44:30 -0800
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 02:44:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 18 Jan 2022 02:44:29 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 18 Jan 2022 02:44:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dMSmJ1NM3gKuobWBOqA7JG1lxfjvKGD2HddyStlMaGDeCRHsu6wKaON9JVE7IRp9+qZXkMbaDEwLUVcWlTCG0hmMOQ9FBCf1Yu+WWkLwWj9Uz1F86DRQwaboH8r4Qq+sd9+s/lU3JYiM8sjKpMmijTwlPfFmO7Mvmn797CKGW07bsMoq8sh+bZ3Jyz2wuFYQAhFnqhjxIqHE8n3UU1qDIDsUWoD/fVx+aCbxPqCdz1YqtjV0Cr7J0TFJSe2NXl40rTPnrjIJ1sQ755TDl/aVnrMo6e2t802LsoY91/+HwnMNYyXoe6x5KSphcV0LAzgaGK6yzgA3CgzvmUXKUOQQhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1aqpV3zI1z4+Yg+NzyNtCxV9scKC0/7Eul0KFkZ95Wo=;
 b=MfR9WohN9tW/rHxoan3+joTEpIHLgu94MuxSMSYDMguHwuhB6P+WnkkEM0jFJFQXqCRXA44P6ccDWH8aJCzTr6nFBS4UZFjNRmrM9dPHnUkzv1hJNiqw1SbN25U3bpW/cIlwtfujyULDNfxOxtFNR4pKmij2AJnCl8ue4WMM16wiumqOpUDtNG1fKdGyAIu7BxHh6wm0YjIKxXI11Qjdz2/NqUtk0CctG2XyIUpefUylnS1+cCTAZ+0SeOZ9MfNacRRD/CBuevMeZPokYS8N/E5N+etefqy5JueVd0Rhhzi+iEb8zNeKeHWtNjWUxFam9BPZnhLnZlRWzy1FG69fAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 DM6PR11MB2617.namprd11.prod.outlook.com (2603:10b6:5:ce::31) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4888.10; Tue, 18 Jan 2022 10:44:28 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b47a:6157:f9b5:b01d]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b47a:6157:f9b5:b01d%3]) with mapi id 15.20.4888.014; Tue, 18 Jan 2022
 10:44:28 +0000
Message-ID: <51eda14f-5c37-c3af-84de-b591b8762a63@intel.com>
Date: Tue, 18 Jan 2022 11:44:20 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.0
Subject: Re: [PATCH] phy: dphy: Correct clk_pre parameter
Content-Language: en-US
To: Liu Ying <victor.liu@nxp.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-amlogic@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
CC: <linux-imx@nxp.com>, Neil Armstrong <narmstrong@baylibre.com>, Robert Foss
 <robert.foss@linaro.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, "Jernej
 Skrabec" <jernej.skrabec@gmail.com>, David Airlie <airlied@linux.ie>, "Daniel
 Vetter" <daniel@ffwll.ch>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Kevin Hilman <khilman@baylibre.com>, Jerome Brunet
 <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Heiko Stuebner <heiko@sntech.de>,
 Maxime Ripard <mripard@kernel.org>, =?UTF-8?Q?Guido_G=c3=bcnther?=
 <agx@sigxcpu.org>
References: <20220118025918.1444288-1-victor.liu@nxp.com>
 <96cd66cd-8e90-5f68-6009-f48015400aae@intel.com>
 <1d945988f774732c204f9dabdb8fa5795f0eca24.camel@nxp.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <1d945988f774732c204f9dabdb8fa5795f0eca24.camel@nxp.com>
X-ClientProxiedBy: LO4P123CA0350.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18d::13) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4d35f4f2-bd16-41ab-e45a-08d9da6f804b
X-MS-TrafficTypeDiagnostic: DM6PR11MB2617:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB2617E67E70D3269A7B634E44EB589@DM6PR11MB2617.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Cdf2/W3r1CETBrI3BfQ5lzYhqIqxapIgF/N3+pGF4vbu2FjgwUSjIw6yZlmg+M4ayBJqpLfDGdx0A+1QkPSbi0kP/Y/1lELe9ku6Pf811s0Ml3ynhjuAqQHOBjS7w7XRC0aA0dD4GJ4QFNyjSK2pPVYLpxLKAZmrAc9pgNA12nrCmoQKMC7pBn8RM5dYr/5L2UuRbyU+9mb5ife+Ib7zZ2jBLI0X+EV/gzc2U3eWh8CtLNFQmD/+HQ+gtTpBeIUNJsZafY+UVGI9MzRvMysG6J6UvZcNcWO+i8wYBvab5ZPMNbVjnZXdSq6QQHIY+PXRNlhUEI1Y0yN3wseFYvg6ANe4lDOWzUL7pa0Y0kclnHSbxEHt8EMLRYzRMQcqVJY91/a4uVb9SJEXT4WLlYoOLIL12HSuOKxUArj0q4UVO8l0useXLwpzByJv5UIqtq8Gtx2fbWN3SR/v+6CVyHw7ngqWolw76pK5KBom80Rh6bChiz0yShm+J2cfq2npzSmVsG02UUuSukH4WmTFg4jG3oHG3dVirHMcJV4BpNXxjxscze7HrLmdNtNy+lTQKn5jXxbirIkpv7pONAxLiEwwwR2QhEs24Hm868hCXrciQ0b0kZJyWnvDbpHBFblCdMHadh3JI5Btrt3nYfK4ClzBZ479Pu3a0k03aATeQnWuju1C4w1Klc3jRYG1tHxRgpSd7soa3VFnIzKydAKNm1/4r/I0VkpQ3DlLuwmQ2aX6sc4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(82960400001)(44832011)(2906002)(53546011)(54906003)(86362001)(31696002)(6506007)(316002)(36756003)(36916002)(38100700002)(2616005)(186003)(8676002)(83380400001)(7416002)(31686004)(66946007)(6666004)(508600001)(6486002)(5660300002)(4326008)(66556008)(26005)(66574015)(66476007)(8936002)(6512007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?elJRR0JKKzBpcGdUbzZpK0VxMkljL1RVaE5hZFFMV2x3ZU5FOWNkQmNIN01n?=
 =?utf-8?B?SU9HRm80R0hPdmFETXNRMVV3SUxMVC90Rkk0Q1kwb3FES1VnL2pYaDRDZWI4?=
 =?utf-8?B?c2ZzcmZoaFplTU8rTmJUbVkxNHNObG9PNlM2MEhsWTUxWkJQT3pIQVBNYWlN?=
 =?utf-8?B?SGEyQUN6bkdVb2xvZUdDRi9lc3FqWTdNRWJXVWxmWnJNOUdBaGpoY25IREF6?=
 =?utf-8?B?QWY0amp1RnpWS0NvcXFVOU5rU0dCUGtlWEhpanRoRnQvQjgwRTZ5U3lNNlRD?=
 =?utf-8?B?S3BFL3RIeS9RWkY3K2FLMnR6M2dBTHE5NnhqNnJIbGtaclZweldOSkJ6MXcv?=
 =?utf-8?B?ZDZHQ2ZITy9QdjJIaHJtWmlGVlZEeWJ6SkdhTkR6YVZuVDJ2TWkxdmljQisr?=
 =?utf-8?B?QndHd1ZaK2dSU3VGKzVPWTltSlZxR0EyNXVqV1V4Z290czNNci9ncGswWWxF?=
 =?utf-8?B?a3hTRnhtN01ObGltRmdkTDIyamRlSDRmNDNLeTRaSVRhSHNEYWRQbk9naEs0?=
 =?utf-8?B?dGtPTk1xUUVLNC93TGFMMHp4aFJxcU9BM042UTFRRlRhWi9xckF2L2xnSHlw?=
 =?utf-8?B?V3Q2cE0wMGdLMXduU2M2VzNFWjh1d0dxUUlhS1FacCtMc1R1QTIwNThBd3pG?=
 =?utf-8?B?cm5xRmpjR0lBYlFzVngrTEZoTHlMdUh2YUNmU09wQzQrM3p5QjFUOVRmUCtR?=
 =?utf-8?B?NmFiWU1lbkwyRzZUSDRWMnhpZVV6cG15ZDRyUkdRSkFSaEZOQ0VSMkZuSzN6?=
 =?utf-8?B?TW9ZZHJGZzl4Q1VUZVF3Znplb1BvYVh6a3BhUkhjTEx4TVRDdDFvOXY1WkVj?=
 =?utf-8?B?M2VBZzBOaG9qYTdaNWF4aWIvNlhUYUx3QjNXcVVDY2ZMSXovZ1JsZjYxZ3p1?=
 =?utf-8?B?WEQ1MjJjR1ZydU0xUTcvNXo1ME0zcEp3L2pXTEtZNllEWmZqZ2VnTUFtZTlQ?=
 =?utf-8?B?dXFSUWxqOHZIdnRvTEVHOWNaZ2pKSjVlVERkbWFyNDdTdnZsNFV0Q1VIVEJP?=
 =?utf-8?B?KzA1ckhZSU5BMWpZV3FVV3VSbEIzWis3QUkyN3k1VmRzUUhhMzlOdGxCTUgw?=
 =?utf-8?B?c2tseGQvUzNwYW9QMk85Q3BCcjQ4Y0xpSk04eDBBUGRUV2Qwa21HQXNiODRK?=
 =?utf-8?B?TTdUOW1RcXJobWpMZEFJbjIxM1dpMXNkQUE2MU9HQ2FNRmNEamRZS09KdVov?=
 =?utf-8?B?UU1BOFp6QlpLRmVzSitLUm9YWGhxNG90MFAxTStEZU5HaldPYzBVc2xDdTJB?=
 =?utf-8?B?Zk5jWEM5ZUt4VE5ocHF2ME00d0NPdkFoSTZyRXBIa2tPM214d3k2K2tvd0Q4?=
 =?utf-8?B?bVp6cTJkU3F5UkxaSGFFRkVWbkdoNEkvaHA4YWFhTkVzN2lDclluK3V1dElV?=
 =?utf-8?B?TnI5SUJFSExrZS9URUh3cnlacURxYmhtSllwbkd6RDBEdXMxZW9xTUYwTFlW?=
 =?utf-8?B?QXk0WTNWQVYvKzJXVDVoeDZLbmlXVFRady9KTUtuZ2hyNzBndVNBRkdmTXR2?=
 =?utf-8?B?dzZsQVZQTzRBMWU2Zyt3Vm1lSzVVSVJicndkVnMxTnllSXIvdHBkMmRKQ1ZQ?=
 =?utf-8?B?VlhZbkpNQ0hjR1A4V2F3NWk0b3owYStHanpPWkVuelZtYWY4a1IweEVmNjJD?=
 =?utf-8?B?aE5sT3RSWit3QWFUaFd5ck9GTjF0eUphYkFJSHBJbEd3NGpOcGkzMDJtalhv?=
 =?utf-8?B?YmxHSDhYa2I4MytNeWZCVElIcEQvb1NyTWt4c2tKSFZxRkFEcmpHYmwremdO?=
 =?utf-8?B?OHYvdE1qMGxucVptWDB6Qi9IK1VESXQ2V2FuSEhkRE0rWG1aanF0V29nZHpT?=
 =?utf-8?B?ME56SGgrUGR2eG5CSi9SNzNZbzZMYVNXMHRkbzNPOUIzdVNySmN6cld6ZEV1?=
 =?utf-8?B?RTQ1dmwzVUtqdWRsdi9Ha2ZFOWUydmZEWGZQcW9odmE3dTFYQ1ZwaE1GMGtX?=
 =?utf-8?B?RFVVbHhxb05SaHFmUjAraU5xaGp5M2REMjJNQlRRVks5bEZ5ejE2OFBzVTEw?=
 =?utf-8?B?NHA2WEhXWitYaGJKbjlUOCtoRlcvOGo3UXdXcjdOWExYMU9mVnZlRXY2bGRt?=
 =?utf-8?B?bjdrc2pDd3R2Rkh3d0JiVzlkNWR6dGh2ZFBvbVdFRHFoZ2hhdTJLQXVIV2VV?=
 =?utf-8?B?SlkvVWdqM3lhSU55VzA2WTYzRzVYZ2JUQ2NXc0FZZlpqL2FJZEt4T1Z4d2lJ?=
 =?utf-8?Q?Vdcd6xrp5Y9Q+OROdCmksG0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d35f4f2-bd16-41ab-e45a-08d9da6f804b
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2022 10:44:28.0818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2vF+NL2XyEzj+Mc3/EdSzl2jeCuDsT8LvuOZN/XSLZOoVPwmoTj5hQcdaZw8AwCHAA9i5dQcYKBbvumDbx6JRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB2617
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_024431_746150_2C22CE12 
X-CRM114-Status: GOOD (  24.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDE4LjAxLjIwMjIgMTE6MTQsIExpdSBZaW5nIHdyb3RlOgo+IEhpIEFuZHJ6ZWosCj4KPiBU
aGFua3MgZm9yIHlvdXIgcmV2aWV3Lgo+Cj4gT24gVHVlLCAyMDIyLTAxLTE4IGF0IDEwOjI0ICsw
MTAwLCBBbmRyemVqIEhhamRhIHdyb3RlOgo+PiBIaSwKPj4KPj4gT24gMTguMDEuMjAyMiAwMzo1
OSwgTGl1IFlpbmcgd3JvdGU6Cj4+PiBUaGUgRC1QSFkgc3BlY2lmaWNhdGlvbiAodjEuMikgZXhw
bGljaXRseSBtZW50aW9ucyB0aGF0IHRoZSBULUNMSy1QUkUKPj4+IHBhcmFtZXRlcidzIHVuaXQg
aXMgVW5pdCBJbnRlcnZhbChVSSkgYW5kIHRoZSBtaW5pbXVtIHZhbHVlIGlzIDguICBBbHNvLAo+
Pj4ga2VybmVsIGRvYyBvZiB0aGUgJ2Nsa19wcmUnIG1lbWJlciBvZiBzdHJ1Y3QgcGh5X2NvbmZp
Z3VyZV9vcHRzX21pcGlfZHBoeQo+Pj4gbWVudGlvbnMgdGhhdCBpdCBzaG91bGQgYmUgaW4gVUku
ICBIb3dldmVyLCB0aGUgZHBoeSBjb3JlIGRyaXZlciB3cm9uZ2x5Cj4+PiBzZXRzICdjbGtfcHJl
JyB0byA4MDAwLCB3aGljaCBzZWVtcyB0byBoaW50IHRoYXQgaXQncyBpbiBwaWNvc2Vjb25kcy4K
Pj4+IEFuZCwgdGhlIGtlcm5lbCBkb2Mgb2YgdGhlICdjbGtfcHJlJyBtZW1iZXIgd3JvbmdseSBz
YXlzIHRoZSBtaW5pbXVtIHZhbHVlCj4+PiBpcyAnOCBVSScsIGluc3RlYWQgb2YgOC4KPj4+Cj4+
PiBTbywgbGV0J3MgZml4IGJvdGggdGhlIGRwaHkgY29yZSBkcml2ZXIgYW5kIHRoZSBrZXJuZWwg
ZG9jIG9mIHRoZSAnY2xrX3ByZScKPj4+IG1lbWJlciB0byBjb3JyZWN0bHkgcmVmbGVjdCB0aGUg
VC1DTEstUFJFIHBhcmFtZXRlcidzIHVuaXQgYW5kIHRoZSBtaW5pbXVtCj4+PiB2YWx1ZSBhY2Nv
cmRpbmcgdG8gdGhlIEQtUEhZIHNwZWNpZmljYXRpb24uCj4+Pgo+Pj4gSSdtIGFzc3VtaW5nIHRo
YXQgYWxsIGltcGFjdGVkIGN1c3RvbSBkcml2ZXJzIHNoYWxsIHByb2dyYW0gdmFsdWVzIGluCj4+
PiBUeEJ5dGVDbGtIUyBjeWNsZXMgaW50byBoYXJkd2FyZSBmb3IgdGhlIFQtQ0xLLVBSRSBwYXJh
bWV0ZXIuICBUaGUgRC1QSFkKPj4+IHNwZWNpZmljYXRpb24gbWVudGlvbnMgdGhhdCB0aGUgZnJl
cXVlbmN5IG9mIFR4Qnl0ZUNsa0hTIGlzIGV4YWN0bHkgMS84Cj4+PiB0aGUgSGlnaC1TcGVlZChI
UykgYml0IHJhdGUoZWFjaCBIUyBiaXQgY29uc3VtZXMgb25lIFVJKS4gIFNvLCByZWxldmFudAo+
Pj4gY3VzdG9tIGRyaXZlciBjb2RlIGlzIGNoYW5nZWQgdG8gcHJvZ3JhbSB0aG9zZSB2YWx1ZXMg
YXMKPj4+IERJVl9ST1VORF9VUChjZmctPmNsa19wcmUsIE1JUElfRFBIWV9VSV9QRVJfVFhCWVRF
Q0xLSFNfUEVSSU9EKSwgdGhlbi4KPj4+Cj4+PiBOb3RlIHRoYXQgSSd2ZSBvbmx5IHRlc3RlZCB0
aGUgcGF0Y2ggd2l0aCBSTTY3MTkxIERTSSBwYW5lbCBvbiBpLk1YOG1xIEVWSy4KPj4+IEhlbHAg
aXMgbmVlZGVkIHRvIHRlc3Qgd2l0aCBvdGhlciBpLk1YOG1xLCBNZXNvbiBhbmQgUm9ja2NoaXAg
cGxhdGZvcm1zLAo+Pj4gYXMgSSBkb24ndCBoYXZlIHRoZSBoYXJkd2FyZXMuCj4+Pgo+Pj4gRml4
ZXM6IDJlZDg2OTk5MGUxNCAoInBoeTogQWRkIE1JUEkgRC1QSFkgY29uZmlndXJhdGlvbiBvcHRp
b25zIikKPj4+IENjOiBBbmRyemVqIEhhamRhIDxhbmRyemVqLmhhamRhQGludGVsLmNvbT4KPj4+
IENjOiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+Cj4+PiBDYzogUm9i
ZXJ0IEZvc3MgPHJvYmVydC5mb3NzQGxpbmFyby5vcmc+Cj4+PiBDYzogTGF1cmVudCBQaW5jaGFy
dCA8TGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+Pj4gQ2M6IEpvbmFzIEthcmxt
YW4gPGpvbmFzQGt3aWJvby5zZT4KPj4+IENjOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFi
ZWNAZ21haWwuY29tPgo+Pj4gQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPj4+
IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Cj4+PiBDYzogS2lzaG9uIFZpamF5
IEFicmFoYW0gSSA8a2lzaG9uQHRpLmNvbT4KPj4+IENjOiBWaW5vZCBLb3VsIDx2a291bEBrZXJu
ZWwub3JnPgo+Pj4gQ2M6IEtldmluIEhpbG1hbiA8a2hpbG1hbkBiYXlsaWJyZS5jb20+Cj4+PiBD
YzogSmVyb21lIEJydW5ldCA8amJydW5ldEBiYXlsaWJyZS5jb20+Cj4+PiBDYzogTWFydGluIEJs
dW1lbnN0aW5nbCA8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbT4KPj4+IENjOiBI
ZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+Pj4gQ2M6IE1heGltZSBSaXBhcmQgPG1y
aXBhcmRAa2VybmVsLm9yZz4KPj4+IENjOiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3Jn
Pgo+Pj4gVGVzdGVkLWJ5OiBMaXUgWWluZyA8dmljdG9yLmxpdUBueHAuY29tPiAjIFJNNjcxOTEg
RFNJIHBhbmVsIG9uIGkuTVg4bXEgRVZLCj4+PiBTaWduZWQtb2ZmLWJ5OiBMaXUgWWluZyA8dmlj
dG9yLmxpdUBueHAuY29tPgo+Pj4gLS0tCj4+PiAgICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253
bC1kc2kuYyAgICAgICAgICAgICAgICAgfCA3ICsrLS0tLS0KPj4+ICAgIGRyaXZlcnMvcGh5L2Ft
bG9naWMvcGh5LW1lc29uLWF4Zy1taXBpLWRwaHkuYyAgICB8IDMgKystCj4+PiAgICBkcml2ZXJz
L3BoeS9waHktY29yZS1taXBpLWRwaHkuYyAgICAgICAgICAgICAgICAgfCA0ICsrLS0KPj4+ICAg
IGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYyB8IDMgKyst
Cj4+PiAgICBpbmNsdWRlL2xpbnV4L3BoeS9waHktbWlwaS1kcGh5LmggICAgICAgICAgICAgICAg
fCA0ICsrKy0KPj4+ICAgIDUgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTAgZGVs
ZXRpb25zKC0pCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvbnds
LWRzaS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9ud2wtZHNpLmMKPj4+IGluZGV4IGE3Mzg5
YTBmYWNmYi4uZjFmZGNkZjc2M2VlIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9ud2wtZHNpLmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5j
Cj4+PiBAQCAtMTk2LDEyICsxOTYsOSBAQCBzdGF0aWMgdTMyIHBzMmJjKHN0cnVjdCBud2xfZHNp
ICpkc2ksIHVuc2lnbmVkIGxvbmcgbG9uZyBwcykKPj4+ICAgIC8qCj4+PiAgICAgKiB1aTJiYyAt
IFVJIHRpbWUgcGVyaW9kcyB0byBieXRlIGNsb2NrIGN5Y2xlcwo+Pj4gICAgICovCj4+PiAtc3Rh
dGljIHUzMiB1aTJiYyhzdHJ1Y3QgbndsX2RzaSAqZHNpLCB1bnNpZ25lZCBsb25nIGxvbmcgdWkp
Cj4+PiArc3RhdGljIHUzMiB1aTJiYyhzdHJ1Y3QgbndsX2RzaSAqZHNpLCB1bnNpZ25lZCBpbnQg
dWkpCj4+PiAgICB7Cj4+PiAtCXUzMiBicHAgPSBtaXBpX2RzaV9waXhlbF9mb3JtYXRfdG9fYnBw
KGRzaS0+Zm9ybWF0KTsKPj4+IC0KPj4+IC0JcmV0dXJuIERJVjY0X1U2NF9ST1VORF9VUCh1aSAq
IGRzaS0+bGFuZXMsCj4+PiAtCQkJCSAgZHNpLT5tb2RlLmNsb2NrICogMTAwMCAqIGJwcCk7Cj4+
PiArCXJldHVybiBESVZfUk9VTkRfVVAodWksIE1JUElfRFBIWV9VSV9QRVJfVFhCWVRFQ0xLSFNf
UEVSSU9EKTsKPj4gSSBoYXZlIHNvbWUgZG91YnRzIGhlcmUuIEFjY29yZGluZyB0byBzcGVjczoK
Pj4KPj4gICAgICAgVUkgLSBkdXJhdGlvbiBvZiBhbnkgSFMgc3RhdGUgb24gdGhlIENsb2NrIExh
bmUsCj4+Cj4+ICAgICAgIFR4Qnl0ZUNsa0hTIC0gZXhhY3RseSAxLzggdGhlIEhpZ2gtU3BlZWQo
SFMpIGJpdCByYXRlCj4+Cj4+IEknZCBsaWtlIHRvIGVtcGhhc2l6ZSAiQklUIFJBVEUiIGFib3Zl
IChub3QgY2xvY2sgcmF0ZSkuCj4+Cj4+IEluIHN1Y2ggY2FzZSBJIHdvdWxkIGV4cGVjdCB0aGF0
IHVpMmJjIHdvdWxkIHRha2UgaW50byBhY2NvdW50IG51bWJlciBvZgo+PiBsYW5lczoKPj4KPj4g
Ynl0ZSBjbG9jayBjeWNsZXMgPSBkaXZfcm91bmRfdXAodWkgKiBkc2ktPmxhbmVzLCA4KQo+Pgo+
PiBTbyBpbiBjYXNlIG9mIG9uZSBsYW5lIHdlIG5lZWQgOCB0aWNrcyB0byBnZXQgYnl0ZSwgYW5k
IGluIGNhc2Ugb2YgNAo+PiBsYW5lcyAyIHRpY2tzIGFyZSBlbm91Z2guCj4+Cj4+IEFtIEkgY29y
cmVjdCwgb3IgSSd2ZSBtaXNzZWQgc3RoPwo+IFNvcnJ5LCBJIHRoaW5rIHlvdSBhcmUgd3Jvbmcu
Cj4KPiBUaGUgc3BlYyBhbHNvIG1lbnRpb25zIHRoYXQgaXQgaXMgcmVjb21tZW5kZWQgdGhhdCBh
bGwgdHJhbnNtaXR0aW5nCj4gRGF0YSBMYW5lIE1vZHVsZXMgc2hhcmUgb25lIFR4Qnl0ZUNsa0hT
IHNpZ25hbC4gIFNvLCB1c3VhbGx5LAo+IFR4Qnl0ZUNsa0hTIGhhcyBub3RoaW5nIHRvIGRvIHdp
dGggZGF0YSBsYW5lIG51bWJlciwgYnV0IG9ubHkgVUkgLSBvbmUKPiBiaXQgcGVyaW9kIGlzIEhT
IHN0YXRlLiAgSSB0aGluayB0aGUgTldMIERTSSBmb2xsb3dzIHRoZSByZWNvbW1lbmRlZAo+IGlt
cGxlbWVudGF0aW9uLgo+Cj4gJ1RhYmxlIDIwIEhTIFRyYW5zbWl0dGVyIEFDIFNwZWNpZmljYXRp
b25zJyBpbiB0aGUgc3BlYyBub3Rlcwo+IHRoYXQgQXBwbGljYWJsZSB3aGVuIHN1cHBvcnRpbmcg
bWF4aW11bSBIUyBiaXQgcmF0ZXMg4omkIDEgR2JwcyAoVUkg4omlIDEKPiBucykuICBUaGlzIGhp
bnRzIHRoYXQgSFMgYml0IHJhdGUgaXMgMS9VSS4KCgpPSywgYXBwYXJlbnRseSAiYml0IHJhdGUi
IGluIGNhc2Ugb2YgUEhZcyB1c3VhbGx5IG1lYW5zICJiaXQgcmF0ZSBwZXIgbGFuZSIuCgoKUmVn
YXJkcwoKQW5kcnplagoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
