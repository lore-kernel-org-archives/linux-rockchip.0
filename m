Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDBFFC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jan 2022 09:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:CC:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UFDfteqBNBLwlcvKWz9q+Wp6BsmufBrrm42X6hns+Ns=; b=2RyD+LjVOb9fn5M3dpWNXWebqH
	Tc6ignTHTpPUL99uNIGqjdz69GkMXMV//SlWZyC04E5Dk7px9FzIRBrHICnjIZeO6xgV5mdRYreQu
	oCmRLXi170ODND5ExRlDx0Lor6zOYS8RzGHVYUylCCJHlaPvn164jmVFgOybtX1j2azN3+xSVlU8N
	uL9IhslBIDx6I/bAonUTMDvF2OeOC0qpw8hB3fHbMAYlP+VRGevM+bkjLyU9N+erRBnqCBJuusn30
	47ecJcKFCl4HoG2U9P/c5hkvre4f9IxGcd2UbBzptKf+OkK5yj7J37hHVDt82eGQuvIxCY8AMVtix
	BAHJW6qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9kjl-000tJ8-CG; Tue, 18 Jan 2022 09:25:09 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9kjh-000tH3-8w; Tue, 18 Jan 2022 09:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642497905; x=1674033905;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=meFk2j7HK8OeUlOuzKPEYbgMISRwtf7pwni7AKClPxY=;
 b=C1u65CKsngPELMOemPKdtpuer8wkkAFEdwBxM3td4j5NeMbbThbqF7PX
 JS4VfEs+UcIC/IbaLMCDpa6DjAGUf53VtM1xcsOjK8kVWqr2df4jeqyq8
 mSeKbKrmQG/ot0eyxWJKsuTPHN9uCDjWhwk2U8ZTUQFFeNT0sdxj89QeY
 EJVEIBHk1B9+NgTzK9u51ImTRGFWwN1bPWmSglVAp28Fs7qgG3rwQmiMO
 ufYHdRgXWgWGvhpQQDXy6SF/5y54Wj/ejkIfH0WFBH/NxpmW1ekehECUJ
 w/d/WOxNR/hX/dOZ9Azh5JF8Yu8RHRbwNuLFuyIpgVm8hUdyfLqV4Bd/b Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="331124608"
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="331124608"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 01:25:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,297,1635231600"; d="scan'208";a="531707991"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 18 Jan 2022 01:25:02 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 01:25:02 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 18 Jan 2022 01:25:02 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 18 Jan 2022 01:25:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BF5mfGzWprwnh0rnyO6VyFpFXP9W5FbzFBL4f6gaznyrum1Bo6tkJCRUDLj6jU1xgmtaREOE6J2svKv85S8ewccO3LWTr6/C7n4RxwQSfuaZh0/OE8eai5G1nF5hhrec4kPIiAvs2WLgg9wIJFSl2rlORlOePSWsiNctjDdp9PPUKL0GVioYfeJyBPJce19EzgNCLj/QGehHF+UMOTqOGE1GV3K3CzWQCv9xtiSEceudVusr3VVmOodEN37/aKhMEXDx9zdWeU5AkfgtIzKCJV/TDjoEq8ZQMxt3EocDpc5AkDQcvt7sLzQZHwfjvjdwc60rRzI1LNeN9P3/TNDreA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jtXxTKj5f4XUzrOCQX8YHdNluq5j2I5yfDYpNWYyA/4=;
 b=mAvQATVFvIhn5xq9xJMkpGTKAc/1GVX3O/LgfetaiVKFpB+0sTZcdDlOmbXMDoBCqW9if7W+ey4jvJR/tGqORd9iLNKHSdfQUScpNROLXHBaKS9mCVsTLNmDhb2r2Iz8tDFq7IwjIs6x7ZavRsw4hRNCdUEeQZPtqZCIoxxbPfomPkDdHLaGRn3PcSUZWU7/JRI3QUPxq4nwfiLOM+osAVwluhpLBf8hgRCJ30isXP7DGsIf6waRwizD1xNjt175MV9jPRMUE5UGDLw7xQ9JLWpEDx+BlfwOz9hzLCJ3wcVTs9dEtv/C0v6in13m7vAkEdYlCsqSSqzbF0rd16zJhA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4888.9; Tue, 18 Jan 2022 09:25:00 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b47a:6157:f9b5:b01d]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b47a:6157:f9b5:b01d%3]) with mapi id 15.20.4888.014; Tue, 18 Jan 2022
 09:25:00 +0000
