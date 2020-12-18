Return-Path: <SRS0=llJB=FW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC5E3C4361B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A32DF23443
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:42 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A32DF23443
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qiJRSEISohkhnMXnG0vGdgu4UFOALdNYc9sJ/X/YkCI=; b=AHhXqYeyKGbcPfdQGVXahmVdHD
	dtHNE8ogeI4uhVXUEHV4+QJ1IFzv8ZeQ7Nogo4cvsiJBpmj/u19oZMt0vb+5KgCHEhIOTB5Yc+lCu
	wc18LN3y4gw1M/OOOFoMOasBsK6xEda3Mm+CB7RW9S0QrpRPQg4OWOjlcMCjU1JyPQHV5TXDQplZP
	8kLDEUfYmqMrZTuFfTbHaI5AFGERWJaZsTfs3jYZ3EdpqlBavGmExtpD0K1DS/J9+/TpsoNkctUcF
	B79GH+LvFsg2Hl9qUZyVJW9Hr8Ep8NTCRXkXkbFP+qUhMLAvrQShBab8+g2oRawM+t0EtT7LlVD8z
	YYObnhYQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqEWt-0007GS-Em; Fri, 18 Dec 2020 12:06:39 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqEW5-0006yd-Kr; Fri, 18 Dec 2020 12:05:55 +0000
Received: by mail-ej1-x629.google.com with SMTP id x16so2852594ejj.7;
 Fri, 18 Dec 2020 04:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=k0nDcuZ8QugfOX5+RU/cJ2JSrJVjKHFnRTpYUjY4q0Q=;
 b=eQcKsTMisHgJKl7nf6cbOe0rE1W2HYMx3136Cuvaf/o19Z22JPA/RgGY+26s9aU5bM
 hWPv8axClPU4jinaXPNwebsblpKZkwWZQu1BWwKLIXQKXheBY66+oOLZ9r5W/lTykwcQ
 T+bbmXxJy432P9Bp70DmB/u1A7Ycf2vq/FB4jJkN0Gpa+TU+8v9fQLDbbAkkPXiAZWHn
 wDsMMdetwVuQYucZIbdEaxcCOcf5j0jcYAQeqKcNw/IWYGtf/+KRQZsBCdiV6r/P1A9/
 vw5pOBzqxI1S3ZV9AQolVtL7PGHp/Xl7JK2isvvmgdHKH8pR/rJi9bchWpnkkJCTZhmr
 dbGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=k0nDcuZ8QugfOX5+RU/cJ2JSrJVjKHFnRTpYUjY4q0Q=;
 b=Popzis/jnbTFF1eNiqD6/7B8JnKttJu3B3tHKPGpQ87wZYIxR4sJkmsAE0uR5jj63U
 +9748Kh1qnqldUYdfQzzK5jFrXTl1NFQACvBR0dOuMs3/3nT3vJI4jL8CONpb7gcJLIM
 0s6n+S8TWpVNXH+McofuJ+saGAn+ViAGnjT2MLdtZtjfo58bD1iBn9mrVsE9cX+OwA4m
 lmacM1FB1/VNfXgklKyzvJF/6Q6PoqwhKK91TeEwU7jh/1elylNiFInGqGfti8Lxrumf
 tj4KWzzFzORRhOdfVtmKb7/feLVcrpZ49xN2AinYAdezG+W0MV0CDx8r+cH4RQdTIRLy
 AjaQ==
X-Gm-Message-State: AOAM531/2DenSmmBpXsvW5c4dUOr+NHI7zfz7ff+zloLKJNfs2iHPmOd
 EyhWe3shb6FFic2pCCcIbb8=
X-Google-Smtp-Source: ABdhPJzI4ZMOUEYRg33YHLpuyl5z10Loxckhv/FIOQvpWiqfJ1GY0QvxwqrWdUdSKjhCxARoswbCUw==
X-Received: by 2002:a17:906:350b:: with SMTP id
 r11mr3753211eja.143.1608293147503; 
 Fri, 18 Dec 2020 04:05:47 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ga37sm4775832ejc.96.2020.12.18.04.05.46
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Dec 2020 04:05:47 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 3/8] ARM: dts: rockchip: add new watchdog compatible to
 rk322x.dtsi
Date: Fri, 18 Dec 2020 13:05:29 +0100
Message-Id: <20201218120534.13788-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201218120534.13788-1-jbx6244@gmail.com>
References: <20201218120534.13788-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201218_070549_721211_3CE4F4FC 
X-CRM114-Status: GOOD (  14.42  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, jamie@jamieiles.com,
 wim@linux-watchdog.org, linux@roeck-us.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The watchdog compatible strings are suppose to be SoC orientated.
In the more recently added Rockchip rk322x.dtsi file only
the fallback string "snps,dw-wdt" is used, so add the new
compatible string:

"rockchip,rk3228-wdt", "snps,dw-wdt"

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 48e6e8d44..9910f9b5c 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -385,7 +385,7 @@
 	};
 
 	wdt: watchdog@110a0000 {
-		compatible = "snps,dw-wdt";
+		compatible = "rockchip,rk3228-wdt", "snps,dw-wdt";
 		reg = <0x110a0000 0x100>;
 		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_CPU>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
