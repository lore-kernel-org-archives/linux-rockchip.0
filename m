Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 805DAFC6174
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Jan 2026 08:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s7TQUz9xvLQji/KhywBYISvZZNJfcYhg84Wko5/KmX4=; b=ZM7Y2dZ0RMUesS
	fYUxPihWseWuzIvGvBCgCzru6nXeLYk/EHx80Jl/W122toqzRXfOOcCovEi53ow7pW2vTgqqQr90V
	i6n1IMdMPbm8RT3UcZ5UfCwzwyaothMEdVW2IshwjkMxxV82OPT+lNEcciHmCJaaDT4vaiAo2Oi9d
	6zIjEAWThu7LWJUJHTtpcu8dXRNtvKtPng7UHjFlYyFGx8h6qttnJWVdbMjSnmX9p2h6t5fztHQND
	ipLDLBAoZowIGzOAX+5DrA+ZSPxk0i5UnkqJGF78EBS6yHy5O4ALKZwZAe+fkMaQPr/Ws84KZ/q7J
	ZUZXBDfNks1oEg5aWHtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbx4M-000000096QM-0ZcK;
	Sat, 03 Jan 2026 08:33:06 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbx4K-000000096PS-02s6
	for linux-rockchip@lists.infradead.org;
	Sat, 03 Jan 2026 08:33:05 +0000
Received: by mail-pl1-x644.google.com with SMTP id d9443c01a7336-2a0c09bb78cso3296335ad.0
        for <linux-rockchip@lists.infradead.org>; Sat, 03 Jan 2026 00:33:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767429183; x=1768033983; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mtp/dZW9ya4TxwOta3UUFMIrN/FXohK03+kMMLH28dY=;
        b=O+z0N5iKyFKMH+Jnn+HWIr7uHQEEh5fRYCGcL/ofzyC0+RC9i7dmgQ+YnaxI0jQIKf
         gv6/1i9Ep0eW1bf6I/EH3rlpk0q6Z+dY4MZmy+1+gOASz2mmAoIWpCSgQTgy0AV/FTHY
         DFBk57i9i9Ju0tOP+l5ZBamQjiwGlznZD7b4wb0IJiaxxjrM2UNsC4/NPkN86gZyTqvG
         aczNL+CQ1Rw1tT+fKgglFFvVS67xl2FuJ780ar2oDOCEzPkfIqimY0jJzL3hPm7YnaI4
         RdRwy341ykNDlunolEXyt5UMUvSvIWrgjERZGoQ5n9RfFQjTQ26ni8xpV2FktBTaCg5u
         Gz5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767429183; x=1768033983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mtp/dZW9ya4TxwOta3UUFMIrN/FXohK03+kMMLH28dY=;
        b=bIcCWBN1KLaN31KQHmQyMXF+kvSlNGM2P4dREWLH+viPnphxNZf5VvMNXWfI6Ri3nC
         CrGjqZgHe3Z4VeJd03Yamg0IQxm/GwHtcQbzl5sBmdEm5Pan3I1M+tFw5CuIsz2CmdKg
         iXGXnx/PuK+KPvs4YdlMPR6HpDzGGDLlXnzIIUwhQAEymUScgllDzHkXM9YAgc/bb1ex
         mIzBARF1gx7fOPLTzb0cNGJjoeJp+FhZAck7f9GSIyoalbBIuQ0YlX2Zggz5npyEMy3B
         9y1GAbed1N8zJ2Uc97MgLkkEFQelrXeCLPSOrYaBGbqvNkSdOG+n393sryeIa/xcVtKV
         DC5A==
X-Forwarded-Encrypted: i=1; AJvYcCXHTbksgSBwsjUxAVFUAqw27zVhHNsN/zGAOXlgEyDZdPMd4K8aI0NbRjblp2leB9reup+tc4HMqC5RlhkQ6w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxkhvenAMJx4+mqBvzit77mF1Gy8CUsB4nx4U4URXWD9Vyaef5p
	bEI8jmlnh477kzfLibsPGdnI7UBvannUurI9w8eROETekJOSHjgaJKHD
X-Gm-Gg: AY/fxX6O2f+WPZyrN+/WJ6VPiALA0g8KDLhfsOu9cg8qeqKlM7Baeyv/eb19Ct6vVWZ
	KyTrSPXVWGYPaNuE7tXVLBcn7UNbI3aWgAbtuY96rNRq1V/VOInedJDp9eLo+vHzNO1QhIJVsSL
	xN8WTosQ3vjKXC1CWKf2CJm1hGOV2HylsIouLP0b7Igm7LdbmcCjYKEf+CsLcJS9bYtBlaFXOyR
	tUkjvUa0BXr7oORraYgitFcVO0SICNAJZzDYgkbzCrkWhzUw5ABsbuKeb8n9XlPJaU1f+z88+G5
	FfLMDdOS23UqHmCQDDQbcHmxAYW3G8uOVqBg/3XX6QUZxX4xLwUEGOHJHR5v5/+8BBsP0tFaTG6
	DGJ5iGVS6ssM8BUR2SudtiPvsrlOuI6ZP3vvUvuS+zFE87abFtxP2LgFlr8KDMsXiiJzpGW5I5Z
	TysdgfMw==
X-Google-Smtp-Source: AGHT+IF4+KGquo7ddnKSZYTeA5YRjfMxJO2/EkJueXQkQkzBA1/AjlzM6p5PsyRepGJBGL2j9Swfbw==
X-Received: by 2002:a17:903:2442:b0:29f:1b1f:784 with SMTP id d9443c01a7336-2a3c0940a8bmr16854045ad.4.1767429183029;
        Sat, 03 Jan 2026 00:33:03 -0800 (PST)
Received: from rockpi-5b ([45.112.0.8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c666d5sm391700365ad.21.2026.01.03.00.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Jan 2026 00:33:02 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Yongbo Zhang <giraffesnn123@gmail.com>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list),
	linux-usb@vger.kernel.org (open list:USB TYPEC CLASS)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v1 1/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Correct Type-C pin bias settings
Date: Sat,  3 Jan 2026 14:01:17 +0530
Message-ID: <20260103083232.9510-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260103083232.9510-1-linux.amoon@gmail.com>
References: <20260103083232.9510-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260103_003304_212322_BA5B2C92 
X-CRM114-Status: GOOD (  12.66  )
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

As pre FUSB302 datasheet interrupt line (INT_N) is an open-drain,
active-low signal. It requires a pull-up resistor to maintain a stable
high state when deasserted. Similarly, the TYPEC5V_PWREN_H enable signal
requires a pull-down resistor to ensure it defaults to a low state,
preventing unintended power delivery during the boot sequence.

Update the pinctrl entries to use pcfg_pull_up for usbc0_int and
pcfg_pull_down for vbus5v0_typec_en to align with the hardware's
electrical requirements.

Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
Fixes: 67b2c15d8fb3 ("arm64: dts: rockchip: add USB-C support for ROCK 5B/5B+/5T")
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v1: As per the shematics CC_INT_L interrupt pin is GPIO3_B4_u
    As per the shematics TYPEC5V_PWREN_H pin is GPIO2_B6_d
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
index b3e76ad2d869..0cd8ac7bf538 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-5bp-5t.dtsi
@@ -537,11 +537,11 @@ pcie3_vcc3v3_en: pcie3-vcc3v3-en {
 
 	usb {
 		usbc0_int: usbc0-int {
-			rockchip,pins = <3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <3 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
 		vbus5v0_typec_en: vbus5v0-typec-en {
-			rockchip,pins = <2 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <2 RK_PB6 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
 	};
 };
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
