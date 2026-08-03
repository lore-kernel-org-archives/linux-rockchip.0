Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD3CDC55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNwkHO8NCGTL4K8ZAk0Ynew/hmriOBozVz45JMhFC9w=; b=PewsXG+ar56mMD
	JJXmmpPb2wZGssxMjjw/sYyjONH2q5voLdohJY5QTrpgpWFYqWUS6RmHhnexUNhnjc1K+/QvDqz2b
	Y0sdSt/POxLvhYVh4wxHlgP4rQBZ9omeAdSjx6IC3Y8WRhKQbaFqK7w1GZkYM8GJ+B+DQ5c5YeXfp
	JM0x3YsgP4pq2SHyO3yBrR5Fs0mRLS/UplrfTFbasqMRm6LnXF3arJ0eDHY0UUeShImHq0iGFaXkf
	xt+wmHxtPaZ+kf+mnT15K7GyAirEk6piiDylBLbS0r2SycDuIxCrlwGC1LHh59mRZmqyileJNwSKy
	SQXvyv9xtcL8sQOGC5Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1y-0000000GLoM-1eDP;
	Mon, 03 Aug 2026 05:16:06 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql1s-0000000GLYS-0vsY
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:16:02 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7e6b554044fso2627436a34.0
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734159; x=1786338959; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=V3THAfFmoIZwxbw2uyAABLxKH+fs/K6w42J64CA1198=;
        b=dbxdh1POu3PTtv95rH1YZT7suQ7agxhFJvW8ie7J3IuCwzaGURugr6tNua/3/Zrz74
         eMebDlhvczcYvHyTaw8kUPuhwUflKQTCURQyOZpGePLxrQo8z+6Xas1ffVOxzDIbW8oY
         i7pEDyy05AcGICRFep4GMGJfRE+IrBnuOdZs64+bvAQGi/uS9c5md1goNdA0CNnh3TuM
         ggv3fI+6lF1BojA48g4nsDWjpbSxqMn2R26rpAlPrKGnbHFoWGLUXFZeVXm6zYTOxDs5
         MoQUuHg7pqv7tKwV403bmdqSyBaX01tChen/4E31l7GyrYUPezZz2nAqtFKuuoQ6vcJX
         5hqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734159; x=1786338959;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=V3THAfFmoIZwxbw2uyAABLxKH+fs/K6w42J64CA1198=;
        b=Z+gLsB0ouB4BPxi/WjewgdxolK6DJbaWvjZMlFH7CZ+N9/iKMynzpuL1wXi7VXgMp6
         dOLoo+9IBk/X97+VIb3WluQEoNWDaNG30THpYuZ8JJVMxsXtM4FNJbNYIJOsgcYLl9W7
         6fWUxb0wuiipPb9outKBYtN4IfbMZb78X9wZthMym8LVsA0G5p8hwBygGiW5eZuENlaD
         jTBy31C7HR4MM3m6OR66SK4xaMAUIOUmTQIS1mJdYiBH0Cnb6iQ2JnGhxDAI1PxArdVS
         dy4Up9b2Q5h8gsNyF/Q+kIo5aCNQ5Dh8f3453uySfYtZKhMRYDTpq/zPC9H70EG7fYa4
         Ypig==
X-Forwarded-Encrypted: i=1; AHgh+Rot9bjqLUfEsZH6FdFpl8OpEglT68mIca7ff2EvROasFHF4KvCcjEoS+ZJW87vu728FgFt9Hp3LWgcn9uNI5A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxhWLmfiMN5mz4PFvpEEqpyjLKe6RQTzbHmy6TVU5S95sIBoLF2
	SSXyYNUEQnk/73Bv1302PTl/+VNCEBSmknw+FyDWPiHm3hq0GUJLy/bG
