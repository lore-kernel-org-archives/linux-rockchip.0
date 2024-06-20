Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 569BBC27C53
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 01:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qUG2JKbQZv56avOOinYQ5bmiMvmTxVRSY4y4kYrQbU=; b=ClKVICi7gLIVZ4
	OYhThwrikVKe9XCyU5NpT+xN1RgM9VksKXGRmXUZY40sViM7/HxMSnPeceFECKIHB/AeAjqdHYput
	jL24AN+r/7FfFAcnmgjXKwR6zf1LEeAJULwZHQTZIih/LgRStuo1dB0c8zQshVSTSPnnoVjlLspMQ
	frNSPs8RpJteRMucRZiu078aO8jASkOx1hPmVAXXFUrXoGyE5MsQ0TmXuQczsh0qEeRfFzDaxuGdW
	Oj9dZDRQNE1PDof3NUSy2vvfoklOPPqVulDYB2C96iIXb/q2gITVdaRLhaBk7EmRn4kk6W9qDwG0X
	ucvXKrgUookD001DfUgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK73p-00000003It0-09P7;
	Thu, 20 Jun 2024 01:58:01 +0000
Received: from mail-tyzapc01on20700.outbound.protection.outlook.com ([2a01:111:f403:2011::700] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK73b-00000003Ik0-2VS1;
	Thu, 20 Jun 2024 01:57:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NfuDANqaNjYlaqwPy3G78xw2CJl0Xjjcyt0C9cUWe3KlgVWWcTYDml3tZZVPlaVP1ozOb8slkEo/fdgzB4kUeqR1mOsJTPx1nLAca3ZUccS7iVgV/NT2/cYWUNPiKltzDh1uW6h6uOvnW5N6HAJ5DJ4s1RgULzOppvDS3hTopkAtKS8mypYiS71tkI+Vqd5q7oNykBvOKT4hgWpbADeiMnNUweABszrZQghLnVmkuGvib/BEOfdX74MX1vaBrREmRtYzAp9ekjTUAhnFevVFM22KcrULpW1a5Wdh694kPHw2bZQHI1k+TyVUMiNgMZZttCd9U/HpaV1MASiLNHpv6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sVJrx2+H54OPs5uKBqq9aezp5947pz03W2ZWuXb/Ci8=;
 b=WDSRmEBLuCfNmymgdnHlKgpcZu9t/EbZFkQGRIfoN+8eCNAeTHVELxnzq8Uojlsou5PhU0HDqigWEyDUSUPhwC49eALdr8LG+8D469oZ4wzaU61Jjz1nkmKlKb/PWD9yyvoe3/Cuuv7B2oFIWf7oRmsPK1HBLuMTcp2SN5LIoOQPjJxpzlJpVeVE1VoeIAe0NUrr2dPR1TuEX+9jk0G5g5nzFji7+ONKzJS1lttr+ScNMl3lvqJbykQXGU4FwfDq2a1UJyi+JuhDTjIsuRV8dFKcfX8vbNq+rUpO8NZQAqTO9pzJ8n5vVtbFHisX3+bdQfDe6xv6/9XxPjpt5Hlb2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEYPR03MB8078.apcprd03.prod.outlook.com (2603:1096:101:16b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Thu, 20 Jun
 2024 01:57:30 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7677.029; Thu, 20 Jun 2024
 01:57:30 +0000
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
Subject: [PATCH v3 2/2] arm64: dts: rockchip: Add bluetooth rfkill to Khadas Edge2
Date: Thu, 20 Jun 2024 09:45:36 +0800
Message-Id: <20240620014536.4019524-3-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240620014536.4019524-1-jacobe.zang@wesion.com>
References: <20240620014536.4019524-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: SI1PR02CA0052.apcprd02.prod.outlook.com
 (2603:1096:4:1f5::20) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|SEYPR03MB8078:EE_
X-MS-Office365-Filtering-Correlation-Id: a7749772-4c10-4ef1-aec0-08dc90cc582e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|1800799021|366013|52116011|376011|7416011|38350700011;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zagCd0TBiV66e60mz7s3MuCxFb0J75L7TBgUyWX/d+a/oOVBdRl3R7vSWCXv?=
 =?us-ascii?Q?BzD/pXDhVlBZ8xLFYwjrCupapMVFLIU3nQSMxjNdSoVOCWm/0Zv2on8ywyut?=
 =?us-ascii?Q?OA3JjDXtHrlNbopS2tcUOkRMGI6qBuvO7getV749I2ZaNzUJM2kdGXSGJVdY?=
 =?us-ascii?Q?9XGx72jB3hLhyicoCC2VQYY++v+gAuY1Xzgi4Zh+j4VWT2fHvxckpd7oaNWB?=
 =?us-ascii?Q?s8XFuaHw5+90xrM1s8w15D4O8zFagQOep+6VIQuP711kxIgLNgn+rcN5E26r?=
 =?us-ascii?Q?1+cYWEsuxvAwzZdfCoPrqasvOPcmuJkTc3gPYs1wPLz4/pz3sIK0dzu39dum?=
 =?us-ascii?Q?LHnGM1BTJ+u1PKo75d+8z0H1CcHdnKf0BZO8vsHENI7dFwoRpzjIwml1O3q8?=
 =?us-ascii?Q?fQ/X9SW8xDVYrFElYhkldZ0Lkjl6yqhY6m9+/sHt1hSbMOov+SQYWMRy5iMo?=
 =?us-ascii?Q?fn4hgkPKaGOX1Yw+DZtpFo32mxhkl2syTCoElSkkjp12NPbgc/l4QzIbRhFS?=
 =?us-ascii?Q?seP7pNsJYa6s5zKmNH+qtElfoXj8MFB0ZrUOHskRYbHc4lxcXyHyvdLmLv+Y?=
 =?us-ascii?Q?DTfgI8d8pMAZUJP7gIdivAau4gEShlFPBK9ykMCZLDPipekHB4qIEjFMOTiZ?=
 =?us-ascii?Q?pDuWlVlxEeH/Fhby+yGvp0zNaNkv8NasWVkhjykSPXnhS8S4q+cJhsaaa+5z?=
 =?us-ascii?Q?kL/qFtMJRLnm6c/7gCIF5A1h96XwR5mPmmV6tOfdx7IJoZB+b8Xlg6dYMAAi?=
 =?us-ascii?Q?n3mG2+Htk7vegPfHKGLD+T7D7TvBvDpLUvc889zLPdvPOf6O5HsPQLN4cIP6?=
 =?us-ascii?Q?TgJjgYKOE9zIZ9cPklBM4sqi78A+6xbwgdxuBuSttzD/p8xqj+n0AJq1N+QO?=
 =?us-ascii?Q?0QweZeFNtrwMm/kUo1ON1RQseHxQMUyv1gpHVIGYIWBWohGoyLQeG0cur6xb?=
 =?us-ascii?Q?zd5yaXAn2M5aaaLDEUExQJ/b8nEJ6cBv+LsGnpVMi0pSh5Cs19mdLJAOT9uC?=
 =?us-ascii?Q?rWlRxFdSvh5X1X3jDnstyxPjZcFqG3oPwHndwNzMKt67oMH8gq1EfkZhCpR8?=
 =?us-ascii?Q?U/99oVhFfDuzYamiO4RDM/LgSvcSF0lOb777gmEHCF6kPXKdGohQWRXvhRy2?=
 =?us-ascii?Q?uyHWFaSOWT8exOq2nYpOwsFQdsFJZ19bL3SLOuQK0MOPVnn/GGqjAfAzyUxB?=
 =?us-ascii?Q?KvLQ7BgKR12GGlzKeBoiwHt3A4Lv4UpnJG7LiV+cj3VPSNGWnnh9d+bNDt/N?=
 =?us-ascii?Q?UuMWybdmBB50NKxV6Z1jYE5PNdZpok/33Brn6767t8YUYhdS0MAnT1wsfW4L?=
 =?us-ascii?Q?vh9srlNL4QYroVlqwRxG46CS6VJecB7ueAIrM+Wh3RN3NNg3ya9PNl4C2nSz?=
 =?us-ascii?Q?CUw48AI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(366013)(52116011)(376011)(7416011)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h3cKPYvyNIr86Bsadgk4uOn2uS9qQfSu1/2KLCtb+Jd7kp0l18NKQRXdq7Ru?=
 =?us-ascii?Q?WL3a2779l7mOwmqBkmM+9c0FDZGOhDwxlLiSUBzRqtSiyX6vLUdIOw0ch+Ok?=
 =?us-ascii?Q?CgRH0Zl/2NXMpf8cTsQgxd1WyR6OujCl/rWWEbV+PbWiAmwRzAmDQHBoYt+z?=
 =?us-ascii?Q?KdGkR14W9cN+7+IU5WAJ4X/UzARDptpO+bOUaTJeurdReNykScIR9tGo5RDS?=
 =?us-ascii?Q?Vvh2yJ9S7DZP0b62Er5KDruNE75ViVQBsL9Y+/WgwEq0zEYiz0xTV8SoW7X1?=
 =?us-ascii?Q?3Mb43R5CPUC2P9/VbTtTCx3DCDvtM1rCqbSzaa65/oqUrDECBHdldksWD+Uv?=
 =?us-ascii?Q?2gcfFnZzX//2i3ewcZL4oy8PUvn1F536rX4bDF2ONiTD8zmnehszURvPSaee?=
 =?us-ascii?Q?KTuZKvfMUXSaLt3QsEQGWCzXDvUge0X6cL2J4wEARwdjKBVo8YCTiOedUBh3?=
 =?us-ascii?Q?cYuQiILGbrszNOcfVqopUi0XbqS/LJplqPSIYdGyHsF69LEctugCSd4Na368?=
 =?us-ascii?Q?Iv+mlXbQLHfpFdLTYxEKfKNKeLOK4bfrHCfuHUjkq8AZZ+104Cu9N55/a6Pz?=
 =?us-ascii?Q?apjItBZxiLG+KJRFp5SiDBzAag2mtuEy9olVepnF4r4E/zuNmUCpcG5hkmgl?=
 =?us-ascii?Q?Kx5+x7s8DO6wviiQzFqtuaeILkx0m1L3rgEAHCavOTaaoRjF9r+AWpwrfvMx?=
 =?us-ascii?Q?1YIkAy2quB2U4L/ze0zq4XLaoavqk0x9OSqe652n+r0qAUnNoH55mnQuyhXG?=
 =?us-ascii?Q?hbvJGjxzRKKxf4bi8QaPI0J9GLMtjvokDPCVDMhsLMX2UTD6ArZMs5JlUh2P?=
 =?us-ascii?Q?6dnZIGc8V886htES0/2xePYpVdlJl9zNF2HxAg2G7K55XS/Nc6LN0mWa6m6U?=
 =?us-ascii?Q?DAAQhaqusebpl5917AvoEAOkbHibTSSkPr5HQXJ4ZWRc3z/3YA6AQhzmUUp+?=
 =?us-ascii?Q?3mz4dw68/7QiYlGAF3LT/z49Bz8+lIOgG0PAY2dmhx1ZyKWnEgCHVt4cOQhu?=
 =?us-ascii?Q?efOOlyjT+MS+iN58x5W4mCSIKmOW4n7TQEvvzWgtGyg16XF0ui3AZ8ZN1pAB?=
 =?us-ascii?Q?v9upnPw5t2PSG11eBohGNHHK0a1qoEaFXU9YPfAqadMdP9IrE76GNRb4SAP9?=
 =?us-ascii?Q?lfzdOWy5LC8tpWMwFkhTI0ttu1TMKYZYLDZ6mMkesTUgZgXugFullXGgAX6O?=
 =?us-ascii?Q?HAn6D0z28193Gsaa7ZH7q5weZR4be9nKNKOo9msHxP+c8K6J24+ce3Qq56px?=
 =?us-ascii?Q?yX+Z6GfSPiSJoVPQu8F6TeUnM9CdZ5GfHU5w8/jY3PyTDv7lWE2tEATXmfhe?=
 =?us-ascii?Q?/3OA6GVM0xk6ont+dOTid30fsyyRWZFZdu5ADDY4Ecvf0mlyZ5w2ZB5n8r1S?=
 =?us-ascii?Q?cDzXXx46zdqgITRR1V7bQ3XMAxDacR6TBYn+CKCT70ni4wVkVk7ZFE3KRMZZ?=
 =?us-ascii?Q?p/Ph4H2Pckk78MByJx3fL1zdpdfeEMRLeanuxszq6DID2tJOY89ko7uvTSou?=
 =?us-ascii?Q?PZRXd/F86ARaAVAuDXvB0K73+DDEKOsZtYS0f59Y/TrVszIxa8h/tHr0d7as?=
 =?us-ascii?Q?apwcCP8qg1FkM9HFFckw1Ev37nXjSnvcRC7i6mFJ?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7749772-4c10-4ef1-aec0-08dc90cc582e
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jun 2024 01:57:30.8625
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y2IAvn/tVGpWjJMS5oI4/4fyZREjyQUWNpIt7SsVhwaV5/7/dO70WclqZ7At17Vj4tJH4ckfb1QalOI2jBp83w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB8078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_185747_662388_5289D8C3 
X-CRM114-Status: UNSURE (   8.59  )
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

This add bluetooth node, in uart9 add RTS node in pinctrl.

Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index 8c0bc675690dd..3b6286461a746 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -750,8 +750,15 @@ &uart2 {
 
 &uart9 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&uart9m2_xfer &uart9m2_ctsn>;
+	pinctrl-0 = <&uart9m2_xfer &uart9m2_ctsn &uart9m2_rtsn>;
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm43438-bt";
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_reset_pin &bt_wake_host_irq &bt_wake_pin>;
+		shutdown-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+	};
 };
 
 &u2phy0 {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
