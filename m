Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 694FEC2BA16
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 07:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyh8GvJvIGBjOBnYaplYD+tATW3XWiv1VHmjsZNXaiY=; b=zdzJjtyPCUYIJO
	hH8obZ5k8P4Vf3wcZYgT/kYuMgCmlPBmZcPkIvvYCfJmISGKsDMwYa+gMRlYIshMEt6H73MvI+hzO
	DAO/l7eG/eb4b1ii2DXJ83tF+WtrjRTpV/vWPgv2sRJSnHRmV8KtG560OOO73+VuaZHp+unHxahEb
	PgynSsOo6QIj3y13a1jHH6WJu09mv+hs900fyvAMC3jIxUPmqKWOgh4N2eapjX3DdVKzrVlUgtjsV
	js0/2IKV6iHQNgmk9uwpLA8MRP4+s5AxW8oBbEg8EKW2TpFSPWpWj98LbvAOjIr0YSRKTcpoc4BSA
	wEHeNNUO/gJJHccigF4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ6XA-00000009YaL-08hP;
	Mon, 17 Jun 2024 07:12:08 +0000
Received: from mail-tyzapc01on20701.outbound.protection.outlook.com ([2a01:111:f403:2011::701] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ6Wp-00000009YN5-1dA5;
	Mon, 17 Jun 2024 07:11:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UnyEDt7NhwvPkeyUdu5FJWi/sYTExtYvH4qVCm/RWEIzgOG7bOTkQmczuCEHw3YTcnIIv/3JIe9xyVmuYuTRO3NFK9eQoL68+xoCB5J8Mb3C0GUARNwUkjk25uQNV4vgCgLOWx/PsesqbNvwTk0r486CyIs/XHw6gvrtGA8aP9MGEW56Wuyri1hVtcCIYSPZQs1vDWt+sEOB6WSzoV54z46geRtaR1VKgsSIeSys8jc24+XW3sdyWVBzZMUPqgEeWfjXx4slLLC8FTmi2uVb2tMsuGMYaFATp70j4l45yrZgwGWJ2ElMKp92VxxfU2TLALRl9KKZohW6kQ4wU0IdXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SdohYTFo2KeXcULLPV5gG9Ay2vgv53DUdn2Hd2Y2074=;
 b=JQKydYGI+cNN/kglTZ1VmRrNqtRbHbtGlBu7coobwYeTwh/Y3u9jYpcKvXUHxF1H+s+f7mxumCET2jDAUzBXUSj7iKdHdoWcM5DT9YEXdbvwkz2CX1x1H5JUQFhv/MO8QIKC8WVfPoV7uDx5xduv20IDGtaRpt1Iw8b3SPnmkJRBtFZ5gy18DkwjGr9SdMposzg3qg+mcoH3HoMQa8iOJdNGygIdQLpOPqHvWWdKnW9+nhy5xBQ6LUza1NBpqsfrzvDM0n5geAZIaarCyBHsezgygfuBxBvN0IxT+jDckjIDk+F2+V2AVa+Z2BHRWX08W/9PEpEfIkh+lIjlI2Rm9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wesion.com; dmarc=pass action=none header.from=wesion.com;
 dkim=pass header.d=wesion.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wesion.com;
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com (2603:1096:400:26a::14)
 by SEYPR03MB7968.apcprd03.prod.outlook.com (2603:1096:101:168::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Mon, 17 Jun
 2024 07:11:29 +0000
Received: from TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0]) by TYZPR03MB7001.apcprd03.prod.outlook.com
 ([fe80::78dd:5e68:1a9c:36c0%6]) with mapi id 15.20.7677.029; Mon, 17 Jun 2024
 07:11:29 +0000
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
Subject: [PATCH v2 3/5] arm64: dts: rockchip: Add HDMI & VOP2 to Khadas Edge 2
Date: Mon, 17 Jun 2024 15:11:10 +0800
Message-Id: <20240617071112.3133101-4-jacobe.zang@wesion.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240617071112.3133101-1-jacobe.zang@wesion.com>
References: <20240617071112.3133101-1-jacobe.zang@wesion.com>
X-ClientProxiedBy: SI2PR06CA0017.apcprd06.prod.outlook.com
 (2603:1096:4:186::15) To TYZPR03MB7001.apcprd03.prod.outlook.com
 (2603:1096:400:26a::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYZPR03MB7001:EE_|SEYPR03MB7968:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d9c1b09-bf21-46b6-0572-08dc8e9cb5c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|1800799021|52116011|376011|7416011|366013|38350700011;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7pb1ClXdj4IiGnt/pl5QUvhHNwIqiY16t5ZC1HPvsX8lkVcEero657lqpC6T?=
 =?us-ascii?Q?hkYG0CCbNKGqIZp9AdHIsQ18NxirSKX2zpruO0moluf2JDnAyhVlB1DmnJQe?=
 =?us-ascii?Q?YrTCTkCXu6D5MrpEEeQpjUpYEudWNCfcahKuQzS/UXXu1XaDRO4MjE2jJqxy?=
 =?us-ascii?Q?SUh6rq4eK2ZC8p56oq6dBe+pvKHZRyL+oG9zCiaA4cHLTpyFhUOC0BizrmpS?=
 =?us-ascii?Q?TvhYWRZtqy7XJa3E5TxswKTyG6q6L+w3O5LroTd7pSDnFJ7fm2GOSJ3DwWK3?=
 =?us-ascii?Q?HuHI41+6z9o1sy2+M7A7hyFYubR7OqkQkIgAFkd8IIMKP/K/ALqfunR+EMFd?=
 =?us-ascii?Q?OuTB1bGYEoLbvLEvuZP4SFyuzYw8REbriEj6ElxX6/ReWs3CmLqbSEyyygjc?=
 =?us-ascii?Q?ceJWSPGrxxcHlmSjqVc139eDOChDF34GWo2r1/oksf4Q6dtOCyaEhkm2DmTx?=
 =?us-ascii?Q?Me8F0/S6N0uXGFmjzc/PAHNe4Ctg6R++NAMBhRS5dZv16kW/uLnVM7oGZmER?=
 =?us-ascii?Q?D5Jb2MFotz3/RkW8HVm9RKJk0cuJ0tSXHld+6ns8uM9eMXikX2AIKb9jKMnS?=
 =?us-ascii?Q?5Vv88oYZLWKSQh5wrVaRvoiPb91JBHCOAaIIaRTucZMEI1oNGM6gT6vnzZTO?=
 =?us-ascii?Q?+5tKGgqiZotleFAiR47PmbwNlx5h7h3K06KQs6CAeZwO4zJBsL2N1FtHzZt1?=
 =?us-ascii?Q?IRhJ+Bhs/HBa2n88G5XbMkHWu1eH/SfmoRcGuWJLtdKlsZmdlrRw0I1H/jP2?=
 =?us-ascii?Q?UFjeKRX46/Ua2nVmFCjfBDBXp+3ffrIj4Vpc6mQNtZ+a8JR/wICZPoFdzHde?=
 =?us-ascii?Q?XUaDNtgN2QLNxiqPG7sjxYWUpMa5++g5B2+Wyn1Eev3uyQ8+ci9Xh70mX+uy?=
 =?us-ascii?Q?sLgVYTK7byEoZXgCn9MXPY2iVAdIBtY/3eUfdcu40T2QdJTUnuE13qtb+3XJ?=
 =?us-ascii?Q?hQAvoA+bbvGSBiG2j52Ws6n73Cfkd7lTs6DZHz5+Usp2yYfQKcxm0eqYd7/y?=
 =?us-ascii?Q?Ah8AzXVWoCmbggaHdsp/YJZJJapqR239JJOom3Q05SoLAhO4FV/YgJOxq2U0?=
 =?us-ascii?Q?XqPs8fsOevWpDEGuh5aECu9asEdYmRME46tYx7KsmenmkMjuxrA/peQZ3Hnz?=
 =?us-ascii?Q?iDX6j06SylIP2GorW7nQhe5lLB/O04XZ4y9+Ti9EJ1AnwShwzR7FJwwh15l6?=
 =?us-ascii?Q?wMXiD/kq7AjsSlIyl2IzAtdweygsibVd2JhVLVyIhV5+OvpvG7ClHnpcOwp6?=
 =?us-ascii?Q?8qjS6lTFKy0NE8K0s4LIVHDfUe7TMtfZDe9gqbHTLd7mY7lFurhyuT3j8ckX?=
 =?us-ascii?Q?G6uGdxWlFzg8xhTwe8gWBYAx7mZ+dRq6GsvqJ31h24XyaLIXSiAtxuQARn+6?=
 =?us-ascii?Q?SaDuNd8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYZPR03MB7001.apcprd03.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(1800799021)(52116011)(376011)(7416011)(366013)(38350700011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hxyWN63KmJ9KfrIx2yfa3NSgg9G2ncuAmzbxMKy2Fm9Ja+6dDsUC6P/mc1aA?=
 =?us-ascii?Q?Dkg8TjTp+mt2Od6e7HimHb62SGAxMoUPQL5p2ottn0jjhL0yiUuJVj7l3iyx?=
 =?us-ascii?Q?UxvvM1afAwOxmJ7kQej0EnZFHghh9TtldlPPT1DTBm5N5mxCTBZe7EFTBJSj?=
 =?us-ascii?Q?EGhZcbRvt+9VkMiSDEUVKGa7c9MEByS69rROUSeYAxxy0NLsyqXIZ9wg/kZi?=
 =?us-ascii?Q?uKFGlO+jopm2ezEyfNA54VKwQsVmWPEROPHY3j4XBpxuosuR8giK4rvObmFN?=
 =?us-ascii?Q?Xte1DAigMTSnNJVae5K52PkUy8BFt33T9hNVD989GFu0jefjJwWRl9dWWruT?=
 =?us-ascii?Q?Tgptka5Up5KraBjjA4llmwUrtdTkUFI4qrZ31xEIgJYIeS/TP8ehoPJfHBE1?=
 =?us-ascii?Q?ESm8WlkotFNzM4hjNJ8N0ZUG0/xyNE4zFOjacM3EM6ZOVH4nwXeFjqpyD5EV?=
 =?us-ascii?Q?Mne7rgEk3s755HQlO2ZkV6h8meeNxepke0JuBKG5eYUttfc7DiIwA6VTW3Yw?=
 =?us-ascii?Q?Yhv8JDxD5LwWq/Pw5zzpiIny1iuQjqSm8qOm4HXYTPRI16WeFK7H0G9Br3Fv?=
 =?us-ascii?Q?K8GyBaxnMs9jFPLgDk/w5WOGOiX7yNQVFm3nxP3svztJ1ioekRnmbbmkxC2H?=
 =?us-ascii?Q?PlUr7JqSBzd14SjLr0rDN8WQhuoMDQHtr8pxEEBK+ON/xHlECa3mcWBlRmMD?=
 =?us-ascii?Q?JNU15MmkGOZZtbh1FXWJarKeSRsmcriEXgMohVwlETnTwdAkfN2YRdhr165S?=
 =?us-ascii?Q?4w+RVF6+WBM67czP1qiQnElF0AOgIPxeuLE+s4unFfgG0YpL3XNnrQaZVDc5?=
 =?us-ascii?Q?uTcv0WwMNvPUDfbGVdXebKlfxp7zx9tnO4zUv7n2y7r5rWu/VsgvzdV/+no2?=
 =?us-ascii?Q?GBV31plXC3haGfSt195YY3aG35tJdU0Iu5bucKYCWq4UFkvq4JPajr2YTTJT?=
 =?us-ascii?Q?ClGPBHESHhmNGQfmeEYRLVPr9lzmETIkw5n//Hg1JKw/TUs0bEZlN3W+nCwV?=
 =?us-ascii?Q?LrqIixJro74lz4rSYVaKpsTpKeP2+Dkk7wB2e9YNZTi3h5M90TZeSxAEz0aw?=
 =?us-ascii?Q?C9qmos6bSL5oK7cpDJkLmfCKsrtVglmcxTQneUMvhSnbBuZeBnXvrwg+xHKW?=
 =?us-ascii?Q?6Ybck1YZqyKIofPLh+9dHQUcI30PYHqFhs3Nw8otbo3YeLwAMN3Oseruwr+n?=
 =?us-ascii?Q?Lcezak4I5fJ7GotXwwtDfSKE7TVg/XKjoAStfp96RD28+6ux0MD/zudMojKx?=
 =?us-ascii?Q?k8F82yNaAoBPEcqkIniJKc8eoCPiDydMAgns4ZyhftD6k9a9qIRtRCsXM31A?=
 =?us-ascii?Q?124iDmHLGmojbfNIbr1fU2cadw1J58JYHyIKLCj9iRNEpwJufyt2+t8n4VSR?=
 =?us-ascii?Q?FsQezQ7fhGfygARZoraiMjMyKi7uobdW2zXs1CNrArVvHBoRiei3vP5i0aan?=
 =?us-ascii?Q?aF6FtDquJHCYmCC/yZluh7CVi+eh4kcDO6sY3tjoo2d2UxErR1ZrK2leiNZt?=
 =?us-ascii?Q?QCwpby+RJR4ER9kawUZCNS+y7Z9SLycNE3eOHidLdV4Snv31Pou8S9dEkUDJ?=
 =?us-ascii?Q?jwwRsB5MiUjhy/A5l+9RS2wVvmlNRFjj6tMoVgO7HjXKk4IwjK6D9Wy5OHdG?=
 =?us-ascii?Q?gQ=3D=3D?=
X-OriginatorOrg: wesion.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d9c1b09-bf21-46b6-0572-08dc8e9cb5c3
X-MS-Exchange-CrossTenant-AuthSource: TYZPR03MB7001.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 07:11:29.6329
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 2dc3bd76-7ac2-4780-a5b7-6c6cc6b5af9b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wa5O1lxJFfVkiDB3tWrISfZt9wN+1BRziGSg4E4GDg4xYNFRsod4YDxSOB+tYi1GmT5BhtMXc55F4hB3akErIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR03MB7968
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_001147_508035_BE16EB03 
X-CRM114-Status: UNSURE (   8.71  )
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

Add the HDMI, VP, VOP nodes which HDMI function needs.

Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
---
 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index a82f10312eacd..233bab17bffd2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -7,6 +7,7 @@
 #include <dt-bindings/pinctrl/rockchip.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/usb/pd.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include "rk3588s.dtsi"
 
 / {
@@ -827,6 +828,7 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
 };
 
 &usb_host0_xhci {
+	dr-mode = "otg";
 	usb-role-switch;
 	status = "okay";
 
@@ -851,3 +853,37 @@ &usb_host1_ohci {
 &usb_host2_xhci {
 	status = "okay";
 };
+
+&hdmi0 {
+	status = "okay";
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
+&display_subsystem {
+	clocks = <&hdptxphy_hdmi0>;
+	clock-names = "hdmi0_phy_pll";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&vop {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
