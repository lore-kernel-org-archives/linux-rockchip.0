Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27001C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Nov 2022 16:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0ekTSLSpXjTNWnWj6/aloULPBPYn0WXHl8vUmEB9Ks=; b=coMW2O+6zYTi6r
	3fPhoR29PXoNGcg5bsMnNbhY8TBivzT4pH2ccL5spgbptiDslSZ3lquBtVFIy8tmHcD7PjKX2FuXo
	/ToC9WNxh13i2UeIkFGIYQs3ofI2xOTf08zIrcyyR1BdtopWEt+rFsKztbGypeWJ/9AQKFIP2tMzd
	EYuRn8pvOC/yhlwZvgvBZexTT9+CuttOIizWHWebVBcawGtalj9Rrh4AB9tKhket79aLo8VKdF83B
	EmeyeXz1AjSmXT0kEPFYqx0cfOQy/t2gH+lX4kC7zWKm3nv/AoHv3cTYcI3zeia2+6oGLTL/VNScV
	GY8fEsykwXybbkB7KdAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAax-007EaX-FN; Thu, 10 Nov 2022 16:40:03 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otAa3-007DxO-8g; Thu, 10 Nov 2022 16:39:09 +0000
Received: by mail-wm1-x332.google.com with SMTP id l39-20020a05600c1d2700b003cf93c8156dso1516564wms.4;
        Thu, 10 Nov 2022 08:39:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ijKNfiunV63AFU9RzYinLsQfMGW1tKqr0LKOgrxroKY=;
        b=EMqGCre5J9kfTG9I5KlsFPNleC+UqzrVFOs6xP66CfIIafZnrfYSvi6ATfpMfinQP4
         ilan3jK5keaNm+KMC8ZFADeyrmortKC4u3vkTRG4dzxYYrewbu4IWEa22PchUQswMfZ5
         643kK9HiTLor8JKeFuBeeEjY7lgJCWkMRaIbpMQ2yTJVaKHfhnHYWo8y1mXEpS4R/EfK
         NtL1acDDpJMqzbwGWF8pH3V9sZ4teyLaPkL+pSaIp+PpxMFPJ0amP0Zfc7Fngj0pQPVb
         nT42eo9r46YkmdBZx0mtNAXbrUzh/Mhoxdnb8VA7l38mG5M0CywYdae6szuLHWxvdJ0F
         qX7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ijKNfiunV63AFU9RzYinLsQfMGW1tKqr0LKOgrxroKY=;
        b=zZrud4Vy07a/L4UelwJmLlvAvDZgOALLShcw4b1YHO6BuXqHE4+m+owgq2eO7c42Vn
         3/1Vvrma4HvdedBYmNiL3xy9Ufkm9OWUF2L4/pnBmrJjF0Q4du+IaF2Y4rSrIO9dfPwP
         yOoLVAv+ZQbpkUBHinyfP2UcJC97H8jTe+pZON16Yr/6vh1EKBD8hZc+VSg/gHzvqbUp
         /bRBeGU3XmrDgmNa6ixQmLDSdy4tNN1EHQGvKpSNTGjdv2+YoGf2KYLZA4G3f67R8ef3
         KM1pEcMZRQUa5IS0XaZbS4aL+6vrbS8Lz1A/T35xtZe4vy/A4v3TK2LWdxtN/Wp8eM3n
         UsIA==
X-Gm-Message-State: ANoB5pkR3P3E0tz/X+18al7z+3BQhtcwAWCxk1rwsGbixlXoX9ZVe+kW
	m5Pv1ZZkKAmcZ6Jl1NE4cRY=
X-Google-Smtp-Source: AA0mqf7qZFMjGuzFJyQg70wgGaO2wLzSY5qmfNk3w9AcE5UxI5946LDXcwJeH+PwqOwjCzNbtV5wQA==
X-Received: by 2002:a05:600c:2d44:b0:3cf:aae0:8367 with SMTP id a4-20020a05600c2d4400b003cfaae08367mr14577034wmg.132.1668098344929;
        Thu, 10 Nov 2022 08:39:04 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id f24-20020a1cc918000000b003b4935f04a4sm128730wmb.5.2022.11.10.08.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 08:39:04 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: rockchip: Enable HDMI sound on SOQuartz
Date: Thu, 10 Nov 2022 17:38:44 +0100
Message-Id: <20221110163845.42309-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221110163845.42309-1-frattaroli.nicolas@gmail.com>
References: <20221110163845.42309-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_083907_363498_61F94153 
X-CRM114-Status: GOOD (  11.92  )
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

This patch enables the i2s0 node on SOQuartz, which is responsible
for hdmi audio, and adds an hdmi-sound node to enable said audio.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index 0bfb0cea7d6b..1b975822effa 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -178,6 +178,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -446,6 +450,10 @@ &i2c4 {
 	status = "disabled";
 };
 
+&i2s0_8ch {
+	status = "okay";
+};
+
 /*
  * i2s1_8ch is exposed on CM1 / Module1A
  * pin 24 - i2s1_sdi1_m1
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
