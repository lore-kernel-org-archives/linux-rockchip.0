Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 946C4C05027
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 14:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8cfFdUz2OJzBrLe3GHF8B6r9zLDTuaqA9BhPTGUfbwo=; b=ZhPxBRUv4J83ej
	OTO2JfkTS5vJn9i8tJvxolHCb04u6UKq/V/PyKuqC0rvf4TVLfWnNm7MLaK2HSX+29gXKnzuaKkBm
	qdRGWJzvCiX+tV1kKm6mTGHScuwfmPo4gxD0agMy3fniWO2zpApD+S+AarZ6DQ420nIWL4Bne633C
	IYCsac0k61PIbbwf+O35MM5KKIi3lN/9tm+5/cHxI5NuVNIl16KVjiQTy+Z/ZCsJ+2fKn/u2JSA0Q
	vt+TID4Ru2qOlTzk/Hg/6vse5dN1i3db4cFFkcly4ZT4P2pazo8gkoTC3Fim5Gq8CJnJGbXBNf2Pv
	HiOMk4MkJ/3zRZChUcKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRwYX-002Gko-3f; Tue, 14 Feb 2023 14:45:17 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRw0W-0021Mb-K8; Tue, 14 Feb 2023 14:10:10 +0000
Received: by mail-ej1-x630.google.com with SMTP id qw12so40430565ejc.2;
        Tue, 14 Feb 2023 06:10:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZyRxgGKgBmZ7vlz9B0DPHOS/vRaGIdO6oxSW3aBTwD0=;
        b=DHncKPYs87waR3yJGxtEcKoh3OyMcA7zdF3rOXm3j38m6CDX/iQqffz0+04g2A3+bf
         GffdS4BULOVh9kWWLEh+LXl/+mJ+a7Yf3ZD9CBZjCpZhYzlggO3VwSBmaLjwzja2RdM+
         gxwVHpFgOFkY3b53Xeh42awaCb4Drw0n2jtMHW+uflM4ToEFt25BrIOlPHfXCCtiZJ3K
         fJg5HIcSYpEXucDMsRiqCNeT22ekeN8gi94IbFbiN1VwItRwUoutXOn3UbniynDjb/1q
         S7ct7A0a0AnO2Lbl0LnFqsAO3+LBOkQQTuO6L3AoWQBKrlynHKDcIk/cW/BdVu/Qk9bW
         g7hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZyRxgGKgBmZ7vlz9B0DPHOS/vRaGIdO6oxSW3aBTwD0=;
        b=jvIyWRnlkkZrhphsNhR7lU8WPVsSPx2UhJ7ond7TB2Yhih3ucAnDxLkZP6EtgA66JX
         qHLpjVzzgkdWifi5bGiELpfdSFl6FdAlToEKCthcf/xtUDN7IlGrs9RPkS0VtaI/39Wk
         gNgOhnHWmHJs0Fjm53iJp7hsxX9zdT+7yhNiDyReF79CteXlo10HcLjKr5Htjq7TU+lG
         DsnmEgI/bLsqVt8eFYHP3OGsP3xCty9S85d9GnU/KEIx89cywTl7YNi1I42g5Hjf4nBj
         IbIG5j/11hqEcd1x/soTOzdk7FaaSB1cpsat2CT67zBrTCTfVlqwP8q4RsZEsaxqREFQ
         NM4A==
X-Gm-Message-State: AO0yUKVwTuJ8pFkeTS0qgfDpcwelxcVb8BVjWVVyCDGLxTpyY3jwpl9I
	oEmJr/AKc8DKPsVg6Hm/WA9vGDWJL75f0A==
X-Google-Smtp-Source: AK7set8457lF/1ct6QNmD+ni295zwiDN6/EivlGIF+JpLzVOpzazEgBBkLErUzQwRm93A7rAOTYAOg==
X-Received: by 2002:a17:906:2f06:b0:878:714b:5e16 with SMTP id v6-20020a1709062f0600b00878714b5e16mr3011287eji.28.1676383806487;
        Tue, 14 Feb 2023 06:10:06 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id n11-20020a1709065e0b00b008b13814f804sm332241eju.186.2023.02.14.06.10.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 06:10:06 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH v2 5/9] arm64: dts: rockchip: Add dtsi entry for RK3399 PCIe endpoint core
Date: Tue, 14 Feb 2023 15:08:53 +0100
Message-Id: <20230214140858.1133292-6-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_061008_699885_BA7FE5F3 
X-CRM114-Status: GOOD (  12.90  )
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
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 9d5b0e8c9..8cc5a1ee2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -265,6 +265,29 @@ pcie0_intc: interrupt-controller {
 		};
 	};
 
+	pcie0_ep: pcie-ep@f8000000 {
+		compatible = "rockchip,rk3399-pcie-ep";
+		rockchip,max-outbound-regions = <32>;
+		clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
+			<&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
+		clock-names = "aclk", "aclk-perf",
+				"hclk", "pm";
+		max-functions = /bits/ 8 <8>;
+		num-lanes = <4>;
+		reg = <0x0 0xfd000000 0x0 0x1000000>, <0x0 0xfa000000 0x0 0x2000000>;
+		reg-names = "apb-base", "mem-base";
+		resets = <&cru SRST_PCIE_CORE>, <&cru SRST_PCIE_MGMT>,
+			<&cru SRST_PCIE_MGMT_STICKY>, <&cru SRST_PCIE_PIPE> ,
+			<&cru SRST_PCIE_PM>, <&cru SRST_P_PCIE>, <&cru SRST_A_PCIE>;
+		reset-names = "core", "mgmt", "mgmt-sticky", "pipe",
+				"pm", "pclk", "aclk";
+		phys = <&pcie_phy 0>, <&pcie_phy 1>, <&pcie_phy 2>, <&pcie_phy 3>;
+		phy-names = "pcie-phy-0", "pcie-phy-1", "pcie-phy-2", "pcie-phy-3";
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
