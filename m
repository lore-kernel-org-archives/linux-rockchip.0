Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D41C4C77B71
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 09:00:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6RfOFN3pX8JLdPM563nv1k1CWHyWx2BE/U0N1c/xZ6g=; b=L5jiGKRDzj8H0N
	xLdnMNi8LDL5W4rYFKqTVx+UDFec8kPqhXcYwFCrFssYFwIPZug30pS1dhvNo2SmBufID1Y+uHbnu
	yLuE6qZLY6qZk8pfhiwYV5qcUGA52UjLCnv1fjlXKY/3ZURZrIv1/iBzJbpQM8ooaRKmIiGl4p3x4
	TmiI+WVUs3Ln8c6VDrt//lfw8A2X6bLOSxu1MnTvrt4AQXG6IGur1d7Xo2Nt9u0rZZ/I2GsbwCZ+X
	Sw2pUTK0oOsdOfhpaZM5qMbTRSuwWSU3igkqUnyGneWHbwKHC4VaPtKqbPjHMDUZz54U+w0JiAx5s
	AJfentzKJZ2d52BR7vwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pohCM-001Ohp-1s;
	Tue, 18 Apr 2023 09:00:26 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pog4H-001BXN-3B;
	Tue, 18 Apr 2023 07:48:04 +0000
Received: by mail-ej1-x631.google.com with SMTP id vc20so15881293ejc.10;
        Tue, 18 Apr 2023 00:47:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681804078; x=1684396078;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RwLbYZDwc7R0aamwDMRBreebcY+MnR13G3D7+Shwj4c=;
        b=p/IV8Ns/lQ2b4Z3CTadshP9tNshQA64srbd3yX+L5pHYJlTn7J+adNGfcdFn5dzOCW
         i439Cy+DpOETJ51rlz+SLPvDP79i9QXV0zOFNrXQplGp0ALyROniEHb9yj0T/o4jUX22
         IwOP2wV202MLr4mY7qQMxFKJenBNe2rv9wdlBSKoK9mIm8Hb/ik70D9MLNg+gKfSKNEL
         AKV/d3tuUlpRBTu1s2+e9CpmActLBJqJ1ceXY9nfNjRa4t6u/zQtt9z7wau67PzjIS1c
         Tiy9RXtlL9jI02xE07CI6pYLK1gTQbi8Qy+pZGDEkNhcSfR1me5t6gWg1xZfZhH1C4fr
         PAdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681804078; x=1684396078;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RwLbYZDwc7R0aamwDMRBreebcY+MnR13G3D7+Shwj4c=;
        b=Q2fO7iBI0OJh475ZcbWNU3sOJpDgBW+ie3RJekFc5hbCs1MlX/H6BoJmPEqtFP8vJS
         2++qf3eIL4w6upsNwlIs6OO8JEJflXdz/YVq3o006StKJBxlMVFP23GTi/RYEgVMdZBA
         jIH4nozWVn7/oTLDRTA4xgsJ7gfLjzTq2ic3ay91TYVYGx5XbKms5QqBro/G2ayplHkQ
         ySkMajLbMRsZBPSbXgyZKXWS1jC7dnnQ9r1hmM7TK4rOx5Pj+aSbfECXGb8b64FWyd7L
         qoQrLqNQqCyWFJQTeLESPx3hpYnX5hg333QyyH5xUtRgQtQidvXH9b8QVmCDz2ljfYm2
         K3nA==
X-Gm-Message-State: AAQBX9dCuEYJlhcJAFhCS2pbCoBPNBb9jbvZxzYDu42m+KsOX+BEt7iI
	ZDn5k8Gw4bxKSDoOo97hRr4=
X-Google-Smtp-Source: AKy350aInQ7VklbPdBPTxpuqMekh45aB6ze2dUESPSKfcnmqsyduEjtaP5U/6IKKN6ZobF6U4WmGIQ==
X-Received: by 2002:a17:906:28d0:b0:94f:27a1:f1d with SMTP id p16-20020a17090628d000b0094f27a10f1dmr9533165ejd.77.1681804077666;
        Tue, 18 Apr 2023 00:47:57 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id gs8-20020a1709072d0800b0094f694e4ecbsm3048545ejc.146.2023.04.18.00.47.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 00:47:57 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	dlemoal@kernel.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Caleb Connolly <kc@postmarketos.org>,
	Brian Norris <briannorris@chromium.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 05/11] arm64: dts: rockchip: Add dtsi entry for RK3399 PCIe endpoint core
Date: Tue, 18 Apr 2023 09:46:52 +0200
Message-Id: <20230418074700.1083505-6-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
References: <20230418074700.1083505-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_004802_027148_5E513EC7 
X-CRM114-Status: GOOD (  12.31  )
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

Tested-by: Damien Le Moal <dlemoal@kernel.org>
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
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
