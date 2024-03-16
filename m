Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 491EDC54E60
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Mar 2024 07:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FpNEbNy+/xCSow/6U9dl9CGKOStp+Fu6PL4PkJy9jpI=; b=YWIbwRSAUJTX3J
	7WIuhVYcdwwXVPtUvjmBfRYraFLZK+yHJscqB9mRyOudaITJqCViDYXyzP7ZEaCXoYtUM8e+1vf/Q
	t891JGK9Zuufy9m6JFyFMSYnu3KPMvBKuTCZIyhD8ICpf771k4ILP5aA6dl5rcr6RT9gjuKg5tH63
	fpnPnWd2FYW7qnwtGgOZXcgLU03SUmlIsaIN+ClI2aKy1npIj7XiC3g6MfHj/qHAuv/BEkg/31ylW
	JyX5+4h+RJmCYN3AiJVUkYrJ7//2CudR270LUZOc6fTP9YDAhohAKshgVuRlmr0unuT4tWykUdizA
	kTTXAIQX2O6RHXQN/opg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlODm-00000002ZcJ-1Pga;
	Sat, 16 Mar 2024 07:12:46 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rlODi-00000002Zal-1NrT;
	Sat, 16 Mar 2024 07:12:44 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-6e6ee9e3cffso1581002b3a.1;
        Sat, 16 Mar 2024 00:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710573161; x=1711177961; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7WfTnsIFEuG8lVPtUR0bn2tpdb2JUvvKpjMk2+P97Ks=;
        b=lm+DqecYbTgVI9mDDhP/NVSJcFcBCVztqWSqcLu6Ic2pJLhYXAPZXd55oHfQuQzeQj
         3doasrIppy96KyL0syHEKakLMgE4pSKqzrG3Y2evdOojAL7kc2t5HHjibHK5pUd1l87H
         uDmM0X3nqp8uxWm3T4+kAdqoVSUYfOLYxs+KOVSLziCAjXX4shZpfoJYDRCktyDVcWAG
         CSHCXbIIGNGJvV3mkgM8nNmpuXu9E5Xx20jn+LpibpXKJI6bUXGTgIPPqR/9uljYkWDy
         dVvhLuroUnjQwFrD39xlb867MWL4seUq8Im9v+SVtaGmQVmeF7ylZ9yWnoz563MlrYo6
         Pwmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710573161; x=1711177961;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7WfTnsIFEuG8lVPtUR0bn2tpdb2JUvvKpjMk2+P97Ks=;
        b=tNhY4pKIFoTFGlajtIoO41yfaM19qExn0ELYnSj88JJWdSc9bPJpXzo+L+Xro7j4EG
         PrUJSajdbOAu4YMJIyXzY+l6EFEc3cH6eswtWcauDWxdtt5wbVlmtVOC2ELgc9JUyqSj
         NdhNNTcJeSslK1STu8LjHOzGjL/Q7znclbOEq1j7hCh4t9BXdttgiAOEeWU3QYYeqoBl
         4LK6eItjMpuEAFFxyvMYVTm2UAypPfbljZkbUQ6aFOP+fFpe2hOawJA1MKRSNLhZR3n3
         ixvMKzlxALoILBNwblaauNYVkqMd3S/omocYjlTT0zVW04tuZ737Hj6qPAtbS7vMz8wy
         fcjw==
X-Forwarded-Encrypted: i=1; AJvYcCWHMT48vTbeH/9U6DoCgOLx4amknSxMSrB7mcHTlLeF0yq2Z4uv1jkqDdGIz4XwG4Ld4AEjTSzEZyk5Eb5kMXQr5iiQTg0R63n/B4Uf+ZvdSddJzrlzCDBNKXaBHkzCNoBhACbosLYjOFXLiu7+Bc67+RePQtmjjnk=
X-Gm-Message-State: AOJu0Yznhd/sQ9HF0fx66I/TEVVRTx5hPZ/WZk13DtOPC8lGXW+JN52h
	zc5YcuT/bP34dtRsTQgFmmO7xcLIdeOrfVkrUHauhXuLUshctj0G
X-Google-Smtp-Source: AGHT+IFL5CgUsQN+Z1dVTAuRhw5i9MmY2cG5v18vyAsPVCoaLVoPGrjaT+eycv7n/u4Q483kimhe8Q==
X-Received: by 2002:a05:6a00:23c2:b0:6e6:66b1:654f with SMTP id g2-20020a056a0023c200b006e666b1654fmr8829865pfc.15.1710573161198;
        Sat, 16 Mar 2024 00:12:41 -0700 (PDT)
Received: from localhost.localdomain ([221.220.133.103])
        by smtp.gmail.com with ESMTPSA id x18-20020aa784d2000000b006e5a915a9e7sm4574651pfn.10.2024.03.16.00.12.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Mar 2024 00:12:40 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org
Cc: robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au
Subject: [PATCH v4 1/2] arm64: dts: rockchip: Add Hantro G1 VPU support for RK3588
Date: Sat, 16 Mar 2024 15:10:59 +0800
Message-Id: <20240316071100.2419369-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240316071100.2419369-1-liujianfeng1994@gmail.com>
References: <20240316071100.2419369-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240316_001242_417578_4C225B5A 
X-CRM114-Status: UNSURE (   8.48  )
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

Enable Hantro G1 video decoder in RK3588's devicetree.

Tested with FFmpeg v4l2_request code taken from [1]
with MPEG2, H.264 and VP8 samples.

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 87b83c87b..2e411c80a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -646,6 +646,26 @@ i2c0: i2c@fd880000 {
 		status = "disabled";
 	};

+	vpu: video-codec@fdb50000 {
+		compatible = "rockchip,rk3588-vdpu121", "rockchip,rk3568-vpu";
+		reg = <0x0 0xfdb50000 0x0 0x800>;
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vdpu_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	vdpu_mmu: iommu@fdb50800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdb50800 0x0 0x40>;
+		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
+		clock-names = "aclk", "iface";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
 	vop: vop@fdd90000 {
 		compatible = "rockchip,rk3588-vop";
 		reg = <0x0 0xfdd90000 0x0 0x4200>, <0x0 0xfdd95000 0x0 0x1000>;
--
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
