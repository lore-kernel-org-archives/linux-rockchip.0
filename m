Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0D9EC44501
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	From:To:Cc:Subject:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WECMyKpXUO9mdvHIDYZebZt2YFz+SB/2CGlGL7iab8k=; b=pmAIujLLLEc5my
	+mRBl8eNdra2i8b77wwI4mrFEHWiuJIFu5iiwDyKrmmvKtoMzezTN60DxwT8Lgzwxz+JK3Glj0Wxb
	gM0pP69nE+Us2fJGPgFpq8vKdTNEKupIjcwwh8OMVHXKxNRvVuTjoR23LL+t8KXIO3qI3w7CbMXOD
	H9lQVapZBu70Tq7jTgJcfgywVjz6GWf/28EKmhdqi9X2FSFIFOdjb8XLv0BvFpdqRHGqBn7tuCQNV
	ElfTNFBjQ/onwbDaJOSfh0Y3pSzSqeX7iSlkRGIqehf02Tux2kFaHJ6JledAsbjEvXICnipj2EO21
	uhaQPBEuRIhCOEoOHSsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkWR-00000001da7-2aVw;
	Thu, 09 Jul 2026 08:54:19 +0000
Received: from mail-eastusazlp170120007.outbound.protection.outlook.com ([2a01:111:f403:c101::7] helo=BL0PR03CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whI3R-0000000GA9T-2vy5;
	Wed, 08 Jul 2026 02:30:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yBra6uUFMQoN/y6ewP81O3m2YOPGJ0b90xg4TOL6++jBUmt3pGeIUr1yC7IVUI0rvpGQv7JLf3fKuIptGW+G+jng8leFlsBvXZH69th0THIkvEQNfBGug84W8+caXdgntNUxkErz4s1a1kY21xM+XpgCV9+slks05y12yTL65+v5jGLhKpm5EXX5DlUw9XneCkjQPcDmXFyGV1Wa7+mtsGJ1lsxyGWCAZCywh0y0uwOCstAj0qnjZvNEBiUEcChCOWf/4Oj5cREkfn3JQywGt7Q8cA9MFrJeJsW13ZIs3PgatAXhIra5wYp2643H6Tz5DEGH60frmGTCDG8ouoNMEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=arzevAtoH6cUE5vjUvMhwI1l/6xS7uVDQdLrQTOTzjA=;
 b=NO5/uFep6RwJc/3yqw55hrjnxyrT61InrlFttGXoyk9B5td84ig4k1p1nc6ALYGNSKFC9dYr/wDu1viCYwAukG2MQvLanBEQKAYlTUNR6JdB7EnJX5wXRQziF9IvgNCvcimHZauFCIQWP4+RjgK+K0h3e/wdYFA5GtLgYLNR2ff55TrkSxvHaq2ttTCBb1a9MTOgMMLIAMpzpFlV8MfGK+bET7XOhhE4ChWyoFcTBCD8rxi7RHVftgR7Z1BLZTOXWid79Wc4IPKbbOX3PkAoCH/eIoKttkOXGlnw3isLdgOkZZoQlAwJOD2LhJ4NczldVzl9RhAM73keLKWqb+BLXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=arzevAtoH6cUE5vjUvMhwI1l/6xS7uVDQdLrQTOTzjA=;
 b=IJ/n9ZflLYbi/Y9DmBKE/I0hWBSfbTopgftA713S+shU8putf/vChIRb5gbBfpyhqNIp53XDk3JUhGeFOh5WiKBOV03s6UK+/y7nzAelCc4YHGzb8eEU4BUFB7ix/hzsQEvMWPJNXAk1ctPMQfMDEMy8yV7w4yDX9oYUUPpmYZFUWXKaZQTu/GQtcGlGmUjm2paC1COttn5QJne2y88VnPLlruqpAZG+ZrL2Gl1NrLEeT3s1xGgi2c2q5Ytj1fn4j5aFAaMLFjip0D4jFcSwAZmmRvTNRElyaJbEZE+dYSeN7VditKzPHfZJOk4+yEyvReOe1JCgZRqTGIgzyRXUMQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from IA0PR12MB8374.namprd12.prod.outlook.com (2603:10b6:208:40e::7)
 by PH8PR12MB6963.namprd12.prod.outlook.com (2603:10b6:510:1be::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.10; Wed, 8 Jul
 2026 02:30:18 +0000
Received: from IA0PR12MB8374.namprd12.prod.outlook.com
 ([fe80::d85f:4c87:ae84:3f16]) by IA0PR12MB8374.namprd12.prod.outlook.com
 ([fe80::d85f:4c87:ae84:3f16%5]) with mapi id 15.21.0181.009; Wed, 8 Jul 2026
 02:30:17 +0000
Date: Tue, 07 Jul 2026 22:30:10 -0400
Message-Id: <DJSU4BBF7EON.276L17W5RTEW1@nvidia.com>
Subject: Re: [PATCH 06/13] mm/vma: convert vm_pgprot_modify() to use
 vma_flags_t and rename
Cc: "Thomas Bogendoerfer" <tsbogend@alpha.franken.de>, "Madhavan Srinivasan"
 <maddy@linux.ibm.com>, "Michael Ellerman" <mpe@ellerman.id.au>, "Maarten
 Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime Ripard"
 <mripard@kernel.org>, "Thomas Zimmermann" <tzimmermann@suse.de>, "David
 Airlie" <airlied@gmail.com>, "Simona Vetter" <simona@ffwll.ch>, "Lucas
 Stach" <l.stach@pengutronix.de>, "Inki Dae" <inki.dae@samsung.com>,
 "Seung-Woo Kim" <sw0312.kim@samsung.com>, "Kyungmin Park"
 <kyungmin.park@samsung.com>, "Krzysztof Kozlowski" <krzk@kernel.org>,
 "Peter Griffin" <peter.griffin@linaro.org>, "Jani Nikula"
 <jani.nikula@linux.intel.com>, "Joonas Lahtinen"
 <joonas.lahtinen@linux.intel.com>, "Rodrigo Vivi" <rodrigo.vivi@intel.com>,
 "Tvrtko Ursulin" <tursulin@ursulin.net>, "Rob Clark"
 <robin.clark@oss.qualcomm.com>, "Dmitry Baryshkov" <lumag@kernel.org>,
 "Lyude Paul" <lyude@redhat.com>, "Danilo Krummrich" <dakr@kernel.org>,
 "Tomi Valkeinen" <tomi.valkeinen@ideasonboard.com>, "Sandy Huang"
 <hjc@rock-chips.com>, =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "Andy Yan" <andy.yan@rock-chips.com>, "Thierry Reding"
 <thierry.reding@kernel.org>, "Mikko Perttunen" <mperttunen@nvidia.com>,
 "Jonathan Hunter" <jonathanh@nvidia.com>, "Gerd Hoffmann"
 <kraxel@redhat.com>, "Dmitry Osipenko" <dmitry.osipenko@collabora.com>,
 "Zack Rusin" <zack.rusin@broadcom.com>, "Matthew Brost"
 <matthew.brost@intel.com>, "Thomas Hellstrom"
 <thomas.hellstrom@linux.intel.com>, "Oleksandr Andrushchenko"
 <oleksandr_andrushchenko@epam.com>, "Helge Deller" <deller@gmx.de>,
 "Benjamin LaHaise" <bcrl@kvack.org>, "Alexander Viro"
 <viro@zeniv.linux.org.uk>, "Christian Brauner" <brauner@kernel.org>,
 "Muchun Song" <muchun.song@linux.dev>, "Oscar Salvador"
 <osalvador@suse.de>, "David Hildenbrand" <david@kernel.org>, "Baolin Wang"
 <baolin.wang@linux.alibaba.com>, "Liam R . Howlett" <liam@infradead.org>,
 "Nico Pache" <npache@redhat.com>, "Ryan Roberts" <ryan.roberts@arm.com>,
 "Dev Jain" <dev.jain@arm.com>, "Barry Song" <baohua@kernel.org>, "Lance
 Yang" <lance.yang@linux.dev>, "Hugh Dickins" <hughd@google.com>, "Vlastimil
 Babka" <vbabka@kernel.org>, "Mike Rapoport" <rppt@kernel.org>, "Suren
 Baghdasaryan" <surenb@google.com>, "Michal Hocko" <mhocko@suse.com>, "Jann
 Horn" <jannh@google.com>, "Pedro Falcato" <pfalcato@suse.de>, "Kees Cook"
 <kees@kernel.org>, "Jaroslav Kysela" <perex@perex.cz>, "Takashi Iwai"
 <tiwai@suse.com>, <linux-mips@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linuxppc-dev@lists.ozlabs.org>,
 <dri-devel@lists.freedesktop.org>, <etnaviv@lists.freedesktop.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <intel-gfx@lists.freedesktop.org>,
 <linux-arm-msm@vger.kernel.org>, <freedreno@lists.freedesktop.org>,
 <nouveau@lists.freedesktop.org>, <linux-rockchip@lists.infradead.org>,
 <linux-tegra@vger.kernel.org>, <virtualization@lists.linux.dev>,
 <intel-xe@lists.freedesktop.org>, <xen-devel@lists.xenproject.org>,
 <linux-fbdev@vger.kernel.org>, <linux-aio@kvack.org>,
 <linux-fsdevel@vger.kernel.org>, <linux-mm@kvack.org>,
 <linux-sound@vger.kernel.org>
To: "Lorenzo Stoakes" <ljs@kernel.org>, "Andrew Morton"
 <akpm@linux-foundation.org>
From: "Zi Yan" <ziy@nvidia.com>
X-Mailer: aerc 0.21.0
References: <cover.1782760670.git.ljs@kernel.org>
 <548ba81b2971734d4d2143237ad1465bd1b2f525.1782760670.git.ljs@kernel.org>
In-Reply-To: <548ba81b2971734d4d2143237ad1465bd1b2f525.1782760670.git.ljs@kernel.org>
X-ClientProxiedBy: DS1PR07CA0009.namprd07.prod.outlook.com
 (2603:10b6:8:456::17) To IA0PR12MB8374.namprd12.prod.outlook.com
 (2603:10b6:208:40e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR12MB8374:EE_|PH8PR12MB6963:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c6621ac-eb34-405b-3d17-08dedc98d978
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|1800799024|366016|23010399003|376014|7416014|22082099003|18002099003|6133799003|56012099006|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: VAzUzijjsJMvZkTGj7iS37VLUGQpPdMEUfbkgqqEylainL+DBI6dFO51X/qwWCWcg5JSVNRgvk5htcQKKY+WLC47q0M+mfb8J9jpXe8myoD32H8zyHLtpoyZEvDZh6N5Gd7VpoR8pu6CTsearPGoErfEfPNs+BXPgBg1o18aIV1xS0iFNPrKMl+sWL7EJqeo1scKZYY1/dN16dLPqcE5VEB0lU8v4pKk+LeIfyN7e1l199nFenhu2aCgt3+r9Z8mmD5B7AlmjDTg+rcmj3sXv1qgoxZbu+VMZ86acnfduxcUBbLMTRopt6wx6d506Tm8d9UiDJrfFS98BcDr1ic4gelhhj5bMEd/3VbMKtmzgjMtyjR2Zl2O3gBBIO881rEoW/HYTxVoR9WDKLXLhgC+gu62f8ULeBFOObIA9lZLWTfNvyTmlJ8SBGo4S+HZGxfLki5EdZp4XMUSgxZCsrxsWYfPe2DLTJ0mAtWW1OcZkDNw20hFJY5KoQc3eoi+dm95FKrilZsz77euV0JC91TouPj5u9OtFDdOgVOjU+IBa0gNww9gaocAhWFdw9BItcPSBEwPs5WnSnWgE4+d8JlITOTRXMpcBuWi+2G/EKAP0F0YNGZEoeQRXtcI5URKg1O3bp4lYrw3k7uwgM3bUKCHLEyCx1xJMQ8RE0hu2k/jJWM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:IA0PR12MB8374.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(366016)(23010399003)(376014)(7416014)(22082099003)(18002099003)(6133799003)(56012099006)(11063799006)(4143699003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YlJvRk5yMldtTGhKSnFFcEZYUllSVUdabjZrVG1adkVmSHpadVlTaGQ2ckRZ?=
 =?utf-8?B?akQ4ZlUxOGFFaHkxV3dXWVJEcWp4My9GZzlzbzRnY0Y0cjAzMWhrUTFjYzdv?=
 =?utf-8?B?YXYvZGp6bG1NSjMyS0pKUnloSnV2Q21NbmVVVlQ3eDFSZHBYL3QrbFdzaXBQ?=
 =?utf-8?B?ZjYzYnVZUzhoOVJsV3k2SDFkTXExcTBiRHUwQWt5TjRLZTNPNW9Fb1J2SW5t?=
 =?utf-8?B?cWFBNzBvTy9ja0hqSktpOUJZTG0rRVd2TEZrbTVhQ3VPRmpqK1pUTGU5VmtO?=
 =?utf-8?B?ZVpPeERBZ1dqem1rOWxUQWRzYkc0cHNJcXFxa05zV0Z2Z1llK2F2QVFxVWZr?=
 =?utf-8?B?TlBzSnJMZFdrNFprdzVkMEZramIrellZcXdXMzh0RjREVURsR1ZiNjBhbEZk?=
 =?utf-8?B?RlpoSFlsWEtlWk5qSEdyVUhlaFdTRmNpNFlzZWlEYmJVWGt5bncrVWFmQ2JQ?=
 =?utf-8?B?VkRMdHd6YXc2WkJZRnJlTzNCalZWQkdjdFYxM1ZnN1ZEbGhFRGN1T0hRSXdi?=
 =?utf-8?B?eHprZUhWbjI5a05Zc1FZRzlaeDErd1IyckUyL1RoSnh4OXFBSUlvMzBLL3NE?=
 =?utf-8?B?Ri9sTDhaKy9jcFFSN1hhdjJDNUxPRDlQc0FZUzBEbWxWNDk2QlBZZUVMQXJs?=
 =?utf-8?B?T2tvVjVCY3VrZSt5bmc1UFBmdm4wS3E0Z2hVQzF2cmpRamQzQzBGYnBZdEdv?=
 =?utf-8?B?YmtRb2JSeVBUKzAwdkhIR3BlOGFwZjdMaURxUHlmM1F4SXBGeFMybHp6M0Ny?=
 =?utf-8?B?L2pEQTNQdm1JSUlyU0dia1g2anc1RGJjQllHYW84ZVFFQndxWDVYQlVOK3pm?=
 =?utf-8?B?WS9CSVREbmRhMTRqeWhVRFNDMGZGeEZ5NDhWWitQV0VVVVFKTFFBTTBqaVdm?=
 =?utf-8?B?bXdCZmZoZ1YrR29SY2lGOW1LNUxXaG96dVFCMTZuenJjbjFwWWZCYUxTT3hr?=
 =?utf-8?B?K0w2clB0UFhubm1jdlNaanBpSHVHMml4SjB6N0FMc3Z1NlZSQlo1c1ZoU1hV?=
 =?utf-8?B?U1FlTTdmMHg2UmZ3NHJxb0VnbVN5cDFWTE9kSXUrcXpJQVFzbUJhNkoweDM1?=
 =?utf-8?B?STJSd1dLcml1VGcxL3lLelpKTWg5ZVJHTmZHemRiWVFBS0tiZlhYRTBCeTNr?=
 =?utf-8?B?OUJnSDVnMitVZlBwcEdwQmdYOGtGYnBjdTBqRExKd2dETUFjOWFsOFc4QWxl?=
 =?utf-8?B?K1BWd2h4YXd0WjJwZUxsVjR3a2p3aGVoZWliVWZNcHpidVhldVBOdzJMWHVn?=
 =?utf-8?B?OFdIc0ZzbjBTdm9RRkZpUnlhZEU2Wk1sbGtmTTIwSWhLTjlDeFNqWDljWmV0?=
 =?utf-8?B?bWJ0MHMxSDMxTEZHZXVGSGFueXBuOENLOWcyS05VVXh4NGNPT05qMWYrTktv?=
 =?utf-8?B?QTVUMnBYOTUzak5IT1hMM2dpeGwyYnp4QjAzOGQvcnh3K0tPMEN5VHBNaVFM?=
 =?utf-8?B?QlkzdE4zTlF2OTBRQ3hGbTdqOHUxU1l4ZllyNlVZSGpmdGQwSnM5NHdnY0VX?=
 =?utf-8?B?Q21hM25hUXBtaDVyR21BV3hHMEVSbnNBK09IcE5wQmJ4UHUwc1JFdjNOV1BQ?=
 =?utf-8?B?bXA1VG0zTlJIV1AxWGh0ejQ0V1JwN3orYjZxWEc2Nzl0V002NXlmb2l1eUF0?=
 =?utf-8?B?U25uaTRGRmlRSDZHOS84V1NGeDBTS2I3UUtrZ1BHWE82OFBsZHZzelJySWZY?=
 =?utf-8?B?b3VCMEd2b0NPbGJXOERWWUk3UXgwQVNFMkFqdXBrMGVqMkc5S29qaGpUaXFH?=
 =?utf-8?B?TnRNUVcvUGdSV2s2dHlLUElvNVZCcmh4V3diUG9GamxjV215KzlwT1BxRnlx?=
 =?utf-8?B?T05mRUw5di9QazRPbWdNV0VtQkNjS0F1a1p4WVNXcGhQT1I4WndxMU1zOGI4?=
 =?utf-8?B?aHUxWjZMcXpnQ3o5anJsQ29wRW5CbGRLakl4U1RxVlJyQXlHaE9mbnVBSExF?=
 =?utf-8?B?WWZNa1A2SGxGTTdUbWVkSGZBZlhzT2ZmUk11aXJjYXJXdERBdkNZMTFHM0lt?=
 =?utf-8?B?RVBBc2ZsRkFMZktoVHU3dWFuTWUvNkVVcW5PS1VFaFlVRzhNSFBLVnQyVW00?=
 =?utf-8?B?M3pYcjI1dHhNcTVHZy9OV3lBWVYxRzRJZlRPdzNnTU9rY3l2SXBtcFlLSHEx?=
 =?utf-8?B?TFo1VktNMHpuRW43REhFbGdvNTJVTW4yaUxHQ1k4NDR4ZDRneDlZMzdiOEVP?=
 =?utf-8?B?SnpKamdHaE9vU1YvREhQYmJGc2RhanR3bXFEMlJmM2tKVEJPRzcvUkx0YXdL?=
 =?utf-8?B?U0EycERWUUxhS3VhL09qT3I2c05lSEw4M0N6S2VoTENLMi9tRE9qR09aWUZr?=
 =?utf-8?B?aGxtbkM5M1NQNWVNZXEvTFIvNFdhOEowSzBpditXeFVld0lNQzUxZ1NlV0tN?=
 =?utf-8?Q?2FxA9efYaxP1BooyqXhD3g//7LqxQMMxqb004?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c6621ac-eb34-405b-3d17-08dedc98d978
X-MS-Exchange-CrossTenant-AuthSource: IA0PR12MB8374.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2026 02:30:17.6810
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IR4pRR0IZrwgy9TMLVxgrf6jof6ZMh6ww9NBNbjH0YPS3Wokg4RcFSC5tqtGcdFC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR12MB6963
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_193029_764730_8A676A5E 
X-CRM114-Status: GOOD (  11.65  )
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

On Mon Jun 29, 2026 at 3:25 PM EDT, Lorenzo Stoakes wrote:
> Update vm_pgprot_modify() to use the new VMA flags type vma_flags_t, and
> rename to vma_pgprot_modify() accordingly.
>
> This is part of the ongoing work to convert vm_flags_t to vma_flags_t, in
> order to eliminate the arbitrary limit of the number of bits in a system
> word on available VMA flags.
>
> Update VMA userland tests accordingly, updating vma_set_page_prot() to no
> longer inline vma_pgprot_modify(), rather we can simply define
> vma_pgprot_modify() as a static inline function and the tests will pick it
> up from vma.h.
>
> No functional change intended.
>
> Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
> ---
>  mm/mmap.c                       |  8 ++++----
>  mm/vma.c                        |  2 +-
>  mm/vma.h                        |  6 ++++--
>  tools/testing/vma/include/dup.h | 12 +++++-------
>  4 files changed, 14 insertions(+), 14 deletions(-)
>

Reviewed-by: Zi Yan <ziy@nvidia.com>


-- 
Best Regards,
Yan, Zi


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
