Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1520AC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 07:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:CC:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=52153ENvEgRbQrM51jlCoy84Z8nzpAn1EQNNu4lFQ5M=; b=2OxS+WBsodfpOhyol+Dl/q4PAm
	Cy4x0tPzqyZUNiSrjXk/zqAzUlltsChMimvLSu1JdOVa4XItXfFEqlKX3E1DHD7KsjvFnalVaxfml
	ZTXKDzIPzht0JBDWYY5GPCsSxBz6cSA6t8TOoxK9S9jZKfWnr54JsOdtODs9ARM/DW36NS3sMFV0K
	v6jsLv8cd0CHxZrv7/XrhcpujxpQU6yeOoMoag6SfbM2X7GnnrIoMjrABmKpovKILp4/pDpVwfwFo
	OOi7HvcFQcbVYlQYj1iQOmelykueE2mKXJUaD0oMqlKC5TAohYuM38s8Tdlsled6vyV7DOR7npMs4
	1WCsxWdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA5Vs-004Bui-QZ; Wed, 19 Jan 2022 07:36:12 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA5Vq-004BtJ-43; Wed, 19 Jan 2022 07:36:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642577770; x=1674113770;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mVJzRDynR07tPUlvByhtWIigVtY5mD2izBl0rItpOmQ=;
 b=j7OTfe8e/qmE/6NbL9jOBOc2iRV3iRb/n4c62i0yGCSPuwCfUktHP1az
 PvKmu4n5sNZ8SU5c4sr83V7jK6RnUZTzFYkAmhQPyVF7dHcWTkmlgQkdL
 HiWLG2RJ80RXEgFfeDj2rpDiHlwXVf0SHm48PiwbZPPVdSbVnoVtVHP6j
 FUtpYGdyQPE8wafTrWCUbWtiW7zX32Y6r4soAu3mGelYNrGAyJ+NdIAKB
 6D3zNSofMkep9L1R40897YEN84KO20inaJrPL/DWiAZ1L/N+YsRz57OlP
 MfyVtEQz1+vv6SQaSa+hZX1s+T1oWzYsgD4vQ1ZZqdHpG19Zqeiq4sl4P Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="224983494"
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="224983494"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 23:36:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="672095651"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jan 2022 23:36:03 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 18 Jan 2022 23:36:02 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 18 Jan 2022 23:36:02 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 18 Jan 2022 23:36:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R2w8I7qF8xuCEYlsUgaVES//pBAWN5G+oj7pBtF1IMzLIv8qnLW0uD6x68B6n6V3uNav8/fbalb1hkCoSbrJMVjUgneuT1PWc7BcCrXXMe2rgh5Y+OWm121zeEbnZZI5HLjONn83iIKc9PD+GYT0Bo9XpdPNzrDK3Z6/2IEMJNc1vupepTTqHqmKju4ERSawefw3YpAzupDhz+fWx2Bk/zfk/+zddKXE6YPMTvkXh+0Tgg4bsUxPKx+mVM8PbYJpw/XZ7qriCMk3dhkLXM4srU6euHt9h/wQ2Q05MgE6X0CZvo5zN5OFSKl2eUQxnUxeNzTyMRnvmSolZN4Rji2TKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/09zLKIl4r6qXGkjqoezwe9LQHw9hWAGC13A9/JFqW8=;
 b=LbLch/0gRPecjS0MEL8tpezmauiZQb1G4ZOm7HX5lu5Dc+Bj2VXEVGCB4sK0t8WaKAC8CgfUZINWT/nuxEWcKPzp6vkwea1nHHsza6S6TVHP8G49McSHkmokYVi0FihlHhdVL4Xol8JUHcYMhVokCtFqhrXk+F+S/RGEUSJ6gH+wXPiS03FgpUcP0rpFPCtKYGGvmvXfL1BZ1CYKyh8GKx01D0R+2lBJvv/Odhv66IwF+lvHohMcNNFmQZJh3FWbti7fnucDcy53YoNhrma0afpaY8PbRKKYNoxuhnjJES0/P8x/BJb4JKk+DV/fGnvO5mWfs/b7a/kHhm7iiovbdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 BY5PR11MB4468.namprd11.prod.outlook.com (2603:10b6:a03:1c9::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4888.11; Wed, 19 Jan
 2022 07:36:00 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b47a:6157:f9b5:b01d]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b47a:6157:f9b5:b01d%3]) with mapi id 15.20.4888.014; Wed, 19 Jan 2022
 07:36:00 +0000
