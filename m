Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21FC2C352A1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Dec 2022 11:11:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AYDYkxf/f7FiGxxN+etHqFB5szC8hN/B9clkFezcgXQ=; b=SognXYUWPs0ZEB1g70OamwVLeJ
	BDI3ofcr9LpAF9bvkiSgihi5L8Pcfr0xdm9Ta60n4i9HK1q0B09X4xDVEVpE+zJyqZ49pO0HKCYsR
	vl6KN5zwvj85EWIN59bnUD7S5+rZ0d0sF6u3WnvDz9WGt0sZ08qBt4SEWB30FQhk5RLHXBnAmMsEU
	e0Yb4j0v/0ulGWuQrNtDLtfuHOyDwfl00AYy0Isnyh/foTU/RV8L8EyemqAREQaLYZCzWUL7vdzkn
	nrlWYQzUtulNybYxLaUOVFfEfj8iL+/gotDLd6vZ9tUnjSmGZ7rUhje2ZD0AvIGsIQocP9MHvAId2
	4CQVieug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2VrK-008DKy-W0; Tue, 06 Dec 2022 11:11:35 +0000
Received: from mail-db3eur04on0622.outbound.protection.outlook.com ([2a01:111:f400:fe0c::622] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Vr5-008CsP-78; Tue, 06 Dec 2022 11:11:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=apd4RdPcMP1Z6qeVNFR9vleLtdbf7ncrNll4I/rKgCJucSQ5wtGu3mQp4Lw/nPWL/yfPwgWPTI0NvWsocMn6VGuTGE3fVBstQ2CEA50gsitA5NpQH3eTbBW2zPy/9Hqy/O679tw/n6Dlr8+K5Xjfg4BBhbHESywDkK+UncTobP/pMfrOuUBE1nl62bvFI2Ym5YssGlxeI8ncXT5ARwKFa3RA0DU0D63rbsZ0a5//OqoXa5etbaBDrYDd8GZmubxnB8gQjoPkHv3F55EnGdVq/qZZdvC9NstFshgTNW9cdVAQNL4SmdCQm6GYDZ1JLRIyPlx7qLxB1kVawq1AMQjfEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G9JxxRpT5ZjSIIGphlXLZuN0R4MVAgo2M31KkD+TE6Y=;
 b=RNfqfTZ/M6J3gE1QGXs8s8Y1NJFugCkhS9StOy09FUyPcDyO7DWOzL0nKpAC15/jf4aS/eQamQo+KfDp/u0L1pA5N6HaZhw5tUWQfQSW7PM4Bh8WBbE4ybIloK8hvPfLKJCiIiOzKEUefINM79R/jqXe76o6CwpVTghVgC1NxX+OYkPi7YKWkAyBgxCphCHS0MCA7JTcX6CUIXRaKN7Y7HbcSycRUoX7yIhSw87vc5Ic/qIY39xexpeS3nthaDPhWxns5p+asczN07Ah3+xdv7xSaMA4fm/pOIYMTG4S9sG2IuAT9whtfNI/4TxvqcaCGDm8dBhyvI63/o/5HuFwjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=G9JxxRpT5ZjSIIGphlXLZuN0R4MVAgo2M31KkD+TE6Y=;
 b=OSRWFDpBjiDfTyt3Fg7sFH3pZLrkBCSOt6MYZw86ixYDjk6B3wFHrpIDLZM5SDRwLvXsuZyPtWAoCpDHydD4LLODkaP80AAvOuMvBHL8hkOzMkLZGElZBfNI9wXga/t096feGKTmQnh8V9YwylyaCEXHvbrr+Et+KpPCS1AIDea7cgqoLr+U84VZjT+fjsnle1K70DPBQURGEwzb0ET91Jh0WL0dFGgvdfTyrWka4JwNmCM2T1CcW6QLihCBEK5LggofdpIYn2rHl2U7yTZnsMG1N5D6c5X7X+QpIkpkJXRLypGFd6oIezpBBhh19tzk1TrKSm9uTD3S22YR5RrbjA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB8782.eurprd04.prod.outlook.com (2603:10a6:102:20d::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.8; Tue, 6 Dec
 2022 11:11:10 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6%6]) with mapi id 15.20.5880.014; Tue, 6 Dec 2022
 11:11:10 +0000
