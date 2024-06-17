Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECF32C27C53
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 03:06:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aVV8OuG4qdDBWCAWhGehwu+qzMF4exRRAbGprKmzMTY=; b=bkmdprVa0wWVT2
	y8/YFPkMGWlF0VSWNLtFhuIxA288BhtjqWBTc11tjrOIFrmSB3qHxWjfu19XkHzyWKsOLLTtZW7TT
	RZ2GvCnEKR6rQeMkHW+RMnoEK5vZwCbQmwVff+yZ17xtUV59Avikxif9Q+kRUaX37bLgzJ2JSufM3
	oAbAPEn24kSfcC/EZxgQJVcV7j7I3pcqVZ+zP98y3O24o8gy2AsJBMCVaImlC0emw9FzrusVMVGyY
	FeBYaLpHyz9bVuvN8p+Uxd2QUPobLkQnbgkucvRgmxNu8BYWc/73CVFgC9PJCJSFMvsouZkjTvYw6
	Ko1FYoqvec/hAWlJkZjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ2h2-00000008xD6-38BB;
	Mon, 17 Jun 2024 03:06:04 +0000
Received: from mail-sgaapc01on20711.outbound.protection.outlook.com ([2a01:111:f400:feab::711] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ2gz-00000008xAx-25bL;
	Mon, 17 Jun 2024 03:06:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mUIIYFD5PZhAQekHOE7/spSNS7c5O539Ux6+tXI8OoSg9tRONYVWxwvHeCxYpZ6RIIirAtBvq6yvakIkTE5wBE5G9+UZGVE88dsKtujRhKY6cogBKMR7gFBX2l4SVxbOv2IG60jG5HlyZrPKaAt4Y6bIF8Xy8/MrD1hmDfMTKqPZ+TP85jHSUpBzeAwPoCRbWzYUukiNoIJRPmeqkhnukGjQ0EDmv0DBN+kLqXUmC+6WB0v1bP3yB2XBFyHHXTSSXcgOx+88LcV8wgv0+4PGTWJXF5XSzjpXMRQWYIvkwHDHh2mhf6SZH+cjrrtGlSHUeoCVmVu57obkGepkBrWEzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZXiksnxuxOWL0MtLwPNPb1xPZamjLZtc0ZwfJ5zxL/Y=;
 b=Vr48xuypkBNoT3woMsTVcZY6a/5bywH1L40qVjYZHlsLYmiN68LsON60R7/IrUuqbZev3Ga/uQtsCI0lK/CZlyoiKF0mUaB5Ru9Uri3Dc8XOlIlcmoacsc5mtt6bFb8liaKw9ATIbdww1aERFvzBRG/a6j+5RExJLPiFGACRVccG7i1ERWu+uX/ueAIub7USnFEOL9tYAGrcCAWPhmWw5OoQTUHWCOFdqDksRK4o4OfFvIdCNTHmLFQjP1T6b2Fg12TnDLPaT9uGTTLgGz7DHPHApWwZXiV6jLcyjGLrqEqg6ibILq9zTgXngoqlmv2ABBJr7zvkggGlCy51jU3vzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by KL1PR03MB8001.apcprd03.prod.outlook.com (2603:1096:820:fc::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 03:05:48 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7677.029; Mon, 17 Jun 2024
 03:05:47 +0000
From: Jacobe Zang <jacobe.zang@wesion.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: nick@khadas.com,
	efectn@protonmail.com,
	jagan@edgeble.ai,
	dsimic@manjaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jacobe Zang <jacobe.zang@wesion.com>
Subject: [PATCH v1 0/5] arm64: dts: Add board support for Khadas Edge2
Date: Mon, 17 Jun 2024 11:05:32 +0800
Message-Id: <20240617030537.3112356-1-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
X-ClientProxiedBy: SG2PR02CA0038.apcprd02.prod.outlook.com
 (2603:1096:3:18::26) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|KL1PR03MB8001:EE_
X-MS-Office365-Filtering-Correlation-Id: 310c2989-8552-4d43-5682-08dc8e7a6291
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|7416011|376011|52116011|1800799021|38350700011;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ap0wanJYNJWzOQ6m1dfmp7IhF3wUFaciPKBwVEcxp4yjgmVyng/61sl+mLNO?=
 =?us-ascii?Q?asfS9Sx01uSjLUcq1CA1tPL6evirAAa/vw13IobLKS/00Lo9bbtwDOtXSoJL?=
 =?us-ascii?Q?RQW1amd8qkOHIFEITQ/RQHAyrB7jg4kU92JMUM+0Khi1eWT+e67Bno9gDlzA?=
 =?us-ascii?Q?i9mRtMXdyEZrJkbYRI1b1IC2R7rZU2JyhZG63M6aR39v1A6X0uI5buq8IzHi?=
 =?us-ascii?Q?mD5zjD/xL63b0HautJAWVZpYHDSetuOi4aM848xlCobROgUU8l1Cf4Rcq63t?=
 =?us-ascii?Q?0dH4M721HFa5tz1IUcP1EewQpA5q7S15fC57VYeoXEfvw39Jeo60pIGTUYTP?=
 =?us-ascii?Q?nfI6DGfrpl4RzY+6wgi9/4Eef1RSHvIOHWjRD5IuH0xAQeHVJ8BtFX04L/IF?=
 =?us-ascii?Q?pygmVAqcqEVrumSKdEukRxa4hQikl5bkBIrwKrZFDdG0so0v9GMXccLSsErA?=
 =?us-ascii?Q?xXuk1jECepegrukItt3eajmijNMBYjcl3kZgqETNwF6YuBRlx6qv/B2INjkh?=
 =?us-ascii?Q?B2AdO9TPoKjgKEdExrIinjJsfb6IRseXXhQhY60FzU2NZ0Putt00TSttLMAW?=
 =?us-ascii?Q?bsr2kGXs4uzrG3cjyBbA/6ZHDyhbMnNoTwewtHHTBSG/UIdv/R0P74a+JwYS?=
 =?us-ascii?Q?pYM7yDdKslIAsPPbuN5JILXkE88fh+GohBomFxjy8R/FsfN17h758pH7/arD?=
 =?us-ascii?Q?GoCxbtd49EEova6KQ9c8D0Lxr7MBuLJHhtoyLvhFbAz+Pz30mmxC7etEhdWr?=
 =?us-ascii?Q?g1GXcxss/QAMl0wuovkgBtEyBUp4pybZUvhOdQiIH5hCsnukKI4bIiowEFVU?=
 =?us-ascii?Q?AGLAdzEvMB8m4SNyNSq2wbN0SuZSCSrSWSjGhmMbPilcM51csBUk8tp23xMW?=
 =?us-ascii?Q?pHdifNju15DPTRkG67i9/8XmieJAVlFhjcsdvq3FuaWzFzp8bik6YhxW5XGJ?=
 =?us-ascii?Q?TIiGOsTBvEpLMbdlosqpuQTjGibCq09dIdnNP/Ae3oSaRIoxa4X68NSZGe4r?=
 =?us-ascii?Q?kjlTbCuL7GDkjy0SPBy3RfLN8tEuSGt/az/2T4gQjEJFPIGP1ikuFY6LE3A+?=
 =?us-ascii?Q?4wH4/QYakKcGTKLh7A9pSqxcTQKQJq5l1ilj9GLUCdMzSpT3MxBUI/UkBhOa?=
 =?us-ascii?Q?xKhmXNZkf/hpbp/rxCQlRc7vix/Io5TbKg0nj0Q9875kKItSCfCuaJo6APTn?=
 =?us-ascii?Q?+kMG4GH78daYOHrOxJAUYisLl5LPFBvedSaX69rSOeg0a4/ryeKcRHBrsl6R?=
 =?us-ascii?Q?BWBNOy5w/ie91r41QvuM8Z/CwtXliacpk5fuexkYtEEZXMLC86PO6hrh1aM2?=
 =?us-ascii?Q?EQr9ahNjdtC958WHerhygNOL1teGqKnHs20HwrJagWE9mB4nGkbPpeT0dBjJ?=
 =?us-ascii?Q?8zWxcRI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(366013)(7416011)(376011)(52116011)(1800799021)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K/Mui6BYqb6w84AyUrIIxfaIbNquU+T5Zl7V2CncgDzyERQ4sx7dvVOoppIS?=
 =?us-ascii?Q?85SxE7z+QaBHz0qvyk6sBnjNdGL2cLADUWlFCuGUxYB67XLXPjedd99AWUDJ?=
 =?us-ascii?Q?C57T3+xzV1ghmNQahciwUDbPHZ+8/KWncuJ4VJO46e35rygwG92kJj4Mj/zF?=
 =?us-ascii?Q?/2tqkqLWezOc7KGxrdi5mSSPurMZ98UGuD0UzM7FKXVRxRmf0QJit3NU4guN?=
 =?us-ascii?Q?u0PkRtJzyZTlAbSJaiiYq20KVeQHcCu94rItgKDQHZfNEE3ko8brqCBC+A6Y?=
 =?us-ascii?Q?Ww3kEl0Rl3S6EJWz7CDtE8EScqqbsJooxEtYUINdyDKsoKzGZAQmThD0bInF?=
 =?us-ascii?Q?6JZXjbqToevKep+KcoQi3mKWwepi72DIBaEanMVVBlqjIThpGzRMey8+a1y1?=
 =?us-ascii?Q?pDVihNBtBCqHqUxPwR377+TVpxnn5tuHQFvh8kvUXSIrY40dAeEHRoJoBc1o?=
 =?us-ascii?Q?EQhcbdHNuL5GldEf52IM1fUZ6Y0swjIz0z7o63FgURQyEdRmC09ngWFxyITH?=
 =?us-ascii?Q?cxOrbG7cQDuAlq8f/552jkOej62LzfGxRneG1WyYwQo06FSVar4CqibzdKXg?=
 =?us-ascii?Q?6xM7+0j+vBu4BWKg3pWvax4Wo18Ovx7h9pzUfNUeSHcTlev2xTcTNUmIgT61?=
 =?us-ascii?Q?cZRBEXfuyIuOL1QPkw96NLzpjC6mNvzklHmuXj+74tbqEKXPUGNb2bwRQ1j9?=
 =?us-ascii?Q?/kO8LCddJjAwnmxzeaJ1w954peA7AZd4ROU9xgct4KQr9/qj/HUwcUCk5xN2?=
 =?us-ascii?Q?QOrga91fRXyjdEF1V0p2GvtRBb6xbHyc85nZ7WDlSnExn0Rd0ite1moNuUaO?=
 =?us-ascii?Q?M95C1chz71SlvPJOVDRZwOB0LbvYKoODrjSh5fYN0c5K3TNYqincoQELzmDt?=
 =?us-ascii?Q?lE+2IMrzoAdhPb2CVVybWSOe5gaGDT7HiogsE4QM+sj5+aoupbm6KD9ramRo?=
 =?us-ascii?Q?/sRqbnjpn1RSkY/7qxScANVu/GPCbFRoDsw0K1H5GZzljGpaPywTddLVKd1V?=
 =?us-ascii?Q?u6B6yijZjt4/jU4H+UHfnYOD3B2RSmBm1SkqVJkhur5Tp15oBGX7kC6eoES6?=
 =?us-ascii?Q?21mct39m66D6mgtzbOYdED+tzfey6/gQ5JSkLfcwY75TGcaiaGlr1OTR6EBy?=
 =?us-ascii?Q?laelGC4u83wf/Y/HDhPcbKuvxBTtMuKbPD0swStIiOdakiVqijyIXrXjfIcA?=
 =?us-ascii?Q?jCp5+q7Vda8tHlgP20fRn/2LsOw/RJ9znvn9bo9d8YW3DTxUGc4kP6Y/oCmG?=
 =?us-ascii?Q?3fk2dXC5SaiVK9ZlAfA2/JtY/9kmNyDxbme7XeNujS4mQ4tjfx6F12qLKmkr?=
 =?us-ascii?Q?+KZENf+UI3wfFju5QRx1F+Mr8LjGAZ3PtvbDE26K7lIzgrUXRBDWFZW7/epM?=
 =?us-ascii?Q?8ptZJOhokKqHaYAdEtbKCIbNzKtfSnNy+OdpBwvFkrv2Taki4tOeoZr47AvA?=
 =?us-ascii?Q?XSKCODFg1NmyilPVZ2PURP6Q1lcYtd/b3TDbZlxyFRwJ6ZVwR9rvKZlWnMPt?=
 =?us-ascii?Q?xFPMydAH5ImrY9FCpI9UiVGSo6Tzu/WmCu2DgIugfzyBX9nuzjCJpgKGmvkv?=
 =?us-ascii?Q?eH2JBh1+4lies32O7GTo/Ub0AAn4hHf2Y+gr/GCuRViztFuLnvjycEGzgYqS?=
 =?us-ascii?Q?QA=3D=3D?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 310c2989-8552-4d43-5682-08dc8e7a6291
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 03:05:47.2287
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fbRNx4qDcB9H2PFEaQ2kOgSjGewsU7Uk8QwbzLABWb6oNj6rrwLyekMvjbrOhdMdDE7Qncx/vU6C8c8ZCzC0vA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR03MB8001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240616_200601_604699_BA28B4B7 
X-CRM114-Status: UNSURE (   6.11  )
X-CRM114-Notice: Please train this message.
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

This patches add board support as followings:

 - 2x TYPE-C port
 - BCM43438 bluetooth
 - 1x HDMI port
 - AP6275P Wi-Fi module
 - Adjust CPU frequence 
Jacobe Zang (5):
  arm64: dts: rockchip: Add USB-C to Khadas Edge 2
  arm64: dts: rockchip: Add bluetooth rfkill to Khadas Edge2
  arm64: dts: rockchip: Add HDMI & VOP2 to Khadas Edge 2
  arm64: dts: rockchip: Add AP6275P wireless support to Khadas Edge 2
  arm64: dts: rockchip: Add cpufreq support to Khadas Edge2

 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 200 +++++++++++++++++-
 1 file changed, 197 insertions(+), 3 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
