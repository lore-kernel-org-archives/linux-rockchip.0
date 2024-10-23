Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9CBDCFA45E
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Oct 2024 18:16:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Wv3zIY+4qZEKX+fwTCFYhXTyZuP0M0v3JmjMmqJ4yM=; b=EO6Ft9A7NO11v/
	SjLAHYMWItck/86/Ca6DTXVmHENywe3IuEZtpHpiNTordx9AkP0Tfon6Sqk/BriBBdYKqS71/gycI
	PJtD7vZS4EWY87EqceXTYaKHuK9sgyz9MIzhcAvce+oDH7WKSfnuFE3BG1JqIrMxeKdTg03ijtWUE
	z9sATjNI3nHkRRlinqQ43gtTxXucnlFnJg8Pz8vegvoBd+beFh6NSpIu4fJeb81MILmOORuCNszCI
	nDWRH+A9ph2Pp/WMqK7EPnJAbDerz8rHxsdhDoJWJRi1xYwCiEYQHGOY/z1VFnBlxPrjF+ute9Y7y
	mEKOkMpnKZuvqHUZHVRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t3ftl-0000000FUN5-2C9L;
	Wed, 23 Oct 2024 18:15:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3eSZ-0000000FCXV-2131
	for linux-rockchip@bombadil.infradead.org;
	Wed, 23 Oct 2024 16:43:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=XbAEQp9IlcObfJg16Nbp35ZDF7R6MmeV3O52vm29o4Q=; b=X9Ur1fR6EBvGI0pI2qyzXLzHGp
	wZrEant20ILmwkhVLh6yUZRPmubdRLuOCL7zqO8bL9k5iM3iRXcrxIKVfs0U+G2JOFXJeQl7Fuxny
	SQyP0+AopZ3Cys67bMB0/bifbHmiIv66O8e6qzse6xPSXllmKPUwb6K5WNNySXBCaduF77NK6jxgV
	Cvaawa/zsxEUoAzfKsaHmeW3eILx4Vf23/t0JlGufvsZk268fxroSeIozxGctT1n5t4+a/TqotCzh
	uRVUWJOV2nX3EedMbqEpyRJTUHaYggBm2CkGM4MRxKr1IR+zH6RwL+6sGUk7Tjqc3nqvyc7PPKGWL
	JBFc903w==;
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t3eSW-00000008SzR-25bJ
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Oct 2024 16:43:46 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7181caa08a3so8945a34.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Oct 2024 09:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729701821; x=1730306621; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XbAEQp9IlcObfJg16Nbp35ZDF7R6MmeV3O52vm29o4Q=;
        b=LJH/fFfi2V7ukj7MjAvzq+NeqsdkH/pu6l5v1tkp8ihN6056Ox+NtI2kSex9Z3BWz4
         Z6mlQJJyKHt2sLwAjYXMTpTjcMPHfUxs++naCK+jV3g+PGtCeBUVwPCTB3jIAPG9fJ5K
         5eY63bK5ZPd5EoDF4GiD7asrOhE1Rh1HlYP/fPGt/Ct1+tNhEVMJZkgkoBb44xy4MeYt
         vaLOrXppmmyl2v9FDH5+ZtIRvh/10piW6h3CiCcOVBAKYFRZfcIu7agnqbW1lBraL5c4
         pmCVw+sL2dbNP2NriJo2wj+uGf1USGgqv4CaBTtJb9pLq2Yi3zxLU5yH4+ECfTLOh531
         Ur9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729701821; x=1730306621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XbAEQp9IlcObfJg16Nbp35ZDF7R6MmeV3O52vm29o4Q=;
        b=kmnJxpVhh2DmGLBghT5nCOqNUR5bbDD5CScyK3nPVOBKGzjufEfm1/uheZoClBdvxb
         w4C+Krm25vz9mUTq1Hg1gVQ4hV8Z5/U1/6BDZpd478M3wVw6Z4OqZOXzi50a+b1ghEXJ
         Gi4eTzgnnbxZP0c2g8KwJQnluJqTFqbiVUDCTaNAaT5TYwbz6PVo9CJ1jjkg4qAye5eT
         +vLocdyG9ssaddo0AOHV95dK2PeFGYP2Jp8KNbSaAeHXpaPnWD0CZACtN5bTebAwY9X3
         Oh2f0ZHY1N+hAGCu0iGx7yraxQGzv3COJrOlK3t0e875GBLWjMxRqnovWQhY9lLGxjI9
         DMzg==
X-Gm-Message-State: AOJu0Yw+3rvOqgMhQceGlhxobGcT2pUNQZ8DBgIgZXPq8DeN0RXVrzcR
	AgSaZS0e9Y92Q1d99NwpFbmxPOMgedBj0BzlNU14eZzGnwqQ9C6HQobZ4A==
X-Google-Smtp-Source: AGHT+IFI/wLrdamr7GU1kFZaUKj9R5crsNO81QZ1JoAHFx1j4CLac+CYdttdHMkC1XF1wvXxr6Ks5A==
X-Received: by 2002:a05:6830:65c6:b0:718:15a9:505f with SMTP id 46e09a7af769-7184b2a2775mr4189478a34.14.1729701821051;
        Wed, 23 Oct 2024 09:43:41 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ebb7a0948esm1861367eaf.15.2024.10.23.09.43.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Oct 2024 09:43:40 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Enable HDMI0 and GPU on Indiedroid Nova
Date: Wed, 23 Oct 2024 11:41:04 -0500
Message-ID: <20241023164104.66282-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241023164104.66282-1-macroalpha82@gmail.com>
References: <20241023164104.66282-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241023_174344_649899_61FE34A5 
X-CRM114-Status: GOOD (  10.37  )
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

Enable the HDMI0 and GPU for the Indiedroid Nova.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 56 +++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index a4b930f6987f..547b3ca881e0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -5,6 +5,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/linux-event-codes.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588s.dtsi"
 
@@ -50,6 +51,17 @@ chosen {
 		stdout-path = "serial2:1500000n8";
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "c";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clock-names = "ext_clock";
@@ -242,6 +254,35 @@ &gpio4 {
 			  "", "", "", "";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
+&hdmi0 {
+	pinctrl-0 = <&hdmim0_rx_hpdin>, <&hdmim0_tx0_scl>,
+		    <&hdmim0_tx0_sda>, <&hdmim0_tx0_hpd>,
+		    <&hdmim0_tx0_cec>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	pinctrl-names = "default";
@@ -919,3 +960,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
 		};
 	};
 };
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