Message-ID: <cdfb3f44-4400-1386-42cb-0fb7b30e45db@theobroma-systems.com>
Date: Tue, 6 Dec 2022 12:11:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 6/9] arm64: dts: allwinner: fix touchscreen reset GPIO
 polarity
Content-Language: en-US
To: Samuel Holland <samuel@sholland.org>,
 Quentin Schulz <foss+kernel@0leil.net>
Cc: linux-input@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Bastien Nocera <hadess@hadess.net>,
 =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Angus Ainslie <angus@akkea.ca>, Ondrej Jirman <megous@megous.com>,
 Icenowy Zheng <icenowy@aosc.io>, Andy Gross <agross@kernel.org>,
 Aleksei Mamlin <mamlinav@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 David Jander <david@protonic.nl>,
 Frieder Schrempf <frieder.schrempf@kontron.de>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Shawn Guo <shawnguo@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Lukasz Majewski <lukma@denx.de>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
 Chen-Yu Tsai <wens@csie.org>, Michael Riesch
 <michael.riesch@wolfvision.net>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, Jagan Teki
 <jagan@amarulasolutions.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
 <20221103-upstream-goodix-reset-v3-6-0975809eb183@theobroma-systems.com>
 <a0c767d5-eb55-3479-c4bc-1029809027f5@sholland.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <a0c767d5-eb55-3479-c4bc-1029809027f5@sholland.org>
