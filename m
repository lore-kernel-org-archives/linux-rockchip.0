Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76B19C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qE2C3d+IMttU0DJgGhazLz7gmc1C+I9KNB0rFXwz7NU=; b=EBEGpdTXzAr3Fd
	YQxs3G8zggfN/LuqsWoRnhDa6Ng4LaQibX8Hyhv9MJILWVbX7lytWy9PtRt3CqerJHHhvsFZ8SXEt
	sduIbQtHFmlRIrM2L6BlRy71rT6kYmMYgjmLbI3i3WH83lOLiioZ/OQl59vPeexXMJ5V77BBW/zhO
	tr+eLufnq2AxpPi8VVj6dgNg9f/78WZT0JTQd5oZTu2ynskDgXymdUTqTe8jSMBGkKNL3hLXStw/I
	+pCCsVvvPbgjNjDvHjZfZ3b3QB+EoZhfmSBgHDOU3At9PeEE0pZz5qRwmh9dOlpt0VsOgpHEyM1Uq
	H9TSD1cH1SmofMyy/Z2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjc4H-000UYN-1O;
	Tue, 04 Apr 2023 08:31:05 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbya-000SyN-0J;
	Tue, 04 Apr 2023 08:25:15 +0000
Received: by mail-ed1-x52d.google.com with SMTP id w9so127285903edc.3;
        Tue, 04 Apr 2023 01:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596711;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RW4xQc3ikP0AK8TIDBwhgtC3jzWZc1PY5oJEvurirtM=;
        b=BQSCnClFnlxwWlNN3DOSoyRfgI2NVmn+NdADPC/2aHdYSzkKKHUTthLZBipKUbLxCR
         PrbrL8Mh683vzUiBtIuApELulhpDYzAE8x80zypjk0+ZaS9xrbjHcewQwoHw2GydXfh4
         ZLeljBSxSYlzbR3omrSk7/IwdNXMXy7eNs2wb0SFVknNsk63gHpo6/9LcK5s9PDrDLTi
         r7visnoeg8LIUkpMZ67/4hs71ss2XvzsesgKAewcLz9xcfTBeAHjxbazGV/M99lverDx
         QawVtzx9RFZQBTuLlDp3zeURb4e2JDDer6Fez0OgAqvO/ChrGhqskYpUVlink3iCmEjG
         xIXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596711;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RW4xQc3ikP0AK8TIDBwhgtC3jzWZc1PY5oJEvurirtM=;
        b=q0Ad/Kj/ChdQtDwr4Y6Oab6rSyYBts1VJHy4EpwZdjS8ddrQaoiUhS0CcPOv2W4iaM
         wkh58s3VZpJ9XrrG1+a465MKhAuyJ4qMhDDy2e9S2iOYilJePVYiQchf2PC8km3UGCyQ
         6uu/zvj9bJLdpIXf1uQp5HRXF04ErXw3+HF4qQ7wQ61Grljb7WCGDIb3JqHlgLhj5rIW
         ehsR91d3+VinmaeMSxSs8u1V1K5DoHsI8ZsxUXQkpooNa1DqYeXZXCOecdzPSr+KDQ/Q
         PMaj/ijcFWOXEj0oOzuSFI47IxfYnkzgM8IXJDpVdyG+JAcIVZkVQbLqv1IKrOsnwwyj
         lxhQ==
X-Gm-Message-State: AAQBX9ezssm/2NDvJqoShvdqewz/mhciGT0+ZxG/6nLCtGx+4bdeyeZT
	HtxgVFDu7F1xC/OiXdnub0A=
X-Google-Smtp-Source: AKy350ZtH/tPJlarxTbHi8MVZ4f+XMBRlz6L67phf+7sEXOHB2MWF3l6wyRM7erwq8A1xjNY6hXS5g==
X-Received: by 2002:a17:906:408e:b0:931:af6a:ad0f with SMTP id u14-20020a170906408e00b00931af6aad0fmr1328999ejj.76.1680596711395;
        Tue, 04 Apr 2023 01:25:11 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id s5-20020a170906454500b008e54ac90de1sm5640652ejq.74.2023.04.04.01.25.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:25:11 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: damien.lemoal@opensource.wdc.com,
	xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Lin Huang <hl@rock-chips.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 05/11] arm64: dts: rockchip: Add dtsi entry for RK3399 PCIe endpoint core
Date: Tue,  4 Apr 2023 10:24:18 +0200
Message-Id: <20230404082426.3880812-6-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_012513_797080_A3DD9C04 
X-CRM114-Status: GOOD (  12.73  )
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
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 27 ++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 928948e7c7bb..c16c6176cffc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -265,6 +265,33 @@ pcie0_intc: interrupt-controller {
 		};
 	};
 
+	pcie0_ep: pcie-ep@f8000000 {
+		compatible = "rockchip,rk3399-pcie-ep";
+		rockchip,max-outbound-regions = <32>;
+		clocks = <&cru ACLK_PCIE>, <&cru ACLK_PERF_PCIE>,
+			 <&cru PCLK_PCIE>, <&cru SCLK_PCIE_PM>;
+		clock-names = "aclk", "aclk-perf",
+			      "hclk", "pm";
+		max-functions = /bits/ 8 <8>;
+		num-lanes = <4>;
+		reg = <0x0 0xfd000000 0x0 0x1000000>,
+		      <0x0 0xfa000000 0x0 0x2000000>;
+		reg-names = "apb-base", "mem-base";
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
