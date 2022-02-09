Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB447C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 08:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRkgc0NChP4C4BiqVh/HyIGJ2B/Y7xbtwiVoebR55Jw=; b=1UuIXCGXN/DxgL
	XhqL4I00swErabxxzB3JpfI6h65IdQfYqJYYezBKD8LJ/GRfUQdxgdaOtuTOHPL80VO4cTkZrfxGn
	WfImFG6zIKd5kEv1XWDdA/R+kGMtncfEH8uZ49FtwimwLZyTjM07fy5RmjjVDi/cM/m10FJ2cGb0t
	fUPaAQx6FDN+Lyuh+xbZ8O6Kkbu/9SSTT1CBGzPgygDnd5+nNxSupjzanKAyYEO1Ze2uI760BC1EV
	o1ZEovcmax624d4aIWdI6BDl/nDtAX/npbhdutlPva21I+qMnLyjEMwTlkz9JbGhfPKbErnDy4YXf
	mjhquAfvy3MJRPGEyK/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHiky-00GkdW-10; Wed, 09 Feb 2022 08:55:20 +0000
Received: from mail-db8eur05on2065.outbound.protection.outlook.com
 ([40.107.20.65] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHihR-00Gitn-9D; Wed, 09 Feb 2022 08:51:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MO2Q209pIFmhRiuiFo9sLdgktjT/CkrpRyplQ9H7xBy83IPJ5jcmqxonId7X9T5wZ9UtBbzH8h+tAB1pNwUfNY0qJz4rlEwPhxYCQxh+fLW4D//VImw4024B1ahu1/LrOSxbQMVHjwW0wKFtt7q3rEXe/4zxcjzPVY22C+s2vJjYI+mA2hxXkM6FA3SEosOgV0HbpEXTjJVgTLJCG82LCcM4ahzVFGoeKyDxxYbEflwg/V1ccmf/Un1VhBzgTq7bYclDQNd0dC41bljNGZ2COx9VUqfBGEQkD0NzJuNnQhJ46MeJ24heQx4oOefgI705di6YbgixwcDd/SyX45NeeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=maYIBthui/wiXVu7QZ+ik0rjmMzwVfPApPwcKGj9fFM=;
 b=e50P5U9wiM3P61yO8JApRYc/1q4Qs0XCvP5EUoqAP9lzemLyQCT7uaMlBYAVoXMGjDxtkletJD9L1MmZ8YSg0Wvmnnuu6aBFt22wk5e7Pvr6kIRcZw/U9slTcr1y7waBALkrVEGdlZi7ZQZ7OoMyp3oXVsEsmvo/+g3SSXJuIGxHkIA6vRfMHBxKSoVq6Rr4dtigv7NU3MZqD1V+CLHIjW3jcUYINh0CC/Rihx2DpBbM8flmDtSEa4RFemr3Ay9Lm/pbQLbiijq4aYr7dDmEdylizbPycqqBfrO5VFLcZSkRUFZ/ZA5scP7nkEQo59vsSyIJ39+2tvLoBb3s69tNaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=maYIBthui/wiXVu7QZ+ik0rjmMzwVfPApPwcKGj9fFM=;
 b=cqogZLP6FU8J74kZJ38aEFDdPuGVIBASVnA2PE/KYjxwR1m4Lvrm0po7UfrutCdsmOTH+TD2tkaNHhOdiyIN6EWOSai2C5+GcuOKYdX9JVkhqsEvbDS/NcP/2hMPSiuM6AkMVpzTW8Cb5yP6gKGR97BHgO77bgTNN9jAAN4rJfo=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com (2603:10a6:3:e1::23)
 by VI1PR08MB2927.eurprd08.prod.outlook.com (2603:10a6:802:21::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Wed, 9 Feb
 2022 08:51:32 +0000
Received: from HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::e14f:197:5001:4c56]) by HE1PR0802MB2426.eurprd08.prod.outlook.com
 ([fe80::e14f:197:5001:4c56%3]) with mapi id 15.20.4951.019; Wed, 9 Feb 2022
 08:51:32 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Alex Bee <knaerzche@gmail.com>, Liang Chen <cl@rock-chips.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v5 5/5] arm64: dts: rockchip: enable the gpu on rk3568-evb1-v10
