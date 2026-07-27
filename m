Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FEE7C531D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 17:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8DnN/O7D/UknUouFmSTiWVCEH/3cWKjHV7DV8AqcSO4=; b=qj/bJeKwGpaYXG
	Nq4UVegVy7zAMZkHTwwg+EIMfhiiLysltiQjrAqoOJgo2SGwgSHjGzf13xYAiSIB6cgoxiKk3ZCwN
	hcnIuQXiLPmlmvMxQxjEjDDHIz5ZaFieAQw0H5uFe1PRWZRpxoEmnybrcwsgrGAAZxtl9tRv/OZLp
	OY2v6kBnb3yY6Uhat19sgk96XeCpai0rD7wCW8OfAHI9PP3vhsH3uiWPjCz0G66gN6P/03dWrOt6s
	E1A/AvZQ9R8yax3rOu3RdCzd4CQF1ZA9/bMUfeW7rbJkI2pc3EqumFl1r+9wZc0rWVZcaA3AFRu35
	R0kzo2ZeliHv1IdXk33A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woPXk-00000003asL-2kKe;
	Mon, 27 Jul 2026 17:55:12 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woPXh-00000003aqq-1jXf
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 17:55:11 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-cb5b8572b70so2266605a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 10:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785174908; x=1785779708; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ldpUG3RjUj8mnzv+gkE4vA9SakuHuQZI5B3d0F4kgdI=;
        b=OjpJ1A2SPLtMEd8toGZescr4CqEAAQEUBXOAKxwAgbJ19HD1WYh2oG6FuUfQ3ATa1t
         DfZ1r1siJSp1/H+pQMwh167kraQgC3osM+wu4ueT2zqzXFQavqkuCNqCi270inTkyJ9B
         22kFjk93B9vvF5W9HO/Senz3o9sw81jI4b8bVOMT3Gr8GnOZk0+SdtK4M7yOtqXOVw4b
         fv7AwsiQWh9HTvL0FaKT14pIfP0xaOq/dGAYyxlyDkM4aW7madViOXj4xyjkld7PyZZP
         L74MSHpSQ5z+1hVlazg4tNMBlWnN/8tRg6tnchTmkEEUes0bHwmuT6r1FtR+uX4IZ1KO
         4vvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785174908; x=1785779708;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ldpUG3RjUj8mnzv+gkE4vA9SakuHuQZI5B3d0F4kgdI=;
        b=B6GW5qmW9+KVVL047hH/1adur32Rfq+K32TwUnNWG+bZMeNCcrkJDR4uLIvu2mm+pX
         6G2Pe5HsPEHBykGggw3rjcmYOBT+4yXUqxdxynP9zQP0JuI1IBLopinpxXXAJvGcMGsO
         Tm83F4rlKvx1z6UbcHFr+utV7JSCW1KA8yaqIvnwXIJPgkG8G3HvKX2TgmInDJkrggmN
         Z3oEazNlZatCimpp/ZP5mRKqmaHsmzqnkvaJCJVY2MZioQ2YEIjZrBi3cIfWfZ1gbKqk
         VqyA5Ts9oKaPngAwa23c5RlQ8GFJg9xncOy36doS0cY/jVK40dVA/4qudRvh5GY9adTk
         jVXg==
X-Forwarded-Encrypted: i=1; AHgh+RrdvMpHbspdBvzFweg9KgBAibcadwT5AtS4wYzXMseN8AeltW1S51Lso+2sbi/9LHtpmJHAoI1xkHga0PMR1g==@lists.infradead.org
X-Gm-Message-State: AOJu0YyfYkKOsorUJVp89/mNjtDvPNaaCBIw70X82Gv8Pt9JPogueYUe
	eQBlk+/0R5u/1CyzYUVmIRPwrd5E2N8akkliMMdf4gtH2E73z9drJRX/
X-Gm-Gg: AR+sD11sWGPzRxVwFmY+dcO51sZ4VEz7DN5YP53L1k64SAgLSvvj+0dfW+U7zTrxcfd
	Ngsm5sfUswdy2CZ7aGr7PDfDZNoIapAtY4YFqkjs5tUA5a/2efk26RYCR70A1y2ouFXO+JTYsj0
	hP6LDXuFof+xjfbXuTdU5pk6Lsp1fwYad4/IMrXVPlRWr4q3wJhVSxJ75sizzdgSHA2Lp/5uNQD
	+7ABXxlkLSUhmjBtUzvj/AiTkWSrohcbN5k3MYhBHPetxYNLG0JiYk61/+bO5j+/B9i7iC39YUB
	oGVgepP8iLANOYbncFURvnPeF4GJyQt3BYXQqwn+8cCRxr7vhkrgtWdZnk3T9wanYB9v0RZYYK+
	C4636+yrfpSlXbwpO/x+BKLNTMzVVVWN6WDO4Aqo8kzi7O8NuHGrqPBf8tqZ2kCh/Ozr5CYx2gP
	2sCaZz+zYAUyx9FrYpDcr5WliYnJupOn1Ajmegg5+FDmEJsI7y/6I=
X-Received: by 2002:a05:6a20:7288:b0:3bf:9fe1:c27 with SMTP id adf61e73a8af0-3c6c7d8a1b4mr557496637.40.1785174908362;
        Mon, 27 Jul 2026 10:55:08 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:60b4:21e4:da15:d321:6b72])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-314bc59434fsm34566612eec.24.2026.07.27.10.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 10:55:07 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Drop data-mapping from Engicam PX30 Core
Date: Mon, 27 Jul 2026 14:55:02 -0300
Message-ID: <20260727175502.2585290-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_105509_458970_2A07AA6B 
X-CRM114-Status: UNSURE (   8.92  )
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

The panel-simple schema only allows data-mapping overrides for panels
whose mapping is not fixed by their compatible. Consequently, the property
on the Ampire AM-1280800N3TZQW-T00H panel fails validation:

(ampire,am-1280800n3tzqw-t00h): False schema does not allow ['vesa-24']

The panel descriptor already selects 8 bits per color and
MEDIA_BUS_FMT_RGB888_1X7X4_SPWG. The DRM OF helpers translate
"vesa-24" to that exact bus format, and panel-simple falls back to the
descriptor's format when the property is absent. Removing the property
therefore has no functional effect.

Drop the redundant property to satisfy the binding.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts    | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts
index 47aa30505a42..aa636ce45e3a 100644
--- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core-ctouch2-of10.dts
@@ -28,7 +28,6 @@ panel {
 		compatible = "ampire,am-1280800n3tzqw-t00h";
 		backlight = <&backlight>;
 		power-supply = <&vcc3v3_lcd>;
-		data-mapping = "vesa-24";
 
 		port {
 			panel_in_lvds: endpoint {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
