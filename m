Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C162C7619A
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 23:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AA4gY3CQ1GP+r7cFQ5x3REfzPhjPI3D5tMwORdcPOno=; b=SS6Sk3JaMk/qWr
	JJX30RtKdwT4TaaGok/4A6XlIT064SNkqiNWSyIEqN/xhvWgsCYRhX2gQlGzPaBoeLNqGcs5Ned7D
	l47U47O6l59X6dawb1VUufEEQzIOW2LxBZdM6q0/cQu9fnYenEga2Yej84wlyouXcAovTRSWreKqJ
	8iL8zl8WRfA4lwt+ubUSVFLncaogC9ZwLjFnJboU+8usUL9pGrL4fYtUpLCOE9+YBtnZkcEXZzG7Q
	zIKXmu7yTowu61zzfwi5wa6XpiVYlL4apXCaRXiX3PQO1i30T/Z6fDfkj/SYfxoyIKOy04XPOeqcc
	exyMMy37lVgGebKV4mBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pi1YO-005JQt-1T;
	Thu, 30 Mar 2023 23:19:36 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pi1YJ-005JPQ-12
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Mar 2023 23:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1680218369;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Lx021jiSXTc6pYyl7LmIv03tfyJDHewW1CEauW0rIQw=;
	b=QoxI4bYdHUkDc1Y8HjE96rc719nXbbursL1Tp1cgaHREJYC4rh+JsAwU9aREw7UuEuOXIz
	T/0LgDSxTiT9eW+fdcXHxQtBKd5MJz54o7kFMlpzSd9Ol62y7X878riGIXs7KU7GzC6iX5
	M1v7bBEfPSS+8BnZr4uBKNHcMBs+F30=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-36-qtZnOvlJNtif1qNhMVe9CA-1; Thu, 30 Mar 2023 19:19:28 -0400
X-MC-Unique: qtZnOvlJNtif1qNhMVe9CA-1
Received: by mail-wm1-f72.google.com with SMTP id u14-20020a05600c19ce00b003f0331154b1so2217683wmq.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Mar 2023 16:19:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680218367;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lx021jiSXTc6pYyl7LmIv03tfyJDHewW1CEauW0rIQw=;
        b=F3htIsH8spGpRY3xB4ppCUYHahB0j2Ef6hUz6w6Tu/HHtPCOSmu7niwY2eWD+CKtsj
         n7ZPc2VcbQmZsL2rWAgfz1UBJqX4G8wr1Yuy3bss3IFaNbZdfIeXo1pKAT1d1QCtD95t
         y4jmbK9YgTAZfqe86Sdc3UiDdMfcZ1D2t8Vd0Dq2CJJTr4TFtxzeoOJVt/+UTulgSFxL
         wsMYBmw1OFcxG7g05Q8TATbtU2KY4VtzaSPDoj+zq78VXS/aTvfEQyutNIfxuqsUiEAo
         XbXLzx6o3AuWQVS48NkL/Kl8Aibed/XzNfLNS8CKPa2TJWV0/bL/rPA5o+2MxuqPS4Jr
         qkrA==
X-Gm-Message-State: AAQBX9f/7Xo/+d+T2OF2Z+4C3YB9PUYdramFGhpnaQdPjUfECJLJG0SR
	tBeYTjxo6mo+j3KMpy60EvzwCeXpncXVGQ/EEa+OX+yI7iFn7MLPeUtxHW6VdZNkvk8oBuqSdrd
	7pMd5nCtlxWuJtFLAbcoy4nZW23gh80Kf
X-Received: by 2002:adf:d4cc:0:b0:2d0:2d4:958c with SMTP id w12-20020adfd4cc000000b002d002d4958cmr18784588wrk.60.1680218367551;
        Thu, 30 Mar 2023 16:19:27 -0700 (PDT)
X-Google-Smtp-Source: AKy350YIJANJD5ndsOw5e6X1tNl3/XEP4RjGZCkemP4f0WMNIUtUXUh4J/Z7TRhR6CnBmTTGwrSw1g==
X-Received: by 2002:adf:d4cc:0:b0:2d0:2d4:958c with SMTP id w12-20020adfd4cc000000b002d002d4958cmr18784568wrk.60.1680218367087;
        Thu, 30 Mar 2023 16:19:27 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id f9-20020adfe909000000b002c7163660a9sm536059wrm.105.2023.03.30.16.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 16:19:26 -0700 (PDT)
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
Subject: [PATCH v2] arm64: dts: rockchip: Remove non-existing pwm-delay-us property
Date: Fri, 31 Mar 2023 01:19:23 +0200
Message-Id: <20230330231924.2404747-1-javierm@redhat.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_161931_997084_94FE76B0 
X-CRM114-Status: GOOD (  11.34  )
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

There is neither a driver that parses this nor a DT binding schema that
documents it, so let's remove from the DTS files that make use of this.

The properties that exist are post-pwm-on-delay-ms and pwm-off-delay-ms,
defined in the pwm-backlight DT binding. If the delays are really needed
then those properties should be used instead.

Brian Norris mentioned though that looking at the first downstream usage
of the pwm-delay-us property for RK3399 Gru systems in ChromiumOS tree,
he couldn't find a spec reference that said that this was really needed.

So perhaps it was unnecessary added and a simple removal would be enough.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
Reviewed-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
- Update commit message with the information provided by Brian Norries.
- Add Reviewed-by tag from Brian Norries.

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

base-commit: b2bc47e9b2011a183f9d3d3454a294a938082fb9
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
