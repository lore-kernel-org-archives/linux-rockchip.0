Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85CEAC77B70
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 10:30:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+iM6pBB1jSn9ULqiZY8gyfq/HYnjEyiPl2vag1zpWxg=; b=TUCQXOf+yFw/65
	mMsnNmZYyjNzflKqi/RNmi3uYJJbSnoqBHzMVbdBU+XXVjTCpQOpuFmQIYENeb/t6wny1+GzDPGwS
	S51krTlBzMZdUfrNcNA2jbc1e37zik3f3lHMqKWXMyJrg69ltgn1hF/SZ4wBC7OXNa9DI5uuiLUsX
	ZsT98mAEUv9knXo1jOx4Zt6ZBsQfsXxZKAYfbp+alU5bBw/BbzIgU59dngTZRjchQNaNZvlqJV3o/
	sglwup5dYGYF1Huuw0Hf6bZQU5mbwulsXLVp3L18yKwWPqeemreXKB+PWQmfwyuNYbuaxPh0ZXVO4
	Hc/5Qhb9qdowLsWfENdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poM7m-00Fjid-15;
	Mon, 17 Apr 2023 10:30:18 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8h-00FXCF-1I;
	Mon, 17 Apr 2023 09:27:12 +0000
Received: by mail-ej1-x62c.google.com with SMTP id u3so10361564ejj.12;
        Mon, 17 Apr 2023 02:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681723630; x=1684315630;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fadIVQZBpq46XVVpnX4ew17nOLJ18aM1wvmfilOrUDc=;
        b=psQTvOwN7Im7UB8QEqR2OSmFumZOFwO6TfC7CGzCAdqk7edTq9n3bBGXaoFaeDrOnq
         2wFEn2W/7f2ZdIIE9H3kNRoKffbD/ADS9E4RD5qMWcjFYDIVn4TDga04IfHew+3SIkbu
         0/8YJXw3h91Mn6e1C690x8WkRkdDFiyplTC7/09g5JDMBs/pf+BA9Pgl/D8c8Y0zTP+e
         dZKMuXH3oMHdnjXah6c7hv0yGPE2NHN93OJla4VTECgKG9hzck9ve6ZDTJqqErH10mLF
         EgF0EetFr3vu+fP86r9QLq5hGlSBTOXplsltx6aZjpuw+OsizK/psmfVxBRGHrDeKgta
         HfKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681723630; x=1684315630;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fadIVQZBpq46XVVpnX4ew17nOLJ18aM1wvmfilOrUDc=;
        b=PfmWx7zjlzochYO4l+1vLNgmm2Sbbtt2oUT+ykhMIAdMtedcjplODLDjM4GIphHKQG
         b8NHocBwdMfp0eJFMsJxo+9TOVL93dMFiOeXG13hBqbB2OofQh/rTAaibBile3l2VWv3
         xCR1vdGW88xPIzEgHFkp93snUYYirW0siRb28M7i7B2Gm1+LfOshZzgIKkw96IzEapzl
         YL/zxsyFX05/IhkfCoqef1PoiK8l8Y249gSdnxF2xMXc7zwDu5OHbdLWsREaFEzZgJhk
         1WQUeMm5syXoRzhsMV4yKTqIneqin0ua+qypnx3nbea5SWXjjXozz+B4BkmQfwXS4o8H
         xhUw==
X-Gm-Message-State: AAQBX9fgjib43NcF13JLwcMdNMivFabuMLJmdbG2BAikHkSM6Sp7ornN
	ezH2pQ/LCkTlJ+PY9PeoaGo=
X-Google-Smtp-Source: AKy350awxorBAKdXhAo3Z/z2Yp8EU/GCSvHG4r9Ik0g7z6c9I+WLLYKUpyzkR7qfK0ZCMmbd9CUb4Q==
X-Received: by 2002:a17:906:6d0f:b0:935:20d8:c3c with SMTP id m15-20020a1709066d0f00b0093520d80c3cmr6848788ejr.61.1681723629914;
        Mon, 17 Apr 2023 02:27:09 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id p20-20020a170906615400b0094aa087578csm6398596ejl.171.2023.04.17.02.27.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 02:27:09 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Corentin Labbe <clabbe@baylibre.com>,
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 05/11] arm64: dts: rockchip: Add dtsi entry for RK3399 PCIe endpoint core
Date: Mon, 17 Apr 2023 11:26:23 +0200
Message-Id: <20230417092631.347976-6-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_022711_454499_8D841313 
X-CRM114-Status: GOOD (  11.83  )
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

Add dtsi entry for RK3399 PCIe endpoint core in the device tree.
The status is "disabled" by default, so it will not be loaded unless
explicitly chosen to. The RK3399 PCIe endpoit core should be enabled
with the RK3399 PCIe root complex disabled because the RK3399 PCIe
controller can only work one mode at the time, either in "root complex"
mode or in "endpoint" mode.

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Tested-by: Damien Le Moal <dlemoal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 27 ++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 928948e7c7bb..9da0b6d77c8d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -265,6 +265,33 @@ pcie0_intc: interrupt-controller {
 		};
 	};
 
+	pcie0_ep: pcie-ep@f8000000 {
+		compatible = "rockchip,rk3399-pcie-ep";
+		reg = <0x0 0xfd000000 0x0 0x1000000>,
+		      <0x0 0xfa000000 0x0 0x2000000>;
+		reg-names = "apb-base", "mem-base";
+		clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
+			 <&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
+		clock-names = "aclk", "aclk-perf",
+			      "hclk", "pm";
+		max-functions = /bits/ 8 <8>;
+		num-lanes = <4>;
+		resets = <&cru SRST_PCIE_CORE>, <&cru SRST_PCIE_MGMT>,
+			 <&cru SRST_PCIE_MGMT_STICKY>, <&cru SRST_PCIE_PIPE>,
+			 <&cru SRST_PCIE_PM>, <&cru SRST_P_PCIE>,
+			 <&cru SRST_A_PCIE>;
+		reset-names = "core", "mgmt", "mgmt-sticky", "pipe",
+			      "pm", "pclk", "aclk";
+		phys = <&pcie_phy 0>, <&pcie_phy 1>,
+		       <&pcie_phy 2>, <&pcie_phy 3>;
+		phy-names = "pcie-phy-0", "pcie-phy-1",
+			    "pcie-phy-2", "pcie-phy-3";
+		rockchip,max-outbound-regions = <32>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pcie_clkreqnb_cpm>;
+		status = "disabled";
+	};
+
 	gmac: ethernet@fe300000 {
 		compatible = "rockchip,rk3399-gmac";
 		reg = <0x0 0xfe300000 0x0 0x10000>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