Message-ID: <667a64ef-5121-ba92-964e-a9c075fc2375@intel.com>
Date: Wed, 19 Jan 2022 08:35:52 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.0
Subject: Re: [PATCH v2] phy: dphy: Correct clk_pre parameter
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
References: <20220119023714.1498508-1-victor.liu@nxp.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20220119023714.1498508-1-victor.liu@nxp.com>
X-ClientProxiedBy: LO4P123CA0445.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a9::18) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 57d999d8-15f3-409d-f1cf-08d9db1e56d5
X-MS-TrafficTypeDiagnostic: BY5PR11MB4468:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB44688F552488274B78582C90EB599@BY5PR11MB4468.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WYw62nzBaeaSV1eOHb5SLdlyiYBmfs/cvaWJSHMdmlHcw3k4ALxLbwx7IkWSKhDWxX8U/8bcvKnhEUdeLXy4ldxoH8lNGYq8MQWosj3e/t+J11UhbU51DmabL4GlR+XNJ6ZZ0kyY7FioJJXZMLqmzDMA+B986c1BiE4PJibdM+v2NC56zi182rC8D5nn6HiZuHy1XGpiSeDHbdPQ85z5uJqKWxyl+2VEtQUQr6hwqmDMVFZeCnl+LHGTwoUYRPbSdc/xtN2T/EJCzwzbgC2khuX1vEudwxf/9IawoAc24l9vqSX6mAo6sc+l7cwcKkliZalViF+TwJuKP4wBRCucH9KfGqxgKGnXbreD1yykaM4rC3ViEOSj/v9E2CwsG/G9+CYnxcZp0/ClwYlUMS4fQnoqJzwpgFSc/5o35czOOrcPhmEkFyH01s+9bDKWXPOC8aG4BUCn94vAVrRzHKlwSNq+KP30IoyQhyuh8+08SDg6K5y1APlC82uDgOD8Jy9CKeSxDPOjY4nMFqr2xoyEeWEH9M+7b1axSizQRyHo0xR0096x95pzQ2MYau1jRVSCrVLfhf7BrMkv8u/kQr7iKIxPScfs0+P4qMeJXst5uFbHUOJoTd8zGb988Otl8SEeNW4QGbsMEGq/xRogZoS7K5iFHVSfuFXvWyDDbPHFRTlhDwtHDrbYdK5Ce618R3tWMmuLVIqpu0yG01+GzufI3sEvRzbLH76EZ1AkVeGbgPs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(66556008)(82960400001)(38100700002)(31686004)(6486002)(36756003)(31696002)(86362001)(6512007)(44832011)(6666004)(2906002)(6506007)(508600001)(66574015)(8676002)(7416002)(2616005)(186003)(83380400001)(26005)(66476007)(8936002)(4326008)(54906003)(5660300002)(66946007)(36916002)(53546011)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGErU00vMDhtK1RoQWZPV2FjNDhFZ0JBRGpIMFROblJFTGFMKzNoNHBrTFQ4?=
 =?utf-8?B?UVZOTTc1cWlVdnJReXBGcnp0S1hLdkhiWUdUczBUb1BlYUxHRnRwZk01cDFl?=
 =?utf-8?B?eXJDdmYzZHRNeVF3THpOU09VOU5EZkkyYjRNamNXNzBSYmVIY0ptOUdwMm40?=
 =?utf-8?B?ZlBjc0owbDk0ZXphTFBwaGZkQU1IQWNVUUhmSlVWb3NIdUk1Zk9XcjEyNGdD?=
 =?utf-8?B?RmNuRS9jN3IrbXpyS0N3Z0tnUVE5c1NzWXRPT3M2T0pzbVJIbDB0UmNwdFBn?=
 =?utf-8?B?TCswSE9vcXh1dXpQMGRXK3BQTE4zTVZIdEhUWWR5VFAzSTczZzR5aDZlY2l2?=
 =?utf-8?B?dHk5TFJFOU90NTBzOUJuM29lQnpHcGJtV0cyLzdKamhJK2s5UCtYOForVUx0?=
 =?utf-8?B?SXpwb1hHSkNNVXJJZGlpcHJmSEVMK2JWQVQ4NGwvTVl3R2NWZmdjeThjWVdX?=
 =?utf-8?B?cHUweG9oc3dablhzU2MyeWhnNk5jYmJQclloYk9icCt5ZlhEVXQrZzVuMFZp?=
 =?utf-8?B?clRTK1RtNHNuVjRNWFMvZ1NjSVdUNm9OcHV2MDArYjZIN0haOXQ1SmxCbDhx?=
 =?utf-8?B?NjVJcHc4Q0RRakk4NlBrL0lUa0hsNUxCSWp0eEczcGxRR0x4bmE3ejMvQlBI?=
 =?utf-8?B?M1l2ajJzOTVtazJaZWNVOTFnZHBGemJMQXh6WGJxeU1pVDZJdXFodU16WTNF?=
 =?utf-8?B?Y3ZNUEpVRDNXa2hHRHkySUpPUXBYcTBmcDVNUTRNTXBnRFQ2WG5WNFNFMWVn?=
 =?utf-8?B?a2NIZnpsUDFaNVlESm1PTXh5aXZrZVZPV0NaMXhZNnJvOTZST0ltaERFVnJz?=
 =?utf-8?B?UzEzaEh1UnFyQjZGb01YMTI3RDUvZ290QTdyR2toTEowVmNvaUw2bmlCTW8v?=
 =?utf-8?B?SkIySlNSdnRCalRadUhBcEEreUd6bjRXa3ppcmdnVkI1UjQxbjJhQW9JL2d5?=
 =?utf-8?B?NWNnMjloOTV6a01aVUVCV3paS1NzclZRVHd1WHRCSFBnZ3Zmd3AvYmZPL1ZU?=
 =?utf-8?B?MGdjc3ByeExhZ0hxL25pTURYMHJ4RFlNQXdTOGdOQWJXNmRmTUNnN3ZidnJz?=
 =?utf-8?B?QVFjN0xuS0ovbzd3cVRZc3ZhRSs1MDdBSnlYYmtnRGhwelVIcW9ZSlVzQ291?=
 =?utf-8?B?cFNwUG55YVY1MkMwVXdhdGU4L2VVcGE5UTR4U1ZJMDc1RmlXcTNCQ055VXhk?=
 =?utf-8?B?ZndkSmhhblhCVG1JWEE5Z2pqOG1GdGNCREJtT2M4RnhiNFZXaXNabmFxTEU5?=
 =?utf-8?B?YldsTjkwdTR6OSt6eG9EMzNDT1FLVEp4NkthR2F0ZUhnSzZDMVg4YWZ5Uy9v?=
 =?utf-8?B?ZDRNbCtYWndwYUZhcjF1dVg0SnBHK3pGQk1RQjlQWGI5TVZEdHY0a3ZZSktq?=
 =?utf-8?B?dUQzQjY1OTNKUlpUMVluMU45blI3ZFZIbmJvZUROZlhlb0tJUCtXeklTbEp2?=
 =?utf-8?B?ZXlzK0lmeHBtYytLZWVjNXd3VGpZUkd0bnBlc2YzTGdZeHNOZ3phQmlkSTUy?=
 =?utf-8?B?bzNDem9CS29sN01DRTYyN2VHb253ZC82cjdPZDZmMVdTbXUwNkhKM0trelJG?=
 =?utf-8?B?RXBicVhpZXRXaU05M2ZzcWR1b202TUtWdUUvbGZBWFNHb0FFelBJWU1Wek9D?=
 =?utf-8?B?UW4wQUR4K1VqMCs2Q2R0ZnFGZVBnVit0KzhtQ0QvdDNhemRoYkdla3oxaW5i?=
 =?utf-8?B?aGt4dG51QU1HYmVVRmdXNHVOUkQ5TzlEU21WbkFWYmFjV0J6cXI1N1BiVmJG?=
 =?utf-8?B?QlRvdkZnTlpMM0NnVGdERlQxYXl6Uis3MmhlOEFtYU43eklpTEhtMEdnQnRN?=
 =?utf-8?B?dDUrWFEzMVExZlg4YmVNZlFqd21uMmZrdGRveDdtckJiTnd1ODZrT0UrWUVp?=
 =?utf-8?B?MW00Tm5GYkl3YjAyYUI2L3RVOFZIM08xRy9wdk4wOWFlN1NWUkJ6NWhyUFcw?=
 =?utf-8?B?SGdmT1BRUDJCSGt5bVEvY01qdFFTWHl2cDQySnlYa2pPNnVESEYzcm9OYUhI?=
 =?utf-8?B?V2hDNkZyL1dtVEU1Uk5RQzFTUHUwWkRLZ2tORVRUSFphY0pBU0QxV1o0MlJT?=
 =?utf-8?B?dG1Wb0xYdVZ0ZWVVcjR5dVJpR01rQnVKMWUraU1vSHhwdFoyWHBoUmFYcjVX?=
 =?utf-8?B?UzlyUFpta1ZRenhKbkdJNVVBVzluR0tUUWorZUtTZENBUkh6ek1SMW5mSktt?=
 =?utf-8?Q?T/pNZT/Mp6jzy574/LtiJvg=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57d999d8-15f3-409d-f1cf-08d9db1e56d5
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jan 2022 07:36:00.4967 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /3wVYM4QOpcPFwVEnPo5UBG06bXswj556DeIecNHeV5a7KwIiX6eDEqd1ZBO/wlRrkbBzR+bumlLhmq12M9E5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4468
X-OriginatorOrg: intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220118_233610_201577_029A5839 
X-CRM114-Status: GOOD (  27.78  )
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

