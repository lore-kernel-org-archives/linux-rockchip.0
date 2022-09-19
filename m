Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB5A9ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Sep 2022 16:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=me0+FcGb1nrNUgrox1BfrGCFkxXU/nwXwauI3TdivJw=; b=nujDx5Pv92YTTf
	+xKWrHjkHW5J5x89VtZO1q3/kWw6JiPQT0O4nI/gzlsYI2vWR9l7Gl+SNO3HPaM4lsaBUc65tOtHH
	CQ7fmkYySBduJiYyLcYF8880wPX8scPNfPrlkREW0LNgQlFKCWoe5T+2p8dW/D/afiuOvSbw1yV1R
	y+iVSlynX1+hd6zzxc9UfVKMa/ql0YaaI4SHgfHDnUIHhlEZEagAdjqeFjvtqiASN+O5P+Et+RIJh
	jioTHtDNth8Wo2zINouyfehw84R1kMbIDaKJ9rQk5Hde6Ws2gHgg+mFHqqdsqyfkv6MrqDoTTFB/U
	hunmKcOsynJyF3W2A/Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaJug-00Cydr-18; Mon, 19 Sep 2022 16:46:30 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaJub-00CyYn-6a; Mon, 19 Sep 2022 16:46:26 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-12b542cb1d3so166302fac.13;
        Mon, 19 Sep 2022 09:46:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qHIkUaZy0OcGU4/r6w0WFLW2I8lzySHmL+CuqXSu8eg=;
        b=mVVgc+B8gn73DcfPQOtZeKxFoJ1xytk7lSsQLDnTUY8n48RILR0WSQHmsphE7C0LZI
         IQ6d219RAWPC9qGuHkztMM+lvK8SZC5hbj7gV1t/02INnG14tjwwNHYe9tkO0R0K0WPX
         DrluoEEDAc5FgeeeSNG8O53/0Xr0Se3tVZbdUt0VYGm+9A/8i9K0w7xBXISNRrWcc7lO
         cXK6VqZZyeOJgMbX6ReyY83aITIquHRShMFYpvPg3tfNId8iDKx/e/k1fjy1XW+9o5y/
         Ya9Lt3Rgehh89UZX9PgQ/e6NZLKLlk8WXIyrgcwiCOnH1bhhKRqSp/yIAP13puTwc6jn
         hy+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qHIkUaZy0OcGU4/r6w0WFLW2I8lzySHmL+CuqXSu8eg=;
        b=U2v872scOPu1F/qm2UzTgOWnEmSh/BIuk4A5E+uY1H7mnzziebsv591U/74Og4hNTl
         a1lMsh0sCYwTYi6u736+ooe9GtWIgut/ZheXiB8VJeUacyqmx5jp13TLaEAuTpzeuy2e
         N3RE7Uag1TGVOSCRvhVwPKx44qiFsaLki27O/B8SIOdY2xEMDK31VMxJ1co4om2rkXwW
         k5/N2WUF0otPeEhw6ADe+Z7yaqmazOFjCrNoqCP7Aw+N386tUNxQWkWZwg4LIf6mMB/X
         9LQGrUrcc/88jQV8Tb0/ilv2J453FTRI/0jXRm10Ab+L02TqaiSmx7m92NVh8JtqHpdV
         QOkg==
X-Gm-Message-State: ACgBeo2MMBBHvvKkTGbEn+Rwvbm76Hg/eTDUgD4xmnqTVn7RSz1HQwGs
	MYEy+pY9U1LK68lRYcRc1hrltaDulQ4=
X-Google-Smtp-Source: AA6agR5yYnijRDqba6+kcKiRLmjy8k31qGq0w5ul8arP6RcOOsugpi4vyqC2evrF5D17I7XtkgU9Sw==
X-Received: by 2002:a05:6870:5b86:b0:11c:67ba:71dc with SMTP id em6-20020a0568705b8600b0011c67ba71dcmr16315002oab.289.1663605981997;
        Mon, 19 Sep 2022 09:46:21 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id t184-20020a4a54c1000000b0044b0465bd07sm12501610ooa.20.2022.09.19.09.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Sep 2022 09:46:21 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	jbx6244@gmail.com,
	cl@rock-chips.com,
	frank-w@public-files.de,
	s.hauer@pengutronix.de,
	michael.riesch@wolfvision.net,
	pgwipeout@gmail.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 3/3] arm64: dts: rockchip: Add DSI and DSI-DPHY nodes to  rk356x
Date: Mon, 19 Sep 2022 11:46:16 -0500
Message-Id: <20220919164616.12492-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220919164616.12492-1-macroalpha82@gmail.com>
References: <20220919164616.12492-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_094625_307684_858C8264 
X-CRM114-Status: UNSURE (   9.61  )
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

From: Chris Morgan <macromorgan@hotmail.com>

This adds the DSI controller nodes and DSI-DPHY controller nodes to the
rk356x device tree.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 80 ++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 319981c3e9f7..0473d7ee2668 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -699,6 +699,62 @@ vop_mmu: iommu@fe043e00 {
 		status = "disabled";
 	};
 
+	dsi0: dsi@fe060000 {
+		compatible = "rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0x00 0xfe060000 0x00 0x10000>;
+		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "pclk", "hclk";
+		clocks = <&cru PCLK_DSITX_0>, <&cru HCLK_VO>;
+		phy-names = "dphy";
+		phys = <&dsi_dphy0>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_DSITX_0>;
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			dsi0_in: port@0 {
+				reg = <0>;
+			};
+
+			dsi0_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
+	dsi1: dsi@fe070000 {
+		compatible = "rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi";
+		reg = <0x0 0xfe070000 0x0 0x10000>;
+		interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+		clock-names = "pclk", "hclk";
+		clocks = <&cru PCLK_DSITX_1>, <&cru HCLK_VO>;
+		phy-names = "dphy";
+		phys = <&dsi_dphy1>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_DSITX_1>;
+		rockchip,grf = <&grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			dsi1_in: port@0 {
+				reg = <0>;
+			};
+
+			dsi1_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	hdmi: hdmi@fe0a0000 {
 		compatible = "rockchip,rk3568-dw-hdmi";
 		reg = <0x0 0xfe0a0000 0x0 0x20000>;
@@ -1594,6 +1650,30 @@ combphy2: phy@fe840000 {
 		status = "disabled";
 	};
 
+	dsi_dphy0: mipi-dphy@fe850000 {
+		compatible = "rockchip,rk3568-dsi-dphy";
+		reg = <0x0 0xfe850000 0x0 0x10000>;
+		clock-names = "ref", "pclk";
+		clocks = <&pmucru CLK_MIPIDSIPHY0_REF>, <&cru PCLK_MIPIDSIPHY0>;
+		#phy-cells = <0>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_MIPIDSIPHY0>;
+		status = "disabled";
+	};
+
+	dsi_dphy1: mipi-dphy@fe860000 {
+		compatible = "rockchip,rk3568-dsi-dphy";
+		reg = <0x0 0xfe860000 0x0 0x10000>;
+		clock-names = "ref", "pclk";
+		clocks = <&pmucru CLK_MIPIDSIPHY1_REF>, <&cru PCLK_MIPIDSIPHY1>;
+		#phy-cells = <0>;
+		power-domains = <&power RK3568_PD_VO>;
+		reset-names = "apb";
+		resets = <&cru SRST_P_MIPIDSIPHY1>;
+		status = "disabled";
+	};
+
 	usb2phy0: usb2phy@fe8a0000 {
 		compatible = "rockchip,rk3568-usb2phy";
 		reg = <0x0 0xfe8a0000 0x0 0x10000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
