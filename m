Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCF59C7619A
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 22:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1w+JZjpbKNAnMJtMuLg0q3XOaeALhnn4S8/UoViXuAU=; b=tk5dq3Tolmq+L/
	ZbEBrC9v5XRaxdi+MHwbtcukILenlTctVASV6vgaQg5rJjggu+vFdAX7sf6CcJwqg4a7HwtwOwBRN
	hlLDiXjkjxKVFGLrviVaimr8//9nbXrp8eh5Kn3N4rZ+A/YQGAtVBFMO0N+CtEm3bn6l8e8QhokC2
	KefKoqokvJlGKnb5olsM7dl9aocpXnLr+5Nj+MRGx0boexOemuzbCVjObnSI29NwN8SWr1WQxRoo1
	dIcF9tbRoZczdzmMSOaNVAHtoNZVwDKGiIxj6m9cLbYi85VmRpm6Ulq9mxGWY42ZpIiJ3OKAi9rQX
	oeDL+Z+qBZntJhk+fubg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi0MP-005Ak3-0I;
	Thu, 30 Mar 2023 22:03:09 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi0ML-005Aib-08
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 22:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680213781;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=+accSwBqAoktxjFKHOVQ5nhVitWw2RmW/ogboNO6PkE=;
	b=Of6u3ObyDyDwqve1pApwBjStj5YaYcTm4zEYVAaUlk6kyE1JrNyFlH0wy3FgsJWPuSJUXr
	5BiJxlD2NnK3oZyzuPpCv5sys2J9AXKqKi3vFEZjs4vVCPZ6wrAs181dDHtyqBf2QI2BP6
	xBipXClJqTC8jWcJyQI7FYc3qgo65Fc=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-21-2tJuQffVOauZC5HB5y2LIw-1; Thu, 30 Mar 2023 18:03:00 -0400
X-MC-Unique: 2tJuQffVOauZC5HB5y2LIw-1
Received: by mail-wm1-f72.google.com with SMTP id i4-20020a05600c354400b003ef649aa8c7so8877624wmq.6
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 15:03:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680213779;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+accSwBqAoktxjFKHOVQ5nhVitWw2RmW/ogboNO6PkE=;
        b=4grvdKjQX7NVyVg9txIPoZPpIoEk9qd3WhY6n2rXeG8Sg12h6wIi22pfuSQuM/QV2A
         j+SE1ezpzmWzYgjkEEqtepceXD5jexCcjbwlIcqHZIpyDV43YcweEYrykyYam6HgQoBD
         lsv4SY4vdc5bFCMX6ZLGX+GBdnV3+si08nuvezq/G2WnkDn/3f27ou6C0keDq1qHFd44
         AqT/DlHVijKATipP6y3lc8fJ/t9sZJ/pAUdC95Asdhok9t2gyd7aYc0U7nYe39As2ZI/
         3LFc4C8fC1IhrajAo8pHPliM9qnu0RgFT0ndp6G2/6G2NA906kdmbva6ZEBocJ6Mat1l
         qHYA==
X-Gm-Message-State: AAQBX9cAnbpUfzKbKhHA8UnfGrXVcZIdrRrMjBXMSmBS+MQ9gLhoS61o
	ohVPvd3dRpSJS6fS7JhMuJBy7LAM+jEwPSxhD9jEQn11ohD3cCNB9kSoom4U2c4dKoENj94I5Dz
	vIyKKcL7/v36tpCMT8M4FfnzwCaDAZ1/r
X-Received: by 2002:adf:e70c:0:b0:2ce:9f35:59c7 with SMTP id c12-20020adfe70c000000b002ce9f3559c7mr17075845wrm.45.1680213779110;
        Thu, 30 Mar 2023 15:02:59 -0700 (PDT)
X-Google-Smtp-Source: AKy350b31TNBPqPj39e+fe++ArpC9hrzqebqcnE01Owm77OMMqIbVzdWSh+zdJEPLJOUUvu9L4ZKRQ==
X-Received: by 2002:adf:e70c:0:b0:2ce:9f35:59c7 with SMTP id c12-20020adfe70c000000b002ce9f3559c7mr17075830wrm.45.1680213778776;
        Thu, 30 Mar 2023 15:02:58 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id y11-20020adffa4b000000b002c7066a6f77sm449363wrr.31.2023.03.30.15.02.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 15:02:58 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Javier Martinez Canillas <javierm@redhat.com>,
	Brian Norris <briannorris@chromium.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Douglas Anderson <dianders@chromium.org>,
	Enric Balletbo i Serra <eballetbo@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lin Huang <hl@rock-chips.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	zain wang <wzz@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Remove non-existing pwm-delay-us DT property
Date: Fri, 31 Mar 2023 00:02:51 +0200
Message-Id: <20230330220251.2388494-1-javierm@redhat.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_150305_155061_C54CB60F 
X-CRM114-Status: GOOD (  11.54  )
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

There is no neither a driver that parses this nor a DT binding schema that
documents it so let's remove it from the DTS files that make use of this.

The properties that exist are post-pwm-on-delay-ms and pwm-off-delay-ms,
defined in the pwm-backlight DT binding. So probably what these DTS want
is something like following:

        backlight: backlight {
                compatible = "pwm-backlight";
                enable-gpios = <&gpio4 21 GPIO_ACTIVE_HIGH>;
                pinctrl-names = "default";
                pinctrl-0 = <&bl_en>;
                pwms = <&pwm1 0 1000000 0>;
                post-pwm-on-delay-ms = <10>;
                pwm-off-delay-ms = <10>;
        };

But that should be follow-up change if that is the case. Because otherwise
it would be change in behaviour, since currently pwm-delay-us is a no-op.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi            | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 1 -
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi    | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
index 083452c67711..e47d1398aeca 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368-evb.dtsi
@@ -61,7 +61,6 @@ backlight: backlight {
 		pinctrl-names = "default";
 		pinctrl-0 = <&bl_en>;
 		pwms = <&pwm0 0 1000000 PWM_POLARITY_INVERTED>;
-		pwm-delay-us = <10000>;
 	};
 
 	emmc_pwrseq: emmc-pwrseq {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index ee6095baba4d..5c1929d41cc0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -198,7 +198,6 @@ backlight: backlight {
 		power-supply = <&pp3300_disp>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bl_en>;
-		pwm-delay-us = <10000>;
 	};
 
 	gpio_keys: gpio-keys {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index a47d9f758611..c5e7de60c121 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -167,7 +167,6 @@ backlight: backlight {
 		pinctrl-names = "default";
 		pinctrl-0 = <&bl_en>;
 		pwms = <&pwm1 0 1000000 0>;
-		pwm-delay-us = <10000>;
 	};
 
 	dmic: dmic {

base-commit: ffe78bbd512166e0ef1cc4858010b128c510ed7d
prerequisite-patch-id: ab73fde77786baf8fa44882125c5ce864771371c
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
