Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1A51C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Nov 2022 16:39:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fk6WxTXnvE4zkj7GghC2GBdWtyaFsierF3OPvi+I8dk=; b=lsSUXxo5RXhdWZ
	egwt/eUPSAV0TY6PXzIjrz8gbP0ksN+u2GN1XvtR5E2QXshAPUFH6yXY87DRipxl4v7Xghmzepp17
	e9jOm3+y2SXkrGnK9UWwhmPGq496eDJjjJgoaIPtNl+9U2sqorCjS3BE6nT5V/wPDhZV72MRmNHc0
	8n3gXISbfbIrIKqkCABYYnHaIAceDJykQ2nLo7SYnUC2FxTNH4OPU6GXwPHBBdIpwlAzWO5efaFla
	jLl9SDgflHvJk9Wkt5DRSALWGRYjDP3kDXllsAduGRf91nl7niDwszQpB150YfNEFLPLaLCUywPHb
	LUUtHyrzvQoAoy6GuYsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAab-007ELq-Lo; Thu, 10 Nov 2022 16:39:41 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAa3-007Dw9-05; Thu, 10 Nov 2022 16:39:09 +0000
Received: by mail-wm1-x336.google.com with SMTP id t1so1483916wmi.4;
        Thu, 10 Nov 2022 08:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6vGKGpKWDMzYcbAUuUDkHFy/CbDqDYWCKkXDWqHYnr4=;
        b=Q4agGMu9FrZPtntxrQIAFveH0/JIGNUSfSyR4YNf+TmWoa1ZiwofC1eGe9KhUTGNBS
         KUEyBT+VMmIR0JySzGG3/9uromMiqWEGDIPH3AECyNe9D2lfHGzTkFYAeoAAj/wkzHU9
         YgMCGzN5CmuUHLMB7ntZekvR2fT7m0IC6AC6RuFunuNH/18UNLEkSCbu0abyr2nblKZA
         H9A8e+mc2Wnf9q9k9o3mHv4DRQeGqNA6Mz791EzN2Bltt8UQHLHyHUl13ElyUGP90Dem
         NuoDESrEBRTSp4spIaNpSSaPT3G3IKHNL1lzaYLV2HhjR0EQZZbeDrWU1w4s+UCKjpYq
         KMjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6vGKGpKWDMzYcbAUuUDkHFy/CbDqDYWCKkXDWqHYnr4=;
        b=j3299zT1KozQYEINt39Eomabpx14JU4FhSQRbhcHlnmI9piGtZ63oEaM33DEWNJjni
         gVTB9GXkolR28/XC01PL+YfbAF4romsqczJzFND0amT8ad9GxPqfgeMtMpZBwNfH0izk
         a6thXZrWvFHXnS4kKzMtZOPGO7UPEph3fHsI70Hn3yWKhlyrUtjpI2gaF17NXn8TXB6E
         d9kQY5RxtWwD6QcehuQy5LjDoYBKD5EriWC0WKb34ny4PYOkRxwekfhLp6qj4ps2aecb
         X9slpOj/v/VUURujr/98KZ3pxQNhEt5929Q/ubn3CV1NwleiIDT7MpphyZBJIxQ8tX7i
         ving==
X-Gm-Message-State: ACrzQf1Ed34pJ6Qjt6nc4PCKRTlKWQk/TyzBguv4SE2/64c4muuOmfmG
	FpibOxSpgoaqG2ReEreyEFg=
X-Google-Smtp-Source: AMsMyM7ZwI2nFHRbTL3g9oJmoWUv32HD7HJGF2LyrnDeRqXDfUNZTPc5cT/JW+pTCQTJjlq0FLi4xw==
X-Received: by 2002:a05:600c:2287:b0:3cf:4dfb:c223 with SMTP id 7-20020a05600c228700b003cf4dfbc223mr50937020wmf.19.1668098341945;
        Thu, 10 Nov 2022 08:39:01 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id f24-20020a1cc918000000b003b4935f04a4sm128730wmb.5.2022.11.10.08.39.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 08:39:01 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] arm64: dts: rockchip: Enable GPU on SOQuartz CM4
Date: Thu, 10 Nov 2022 17:38:42 +0100
Message-Id: <20221110163845.42309-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221110163845.42309-1-frattaroli.nicolas@gmail.com>
References: <20221110163845.42309-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_083907_117767_2074D68E 
X-CRM114-Status: GOOD (  10.64  )
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

This enables the Mali-G52 GPU on the SOQuartz CM4 module.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index 5bcd4be32964..6e99f049501c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -143,6 +143,11 @@ &gmac1m0_clkinout
 	status = "disabled";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