X-Gm-Gg: AR+sD12JWqEc0qZOU578XNL5yBCaVBeWcXBsGnuU2eQUUesBqj8lxo7UIySDQ41rfYF
	Y6X0p8b1xGjCQTFeImIfvBWuCwaNgJTmEexCQNCFFk1SHBNBpPERy5TgoQ4+SvAFhmh/jDPWDvK
	/Uios+goPVP1oEDAzycHUZOMs9VwVqFwc0z1IUC70svMEm+EkCWWh49yCgB8rdBp0Vlf1aHWGem
	B5EGc9Rlvm3olPQRP0RHbm8P4NmocCz8PAWTxJZrb7643i+6kuoyHdgGmvbNHKP4XKY6IeJ252y
	ZnmcQtPupk4HAtg5hkyOBJaFX5/leVytBMg/AYIBaj2qlJQ9Y9Ha1fjCEiWWwYcdrIwPVJy/C1T
	o3033gIIbSCUVyHq2zlp/aNUb34KWP7GhvFlHSkEa2vMs6uZ8WBL/PYy6WaMhhiqOswFtBCTo0Z
	dXfI4/Dg6VDOywqxG7eMKrkHRtiEonmnOfzDcnJbbOXopf/f2aSz0oyGX9K5rCWOr2WS75t8eIu
	8bFpvTcgMGIqyiUKxZZa8zSYhAygo7gD9e7mRJe7pgzM+4+WRpcnG8IQaevdxcMC009l4c1hdwU
	uPSI+ej7PAJuV8mIvGqFG9DKZBAGBT4hJeFYRWO6Ya+6VraiATv+UpINU2OnrEj76gFVkbcvLKB
	M6mABffAKLGLChharIemgMHPVHpU/D8nFYyrA
X-Received: by 2002:a05:6830:2a8b:b0:7e6:f7fb:9678 with SMTP id 46e09a7af769-7f196cb65a7mr14526881a34.1.1785734154482;
        Sun, 02 Aug 2026 22:15:54 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:54 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:31 -0600
Subject: [PATCH 21/21] arm64: defconfig: enable X-Powers ACx00 Ethernet
 support
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-21-0a53cd9e21cc@gmail.com>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
In-Reply-To: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>, 
 Richard Genoud <richard.genoud@bootlin.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 mfd@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260802_221600_325987_74E004AF 
X-CRM114-Status: UNSURE (   9.55  )
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

Build the H616 PWM clock provider, AC200 MFD, both variant-specific
EPHY control drivers and the shared link-PHY driver as modules. Enable the
netdev LED trigger as a module so DT-described PHY LEDs can use hardware
offload.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 arch/arm64/configs/defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 654a102cb5bc..53f6b8edaf33 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -475,6 +475,9 @@ CONFIG_DP83869_PHY=m
 CONFIG_DP83TD510_PHY=y
 CONFIG_DP83TG720_PHY=m
 CONFIG_VITESSE_PHY=y
+CONFIG_XPOWERS_AC200_PHY_CTL=m
+CONFIG_XPOWERS_AC300_PHY_CTL=m
+CONFIG_XPOWERS_ACX00_PHY=m
 CONFIG_XILINX_GMII2RGMII=m
 CONFIG_CAN_FLEXCAN=m
 CONFIG_CAN_XILINXCAN=m
@@ -828,6 +831,7 @@ CONFIG_BCM7038_WDT=m
 CONFIG_MFD_ADP5585=m
 CONFIG_MFD_ALTERA_SYSMGR=y
 CONFIG_MFD_BD9571MWV=y
+CONFIG_MFD_AC200=m
 CONFIG_MFD_AXP20X_I2C=y
 CONFIG_MFD_AXP20X_RSB=y
 CONFIG_MFD_MACSMC=m
@@ -1325,6 +1329,7 @@ CONFIG_LEDS_TRIGGER_HEARTBEAT=y
 CONFIG_LEDS_TRIGGER_CPU=y
 CONFIG_LEDS_TRIGGER_DEFAULT_ON=y
 CONFIG_LEDS_TRIGGER_PANIC=y
+CONFIG_LEDS_TRIGGER_NETDEV=m
 CONFIG_EDAC=y
 CONFIG_EDAC_GHES=y
 CONFIG_EDAC_LAYERSCAPE=m
@@ -1726,6 +1731,7 @@ CONFIG_PWM_SAMSUNG=y
 CONFIG_PWM_SL28CPLD=m
 CONFIG_PWM_STM32=m
 CONFIG_PWM_SUN4I=m
+CONFIG_PWM_SUN8I=m
 CONFIG_PWM_TEGRA=m
 CONFIG_PWM_TIECAP=m
 CONFIG_PWM_TIEHRPWM=m

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
