Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA641C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 06:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGTUpaYqNgG0SIF/YxXB8hybcmFt59qATVgNPwjG0sI=; b=Hm5wuzqYQogd1m
	D/YpiXKWXECc2LKhf3R0uLR/nSxIqudr2DaLlIvEg3bj1bILBs8QUwAzs7/UIFtpBoJuD6r2ZJLqH
	P8i/QmCvyAfKJi5M2A9rtQe3AhRPh08sIfPo3Nl7VqvYH+ptCt6qfGM0Xf2HsVLdlNgwCHQI7OP6u
	dKwYIEHBmbI7+C+Fa1b77M7yWCWLhRiYd8SMxvypoP8jGInYNDsgZoKztw9EwYRzJQjitDWtOemeq
	MBNnl3W3beE83LzvPY3AFtVnIfmLtDKRqe321lsEnXX6+w3uLUElrkFdkMpVWZbx7AchYgvS4K034
	aFfDdrNjAjYMKDCtCDJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9h6u-002Ilu-4k; Mon, 26 Dec 2022 06:37:20 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9h6L-002IXG-4U
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 06:36:46 +0000
Received: by mail-pl1-x632.google.com with SMTP id jn22so10007705plb.13
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Dec 2022 22:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lbYKeQDdqP1ch9vSzLDC3uKKF34wY5rVbaptUoqvdAQ=;
        b=z9HMNT4MykhC60knbICdXV7pS81E4ck4YuoynRIewr1Wz52l/4vvf/ZQMNYg0VYVBG
         m9tOMnrlQMOuGhTbE1et9tWMwN0CtdvwaKRjEr5Vqb2uVNY88XYTXLo5IYrvtDdyAYgW
         IB43ouPr0pCfel0CCdnvDOoXSpYqegeCtYRgY5oCyeiwSO8JIjJbISBgJKE8zJP9X5Hy
         yDoAhwTRUmgVBVlaNq2KMbY4dQtDK9dUn3GVvb5xUgjRQuHMTEVe5w/U8pBNyu7JtXC+
         bmmvB3YPTclY2Vhi+r/CrEPYHUJtWV0haojJZDxnBLo45b8MyemNI1mIu7p5oBcFC+VT
         ns5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lbYKeQDdqP1ch9vSzLDC3uKKF34wY5rVbaptUoqvdAQ=;
        b=2fYO6zbnJyKR5gI4+EKhmkYgJHbYCYdoX7jXDiRxO3HWRZ/J7c7rIpKIBi4apPQrSv
         ol3tUSdEzTPqv5YN+9AITqUVSplDFgIX1miIn55U/+mh70xWXNugVRIrXRQSQlAVYMhv
         z+zcVkNIYfzuRWVy+OAQevi5K3M+fz6d+fPEx4llL8mEpzYcnX/SAYpotAsyN3J/Hhi0
         ZWm7fbyZ5YgoLOxaQE0uhvquDews4py6sidEmyCpzqPew49knpzADoErhGhHypnDLTEu
         JoBXrKcxOq1Z7blhVXDJ0lKEfvA8ufwxNm9u6uED76gtWbxdJjO8b1NE5ijBXyQf8anJ
         XDLw==
X-Gm-Message-State: AFqh2koY0j0vA5bHIcpMzkwLnetMFgQjbbVgN4zO5JkAnORJPHixV3EC
	eXTEzvYNLaTWUUk4cZoi4+fmFg==
X-Google-Smtp-Source: AMrXdXsegnB/4YgCRPurb7/c4aUXMRuD733OB0kVFb4zixNOin28xG+7a90OjS5sZrt9IbqGnbyDGQ==
X-Received: by 2002:a05:6a20:a6a8:b0:9d:efd3:66bf with SMTP id ba40-20020a056a20a6a800b0009defd366bfmr22241960pzb.6.1672036604145;
        Sun, 25 Dec 2022 22:36:44 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id 31-20020a63145f000000b0047048c201e3sm5730659pgu.33.2022.12.25.22.36.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 22:36:43 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Anand Moon <anand@edgeble.ai>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCHv2 linux-next 2/4] ARM: dts: rockchip: rv1126: Add rgmiim1 pin-control
Date: Mon, 26 Dec 2022 06:36:20 +0000
Message-Id: <20221226063625.1913-2-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221226063625.1913-1-anand@edgeble.ai>
References: <20221226063625.1913-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_223645_270060_6B047C2F 
X-CRM114-Status: UNSURE (   9.50  )
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

Add ethernet pin-control for rv1126 SoC.

Signed-off-by: Anand Moon <anand@edgeble.ai>
---
drop SoB of Jagan Teki
---
 arch/arm/boot/dts/rv1126-pinctrl.dtsi | 42 +++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
index 4bc419cc1210..b77021772781 100644
--- a/arch/arm/boot/dts/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rv1126-pinctrl.dtsi
@@ -11,6 +11,14 @@
  * by adding changes at end of this file.
  */
 &pinctrl {
+	clk_out_ethernet {
+		/omit-if-no-ref/
+		clk_out_ethernetm1_pins: clk-out-ethernetm1-pins {
+			rockchip,pins =
+				/* clk_out_ethernet_m1 */
+				<2 RK_PC5 2 &pcfg_pull_none>;
+		};
+	};
 	emmc {
 		/omit-if-no-ref/
 		emmc_rstnout: emmc-rstnout {
@@ -61,6 +69,40 @@ i2c0_xfer: i2c0-xfer {
 				<0 RK_PB5 1 &pcfg_pull_none_drv_level_0_smt>;
 		};
 	};
+	rgmii {
+		/omit-if-no-ref/
+		rgmiim1_pins: rgmiim1-pins {
+			rockchip,pins =
+				/* rgmii_mdc_m1 */
+				<2 RK_PC2 2 &pcfg_pull_none>,
+				/* rgmii_mdio_m1 */
+				<2 RK_PC1 2 &pcfg_pull_none>,
+				/* rgmii_rxclk_m1 */
+				<2 RK_PD3 2 &pcfg_pull_none>,
+				/* rgmii_rxd0_m1 */
+				<2 RK_PB5 2 &pcfg_pull_none>,
+				/* rgmii_rxd1_m1 */
+				<2 RK_PB6 2 &pcfg_pull_none>,
+				/* rgmii_rxd2_m1 */
+				<2 RK_PC7 2 &pcfg_pull_none>,
+				/* rgmii_rxd3_m1 */
+				<2 RK_PD0 2 &pcfg_pull_none>,
+				/* rgmii_rxdv_m1 */
+				<2 RK_PB4 2 &pcfg_pull_none>,
+				/* rgmii_txclk_m1 */
+				<2 RK_PD2 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd0_m1 */
+				<2 RK_PC3 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd1_m1 */
+				<2 RK_PC4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd2_m1 */
+				<2 RK_PD1 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txd3_m1 */
+				<2 RK_PA4 2 &pcfg_pull_none_drv_level_3>,
+				/* rgmii_txen_m1 */
+				<2 RK_PC6 2 &pcfg_pull_none_drv_level_3>;
+		};
+	};
 	sdmmc0 {
 		/omit-if-no-ref/
 		sdmmc0_bus4: sdmmc0-bus4 {
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