Ck9uIDE5LjAxLjIwMjIgMDM6MzcsIExpdSBZaW5nIHdyb3RlOgo+IFRoZSBELVBIWSBzcGVjaWZp
Y2F0aW9uICh2MS4yKSBleHBsaWNpdGx5IG1lbnRpb25zIHRoYXQgdGhlIFQtQ0xLLVBSRQo+IHBh
cmFtZXRlcidzIHVuaXQgaXMgVW5pdCBJbnRlcnZhbChVSSkgYW5kIHRoZSBtaW5pbXVtIHZhbHVl
IGlzIDguICBBbHNvLAo+IGtlcm5lbCBkb2Mgb2YgdGhlICdjbGtfcHJlJyBtZW1iZXIgb2Ygc3Ry
dWN0IHBoeV9jb25maWd1cmVfb3B0c19taXBpX2RwaHkKPiBtZW50aW9ucyB0aGF0IGl0IHNob3Vs
ZCBiZSBpbiBVSS4gIEhvd2V2ZXIsIHRoZSBkcGh5IGNvcmUgZHJpdmVyIHdyb25nbHkKPiBzZXRz
ICdjbGtfcHJlJyB0byA4MDAwLCB3aGljaCBzZWVtcyB0byBoaW50IHRoYXQgaXQncyBpbiBwaWNv
c2Vjb25kcy4KPiBBbmQsIHRoZSBrZXJuZWwgZG9jIG9mIHRoZSAnY2xrX3ByZScgbWVtYmVyIHdy
b25nbHkgc2F5cyB0aGUgbWluaW11bSB2YWx1ZQo+IGlzICc4IFVJJywgaW5zdGVhZCBvZiA4Lgo+
Cj4gU28sIGxldCdzIGZpeCBib3RoIHRoZSBkcGh5IGNvcmUgZHJpdmVyIGFuZCB0aGUga2VybmVs
IGRvYyBvZiB0aGUgJ2Nsa19wcmUnCj4gbWVtYmVyIHRvIGNvcnJlY3RseSByZWZsZWN0IHRoZSBU
LUNMSy1QUkUgcGFyYW1ldGVyJ3MgdW5pdCBhbmQgdGhlIG1pbmltdW0KPiB2YWx1ZSBhY2NvcmRp
bmcgdG8gdGhlIEQtUEhZIHNwZWNpZmljYXRpb24uCj4KPiBJJ20gYXNzdW1pbmcgdGhhdCBhbGwg
aW1wYWN0ZWQgY3VzdG9tIGRyaXZlcnMgc2hhbGwgcHJvZ3JhbSB2YWx1ZXMgaW4KPiBUeEJ5dGVD
bGtIUyBjeWNsZXMgaW50byBoYXJkd2FyZSBmb3IgdGhlIFQtQ0xLLVBSRSBwYXJhbWV0ZXIuICBU
aGUgRC1QSFkKPiBzcGVjaWZpY2F0aW9uIG1lbnRpb25zIHRoYXQgdGhlIGZyZXF1ZW5jeSBvZiBU
eEJ5dGVDbGtIUyBpcyBleGFjdGx5IDEvOAo+IHRoZSBIaWdoLVNwZWVkKEhTKSBiaXQgcmF0ZShl
YWNoIEhTIGJpdCBjb25zdW1lcyBvbmUgVUkpLiAgU28sIHJlbGV2YW50Cj4gY3VzdG9tIGRyaXZl
ciBjb2RlIGlzIGNoYW5nZWQgdG8gcHJvZ3JhbSB0aG9zZSB2YWx1ZXMgYXMKPiBESVZfUk9VTkRf
VVAoY2ZnLT5jbGtfcHJlLCBCSVRTX1BFUl9CWVRFKSwgdGhlbi4KPgo+IE5vdGUgdGhhdCBJJ3Zl
IG9ubHkgdGVzdGVkIHRoZSBwYXRjaCB3aXRoIFJNNjcxOTEgRFNJIHBhbmVsIG9uIGkuTVg4bXEg
RVZLLgo+IEhlbHAgaXMgbmVlZGVkIHRvIHRlc3Qgd2l0aCBvdGhlciBpLk1YOG1xLCBNZXNvbiBh
bmQgUm9ja2NoaXAgcGxhdGZvcm1zLAo+IGFzIEkgZG9uJ3QgaGF2ZSB0aGUgaGFyZHdhcmVzLgo+
Cj4gRml4ZXM6IDJlZDg2OTk5MGUxNCAoInBoeTogQWRkIE1JUEkgRC1QSFkgY29uZmlndXJhdGlv
biBvcHRpb25zIikKPiBDYzogQW5kcnplaiBIYWpkYSA8YW5kcnplai5oYWpkYUBpbnRlbC5jb20+
Cj4gQ2M6IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPiBDYzogUm9i
ZXJ0IEZvc3MgPHJvYmVydC5mb3NzQGxpbmFyby5vcmc+Cj4gQ2M6IExhdXJlbnQgUGluY2hhcnQg
PExhdXJlbnQucGluY2hhcnRAaWRlYXNvbmJvYXJkLmNvbT4KPiBDYzogSm9uYXMgS2FybG1hbiA8
am9uYXNAa3dpYm9vLnNlPgo+IENjOiBKZXJuZWogU2tyYWJlYyA8amVybmVqLnNrcmFiZWNAZ21h
aWwuY29tPgo+IENjOiBEYXZpZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IERhbmll
bCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KPiBDYzogS2lzaG9uIFZpamF5IEFicmFoYW0gSSA8
a2lzaG9uQHRpLmNvbT4KPiBDYzogVmlub2QgS291bCA8dmtvdWxAa2VybmVsLm9yZz4KPiBDYzog
S2V2aW4gSGlsbWFuIDxraGlsbWFuQGJheWxpYnJlLmNvbT4KPiBDYzogSmVyb21lIEJydW5ldCA8
amJydW5ldEBiYXlsaWJyZS5jb20+Cj4gQ2M6IE1hcnRpbiBCbHVtZW5zdGluZ2wgPG1hcnRpbi5i
bHVtZW5zdGluZ2xAZ29vZ2xlbWFpbC5jb20+Cj4gQ2M6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+Cj4gQ2M6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KPiBDYzog
R3VpZG8gR8O8bnRoZXIgPGFneEBzaWd4Y3B1Lm9yZz4KPiBUZXN0ZWQtYnk6IExpdSBZaW5nIDx2
aWN0b3IubGl1QG54cC5jb20+ICMgUk02NzE5MSBEU0kgcGFuZWwgb24gaS5NWDhtcSBFVksKPiBT
aWduZWQtb2ZmLWJ5OiBMaXUgWWluZyA8dmljdG9yLmxpdUBueHAuY29tPgoKUmV2aWV3ZWQtYnk6
IEFuZHJ6ZWogSGFqZGEgPGFuZHJ6ZWouaGFqZGFAaW50ZWwuY29tPgoKUmVnYXJkcwoKQW5kcnpl
agoKPiAtLS0KPiB2MS0+djI6Cj4gKiBVc2UgQklUU19QRVJfQllURSBtYWNyby4gKEFuZHJ6ZWop
Cj4gKiBEcm9wIGRzaSBhcmd1bWVudCBmcm9tIHVpMmJjKCkgaW4gbndsLWRzaS5jLgo+Cj4gICBk
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYyAgICAgICAgICAgICAgICAgfCAxMiArKysr
Ky0tLS0tLS0KPiAgIGRyaXZlcnMvcGh5L2FtbG9naWMvcGh5LW1lc29uLWF4Zy1taXBpLWRwaHku
YyAgICB8ICAzICsrLQo+ICAgZHJpdmVycy9waHkvcGh5LWNvcmUtbWlwaS1kcGh5LmMgICAgICAg
ICAgICAgICAgIHwgIDQgKystLQo+ICAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LWlubm8tZHNpZHBoeS5jIHwgIDMgKystCj4gICBpbmNsdWRlL2xpbnV4L3BoeS9waHktbWlwaS1k
cGh5LmggICAgICAgICAgICAgICAgfCAgMiArLQo+ICAgNSBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNl
cnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL253bC1kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvbndsLWRzaS5jCj4g
aW5kZXggYTczODlhMGZhY2ZiLi5hZjA3ZWViNDdjYTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9ud2wtZHNpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253
bC1kc2kuYwo+IEBAIC03LDYgKzcsNyBAQAo+ICAgICovCj4gICAKPiAgICNpbmNsdWRlIDxsaW51
eC9iaXRmaWVsZC5oPgo+ICsjaW5jbHVkZSA8bGludXgvYml0cy5oPgo+ICAgI2luY2x1ZGUgPGxp
bnV4L2Nsay5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L2lycS5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4
L21hdGg2NC5oPgo+IEBAIC0xOTYsMTIgKzE5Nyw5IEBAIHN0YXRpYyB1MzIgcHMyYmMoc3RydWN0
IG53bF9kc2kgKmRzaSwgdW5zaWduZWQgbG9uZyBsb25nIHBzKQo+ICAgLyoKPiAgICAqIHVpMmJj
IC0gVUkgdGltZSBwZXJpb2RzIHRvIGJ5dGUgY2xvY2sgY3ljbGVzCj4gICAgKi8KPiAtc3RhdGlj
IHUzMiB1aTJiYyhzdHJ1Y3QgbndsX2RzaSAqZHNpLCB1bnNpZ25lZCBsb25nIGxvbmcgdWkpCj4g
K3N0YXRpYyB1MzIgdWkyYmModW5zaWduZWQgaW50IHVpKQo+ICAgewo+IC0JdTMyIGJwcCA9IG1p
cGlfZHNpX3BpeGVsX2Zvcm1hdF90b19icHAoZHNpLT5mb3JtYXQpOwo+IC0KPiAtCXJldHVybiBE
SVY2NF9VNjRfUk9VTkRfVVAodWkgKiBkc2ktPmxhbmVzLAo+IC0JCQkJICBkc2ktPm1vZGUuY2xv
Y2sgKiAxMDAwICogYnBwKTsKPiArCXJldHVybiBESVZfUk9VTkRfVVAodWksIEJJVFNfUEVSX0JZ
VEUpOwo+ICAgfQo+ICAgCj4gICAvKgo+IEBAIC0yMzIsMTIgKzIzMCwxMiBAQCBzdGF0aWMgaW50
IG53bF9kc2lfY29uZmlnX2hvc3Qoc3RydWN0IG53bF9kc2kgKmRzaSkKPiAgIAl9Cj4gICAKPiAg
IAkvKiB2YWx1ZXMgaW4gYnl0ZSBjbG9jayBjeWNsZXMgKi8KPiAtCWN5Y2xlcyA9IHVpMmJjKGRz
aSwgY2ZnLT5jbGtfcHJlKTsKPiArCWN5Y2xlcyA9IHVpMmJjKGNmZy0+Y2xrX3ByZSk7Cj4gICAJ
RFJNX0RFVl9ERUJVR19EUklWRVIoZHNpLT5kZXYsICJjZmdfdF9wcmU6IDB4JXhcbiIsIGN5Y2xl
cyk7Cj4gICAJbndsX2RzaV93cml0ZShkc2ksIE5XTF9EU0lfQ0ZHX1RfUFJFLCBjeWNsZXMpOwo+
ICAgCWN5Y2xlcyA9IHBzMmJjKGRzaSwgY2ZnLT5scHggKyBjZmctPmNsa19wcmVwYXJlICsgY2Zn
LT5jbGtfemVybyk7Cj4gICAJRFJNX0RFVl9ERUJVR19EUklWRVIoZHNpLT5kZXYsICJjZmdfdHhf
Z2FwIChwcmUpOiAweCV4XG4iLCBjeWNsZXMpOwo+IC0JY3ljbGVzICs9IHVpMmJjKGRzaSwgY2Zn
LT5jbGtfcHJlKTsKPiArCWN5Y2xlcyArPSB1aTJiYyhjZmctPmNsa19wcmUpOwo+ICAgCURSTV9E
RVZfREVCVUdfRFJJVkVSKGRzaS0+ZGV2LCAiY2ZnX3RfcG9zdDogMHgleFxuIiwgY3ljbGVzKTsK
PiAgIAlud2xfZHNpX3dyaXRlKGRzaSwgTldMX0RTSV9DRkdfVF9QT1NULCBjeWNsZXMpOwo+ICAg
CWN5Y2xlcyA9IHBzMmJjKGRzaSwgY2ZnLT5oc19leGl0KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9waHkvYW1sb2dpYy9waHktbWVzb24tYXhnLW1pcGktZHBoeS5jIGIvZHJpdmVycy9waHkvYW1s
b2dpYy9waHktbWVzb24tYXhnLW1pcGktZHBoeS5jCj4gaW5kZXggY2QyMzMyYmYwZTMxLi5mZGJk
NjRjMDNlMTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24tYXhn
LW1pcGktZHBoeS5jCj4gKysrIGIvZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24tYXhnLW1p
cGktZHBoeS5jCj4gQEAgLTksNiArOSw3IEBACj4gICAKPiAgICNpbmNsdWRlIDxsaW51eC9iaXRm
aWVsZC5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgo+ICsjaW5jbHVkZSA8bGludXgv
Yml0cy5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L2Nsay5oPgo+ICAgI2luY2x1ZGUgPGxpbnV4L2Rl
bGF5Lmg+Cj4gICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPiBAQCAtMjUwLDcgKzI1MSw3IEBAIHN0
YXRpYyBpbnQgcGh5X21lc29uX2F4Z19taXBpX2RwaHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5
KQo+ICAgCQkgICAgIChESVZfUk9VTkRfVVAocHJpdi0+Y29uZmlnLmNsa196ZXJvLCB0ZW1wKSA8
PCAxNikgfAo+ICAgCQkgICAgIChESVZfUk9VTkRfVVAocHJpdi0+Y29uZmlnLmNsa19wcmVwYXJl
LCB0ZW1wKSA8PCAyNCkpOwo+ICAgCXJlZ21hcF93cml0ZShwcml2LT5yZWdtYXAsIE1JUElfRFNJ
X0NMS19USU0xLAo+IC0JCSAgICAgRElWX1JPVU5EX1VQKHByaXYtPmNvbmZpZy5jbGtfcHJlLCB0
ZW1wKSk7Cj4gKwkJICAgICBESVZfUk9VTkRfVVAocHJpdi0+Y29uZmlnLmNsa19wcmUsIEJJVFNf
UEVSX0JZVEUpKTsKPiAgIAo+ICAgCXJlZ21hcF93cml0ZShwcml2LT5yZWdtYXAsIE1JUElfRFNJ
X0hTX1RJTSwKPiAgIAkJICAgICBESVZfUk9VTkRfVVAocHJpdi0+Y29uZmlnLmhzX2V4aXQsIHRl
bXApIHwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcGh5LWNvcmUtbWlwaS1kcGh5LmMgYi9k
cml2ZXJzL3BoeS9waHktY29yZS1taXBpLWRwaHkuYwo+IGluZGV4IDI4OGM5YzY3YWE3NC4uY2Ni
NDA0NTY4NWNkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3BoeS1jb3JlLW1pcGktZHBoeS5j
Cj4gKysrIGIvZHJpdmVycy9waHkvcGh5LWNvcmUtbWlwaS1kcGh5LmMKPiBAQCAtMzYsNyArMzYs
NyBAQCBpbnQgcGh5X21pcGlfZHBoeV9nZXRfZGVmYXVsdF9jb25maWcodW5zaWduZWQgbG9uZyBw
aXhlbF9jbG9jaywKPiAgIAo+ICAgCWNmZy0+Y2xrX21pc3MgPSAwOwo+ICAgCWNmZy0+Y2xrX3Bv
c3QgPSA2MDAwMCArIDUyICogdWk7Cj4gLQljZmctPmNsa19wcmUgPSA4MDAwOwo+ICsJY2ZnLT5j
bGtfcHJlID0gODsKPiAgIAljZmctPmNsa19wcmVwYXJlID0gMzgwMDA7Cj4gICAJY2ZnLT5jbGtf
c2V0dGxlID0gOTUwMDA7Cj4gICAJY2ZnLT5jbGtfdGVybV9lbiA9IDA7Cj4gQEAgLTk3LDcgKzk3
LDcgQEAgaW50IHBoeV9taXBpX2RwaHlfY29uZmlnX3ZhbGlkYXRlKHN0cnVjdCBwaHlfY29uZmln
dXJlX29wdHNfbWlwaV9kcGh5ICpjZmcpCj4gICAJaWYgKGNmZy0+Y2xrX3Bvc3QgPCAoNjAwMDAg
KyA1MiAqIHVpKSkKPiAgIAkJcmV0dXJuIC1FSU5WQUw7Cj4gICAKPiAtCWlmIChjZmctPmNsa19w
cmUgPCA4MDAwKQo+ICsJaWYgKGNmZy0+Y2xrX3ByZSA8IDgpCj4gICAJCXJldHVybiAtRUlOVkFM
Owo+ICAgCj4gICAJaWYgKGNmZy0+Y2xrX3ByZXBhcmUgPCAzODAwMCB8fCBjZmctPmNsa19wcmVw
YXJlID4gOTUwMDApCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1pbm5vLWRzaWRwaHkuYyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1p
bm5vLWRzaWRwaHkuYwo+IGluZGV4IDM0N2RjNzlhMThjMS4uNjMwZTAxYjVjMTliIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYwo+
ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWRzaWRwaHkuYwo+
IEBAIC01LDYgKzUsNyBAQAo+ICAgICogQXV0aG9yOiBXeW9uIEJpIDxiaXZ2eS5iaUByb2NrLWNo
aXBzLmNvbT4KPiAgICAqLwo+ICAgCj4gKyNpbmNsdWRlIDxsaW51eC9iaXRzLmg+Cj4gICAjaW5j
bHVkZSA8bGludXgva2VybmVsLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gICAjaW5j
bHVkZSA8bGludXgvaW9wb2xsLmg+Cj4gQEAgLTM2NCw3ICszNjUsNyBAQCBzdGF0aWMgdm9pZCBp
bm5vX2RzaWRwaHlfbWlwaV9tb2RlX2VuYWJsZShzdHJ1Y3QgaW5ub19kc2lkcGh5ICppbm5vKQo+
ICAgCSAqIFRoZSB2YWx1ZSBvZiBjb3VudGVyIGZvciBIUyBUY2xrLXByZQo+ICAgCSAqIFRjbGst
cHJlID0gVHBpbl90eGJ5dGVjbGtocyAqIHZhbHVlCj4gICAJICovCj4gLQljbGtfcHJlID0gRElW
X1JPVU5EX1VQKGNmZy0+Y2xrX3ByZSwgdF90eGJ5dGVjbGtocyk7Cj4gKwljbGtfcHJlID0gRElW
X1JPVU5EX1VQKGNmZy0+Y2xrX3ByZSwgQklUU19QRVJfQllURSk7Cj4gICAKPiAgIAkvKgo+ICAg
CSAqIFRoZSB2YWx1ZSBvZiBjb3VudGVyIGZvciBIUyBUbHB4IFRpbWUKPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9waHkvcGh5LW1pcGktZHBoeS5oIGIvaW5jbHVkZS9saW51eC9waHkvcGh5
LW1pcGktZHBoeS5oCj4gaW5kZXggYTg3N2ZmZWU4NDVkLi41OWE1ZTc3YWI0MDkgMTAwNjQ0Cj4g
LS0tIGEvaW5jbHVkZS9saW51eC9waHkvcGh5LW1pcGktZHBoeS5oCj4gKysrIGIvaW5jbHVkZS9s
aW51eC9waHkvcGh5LW1pcGktZHBoeS5oCj4gQEAgLTQyLDcgKzQyLDcgQEAgc3RydWN0IHBoeV9j
b25maWd1cmVfb3B0c19taXBpX2RwaHkgewo+ICAgCSAqIHRoZSB0cmFuc21pdHRlciBwcmlvciB0
byBhbnkgYXNzb2NpYXRlZCBEYXRhIExhbmUgYmVnaW5uaW5nCj4gICAJICogdGhlIHRyYW5zaXRp
b24gZnJvbSBMUCB0byBIUyBtb2RlLgo+ICAgCSAqCj4gLQkgKiBNaW5pbXVtIHZhbHVlOiA4IFVJ
Cj4gKwkgKiBNaW5pbXVtIHZhbHVlOiA4Cj4gICAJICovCj4gICAJdW5zaWduZWQgaW50CQljbGtf
cHJlOwo+ICAgCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