Message-ID: <96cd66cd-8e90-5f68-6009-f48015400aae@intel.com>
Date: Tue, 18 Jan 2022 10:24:52 +0100
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
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220118025918.1444288-1-victor.liu@nxp.com>
X-ClientProxiedBy: LO4P123CA0254.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:194::7) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a181aa0b-31b2-4b60-66a4-08d9da646630
X-MS-TrafficTypeDiagnostic: DM6PR11MB3723:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM6PR11MB3723DEDF82FA3AFBFC716C0BEB589@DM6PR11MB3723.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: t6uBN/AMm3M/0CTdUdBeeq5Txr7a+MApIetPEFZLK030pekXqo/d97E10suKFd3kDbiiInBZiGTpewIL1HzPSC6GD19dGbRhOvb1vsPQQKHo0r+eVwdfNflcXXjsWcZB7JXuvBBEa6uRt8+LXvkWbPJzc62C/KI1sjmlwDVMAgiEMMEBAkPMurQoG9EZhO4GlV+jLsGeCA2lWhpR1M8VppAtgLDJ56ee3SQjVwhjQ/H9/MCf8rTezqGi7CE5n2qSr/6DVs55oTrc3Ow1fEyyNWr6I9WqiCP/XKAGqd7rTgRv03+9pWv0F2gtqjVebLkRqVxOFcSubppAUTwO5MRRjLUcKMIaxOyvNWiVJK2VphbBS15OVp9ZxLueq4OT4Mhao89nRL9nFUDr41NZRB/J7HIoQtEvGHrvZA3wu5VJWg5UxZTI7yhzeXJpyhV6A8tt0iGxEiRIdKWEvi71CXlM2E4v7r0Bi1NCLHFR0tg9cRXBcwfWG8LBtFlFbouccALESKgHDEQbqInuLVEqmmMok5UV8KiN9IF4Dg8QvZQzxSe+ZFwrRT+vJmigXuVqhj0JGrR2dOeUTuPx0RSOotOSejiQ0/qir6UpJwZ/87hJJB6WI238sAmwUVAG5mQPlEo1nf7qMVn+/P3oJI8AqPkpu1J0NJcTWG7w3zVyOc1Vo1bz+jHpzFD86YMdWcFpp2HrMUFQMhOJ5mXH45/WuPX4RcnqSJjnCkRIgWpxG+CpQRQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(44832011)(36916002)(2906002)(2616005)(4326008)(6486002)(53546011)(6506007)(31686004)(31696002)(66574015)(86362001)(508600001)(186003)(36756003)(66556008)(66476007)(66946007)(6666004)(26005)(7416002)(83380400001)(6512007)(82960400001)(54906003)(8936002)(38100700002)(5660300002)(8676002)(316002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cjVHR2NtK3dhUkhCalYzZUNTaGdXeXYzVjZiSTFjbW1Sa1BveEowK2VPYndn?=
 =?utf-8?B?dmtEZ1NraXJtV3BQTytwWGduZldnWnNDVmV6Y3ZqN2NyTjRzWW1WdDlwMTFH?=
 =?utf-8?B?dTZmaVlhS3lxdWlOZ1czRVR0eTU4MHhpOVhPdk4xSExybFVES2ZpMC9XK2h6?=
 =?utf-8?B?Q2ZrQUp2RzVxekhReUJISlNhUTY4QmRHZVNSTzk1TjE3RGpoUHQ4VHRiS3dY?=
 =?utf-8?B?aDFPZ2JGWHcySnA5ejBxY3I1TTVudzh5SnFiZXAySzFaUVBuVy9SYytxc3BU?=
 =?utf-8?B?UFhhQ3NiKzV5Z0Z2b1hERlhrenVJNmJ0SGNMQWRaL1lJYW5oRFVzS3diUERs?=
 =?utf-8?B?bW0xbW82MmMza2w2UTZtZnJEdU56eE9rN2xUY2Zka3lQVm5rNXRzT1RXMmV2?=
 =?utf-8?B?S2hSVFNMdGpscDhWSitudUh4b3pZUjhQVHhuTENWMjRzT2tWWFBDMFV0bUNp?=
 =?utf-8?B?TkhIZ3pwcFVIRXpycHNoTFVFV2xhTDc5MWlqbEdwTW1hdVRDZkI5R0kwNTRq?=
 =?utf-8?B?ZDNwSmlDMGhpamJSVjVBbjkxbno4QWdvbWNIN3Q1TStaUTlBOGdGRDZJbklK?=
 =?utf-8?B?OEkyQkFNL3FrWGJNRUZIL3FaNnFTR214VXpxRHVUeEZHSUllRXNsVWJqUFBr?=
 =?utf-8?B?b3F3NkUrdXpsRWYrWkdQSzNtRHJ6UlQ4Mitub0pvUU5HakpzUXNuN2o5dEFT?=
 =?utf-8?B?MU9qYXB4SGFnM0JIWUhnTjRUU2NVN3lJU0xDK29Qc2NpQmtMUzVsWDRTb01H?=
 =?utf-8?B?akJncHdzak94UHhQbHVkZHZmbStMMWxFL1JvQWpxMXlxbmt5OUpzdlRZWjBr?=
 =?utf-8?B?OGI4YllpNTJOMFh3R0ZMc3FMSkMyV1BmOTZhbURsUGQ1NDdRTGpscEtRdE9k?=
 =?utf-8?B?dVh6YnVkalVxNk9jM3BTRkVkeWZGYm93Y1NwQ2RlSmRYTUo3QjRNL0t1bUtB?=
 =?utf-8?B?elpDZ0FoNmxoV0RKdGpQWEc3RGhneFhNNGpsVGVYWEhZak12eUxtNGFmdFpx?=
 =?utf-8?B?VExnVzdTMVQ1NXB5RWozTWg4OGw4ZW14TlI1WDNMbXM2L3Fud0tveGtHc0Yx?=
 =?utf-8?B?NlYyUlEySHpiUFVPMlZJUDVzRkdGUU5zZUJWeGpaNHdVYk9mdnVkRVA4VUgz?=
 =?utf-8?B?T3hjaWsrOG50cnhPdUtIRUwwb3JFRmdPK296M0cyRzUwSHZpRzVIWC9TLy9T?=
 =?utf-8?B?cEF3S0RXUVR5UGxFSWdzSkd2cmZBcWJqa0hPdmhRdmE1cUxKOGxkdUR4VUEy?=
 =?utf-8?B?Um5DUWNBSk9GUG9PM1VOMU0zOFl0b05meW5kZXk5bkhYQkI1UTNZRmNQSGRv?=
 =?utf-8?B?Ry9WRElpaE1HcVVhcUovRndIZDJ1M0k4V0gwV0l0bHVFTGJSVnlJZGdJbzBv?=
 =?utf-8?B?YmIxS0JwZ2dSMHhFcDBJTnlRai9xN204TEFVNE14bk1sM1V0ZVJiYThFNDIw?=
 =?utf-8?B?aGpXcWJnOGg3alpMWXZnRWtMSzJRK3hsdGg4L09vYlFlS09TQUovMjdLUzhI?=
 =?utf-8?B?Ni8rVUpVcVFXYXZSNlpuR3k5ZWRkbmRma1dFK3JyRFBKK2pUMXRsRVMvNkVV?=
 =?utf-8?B?ZVh4Wjc0MTY4clVraXVBcjkvai9hOCsxcE1JamJmOGFTbHpGQkt5M2xUTTBD?=
 =?utf-8?B?RTBYSXNiMFQ2VjBleXJqdXRNaVN4UmJkMlpDSy9nb0k2ZE9tUjRvM2dSZm12?=
 =?utf-8?B?Sllqdk95ZXZEK3hKTU92aHBCUVkzdEwrODFLN0wvMUg5ZkRnSjNmYmVWSGxO?=
 =?utf-8?B?YTJlemNiVGJFeDdBTDBhZkdsRm1wYlZGcWdmWWo2bUllQWdaQkdyODZydE44?=
 =?utf-8?B?TlRhS0h1UStxMGxwN3FMVWQ4T3NkQXBtdnFCTmtoR21scnRHMUd4WEpvVnpJ?=
 =?utf-8?B?ZUtINDhtY2M4djVtZ0ljcW5KRFdwL0t6dUZ6RjNwUzRDemhLWGVPUjE3ZTdy?=
 =?utf-8?B?ak50ZVpyK2U5WlpyUDljdDJLdXNDNmpHcGRrdW9ER05oUHZ3aTgwdjhlVWox?=
 =?utf-8?B?eURvcXllRmRVekxiQ2t2RHNpQWZ4K2h0UWJWMFYwTkpSd3haQ3psbkdUeFRY?=
 =?utf-8?B?ZDhmdUc2L1ZsMjRCb2QvdEh6S1FVWFNoV2UyRXU0K2hwMklLY1NpTzcrOTND?=
 =?utf-8?B?VWJHR2RDU3k1cUhOVC9lRWZ6ZFNhSjFtTGw3L3ZMRWNERUZielNwS085a25z?=
 =?utf-8?Q?ziWo0a6AIJAvbnwYoh+m5QA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a181aa0b-31b2-4b60-66a4-08d9da646630
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2022 09:24:59.9418 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v/T3KdvJjZ9hkNDxInmQp8AqMbv1pwciGF5tqV7uLW1HF5UJj5XPYLtwxxqutfux2+bukkQvmH2wMEOMHUw15A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3723
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_012505_400934_D5E71DB4 
X-CRM114-Status: GOOD (  25.97  )
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

SGksCgpPbiAxOC4wMS4yMDIyIDAzOjU5LCBMaXUgWWluZyB3cm90ZToKPiBUaGUgRC1QSFkgc3Bl
Y2lmaWNhdGlvbiAodjEuMikgZXhwbGljaXRseSBtZW50aW9ucyB0aGF0IHRoZSBULUNMSy1QUkUK
PiBwYXJhbWV0ZXIncyB1bml0IGlzIFVuaXQgSW50ZXJ2YWwoVUkpIGFuZCB0aGUgbWluaW11bSB2
YWx1ZSBpcyA4LiAgQWxzbywKPiBrZXJuZWwgZG9jIG9mIHRoZSAnY2xrX3ByZScgbWVtYmVyIG9m
IHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9kcGh5Cj4gbWVudGlvbnMgdGhhdCBpdCBz
aG91bGQgYmUgaW4gVUkuICBIb3dldmVyLCB0aGUgZHBoeSBjb3JlIGRyaXZlciB3cm9uZ2x5Cj4g
c2V0cyAnY2xrX3ByZScgdG8gODAwMCwgd2hpY2ggc2VlbXMgdG8gaGludCB0aGF0IGl0J3MgaW4g
cGljb3NlY29uZHMuCj4gQW5kLCB0aGUga2VybmVsIGRvYyBvZiB0aGUgJ2Nsa19wcmUnIG1lbWJl
ciB3cm9uZ2x5IHNheXMgdGhlIG1pbmltdW0gdmFsdWUKPiBpcyAnOCBVSScsIGluc3RlYWQgb2Yg
OC4KPgo+IFNvLCBsZXQncyBmaXggYm90aCB0aGUgZHBoeSBjb3JlIGRyaXZlciBhbmQgdGhlIGtl
cm5lbCBkb2Mgb2YgdGhlICdjbGtfcHJlJwo+IG1lbWJlciB0byBjb3JyZWN0bHkgcmVmbGVjdCB0
aGUgVC1DTEstUFJFIHBhcmFtZXRlcidzIHVuaXQgYW5kIHRoZSBtaW5pbXVtCj4gdmFsdWUgYWNj
b3JkaW5nIHRvIHRoZSBELVBIWSBzcGVjaWZpY2F0aW9uLgo+Cj4gSSdtIGFzc3VtaW5nIHRoYXQg
YWxsIGltcGFjdGVkIGN1c3RvbSBkcml2ZXJzIHNoYWxsIHByb2dyYW0gdmFsdWVzIGluCj4gVHhC
eXRlQ2xrSFMgY3ljbGVzIGludG8gaGFyZHdhcmUgZm9yIHRoZSBULUNMSy1QUkUgcGFyYW1ldGVy
LiAgVGhlIEQtUEhZCj4gc3BlY2lmaWNhdGlvbiBtZW50aW9ucyB0aGF0IHRoZSBmcmVxdWVuY3kg
b2YgVHhCeXRlQ2xrSFMgaXMgZXhhY3RseSAxLzgKPiB0aGUgSGlnaC1TcGVlZChIUykgYml0IHJh
dGUoZWFjaCBIUyBiaXQgY29uc3VtZXMgb25lIFVJKS4gIFNvLCByZWxldmFudAo+IGN1c3RvbSBk
cml2ZXIgY29kZSBpcyBjaGFuZ2VkIHRvIHByb2dyYW0gdGhvc2UgdmFsdWVzIGFzCj4gRElWX1JP
VU5EX1VQKGNmZy0+Y2xrX3ByZSwgTUlQSV9EUEhZX1VJX1BFUl9UWEJZVEVDTEtIU19QRVJJT0Qp
LCB0aGVuLgo+Cj4gTm90ZSB0aGF0IEkndmUgb25seSB0ZXN0ZWQgdGhlIHBhdGNoIHdpdGggUk02
NzE5MSBEU0kgcGFuZWwgb24gaS5NWDhtcSBFVksuCj4gSGVscCBpcyBuZWVkZWQgdG8gdGVzdCB3
aXRoIG90aGVyIGkuTVg4bXEsIE1lc29uIGFuZCBSb2NrY2hpcCBwbGF0Zm9ybXMsCj4gYXMgSSBk
b24ndCBoYXZlIHRoZSBoYXJkd2FyZXMuCj4KPiBGaXhlczogMmVkODY5OTkwZTE0ICgicGh5OiBB
ZGQgTUlQSSBELVBIWSBjb25maWd1cmF0aW9uIG9wdGlvbnMiKQo+IENjOiBBbmRyemVqIEhhamRh
IDxhbmRyemVqLmhhamRhQGludGVsLmNvbT4KPiBDYzogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJv
bmdAYmF5bGlicmUuY29tPgo+IENjOiBSb2JlcnQgRm9zcyA8cm9iZXJ0LmZvc3NAbGluYXJvLm9y
Zz4KPiBDYzogTGF1cmVudCBQaW5jaGFydCA8TGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQu
Y29tPgo+IENjOiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4gQ2M6IEplcm5laiBT
a3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+Cj4gQ2M6IERhdmlkIEFpcmxpZSA8YWly
bGllZEBsaW51eC5pZT4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsQGZmd2xsLmNoPgo+IENj
OiBLaXNob24gVmlqYXkgQWJyYWhhbSBJIDxraXNob25AdGkuY29tPgo+IENjOiBWaW5vZCBLb3Vs
IDx2a291bEBrZXJuZWwub3JnPgo+IENjOiBLZXZpbiBIaWxtYW4gPGtoaWxtYW5AYmF5bGlicmUu
Y29tPgo+IENjOiBKZXJvbWUgQnJ1bmV0IDxqYnJ1bmV0QGJheWxpYnJlLmNvbT4KPiBDYzogTWFy
dGluIEJsdW1lbnN0aW5nbCA8bWFydGluLmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbT4KPiBD
YzogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiBDYzogTWF4aW1lIFJpcGFyZCA8
bXJpcGFyZEBrZXJuZWwub3JnPgo+IENjOiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3Jn
Pgo+IFRlc3RlZC1ieTogTGl1IFlpbmcgPHZpY3Rvci5saXVAbnhwLmNvbT4gIyBSTTY3MTkxIERT
SSBwYW5lbCBvbiBpLk1YOG1xIEVWSwo+IFNpZ25lZC1vZmYtYnk6IExpdSBZaW5nIDx2aWN0b3Iu
bGl1QG54cC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYyAg
ICAgICAgICAgICAgICAgfCA3ICsrLS0tLS0KPiAgIGRyaXZlcnMvcGh5L2FtbG9naWMvcGh5LW1l
c29uLWF4Zy1taXBpLWRwaHkuYyAgICB8IDMgKystCj4gICBkcml2ZXJzL3BoeS9waHktY29yZS1t
aXBpLWRwaHkuYyAgICAgICAgICAgICAgICAgfCA0ICsrLS0KPiAgIGRyaXZlcnMvcGh5L3JvY2tj
aGlwL3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYyB8IDMgKystCj4gICBpbmNsdWRlL2xpbnV4
L3BoeS9waHktbWlwaS1kcGh5LmggICAgICAgICAgICAgICAgfCA0ICsrKy0KPiAgIDUgZmlsZXMg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9ud2wtZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL253bC1kc2kuYwo+IGluZGV4IGE3Mzg5YTBmYWNmYi4uZjFmZGNkZjc2M2VlIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9ud2wtZHNpLmMKPiBAQCAtMTk2LDEyICsxOTYsOSBAQCBzdGF0aWMgdTMy
IHBzMmJjKHN0cnVjdCBud2xfZHNpICpkc2ksIHVuc2lnbmVkIGxvbmcgbG9uZyBwcykKPiAgIC8q
Cj4gICAgKiB1aTJiYyAtIFVJIHRpbWUgcGVyaW9kcyB0byBieXRlIGNsb2NrIGN5Y2xlcwo+ICAg
ICovCj4gLXN0YXRpYyB1MzIgdWkyYmMoc3RydWN0IG53bF9kc2kgKmRzaSwgdW5zaWduZWQgbG9u
ZyBsb25nIHVpKQo+ICtzdGF0aWMgdTMyIHVpMmJjKHN0cnVjdCBud2xfZHNpICpkc2ksIHVuc2ln
bmVkIGludCB1aSkKPiAgIHsKPiAtCXUzMiBicHAgPSBtaXBpX2RzaV9waXhlbF9mb3JtYXRfdG9f
YnBwKGRzaS0+Zm9ybWF0KTsKPiAtCj4gLQlyZXR1cm4gRElWNjRfVTY0X1JPVU5EX1VQKHVpICog
ZHNpLT5sYW5lcywKPiAtCQkJCSAgZHNpLT5tb2RlLmNsb2NrICogMTAwMCAqIGJwcCk7Cj4gKwly
ZXR1cm4gRElWX1JPVU5EX1VQKHVpLCBNSVBJX0RQSFlfVUlfUEVSX1RYQllURUNMS0hTX1BFUklP
RCk7CgoKSSBoYXZlIHNvbWUgZG91YnRzIGhlcmUuIEFjY29yZGluZyB0byBzcGVjczoKCiDCoMKg
wqAgVUkgLSBkdXJhdGlvbiBvZiBhbnkgSFMgc3RhdGUgb24gdGhlIENsb2NrIExhbmUsCgogwqDC
oMKgIFR4Qnl0ZUNsa0hTIC0gZXhhY3RseSAxLzggdGhlIEhpZ2gtU3BlZWQoSFMpIGJpdCByYXRl
CgpJJ2QgbGlrZSB0byBlbXBoYXNpemUgIkJJVCBSQVRFIiBhYm92ZSAobm90IGNsb2NrIHJhdGUp
LgoKSW4gc3VjaCBjYXNlIEkgd291bGQgZXhwZWN0IHRoYXQgdWkyYmMgd291bGQgdGFrZSBpbnRv
IGFjY291bnQgbnVtYmVyIG9mIApsYW5lczoKCmJ5dGUgY2xvY2sgY3ljbGVzID0gZGl2X3JvdW5k
X3VwKHVpICogZHNpLT5sYW5lcywgOCkKClNvIGluIGNhc2Ugb2Ygb25lIGxhbmUgd2UgbmVlZCA4
IHRpY2tzIHRvIGdldCBieXRlLCBhbmQgaW4gY2FzZSBvZiA0IApsYW5lcyAyIHRpY2tzIGFyZSBl
bm91Z2guCgpBbSBJIGNvcnJlY3QsIG9yIEkndmUgbWlzc2VkIHN0aD8KCgo+ICAgfQo+ICAgCj4g
ICAvKgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9hbWxvZ2ljL3BoeS1tZXNvbi1heGctbWlw
aS1kcGh5LmMgYi9kcml2ZXJzL3BoeS9hbWxvZ2ljL3BoeS1tZXNvbi1heGctbWlwaS1kcGh5LmMK
PiBpbmRleCBjZDIzMzJiZjBlMzEuLjhhODE4Y2RiNzYwNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L3BoeS9hbWxvZ2ljL3BoeS1tZXNvbi1heGctbWlwaS1kcGh5LmMKPiArKysgYi9kcml2ZXJzL3Bo
eS9hbWxvZ2ljL3BoeS1tZXNvbi1heGctbWlwaS1kcGh5LmMKPiBAQCAtMjUwLDcgKzI1MCw4IEBA
IHN0YXRpYyBpbnQgcGh5X21lc29uX2F4Z19taXBpX2RwaHlfcG93ZXJfb24oc3RydWN0IHBoeSAq
cGh5KQo+ICAgCQkgICAgIChESVZfUk9VTkRfVVAocHJpdi0+Y29uZmlnLmNsa196ZXJvLCB0ZW1w
KSA8PCAxNikgfAo+ICAgCQkgICAgIChESVZfUk9VTkRfVVAocHJpdi0+Y29uZmlnLmNsa19wcmVw
YXJlLCB0ZW1wKSA8PCAyNCkpOwo+ICAgCXJlZ21hcF93cml0ZShwcml2LT5yZWdtYXAsIE1JUElf
RFNJX0NMS19USU0xLAo+IC0JCSAgICAgRElWX1JPVU5EX1VQKHByaXYtPmNvbmZpZy5jbGtfcHJl
LCB0ZW1wKSk7Cj4gKwkJICAgICBESVZfUk9VTkRfVVAocHJpdi0+Y29uZmlnLmNsa19wcmUsCj4g
KwkJCQkgIE1JUElfRFBIWV9VSV9QRVJfVFhCWVRFQ0xLSFNfUEVSSU9EKSk7Cj4gICAKPiAgIAly
ZWdtYXBfd3JpdGUocHJpdi0+cmVnbWFwLCBNSVBJX0RTSV9IU19USU0sCj4gICAJCSAgICAgRElW
X1JPVU5EX1VQKHByaXYtPmNvbmZpZy5oc19leGl0LCB0ZW1wKSB8Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3BoeS1jb3JlLW1pcGktZHBoeS5jIGIvZHJpdmVycy9waHkvcGh5LWNvcmUtbWlw
aS1kcGh5LmMKPiBpbmRleCAyODhjOWM2N2FhNzQuLmNjYjQwNDU2ODVjZCAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BoeS9waHktY29yZS1taXBpLWRwaHkuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3Bo
eS1jb3JlLW1pcGktZHBoeS5jCj4gQEAgLTM2LDcgKzM2LDcgQEAgaW50IHBoeV9taXBpX2RwaHlf
Z2V0X2RlZmF1bHRfY29uZmlnKHVuc2lnbmVkIGxvbmcgcGl4ZWxfY2xvY2ssCj4gICAKPiAgIAlj
ZmctPmNsa19taXNzID0gMDsKPiAgIAljZmctPmNsa19wb3N0ID0gNjAwMDAgKyA1MiAqIHVpOwo+
IC0JY2ZnLT5jbGtfcHJlID0gODAwMDsKPiArCWNmZy0+Y2xrX3ByZSA9IDg7Cj4gICAJY2ZnLT5j
bGtfcHJlcGFyZSA9IDM4MDAwOwo+ICAgCWNmZy0+Y2xrX3NldHRsZSA9IDk1MDAwOwo+ICAgCWNm
Zy0+Y2xrX3Rlcm1fZW4gPSAwOwo+IEBAIC05Nyw3ICs5Nyw3IEBAIGludCBwaHlfbWlwaV9kcGh5
X2NvbmZpZ192YWxpZGF0ZShzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeSAqY2Zn
KQo+ICAgCWlmIChjZmctPmNsa19wb3N0IDwgKDYwMDAwICsgNTIgKiB1aSkpCj4gICAJCXJldHVy
biAtRUlOVkFMOwo+ICAgCj4gLQlpZiAoY2ZnLT5jbGtfcHJlIDwgODAwMCkKPiArCWlmIChjZmct
PmNsa19wcmUgPCA4KQo+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgIAo+ICAgCWlmIChjZmctPmNs
a19wcmVwYXJlIDwgMzgwMDAgfHwgY2ZnLT5jbGtfcHJlcGFyZSA+IDk1MDAwKQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1kc2lkcGh5LmMgYi9k
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1kc2lkcGh5LmMKPiBpbmRleCAz
NDdkYzc5YTE4YzEuLjY3YjBhMTdiZTdlMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtaW5uby1kc2lkcGh5LmMKPiArKysgYi9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtaW5uby1kc2lkcGh5LmMKPiBAQCAtMzY0LDcgKzM2NCw4IEBAIHN0
YXRpYyB2b2lkIGlubm9fZHNpZHBoeV9taXBpX21vZGVfZW5hYmxlKHN0cnVjdCBpbm5vX2RzaWRw
aHkgKmlubm8pCj4gICAJICogVGhlIHZhbHVlIG9mIGNvdW50ZXIgZm9yIEhTIFRjbGstcHJlCj4g
ICAJICogVGNsay1wcmUgPSBUcGluX3R4Ynl0ZWNsa2hzICogdmFsdWUKPiAgIAkgKi8KPiAtCWNs
a19wcmUgPSBESVZfUk9VTkRfVVAoY2ZnLT5jbGtfcHJlLCB0X3R4Ynl0ZWNsa2hzKTsKPiArCWNs
a19wcmUgPSBESVZfUk9VTkRfVVAoY2ZnLT5jbGtfcHJlLAo+ICsJCQkgICAgICAgTUlQSV9EUEhZ
X1VJX1BFUl9UWEJZVEVDTEtIU19QRVJJT0QpOwo+ICAgCj4gICAJLyoKPiAgIAkgKiBUaGUgdmFs
dWUgb2YgY291bnRlciBmb3IgSFMgVGxweCBUaW1lCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvcGh5L3BoeS1taXBpLWRwaHkuaCBiL2luY2x1ZGUvbGludXgvcGh5L3BoeS1taXBpLWRwaHku
aAo+IGluZGV4IGE4NzdmZmVlODQ1ZC4uYWIxZjczNmZiY2QzIDEwMDY0NAo+IC0tLSBhL2luY2x1
ZGUvbGludXgvcGh5L3BoeS1taXBpLWRwaHkuaAo+ICsrKyBiL2luY2x1ZGUvbGludXgvcGh5L3Bo
eS1taXBpLWRwaHkuaAo+IEBAIC02LDYgKzYsOCBAQAo+ICAgI2lmbmRlZiBfX1BIWV9NSVBJX0RQ
SFlfSF8KPiAgICNkZWZpbmUgX19QSFlfTUlQSV9EUEhZX0hfCj4gICAKPiArI2RlZmluZSBNSVBJ
X0RQSFlfVUlfUEVSX1RYQllURUNMS0hTX1BFUklPRAk4CgoKRG8gd2UgbmVlZCB0byBkZWZpbmUg
aXQ/IEkgZ3Vlc3MgaXQgaXMganVzdCBCSVRTX1BFUl9CWVRFLgoKClJlZ2FyZHMKCkFuZHJ6ZWoK
Cgo+ICsKPiAgIC8qKgo+ICAgICogc3RydWN0IHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkg
LSBNSVBJIEQtUEhZIGNvbmZpZ3VyYXRpb24gc2V0Cj4gICAgKgo+IEBAIC00Miw3ICs0NCw3IEBA
IHN0cnVjdCBwaHlfY29uZmlndXJlX29wdHNfbWlwaV9kcGh5IHsKPiAgIAkgKiB0aGUgdHJhbnNt
aXR0ZXIgcHJpb3IgdG8gYW55IGFzc29jaWF0ZWQgRGF0YSBMYW5lIGJlZ2lubmluZwo+ICAgCSAq
IHRoZSB0cmFuc2l0aW9uIGZyb20gTFAgdG8gSFMgbW9kZS4KPiAgIAkgKgo+IC0JICogTWluaW11
bSB2YWx1ZTogOCBVSQo+ICsJICogTWluaW11bSB2YWx1ZTogOAo+ICAgCSAqLwo+ICAgCXVuc2ln
bmVkIGludAkJY2xrX3ByZTsKPiAgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