X-ClientProxiedBy: FR2P281CA0185.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:9f::18) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB8782:EE_
X-MS-Office365-Filtering-Correlation-Id: 2350755d-186f-424e-4132-08dad77a93a4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	InTMHXK/3YCgTEtNZoYwzxu+ubsusGgyicnm4kK9cra5L7Qn8YAs8Y1iHC99nya1vUqQhp8ldGspvrdBYohPz4TRA0p/Hqj0QoNo6RNzEgnjt/5Zff+TMuRPWdpifj+L2cvFt6WOJn502KQzoQnQsCgrjiF/NBdcHZygwBMQ9yoDXKN83dMyS/SQjSjMX7ITqhhHvLmGOgBjgIuw9rpR74NpU/Ir7SiOw7EnmWS4xYkjyDWcbjayf1+nuYWq8WtlU95mFrxTedHVgL6fFLTuOQ73Eew6+4rBiwrA0xB8gCkAKKrLnuZq16Qp6xgXgDeeXHXKukM63EDCs5LgFFr74KPV/LFJODyBf/UZtee+5gTVAwMR9Oro1pjq2EUoH2gTynZICbKDHJvCG2++ui/ZDfnW9nt4SESGUwDqVi54sTHrmFjjpw5KEMtmTUg7dsimRYi7cyX3mVSEP4ODFnOj7LEVZp4CEwjOcu0oRNRiFId2zwcbOUWCBP6yN4kkqOx+qrWxHvprXsas+ngO5vC1UVlP++c6DB7ED2BsCfhRR0rpQt5IdjVhF5dbtWd0+y6tQ6AzIvjcNBxdk0ojE7PVMtjjxzjNqjaozE5++2vCq35qgwmpj45yhhNRL0ZxUmVdBclVKqMybpBwahPeLnh6VlIM9fCSqao9TC5iEqcTBuNxGAGzwzSxnAsVvJhUbOxYH1FJ2iFfMVwVlobgDJK+HLcJNUoz6rxesO73C19k1no58Lgfr0b2PCF2NvahU/MIJBYCzTnhPuEfizyUxObUew==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(136003)(376002)(346002)(366004)(396003)(39850400004)(451199015)(36756003)(31686004)(7416002)(38100700002)(5660300002)(86362001)(31696002)(8936002)(2906002)(44832011)(41300700001)(4326008)(7406005)(83380400001)(478600001)(66556008)(6486002)(54906003)(66476007)(2616005)(110136005)(316002)(66946007)(8676002)(6666004)(53546011)(186003)(26005)(6512007)(6506007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?Z1c4Y3lMMDFLN2RSTjVKdkQ0K1F0Y2oyekxZUTdaeXQ5VGVqOXdsbXlUUWkr?=
 =?utf-8?B?NDZWTnd3clIzelBBOVVlOVM2KzkyRTlITkhrUmpLeFB5eUZRYkczMnNFTFk5?=
 =?utf-8?B?UTVaTWlNemtyNXBLakQvaFEwbC9HWTlRTHpTM0pKZzZOL3dxUHUzZEZjcFVQ?=
 =?utf-8?B?bzA5STFLS0lGMDdlTkpNOWgxbnRWcEt1QUdEZndod2ZLWEtOaTVjL2FzZUd6?=
 =?utf-8?B?MHQwUERPT0lWSE9tb3ZpWlJOM3VZdG4yaVFoSGsyckdKYzF6ZFBjbkhLL1p2?=
 =?utf-8?B?VlFzcXJZMHdrb21aaURGSlRtWWZSWVNaVkp4UVpCL2hUYTBYT3V0Ump4YWtl?=
 =?utf-8?B?Q0JNNFBadWZvNzZEdnp4TWtlOVh5bVFSWFNlWXVqNDFlYWNJZXptY2MwVDRG?=
 =?utf-8?B?Y2hRZFUrcFpXY2NnRFpZbGVJSEJrUkJDTTI2cHdYTzVGdzRFV0lGbkdIY1Qy?=
 =?utf-8?B?VHZ3anVvWWVmaGVNdTVlSEtCa291bDJtTS9naUdoUDlpc21rTm1nejRwOCtP?=
 =?utf-8?B?d1ZEQ21lZFdVOGNadHlQYW1LR1FqSlNUMnNEOVMrQzRzenl1K2Y5YTl4ZENK?=
 =?utf-8?B?bEd5aXVRWnR0VjQ3NFpwQW51YUE3NDFwaytlR3FIQ21PWHFYajVJc2xRZVcv?=
 =?utf-8?B?OHZra2x2TFFxQkZtSkRpdVJKeGVJVnQ3cmd6LzhGZytSMlZCZUp4VGIvSmVn?=
 =?utf-8?B?aEI3N1VrOHhvRVkxTHE3Q0xXalZkVkhZMnptd3d4bVpxbE5SS1ZpU0dxYkhO?=
 =?utf-8?B?Z1UxLytoa1VLcmdEY015QXpVYTJKWnBGRFBnU1JwcEpDamMzZVlJZHdwT1Bx?=
 =?utf-8?B?LzV4VHhIQWFTc0hvZi9WeDN4TXQ4NmFCTENDSjJkNi9PWTk1aWZDVVNyemtt?=
 =?utf-8?B?b0xIQ3ZvdWlsdVVLY0YwakNjV2UrR091cE94a3hNYWN2eXlERXFOdFR3d1JW?=
 =?utf-8?B?dDdVRlVadXZvSXdEQ1p2andqUDNkNkd4czI2YUh4VlVmWlQwN1prMnZYWXIv?=
 =?utf-8?B?N3J6cytoeVIzeHZsL25qQVZTZ1hEdHgwYmU3bFBiT2dSL0NtOFpST1RJQkVE?=
 =?utf-8?B?RHlZRTJSYUhEa3diQm1hVHhGSjdzRTdkMzkzTEZ3UExwVkUyWHJpK2JIZHBa?=
 =?utf-8?B?d2hEOFBQaVl6VlI4MXM5RXVBbFVwRnlwdmlCWUozTTZaZGpSUUtPeFFVcWpG?=
 =?utf-8?B?anpOeDVHVTF1LzZnVDMwdnArTktjTHZSMEx1WVNkbUxiTUEzYkhpclFiQnQ1?=
 =?utf-8?B?UlV1UllyTWJrWFFOYXQ4L1lZcTdsRkx4L3hIWlhsemE0NmhpcVBoTmxlZ0dj?=
 =?utf-8?B?Zm8vM2NFRy9TZVJ5TmFKQzRMZFVVbnZ2YWhUdmttMVNjOWYrMFYxR3NiYlhS?=
 =?utf-8?B?SEtNLzV5R0w1WW5PYllEaVJUSEI1QU9MNGFvNVBrUndBSmJLQzdMRDFDa2hB?=
 =?utf-8?B?QnNOZ3RQczFoM2IzSm5KNWROR2pwODFCNmJ6SWM3ZGVVNTlQeGFzSG1vY0E2?=
 =?utf-8?B?M1M1Ry94cDNuWGdrSWp4SlgxRFZmYks0SmkxeHU2aEtsQ2tQT3BhaVRQOUZp?=
 =?utf-8?B?cnJHYWIxdVdmMWV1Wk9PUWN6NE1JeTlOOUxRa1hSc016c3diS2pLdTVhRGZx?=
 =?utf-8?B?NUtaT3BtR1BzenNZNUpSMEpvdXhkT1VYK2tYUjVRL0RHbFN5d29IOFd1Yklx?=
 =?utf-8?B?ZCtSSEdnbUNuMElERFpNbjNjaC9hU3k3dUtmTmVFL0RTMkNnTHpvSlc3S0dq?=
 =?utf-8?B?QXEvWUVvcEJETFF2WEJwOXBJMkRmN2Qxck9lTURqcTFueUo5bWoyaTdqRHlH?=
 =?utf-8?B?UHd6SFlCQmVwM1J2eEg1RVhKZjZHSm5XN052SWFzb0phaWZxZDM2c1BtTnpy?=
 =?utf-8?B?YXRra05xQWF3L0JSZHFsbmtXcTZZN0FiWHhLVUJZUDFzWkkwUVJDeThuc3Iz?=
 =?utf-8?B?RlRUOFdlY3pTbVZYa1dFYTg4aTE0cFFVTHZaM0pxUDVwZUJQbVNOcm5wa1hO?=
 =?utf-8?B?ZFFSME9kb1ZOaVZnb3VMb2lCNU5wUmppVHhObmhjMzYyVHp6WmphZkphSWpM?=
 =?utf-8?B?d0duTy9yeW1uQm11bklCMVI2L0RhV2RQZ2JnVlBpaWtCT1VaYWtIM1ZRUXdt?=
 =?utf-8?B?SE9PUHZrYnZXTEpPVWFMTUttK3Ewam8rQTl1WksvK3ZhaTRyenZBREdSQ3VZ?=
 =?utf-8?Q?qNpVdXyRlIeMGoygxcS9icA=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2350755d-186f-424e-4132-08dad77a93a4
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2022 11:11:10.7157
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dNRvWMEsLAtxPQRO+hbxmMA2rmQb0iupD/UqJ+5tURePBEcAU7Y3W6Bmy7tEnPcBgPMYgeagLPqbA37nXVpTExqpdqWSbYKbRwboWSDNQHle0M54s+mxEMhYgz6K3eLm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB8782
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_031119_305560_E93D2271 
X-CRM114-Status: GOOD (  24.45  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2FtdWVsLAoKT24gMTIvNi8yMiAwMToyNiwgU2FtdWVsIEhvbGxhbmQgd3JvdGU6Cj4gSGkg
UXVlbnRpbiwKPiAKPiBPbiAxMi81LzIyIDA3OjQwLCBRdWVudGluIFNjaHVseiB3cm90ZToKPj4g
RnJvbTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNv
bT4KPj4KPj4gVGhlIHJlc2V0IGxpbmUgaXMgYWN0aXZlIGxvdyBmb3IgdGhlIEdvb2RpeCB0b3Vj
aHNjcmVlbiBjb250cm9sbGVyIHNvCj4+IGxldCdzIGZpeCB0aGUgcG9sYXJpdHkgaW4gdGhlIERl
dmljZSBUcmVlIG5vZGUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVu
dGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4+IC0tLQo+PiAgIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQtYW1hcnVsYS1yZWxpYy5kdHMgICAgICAgfCAy
ICstCj4+ICAgYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIvc3VuNTBpLWE2NC1vY2Vhbmlj
LTUyMDUtNWlubWZkLmR0cyB8IDIgKy0KPj4gICBhcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5l
ci9zdW41MGktYTY0LXBpbmVwaG9uZS5kdHNpICAgICAgICAgIHwgMiArLQo+PiAgIGFyY2gvYXJt
NjQvYm9vdC9kdHMvYWxsd2lubmVyL3N1bjUwaS1hNjQtcGluZXRhYi5kdHMgICAgICAgICAgICAg
fCAyICstCj4+ICAgNCBmaWxlcyBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25z
KC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9zdW41
MGktYTY0LWFtYXJ1bGEtcmVsaWMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9hbGx3aW5uZXIv
c3VuNTBpLWE2NC1hbWFydWxhLXJlbGljLmR0cwo+PiBpbmRleCA4MjMzNTgyZjYyODgxLi41ZmQ1
ODEwMzdkOTg3IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL2FsbHdpbm5lci9z
dW41MGktYTY0LWFtYXJ1bGEtcmVsaWMuZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
YWxsd2lubmVyL3N1bjUwaS1hNjQtYW1hcnVsYS1yZWxpYy5kdHMKPj4gQEAgLTEyMiw3ICsxMjIs
NyBAQCB0b3VjaHNjcmVlbkA1ZCB7Cj4+ICAgCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZwaW8+Owo+
PiAgIAkJaW50ZXJydXB0cyA9IDw3IDQgSVJRX1RZUEVfRURHRV9GQUxMSU5HPjsKPj4gICAJCWly
cS1ncGlvcyA9IDwmcGlvIDcgNCBHUElPX0FDVElWRV9ISUdIPjsJLyogQ1RQLUlOVDogUEg0ICov
Cj4+IC0JCXJlc2V0LWdwaW9zID0gPCZwaW8gNyA4IEdQSU9fQUNUSVZFX0hJR0g+OwkvKiBDVFAt
UlNUOiBQSDggKi8KPj4gKwkJcmVzZXQtZ3Bpb3MgPSA8JnBpbyA3IDggR1BJT19BQ1RJVkVfTE9X
PjsJLyogQ1RQLVJTVDogUEg4ICovCj4gCj4gWW91IGFyZSBjaGFuZ2luZyB0aGUgRFQgYmluZGlu
ZyBoZXJlLCBpbiBhIHdheSB0aGF0IGJyZWFrcyBiYWNrd2FyZAo+IGNvbXBhdGliaWxpdHkgd2l0
aCBleGlzdGluZyBkZXZpY2V0cmVlcy4gTkFDSy4KPiAKClllcy4KClNvbWUgYm9hcmRzIHdpbGwg
Z2V0IHRoZWlyIERUIGJpbmRpbmcgYnJva2VuLCB0aGVyZSdzIG5vIHdheSBhcm91bmQgaXQgCnNh
ZGx5LgoKV2Uga25vdyBhbHJlYWR5IHRoYXQgdGhlIFBSVDhNTSBEVCBiaW5kaW5nIHdhcyB3cml0
dGVuIHdpdGggYSBkaWZmZXJlbnQgCnVuZGVyc3RhbmRpbmcgdGhhbiBmb3Igb3RoZXIgYm9hcmRz
LiBUaGVyZSBhcmUgc29tZSBib2FyZCBzY2hlbWF0aWNzIEkgCmRvbid0IGhhdmUgYWNjZXNzIHRv
IHNvIG1heWJlIHRoZSBzYW1lIGFwcGxpZXMgdG8gdGhvc2UuCgpBIHJlbWluZGVyIHRoYXQgZXZl
biBpZiB5b3UgZ290IHlvdXIgcG9sYXJpdHkgd3JvbmcsIGl0IGNvdWxkIHN0aWxsIHdvcmsgCmlu
IHNvbWUgY2FzZXMgKHRpbWluZ3MgcmlnaHQgdG9kYXkgYnV0IG5vdGhpbmcgZ3VhcmFudGVlZCBp
dCdsbCBzdGF5IAp0aGlzIHdheSBmb3JldmVyKS4KCndpdGggdGhlIGN1cnJlbnQgZHJpdmVyLCB3
aGF0IEkgYXNzdW1lIHdlIHNob3VsZCBnZXQgZm9yIGFuICJpbmNvcnJlY3QiIApwb2xhcml0eSAo
d2l0aCBHUElPX0FDVElWRV9MT1cpIGlzOgogICAgICAgICAgICAgX19fX19fX19fX19fX19fX19f
XwpJTlQgX19fX19fX3wgICAgICAgICAgICAgICAgICAgfF9fX19fX19fX19fCgogICAgIF9fX19f
X19fX19fXyAgICAgICAgICAgX19fX19fX19fX19fX19fX19fClJTVCAgICAgICAgICAgICB8X19f
X19fX19ffAoKICAgIF4KICAgIExfXyBwdWxsLXVwIG9uIFJTVCBzbyBoaWdoIGJ5IGRlZmF1bHQK
ICAgICAgICAgXgogICAgICAgICBMX19fIGdwaW9kX2RpcmVjdGlvbl9vdXRwdXQoMCkgKGRlYXNz
ZXJ0IEdQSU8gYWN0aXZlLWxvdywgc28gaGlnaCkKICAgICAgICAgICAgXgogICAgICAgICAgICBM
X19fXyBnb29kaXhfaXJxX2RpcmVjdGlvbl9vdXRwdXQKICAgICAgICAgICAgICAgICBeCiAgICAg
ICAgICAgICAgICAgTF9fXyBncGlvZF9kaXJlY3Rpb25fb3V0cHV0KDEpIChhc3NlcnQgR1BJTyBh
Y3RpdmUtbG93LCAKc28gbG93KQogICAgICAgICAgICAgICAgICAgICAgICAgICBeCiAgICAgICAg
ICAgICAgICAgICAgICAgICAgIExfX19fIGdwaW9kX2RpcmVjdGlvbl9pbnB1dCgpIChmbG9hdGlu
ZywgCnB1bGwtdXAgb24gUlNUIHNvIGhpZ2gpCgpUaGlzIHdvcmtzIGJlY2F1c2Ugb2YgdGhlIHB1
bGwtdXAgb24gUlNUIGFuZCB0aGF0IHdoYXQgbWF0dGVycyBpcyB0aGF0IAp0aGUgSU5UIGxhbmUg
aXMgY29uZmlndXJlZCAxMDDCtXMgYmVmb3JlIGEgcmlzaW5nIGVkZ2Ugb24gUlNUIGxpbmUgKGZv
ciAKYXQgbGVhc3QgNW1zKS4gSG93ZXZlciwgdGhlIGluaXQgc2VxdWVuY2UgaXMgbm90IHByb3Bl
cmx5IGZvbGxvd2VkIGFuZCAKbWlnaHQgZ2V0IGJyb2tlbiBpbiB0aGUgZnV0dXJlIHNpbmNlIGl0
IGlzIG5vdCBzb21ldGhpbmcgdGhhdCB3ZSAKZXhwbGljaXRseSBzdXBwb3J0LgoKV2l0aCB0aGUg
cHJvcG9zZWQgcGF0Y2g6CiAgICAgICAgICAgICBfX19fX19fX19fX19fX19fX19fCklOVCBfX19f
X19ffCAgICAgICAgICAgICAgICAgICB8X19fX19fX19fX18KCiAgICAgX19fXyAgICAgICAgIF9f
X19fX19fX19fX19fX19fXwpSU1QgICAgIHxfX19fX19ffAoKICAgIF4KICAgIExfXyBwdWxsLXVw
IG9uIFJTVCBzbyBoaWdoIGJ5IGRlZmF1bHQKICAgICAgICAgXgogICAgICAgICBMX19fIGdwaW9k
X2RpcmVjdGlvbl9vdXRwdXQoMSkgKGFzc2VydCBHUElPIGFjdGl2ZS1sb3csIHNvIGxvdykKICAg
ICAgICAgICAgXgogICAgICAgICAgICBMX19fXyBnb29kaXhfaXJxX2RpcmVjdGlvbl9vdXRwdXQK
ICAgICAgICAgICAgICAgICBeCiAgICAgICAgICAgICAgICAgTF9fXyBncGlvZF9kaXJlY3Rpb25f
b3V0cHV0KDEpIChkZWFzc2VydCBHUElPIAphY3RpdmUtbG93LCBzbyBoaWdoKQogICAgICAgICAg
ICAgICAgICAgICAgICAgICBeCiAgICAgICAgICAgICAgICAgICAgICAgICAgIExfX19fIGdwaW9k
X2RpcmVjdGlvbl9pbnB1dCgpIChmbG9hdGluZywgCnB1bGwtdXAgb24gUlNUIHNvIGhpZ2gpCgpU
aGlzIHNob3VsZCB3b3JrIHRvbyBhbmQgZG9lcyBub3QgcmVseSBvbiBzb21lIHNpZGUgZWZmZWN0
cy90aW1pbmdzIGFuZCAKc2hvdWxkIGJlIGZ1dHVyZS1wcm9vZi4KClRoZSBvdGhlciBvcHRpb24g
d291bGQgYmUgdG8gb25seSBmaXgga25vd24gImJyb2tlbiIgYm9hcmRzIChlLmcuIApQUlQ4TU0s
IG1heWJlIG90aGVycykgYW5kIHNwZWNpZnkgaW4gdGhlIERUIGJpbmRpbmcgZG9jdW1lbnRhdGlv
biB0aGF0IAp0aGUgcmVzZXQtZ3Bpb3MgcG9sYXJpdHkgaXMgImludmVydGVkIiAodGhhdCBpcywg
dGhlIHJlc2V0IGlzIGFzc2VydGVkIAp3aGVuIHRoZSByZXNldC1ncGlvcyBhcyBzcGVjaWZpZWQg
aW4gdGhlIERUIGlzIGRlYXNzZXJ0ZWQpLiBUaGlzIG1ha2VzIAp0aGUgRFQgYmluZGluZyBkb2N1
bWVudGF0aW9uICoqaW1wbGVtZW50YXRpb24gc3BlY2lmaWMqKiB3aGljaCBpcyAKZXZlcnl0aGlu
ZyB0aGUgRFQgYmluZGluZyBpcyB0cnlpbmcgdG8gYXZvaWQuCgpTb21ldGhpbmcgbmVlZHMgdG8g
YmUgZG9uZSwgYW5kIG5vIHNvbHV0aW9uIHdpbGwgbWFrZSBldmVyeW9uZSBoYXBweS4KCkNoZWVy
cywKUXVlbnRpbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