Date: Wed,  9 Feb 2022 09:51:10 +0100
Message-Id: <20220209085110.3588035-6-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220209085110.3588035-1-michael.riesch@wolfvision.net>
References: <20220209085110.3588035-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0072.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::23) To HE1PR0802MB2426.eurprd08.prod.outlook.com
 (2603:10a6:3:e1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6ccc77f1-d17a-4e81-11da-08d9eba95e9f
X-MS-TrafficTypeDiagnostic: VI1PR08MB2927:EE_
X-Microsoft-Antispam-PRVS: <VI1PR08MB29273E16A2B3C5CDD5B88AB1F22E9@VI1PR08MB2927.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:983;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vRpoZ6AvuZrCSk57BZ7G4HsDvvfjVXISebMsup5l1cECRlKMxS84xwZkI++vRuP3zeuVhV9SD0fsGJ58wH3rtszpl6uua8e19zu8oK5/GgxQuPE5AgI66Rx2XchbJqs5TnclD7JOqZprommm3D9V2nF0yukyUeVoOUud8mX1p03T2jxR9GQBhzJbrK2F9PiPgtP3fMYjel+qKZvB6TdpHLVjiSdk0OOzVmd7n2I4pnklp3gBnPtBGvKo+A/JMxrBjwTrT6ZTGynuEiggd/gcZ5DlGsL4qpmsOFyZ5HGRffkR/8NRfB+AU6AiO/ycScGXN23j/cga6sdglOBVN1tlEzbz8C/EFm0gaLEQ6vjFFoy1Q8lKxCBrzfk4/DcA3QBbeQivGZsUZI2elHkHOOi5iIVlVaaUQ8iFnp1tDFGSM1O9l/ObxplQb4D1GRqGz29HWpstxiUFAagwWtajmuxG9mSGjL6vj1Agv5nrszFrHkupVDh34VFFVAIb4C4Ybze7xiCctp2Bv9sVIPnBIzoxL94Rh/weqnIxhsgCTfQ/BnvMybV0j/WRbB3D7k5bRhMcc/9CNsf3LyBzEAEWlxgyKrzNwNCu/88J8OhDu2iYa+d++HnMzhLvQBYwDONSpS1qAvx5kMRKs49MBiTcThbw8w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0802MB2426.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(54906003)(66556008)(186003)(4326008)(316002)(66476007)(36756003)(6666004)(4744005)(44832011)(8676002)(66946007)(7416002)(5660300002)(52116002)(6506007)(86362001)(2616005)(1076003)(8936002)(6486002)(508600001)(38100700002)(2906002)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sfrW9RsnCDNfJ5liVBbxWzmG22DkKU0+mYVvwu4LrSqmjLsvTdF/WXpxBcJU?=
 =?us-ascii?Q?GILcWCbGjSSRcYB0Y81BWRA15CQjf6hK49mfTRbJf1TCrSfZHyEbBX7Dk4FJ?=
 =?us-ascii?Q?kedwHo6kMm1WBNMKpUuGW/w/lT6aWWmF1vbSc5oVAeVCxib6GpT3Aq4ztsll?=
 =?us-ascii?Q?sSi00JVRgcmk5ep7tyi83zyf9BV2WzGm+oyrzZ1E+WhKwdmhCsIgWVMmvB+Q?=
 =?us-ascii?Q?BKDviZ/XCK3F6LxoUjAjFzpFlP/j5M4a7NhSdG3w9K5QvQZTfwHX4/fN3+Jt?=
 =?us-ascii?Q?ozyaiCtdKntgdFrfrIW5N2JSn+yY3BJzitA+MJYbXHs8QAEfQG76k9NLcMbB?=
 =?us-ascii?Q?W9CcpvB5H9CWvi+aH6XM4DNotsj0XNN5myLHvQa5k0deZ6apAsvx+ga+eb5n?=
 =?us-ascii?Q?AQVJW+hDe2gZLf6FYmxfZ6F/RtEnSvNVK3IhJ3GQCVTnwPYs0HTzxr65/Tob?=
 =?us-ascii?Q?GaXqt4AcZwrGTneQyhscMTCqYHnWaCPNwIKLBPsKCuX1VRSGys50gj8+8UhQ?=
 =?us-ascii?Q?/0+y4mFdAfQO5ufIYrqNvXDXPBXIFqclTqzTKQb77Z8A5vH/4DtZ1yBan1nK?=
 =?us-ascii?Q?GjARvbXOqEOIa3+L8JWB+l0r0VKdP2I3mM2NgbQsAUdVfiafN4BjGPQ+3v3p?=
 =?us-ascii?Q?BG2Z5mvhgZWUDD2TMlkS8VaNahhMuQBWrOTG3BAAYBVvWY8Z6YrWwkGrYQmm?=
 =?us-ascii?Q?RzS9XuiO3yFRX9jm0oquuj+crjbsUkQU/uVr7oCMeKN6Z9ZMdD/TUCoHWBI2?=
 =?us-ascii?Q?Bd4yePnxM6Hxf0DgfaH2j4Hf6w8MLik96IyubrK/lfhPx0IYZkF9RIiiYjVg?=
 =?us-ascii?Q?FzuYpvf6aS4VXquZ9O1SMX8wxKZLAA+F7ovQELiBJIdnJHUj5X+3tYEOcsto?=
 =?us-ascii?Q?UfXoc75I1ZItOPw2RNZvbftGa5k/MP02V9lvLE+kSzKYILoRRPvbcxfUBkWf?=
 =?us-ascii?Q?yHWOO1hdx1VwzQr9fIl7ER15ezO34lG7sbG2DmQ+G3W20uosRE1v6DWNJOAE?=
 =?us-ascii?Q?ppSBkaN+BM8bcA0XbNCHNkIJFQUwH33BIwhdjI67p8hgKf8NXldLR/4N6Ubk?=
 =?us-ascii?Q?1Cp1FOBcy1O8hKTG5pyMbbI4ohhVXP0+Xyy6JzvljR1A0a/ZC2jiZiEWxJZe?=
 =?us-ascii?Q?zdM0QO65xRDKeWntTh7Acz97Bz0Gj/Adn5jXAsE0SQcSixtthqbyOOy67bqf?=
 =?us-ascii?Q?Ny7tpTCX4OuIoFo2vN3B0QBJen4KT16Ape/fAIOnDY8lAw7GdXCLgDu3SWk1?=
 =?us-ascii?Q?fxOetEVzGNBQgp8xUu3dSeNlbf503Vu1cdRtbPKaUQvNPrEcU3vw2Wdeo6JC?=
 =?us-ascii?Q?dHIgC8bzvriGgkBR1oDjNnflOfnfvJoHkwrPvHRBs8+e1cLI16EelKtdi3nV?=
 =?us-ascii?Q?bStskdjP9GqQUPtVb3RjZEOoUqY3/LdtNg0+LE91wu5ZzgeKYFVIP1ntEE4k?=
 =?us-ascii?Q?goSVxA2fHkrZVc/moqEhtEYiIsBOwaAdcUiYB9hdornNtZWjOZZimwO6ZMow?=
 =?us-ascii?Q?uQVH2ZvJ6l4bcz3H2ZP4Vg+V5v1u73uyh3zg69ax31ch77OWQlgsPVI6G0RJ?=
 =?us-ascii?Q?tasX/pENrhR6DucEV+B7PZ6LhGiFXo9KNHlULJmtHO4ugQ4gQ7jYBfzGrK54?=
 =?us-ascii?Q?/HpPIqmz+VQCbkpP2tgvPRbffwSW8jclDzBJBKqiCIdJ6hnZlFmFsT2g2Mgn?=
 =?us-ascii?Q?2/vYtiG75Gi4nxMHm70bX1Awj1t7k1meyb50DXu890qv7mic4mlHd0jKaS6A?=
 =?us-ascii?Q?Zy59+64VyHnylvjKr7vd0zE7gnJxK8c=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ccc77f1-d17a-4e81-11da-08d9eba95e9f
X-MS-Exchange-CrossTenant-AuthSource: HE1PR0802MB2426.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2022 08:51:32.1150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bQlxx6788TYuWwX+axpHoYLvnUeuDAznXk4PPXNdxtzRicbWiLaU0V4MCGFXpr4vxtyUKZtzz/TJUMJcl27/OCKVRamSOkO8ctcolhTABMM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB2927
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_005141_380094_F61A0038 
X-CRM114-Status: GOOD (  10.55  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Enable the GPU core on the Rockchip RK3568 EVB1.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index d8a4f7a9f562..39c495ff0157 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -140,6 +140,11 @@ &gmac1m1_rgmii_clk
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -462,6 +467,12 @@ &sdmmc0 {
 	status = "okay";
 };
 
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
 &uart2 {
 	status = "okay";
 };
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
