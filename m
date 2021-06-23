Return-Path: <SRS0=6gll=LR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A755C48BC2
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 14:59:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BE536100B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Jun 2021 14:59:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2BE536100B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdTJrQWKFNwzBc8mEeLa+gn2StZb4eQvsevKHU/7+oQ=; b=w0MAVF1gpLSlWU
	X3jU+stIJT6aodcY9I+YmgDxcuZLD3ABAAUCNmbENBgiEpjrJcEplGTT614fbGkO3KMwOvCDl1gnJ
	aSDAzlS702mQyzhuVeeU3Fe+andtVUXpsC2P7/8ScYfGjPp0NOQ3ESzd5SyqfomxTfxfN20bQuwsT
	sLa1oi3STmw7kh+2fw4O8PA6x5dlKVKP5MrlZ94G4vIRdtlj3vqo0bbK0ae57h7DTpeiCW26O0SAn
	Kqpx869qVQQekNBO3eHC6ctmrlUvC6lkVwhx/9k6XsCXhGFjzzxq2IqI0edwYQpcE2wRFj0myzqol
	pz4D7rR3XhYLmISVfHhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lw4Lp-00B4ia-QH; Wed, 23 Jun 2021 14:59:37 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lw4Lc-00B4hY-Us; Wed, 23 Jun 2021 14:59:26 +0000
Received: by mail-wr1-x42c.google.com with SMTP id d11so3063298wrm.0;
 Wed, 23 Jun 2021 07:59:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rgspf46aiQviRMOC9Q3QVjuGGzAywfUO2vjWnpCd7FM=;
 b=doLMYYZf9Ic92WHKcXaYf1NRPdNMdNPlRNtYsrkKRXUsb9N5j+OWX5PkjkobwXrTJ1
 GqSdwKT1Qxs0GewjFzMCqwxFRIPRM1focjsEIJQD6fxxWd0z0slO+JgL8Va8CiCRNgyr
 5mgXVg5TYOMzDouFQtq90066lOY6OXtreD7QCU2V8+lI9GcU7A5eKFnOaI7ghV6uN/4N
 gPbVIslOhRf74uFcAURC/b8gdNOEFjLqpcAn/nHFDXr3w4tKqvLNJBeupvhAxLu1LhYy
 QoG+dT9yj4pP60Ui5nfO6lZ66C9XLOWcPuuaAhPpTUbKxPVHw/d6ngOcjRG9rAjqZpCR
 qOJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rgspf46aiQviRMOC9Q3QVjuGGzAywfUO2vjWnpCd7FM=;
 b=h0idKEtv3ZdwhCGEo1V4Uf7pXz/ruSq/QCRc8Lqg54/JoyZDoSiV+HMjqmoqtiyNvs
 ACNuSWsVYWRUDIDa79VHU1uDh5uxZonxktcC+64VtTIqmNWi2DBIez4m2UJo2P2mqMKF
 L6x5mIzcy5vMOv5Tw98vRP2b+5M5XHP2d8EdUUCP5Roy1391G+J3mZ4aTjP/jf6VkIYK
 GyLVGb99qdg541MsjWKJAVDSU9fqNTffiOmOTun+hxeJ0YM0BVPVNROf7dPPZ1I6Q9d5
 gjtfQwjHP97a+54XPbgeTRWEwYqe+vmxTet9h6qvL1Z6v5jeoxdTgxX7V+QmJw2ejnyG
 6XzQ==
X-Gm-Message-State: AOAM533Gd2xt9Rx6y0YbkpTNoP+rhnCz6AxEzSSMUfANei2regTzr4v9
 a0TdWIdJfyDLtkkGVtIgBw==
X-Google-Smtp-Source: ABdhPJwNwSw2Bc/LOuSVHV1AObnhRNMS8wUppy0twDkW+2tOffI8MC+j9MxQsJ/8sBnjU1u/dl1shg==
X-Received: by 2002:a5d:50ce:: with SMTP id f14mr466201wrt.259.1624460363556; 
 Wed, 23 Jun 2021 07:59:23 -0700 (PDT)
Received: from localhost.localdomain (ip5b434b8b.dynamic.kabel-deutschland.de.
 [91.67.75.139])
 by smtp.googlemail.com with ESMTPSA id n4sm301012wrw.21.2021.06.23.07.59.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 07:59:23 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: Add sdmmc_ext for RK3328
Date: Wed, 23 Jun 2021 16:59:18 +0200
Message-Id: <20210623145918.187018-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210623120001.164920-1-knaerzche@gmail.com>
References: <20210623120001.164920-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210623_075925_049218_7A5A5422 
X-CRM114-Status: GOOD (  13.38  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

RK3328 SoC has a fourth mmc controller called SDMMC_EXT. Some
boards have sdio wifi connected to it. In order to use it
one would have to add the pinctrls from sdmmc0ext group which
is done on board level.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---

 Changes in v2:
 - fixed node name in accordance to DT bindings (Johan)
 - seperated patch which adds reset controls for the
   other mmc controllers (Chen-Yu)

 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index da84be6f4715..aa11bce576a4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -980,6 +980,20 @@ usb_host0_ohci: usb@ff5d0000 {
 		status = "disabled";
 	};
 
+	sdmmc_ext: mmc@ff5f0000 {
+		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
+		reg = <0x0 0xff5f0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+		clocks = <&cru HCLK_SDMMC_EXT>, <&cru SCLK_SDMMC_EXT>,
+			 <&cru SCLK_SDMMC_EXT_DRV>, <&cru SCLK_SDMMC_EXT_SAMPLE>;
+		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
+		fifo-depth = <0x100>;
+		max-frequency = <150000000>;
+		resets = <&cru SRST_SDMMCEXT>;
+		reset-names = "reset";
+		status = "disabled";
+	};
+
 	usbdrd3: usb@ff600000 {
 		compatible = "rockchip,rk3328-dwc3", "snps,dwc3";
 		reg = <0x0 0xff600000 0x0 0x100000>;
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
