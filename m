Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FA9AC44508
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 07:14:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJnb6o8ZVlfuGjA6XMQcuzSKv2ipg/emZjInZOfrHUk=; b=qZG571x3iEXjzy
	+LQMg+ioIDPVyBlv+NlOgOuU8O4C5i/Itx5BCzGA5e5ye9vyXT1LCpu1KltDHBZo3F8u4weRU0OWs
	ymE/VAU5Ha4mq2yt/ockyugt/6Ea9vn7nl/oBgN1/2INQLSqg29s4lEAnU7t6Bzob533pcE7F8YFc
	S0O1nC7b1U1LPOsSG/nhvVQbJSNTD8BNgYwadVH/uSSzJbXWzI3QriqBWKCe/DUr9OIi+hq0WzwHi
	YS58Wkt5f1QeBGwIc3iE9W7JGCG1Z1RRzrV2l4i3VYqy2gXFMxYxOvh44QhPvDLf6fC9jHXI/iloP
	1GKlHbfHHPvI2Ah3g+Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtpU-0000000DzU4-4BgQ;
	Wed, 15 Jul 2026 07:14:53 +0000
Received: from mail-westus3azlp170120001.outbound.protection.outlook.com ([2a01:111:f403:c107::1] helo=PH8PR06CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjtpR-0000000DzTU-3idS;
	Wed, 15 Jul 2026 07:14:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q6mXb8EYkmWuAq2t5DVU3XPeZH3irMYx/mRaQU1A0gEW3oMiLbdXa1KrTAx7DpN1A/QLNKWAgnmknkcO2cv/ROol+GaayuiDFi3W/NOvz17TDf6tSY9ZjFiQdGgEPxBYNIM3FJDXngQZ1E4yYBB2/cVV15joe9MjjjuxSxPeMRyFu7qafqeGp3RotvbcjLZcIEB9NtDZ6YesB2z/01SUMyk2O7BAZ02m+XVF3pjja8/2qWWzo2bH4E7gNIQJ4c1c+mC0qFoAKWn97RjUhkp+ipQcXosGRV7UXzdeBezS3NgLpJNXjsNY0UwyuaIjFAcJpeWWfO8Y3jTSR7VzDOtSbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2umTuA0uDsjmo29/9k/4nXaVg8rS/NVfTkTK6+Zhvik=;
 b=HiOWL1827OIpMro1bQshFvgTZ8oO7Dff6hOOGagxPm01ecpnBgl7pZpVJ+c+muf111ZXms+Qb72rohi2tpW7fgGTZj3P4pl07X+elQEfeutWm9G99KlfcUV/sa/QmohKW2v6+zvdreCAk0k+DrcrCpXolcTdVbTUWFFmN37NppSWj3K/lRMGuLe8k93GCFFmUC3SPmoT1je0QOEWdrwG7SBCrR348zNFSr98XqXVyNjPezpFCnj66KRYCt8DlHPGpnq6N8rmjua9Zsm6aHYLJUntR8VZY34CRx1rnuQcTFfaQs1P16RUOKR13Gwuz4lTqqGuD5ZoJtA07JB8z5X4NQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Nvidia.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2umTuA0uDsjmo29/9k/4nXaVg8rS/NVfTkTK6+Zhvik=;
 b=hM/TunoMFMHARErnDN9aI63BRN/NRduQtWUohbyPk1K0jWF7zjm+GyJsRt4t+kQ2HtjyYA7ILg/gzWKo1OXhuaJtg2Lr2yaeQnZat8F3gEWl2YSSUGpwbi+TbMm11tH3pr2ed/qcJnl3dHiRSFkXuSzgHQ9wedTPDPoNGwhmwYbIxl5WofHeZ0g0Hn7b1JVqTf5Tfj41egGO+czH29anV9JfM57ZONQRQ/TyQ/hzebh1RElRWp8lkgX9uOkLs3ZKO/t7c/RQNI0Kh7fZsNy0Nkd9t/v0p+4GwsuN72Edxx/6HCG4KLwhuMI1GhqHH8JkFk2d9l7d+ig8MuIM0JwLFw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Received: from SJ2PR12MB9161.namprd12.prod.outlook.com (2603:10b6:a03:566::20)
 by DS3PR12MB999216.namprd12.prod.outlook.com (2603:10b6:8:38d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.10; Wed, 15 Jul
 2026 07:14:39 +0000
Received: from SJ2PR12MB9161.namprd12.prod.outlook.com
 ([fe80::d9d1:8c49:a703:b017]) by SJ2PR12MB9161.namprd12.prod.outlook.com
 ([fe80::d9d1:8c49:a703:b017%6]) with mapi id 15.21.0181.019; Wed, 15 Jul 2026
 07:14:39 +0000
From: Mikko Perttunen <mperttunen@nvidia.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <jesszhan0024@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Inki Dae <inki.dae@samsung.com>,
 Jagan Teki <jagan@amarulasolutions.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Laurentiu Palcu <laurentiu.palcu@oss.nxp.com>,
 Lucas Stach <l.stach@pengutronix.de>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Paul Cercueil <paul@crapouillou.net>,
 Linus Walleij <linusw@kernel.org>, Marek Vasut <marex@denx.de>,
 Stefan Agner <stefan@agner.ch>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yannick Fertre <yannick.fertre@foss.st.com>,
 Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>,
 Philippe Cornu <philippe.cornu@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Chen-Yu Tsai <wens@kernel.org>, Samuel Holland <samuel@sholland.org>,
 Jyri Sarha <jyri.sarha@iki.fi>, Jingoo Han <jingoohan1@gmail.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Peter Griffin <peter.griffin@linaro.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Alison Wang <alison.wang@nxp.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alain Volmat <alain.volmat@foss.st.com>,
 Raphael Gallais-Pou <rgallaispou@gmail.com>,
 Thierry Reding <thierry.reding@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Albert Esteve <aesteve@redhat.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-sunxi@lists.linux.dev, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org, Albert Esteve <aesteve@redhat.com>
Subject: Re: [PATCH v2 3/5] drm/panel: of_drm_find_panel() return a counted reference
Date: Wed, 15 Jul 2026 16:14:35 +0900
Message-ID: <hm3gW14-QtmZmT6DKePecw@nvidia.com>
In-Reply-To: <20260713-drm_refcount_wiring-v2-3-d3bb61f4bd4d@redhat.com>
References: <20260713-drm_refcount_wiring-v2-0-d3bb61f4bd4d@redhat.com>
 <20260713-drm_refcount_wiring-v2-3-d3bb61f4bd4d@redhat.com>
X-ClientProxiedBy: TY4P286CA0104.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:405:380::17) To SJ2PR12MB9161.namprd12.prod.outlook.com
 (2603:10b6:a03:566::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ2PR12MB9161:EE_|DS3PR12MB999216:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b9157d9-5405-4c83-71e9-08dee240bb9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|376014|10070799003|23010399003|921020|3023799007|4143699003|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: j0TIiVA1SFyow06vbq3b6RKxS/uco1dXBHP+i15V2Pjn8oQgeD4WHW8t8sFKCJdly1H4bm9owAY85MfhsVmndiSUuc0d47BRsPH6lGYHYhwcaf5owlgz+YXvtNcTlEGgjFKSlSSkwUVe+ScIEjQz3dSbQQnXL6Er4Mp7M20XU2cVRD6832jW3WQZyaVk6gH4INthU4mtDfU0vA8YhArRZlrjOYRAuxu0tBe65BX9X5zJ7TG5mO/pxhjX8a9BZznEJl2pWTqTDg5n5GKu2xy8h/bdh54kSztjNemFC+MRib7lCs7pg115OCx1fJp111YkSl+qwhDA76KhLWFk83bH7E7PPcbXCoYWVTyrzvFHsIMmtpUPAtLWGUHeamA525sLIgRXYj8/zmj3AkpjLVYoAdHjv7N9di3F5zx4MxLxPxe5DHlAPOraAfNcACpgtxMZUJt94U75SUI4a1yYvVbaMMn+cfKBcVdWq8o6TPUAkX2trSu8e7ie0b/quMUV0GXdguT4htm9r/NWK3XYbyM6iihK/v6Ah0YSNUzpYEMuLbg1p+AfhaFX6EEE3Qomy7P4cBgrjdhhcaGbS8StvGm7hN5oE8d2LS2P3rXkWBYzFN++4hCYMWrRUF20sZHlpOfvdrmRyc6KPPXGNefyXLZFKZmnXHw1aT/77ITSUNJ1+9ZbJ6VYU+G2PYnAGe0dQzmCsw46Ue2Y1sf1CxUO9pNJFA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ2PR12MB9161.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(376014)(10070799003)(23010399003)(921020)(3023799007)(4143699003)(11063799006)(56012099006)(18002099003)(22082099003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bEFTY1pSbHE3RUhZek5pamR2RjAvcmtaL0s5RzFLcE9lTStrUXI4ZlA0Qm9H?=
 =?utf-8?B?eUlHYWlyTDhqSERjSnhqRTB5eGJMd3k2eU1haFlleG5PVk81ZHRIWElzWHVW?=
 =?utf-8?B?dTAyc0FURHlaSlIwYXVUek1tWTk2ckRvd0RQUmdjenlCQk5qektWRDk2Y3Uv?=
 =?utf-8?B?Nm1aRG5HNXF1ZUU4aGdrQmpYYlE3aVJTZjV0ZWM1U0RTeThFbVBqWWs5ekF5?=
 =?utf-8?B?Zk1oYndoTTJySjVwYzRITnI3QmxUYTJodGVwT0xWWmZaRmhLRmxaQ3M4akdu?=
 =?utf-8?B?RCtJSlI2aW5jOWV5NzdCWnZUdFNkYlQvdS84bmhNY1dEMERZRUhIR215YWRr?=
 =?utf-8?B?M2VXdVpnTmdESDlRYzdZL0tOcXZ2SVUxWi83aUdXaUZiZkVKaWRaN1hzbEZw?=
 =?utf-8?B?bjB4UVdGUG4ybDZKU2ZOTmJWVHZNbFZJdmM0SEgzTTRkanpwVTRtUXdqenNy?=
 =?utf-8?B?UWo3eTZwenBrRHNkUVV4aVQwdlF2V053VmZvcGY1NWhBNzhONlAzNnp5WWZ4?=
 =?utf-8?B?Z3JISDZFMVZTRWlmbitvSWVBemMzcGJ3YWpadTZOVmlURXBLalQydENtc0tW?=
 =?utf-8?B?Y3VXL1MwV0x0Mldla0xQbDI0a2V1YWVUNWZXcTExZkw3ckJtTHJOOTVpaWp3?=
 =?utf-8?B?ZzVjWWcxYTIyVEJ6bmp3MFo2Y080YVZYNEhWcnpRVFBaRitqQlo1djBNcmxs?=
 =?utf-8?B?a0MrbWluTWV0UnJiWllaTG42cDVwY2xmNCtGN0F6bm1YamwxL01rRzF6Y281?=
 =?utf-8?B?VXpDVGFiVzU0SnJ5YWttaDVVcUNpcGpWM3c5ZjZhVlYvWUhFMXlhb2NvWkdU?=
 =?utf-8?B?eGdGdlh6Z0d6QUtkWVJZVEVTd096MVhQZ1JTc3ZyczU2OURZSE5MSVM2endW?=
 =?utf-8?B?aW05cXd2T2ZITVJOaWttUVJpbUNkZlZ5TlN2N2twNXhoS0gwbVhsanU0bGFa?=
 =?utf-8?B?bWxWOTdqVk85cHEwQk0rYzc3eUR0UUpia3NPV21GcEt4aU9ienFxcWhYNVBJ?=
 =?utf-8?B?S2FLTVRsYjA1MGYwemtnOHZRaUc3R3NzUUdtM3huQk0vTisrQ21OZ2ZVK3hm?=
 =?utf-8?B?UG5mUUtvRmMxdytFWlRjbVZrYzdZaGVLc3p5RUM2YktvUDNrUTREY0ZCOUMz?=
 =?utf-8?B?TlFFb0ZrVG03RXFWaXlhN29CY0p3NzBacWdlN1lyT0c4SmhxWGZDZjVMU0la?=
 =?utf-8?B?RmlSOW1sV0VKVzh1TFhpZXhKWVdyTVlYYkZYbVU1R0VsUGI2MStua2pBd2RS?=
 =?utf-8?B?MHdub1RPZ1A1NmlhdWJjUmhqUUFtNXlXV0lvZFNydjdXS2cyUEs2YWhuc3VJ?=
 =?utf-8?B?YzVvQ3FUWWZvVlZRM3NXMExsbktlbXVCNzlLOUl4QnhWRzBEcnZJQUVkalFw?=
 =?utf-8?B?WC96dVZxemw3cGo3MnRiQUtUczE4dXFwbGhFdUszaFRjQktsRDgyZmdmT1hv?=
 =?utf-8?B?UWpiOXVzeWFNSWRNYlh6YitjZEpUMlZRS0ZENWpsR2k3OGxqbWZHWlozUjFY?=
 =?utf-8?B?U3dWdHRkZWpJVjlFOUxCdy8rOXIra3FRK0Z3NHFyR0tDTVhhV3d1L204K2kr?=
 =?utf-8?B?MFkwajdMNkw3SFNBWm9DWm9sOW8xWi9oTXBWTmR1b0toOWxUeFdWYkdMclZx?=
 =?utf-8?B?UXRjNEs3ejJFOFYxc3gxbUMydHdTbXUrU1dKMmdDZjA3QzVwWjZDRXFiN1pz?=
 =?utf-8?B?R21GTURnTElESW1kUVNyOVc2bjNjMVVLS0prYm85b0lkbjg5YUdXTUg3dGVQ?=
 =?utf-8?B?a3k4SThXYkQzTTF2SXVLRjBhWTZmc2p2bkhrTUNKQjFuTUNad3laQUVtaHVj?=
 =?utf-8?B?dHpOK0xYNnh3UzB5Z1hlVWl0c1VVSGlMZ0RzcHZEZm9wekl2bmlMdjJMRjk2?=
 =?utf-8?B?UnkyczNWWFJBazJzRGhqNlQxUEF3V2Myemo4YW9PNlFYZ2hvWjBST2J4czd0?=
 =?utf-8?B?VGpzbkZNSU9hMkJmTkpUblBDZnlIL2RjMVhaMVpnOFVuK0l0WVNNSWV4c2pn?=
 =?utf-8?B?OHRqck9GNEFlYlBLd1daSUNlMEcvdThHZUhublVBcTBOMDVuMGxTaXZNOUxM?=
 =?utf-8?B?RW5VK1Z3QmZsQUFxQmFvbFFXeFQ5WEtYcHd1cVVFbUVyV3VBNTJJVlExL1pW?=
 =?utf-8?B?RFZjTmYvQ1ZDRVZNeG9rd0JtK2xLSVZxRUdhTHFLK3Rtc2loVW9Vc3AwQzZq?=
 =?utf-8?B?eVZ4ZnQ5cWFXWXVST1FCN053dTJramg2Y0g0dHBBSE53WkJFa1BkaHBMaWxj?=
 =?utf-8?B?OUVBYnhqYStYK2doTGJjTllaZTNmYnNBc0IxTFpVVW1aT3hLK1hFdU9PN1NE?=
 =?utf-8?B?UWZZdC93M21mRzJxV0NMZVhlZWdWNTI5bWRBZXhoVzhDazc4ckE4S2g4R2s3?=
 =?utf-8?Q?gJL5+7aOZNAwVPHLW2hxpLOmGjqOoZaW6ZrpavQow4ggR?=
X-MS-Exchange-AntiSpam-MessageData-1: AZ8BNAgkWPxYCw==
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b9157d9-5405-4c83-71e9-08dee240bb9f
X-MS-Exchange-CrossTenant-AuthSource: SJ2PR12MB9161.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2026 07:14:38.9754
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eJT5D9VRPiS9SGgTaqPLFKd1fU1l/N0yiMMDbcnVp6MOm7VOHx2ufHVnGSXx2YmP3RFRtXRRiHQXwkJgrKLNSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR12MB999216
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_001449_990602_045A4F16 
X-CRM114-Status: GOOD (  27.38  )
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

T24gTW9uZGF5LCBKdWx5IDEzLCAyMDI2IDg6NTPigK9QTSBBbGJlcnQgRXN0ZXZlIHdyb3RlOgo+
IENhbGxlcnMgb2Ygb2ZfZHJtX2ZpbmRfcGFuZWwoKSByZWNlaXZlIGEgcG9pbnRlciB3aXRoIG5v
IHJlZmVyZW5jZQo+IGhlbGQsIGNyZWF0aW5nIGEgd2luZG93IHdoZXJlIHRoZSBwYW5lbCBkZXZp
Y2UgY2FuIGJlIHVucmVnaXN0ZXJlZAo+IGFuZCBmcmVlZCBiZXR3ZWVuIHRoZSBsb29rdXAgYW5k
IGZpcnN0IHVzZSAoZS5nLiwgZHJtX3BhbmVsX3ByZXBhcmUoKSkuCj4gCj4gRml4IHRoZSBsb29r
dXAgZnVuY3Rpb24gYnkgYWNxdWlyaW5nIGEgcmVmZXJlbmNlIHdpdGggZHJtX3BhbmVsX2dldCgp
Cj4gYmVmb3JlIHJldHVybmluZywgdW5kZXIgcGFuZWxfbG9jay4gQ2FsbGVycyBhcmUgbm93IHJl
c3BvbnNpYmxlIGZvcgo+IGNhbGxpbmcgZHJtX3BhbmVsX3B1dCgpIHdoZW4gdGhleSBubyBsb25n
ZXIgbmVlZCB0aGUgcG9pbnRlci4KPiAKPiBGb3IgYnJpZGdlIGRyaXZlcnMgdGhhdCBpbW1lZGlh
dGVseSB3cmFwIHRoZSBwYW5lbCBpbiBhIHBhbmVsX2JyaWRnZQo+ICh3aGljaCBhY3F1aXJlcyBp
dHMgb3duIHJlZmVyZW5jZSksIHJlbGVhc2UgdGhlIGxvb2t1cCByZWZlcmVuY2UgcmlnaHQKPiBh
ZnRlciB0aGUgYnJpZGdlIGNyZWF0aW9uIGNhbGwuCj4gCj4gRm9yIGFuYWxvZ2l4LWFueDYzNDUs
IHdoaWNoIHN0b3JlcyB0aGUgcGFuZWwgZm9yIGRpcmVjdCB1c2UsIHJlbGVhc2UKPiB0aGUgcmVm
ZXJlbmNlIGluIHRoZSBpMmMgcmVtb3ZlIHBhdGguCj4gCj4gRm9yIHBsYXRmb3JtIGRyaXZlcnMg
dXNpbmcgYW5hbG9naXhfZHBfY29yZSB3aXRoIGEgY29tcG9uZW50IGxpZmVjeWNsZQo+IChleHlu
b3NfZHAsIHJvY2tjaGlwIGFuYWxvZ2l4X2RwKSwgcmVsZWFzZSB0aGUgbG9va3VwIHJlZmVyZW5j
ZSBpbiB0aGUKPiBwbGF0Zm9ybSByZW1vdmUoKSBmdW5jdGlvbi4gVGhlIHBhbmVsX2JyaWRnZSBj
cmVhdGVkIGR1cmluZyBiaW5kKCkgaG9sZHMKPiBhIHNlcGFyYXRlIHJlZmVyZW5jZSB0aGF0IGRl
dm0gY2xlYW51cCByZWxlYXNlcyBhZnRlciByZW1vdmUoKSByZXR1cm5zLgo+IAo+IEFsc28gZml4
IGRldm1fZHJtX29mX2dldF9icmlkZ2UoKSBhbmQgZHJtbV9vZl9nZXRfYnJpZGdlKCkgaW4KPiBi
cmlkZ2UvcGFuZWwuYyBpdHNlbGY6IGJvdGggY2FsbCBkcm1fb2ZfZmluZF9wYW5lbF9vcl9icmlk
Z2UoKSBhbmQKPiB0aGVuIHBhc3MgdGhlIHBhbmVsIHRvIGRldm0vZHJtbV9wYW5lbF9icmlkZ2Vf
YWRkKCksIHdoaWNoIGFjcXVpcmVzCj4gaXRzIG93biByZWZlcmVuY2UgdmlhIGRybV9wYW5lbF9i
cmlkZ2VfYWRkX3R5cGVkKCkuIFRoZSBsb29rdXAKPiByZWZlcmVuY2Ugd2FzIG5ldmVyIHJlbGVh
c2VkOyBhZGQgZHJtX3BhbmVsX3B1dCgpIGFmdGVyIGVhY2ggYnJpZGdlCj4gY3JlYXRpb24gY2Fs
bC4KPiAKPiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS1vcHVzLTQtNgo+IFNpZ25lZC1vZmYt
Ynk6IEFsYmVydCBFc3RldmUgPGFlc3RldmVAcmVkaGF0LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeC1hbng2MzQ1LmMgfCAgMyArKysKPiAgZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9wYW5lbC5jICAgICAgICAgICAgICAgICAgICAgfCAgOCArKysr
KystLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX29mLmMgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAzICsrLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX3BhbmVsLmMgICAgICAgICAgICAgICAg
ICAgICAgICB8IDEyICsrKysrKysrLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZXh5bm9zL2V4eW5v
c19kcC5jICAgICAgICAgICAgICAgICB8IDEwICsrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJt
L2V4eW5vcy9leHlub3NfZHJtX2RwaS5jICAgICAgICAgICAgfCAgMyArKysKPiAgZHJpdmVycy9n
cHUvZHJtL2ZzbC1kY3UvZnNsX2RjdV9kcm1fcmdiLmMgICAgICAgICAgfCAxOCArKysrKysrKysr
KysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2xvZ2ljdmMvbG9naWN2Y19pbnRlcmZhY2UuYyAg
ICAgICAgfCAxMiArKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2FuYWxv
Z2l4X2RwLXJvY2tjaGlwLmMgICAgfCAxMSArKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0v
c3RpL3N0aV9kdm8uYyAgICAgICAgICAgICAgICAgICAgICB8ICAzICsrKwo+ICBkcml2ZXJzL2dw
dS9kcm0vc3RtL2x2ZHMuYyAgICAgICAgICAgICAgICAgICAgICAgICB8ICAzICsrKwo+ICBkcml2
ZXJzL2dwdS9kcm0vc3VuNGkvc3VuNGlfbHZkcy5jICAgICAgICAgICAgICAgICB8IDEzICsrKysr
KysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX3JnYi5jICAgICAgICAgICAg
ICAgICAgfCAxMyArKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW42aV9t
aXBpX2RzaS5jICAgICAgICAgICAgIHwgIDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL3RlZ3JhL2Rz
aS5jICAgICAgICAgICAgICAgICAgICAgICAgfCAgMSArCj4gIGRyaXZlcnMvZ3B1L2RybS90ZWdy
YS9vdXRwdXQuYyAgICAgICAgICAgICAgICAgICAgIHwgIDMgKysrCj4gIDE2IGZpbGVzIGNoYW5n
ZWQsIDExMSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IC4uLgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vdGVncmEvZHNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGVncmEv
ZHNpLmMKPiBpbmRleCA3ZjI1YzUwNjIxYzk0Li41N2EwMTZmNDc0MzRkIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS90ZWdyYS9kc2kuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS90ZWdy
YS9kc2kuYwo+IEBAIC0xNTE2LDYgKzE1MTYsNyBAQCBzdGF0aWMgaW50IHRlZ3JhX2RzaV9ob3N0
X2RldGFjaChzdHJ1Y3QgbWlwaV9kc2lfaG9zdCAqaG9zdCwKPiAgCXN0cnVjdCB0ZWdyYV9vdXRw
dXQgKm91dHB1dCA9ICZkc2ktPm91dHB1dDsKPiAgCj4gIAlpZiAob3V0cHV0LT5wYW5lbCAmJiAm
ZGV2aWNlLT5kZXYgPT0gb3V0cHV0LT5wYW5lbC0+ZGV2KSB7Cj4gKwkJZHJtX3BhbmVsX3B1dChv
dXRwdXQtPnBhbmVsKTsKPiAgCQlvdXRwdXQtPnBhbmVsID0gTlVMTDsKPiAgCj4gIAkJaWYgKG91
dHB1dC0+Y29ubmVjdG9yLmRldikKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3RlZ3Jh
L291dHB1dC5jIGIvZHJpdmVycy9ncHUvZHJtL3RlZ3JhL291dHB1dC5jCj4gaW5kZXggNDllNGY2
M2E1NTUwZC4uOTBkYjM5ZGJkZDMzMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdGVn
cmEvb3V0cHV0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vdGVncmEvb3V0cHV0LmMKPiBAQCAt
MTk1LDYgKzE5NSw5IEBAIGludCB0ZWdyYV9vdXRwdXRfcHJvYmUoc3RydWN0IHRlZ3JhX291dHB1
dCAqb3V0cHV0KQo+ICAKPiAgdm9pZCB0ZWdyYV9vdXRwdXRfcmVtb3ZlKHN0cnVjdCB0ZWdyYV9v
dXRwdXQgKm91dHB1dCkKPiAgewo+ICsJaWYgKG91dHB1dC0+cGFuZWwpCj4gKwkJZHJtX3BhbmVs
X3B1dChvdXRwdXQtPnBhbmVsKTsKPiArCj4gIAlpZiAob3V0cHV0LT5ocGRfZ3BpbykKPiAgCQlm
cmVlX2lycShvdXRwdXQtPmhwZF9pcnEsIG91dHB1dCk7Cj4gIAo+IAoKdGVncmFfb3V0cHV0X3By
b2JlJ3MgZXJyb3IgY2xlYW51cCBwYXRocyBuZWVkIHRvIGJlIHVwZGF0ZWQgdG8gY2xlYW4gdXAK
dGhlIHJlZmNvdW50LiBBbHNvLCBpdCBjYW4gdGVjaG5pY2FsbHkgY2FsbCBkcm1fb2ZfZmluZF9w
YW5lbF9vcl9icmlkZ2UKYW5kIHRoZW4gb3ZlcndyaXRlIHRoYXQgdmFsdWUgd2l0aCBvZl9kcm1f
ZmluZF9wYW5lbC4gV2hpbGUgdGhlcmUncwphbHJlYWR5IGEgV0FSTl9PTiBmb3IgdGhhdCBjYXNl
LCBJIHRoaW5rIGl0IHdvdWxkIGJlIGdvb2QgdG8gZml4IHRoZQpyZWZjb3VudGluZyB0aGVyZSBh
cyB3ZWxsIGZvciBjb25zaXN0ZW5jeS4KCkFzIGEgbm90ZSwgdGhlIHRlZ3JhLWRzaSBjb2RlIGFs
c28gdXNlcyB0ZWdyYV9vdXRwdXQgYW5kIGNhbiBvdmVyd3JpdGUKdGhlIHBhbmVsIGZpZWxkIHdp
dGggaXRzIG93biAtLSBidXQgaW4gdGhvc2UgY2FzZXMgdGVncmFfb3V0cHV0IHNob3VsZApuZXZl
ciBwb3B1bGF0ZSB0aGUgcGFuZWwgYW5kIHdlJ3ZlIGJlZW4gdGFsa2luZyBhYm91dCByZW1vdmlu
ZyB0aGF0CmNvZGUgcGF0aCBhbnl3YXksIHNvIHRoZSBkc2kgY29kZSBjYW4gY29udGludWUgdG8g
YXNzdW1lIHRoYXQKdGVncmFfb3V0cHV0X3Byb2JlIGRvZXNuJ3QgcG9wdWxhdGUgYSBwYW5lbC4K
CkNoZWVycwpNaWtrbwoKPiAtLSAKPiAyLjU0LjAKPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
