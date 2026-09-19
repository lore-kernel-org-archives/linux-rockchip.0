Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9805C982DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 12:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SM9Dehoe3inXL0lvbyYS2EImUHFYFelTE0oldth58zU=; b=TIgn67i+fT9wkX
	hu6w+FVjOWBAyuyZzBTYDrIFfOFY+uQEiGikzqjTn8owqAP23xASWibHTLOvoAhbCVw1PFWuL4yvx
	KkmGJyrxGjOIUiV6XEixGuonxPb+dCNvi3MUauKX4y2AC+PjBS78yyhX4akNLDEHz8waYpr4LsEn2
	d6d2wM8gp7E+0l0SiiuX+5Oh4TnlLxI+S5T2w9sMMAdOm3irxzF2arxqPILMA6/hBO/P464g8PBMZ
	JALgrCVQfI26U35qWDDV3bn0hGwhFjDCBjG2kvupNWoqq3Ds8DqEbUNjMJQKvw+Nmbjo38FrjxhhG
	5Xdk35pQUxq/6nAQEoNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uCy-0000000GFF1-1mah;
	Sat, 19 Sep 2026 12:30:20 +0000
Received: from mail-pj2-x0e.google.com ([2607:f8b0:4864:39::e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uCg-0000000GF2m-0IAC
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 12:30:03 +0000
Received: by mail-pj2-x0e.google.com with SMTP id d9443c01a7336-2df36461d63so1544735ad.3
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Sep 2026 05:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789821001; x=1790425801; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Lj2u/Zjo691deIvNQnGk0TPSNETy/c4N8X1lSk8Bcfw=;
        b=Jbx8ntBapRdORN2yWHUYUMGbCEhP9G1xem4Nt+1+7AUHL5x/iDjL+h2HkyOm7Qh9YW
         jLJWpqGQS+ANOJAk7RJwwuDV7npI9VGF94xsrjs5EoyMplueCn8MtfJmjHZ3pvYhXofZ
         LujArwWSHyvijuvbN6q3BYEbHuhIfRghHHVoxZtTldwXn+MY8vviBB/eHxK+ykby5mpQ
         l/4Lr9S1u/Y2U0MqulQ09/yuRO6EAtOLFSA+83CDYqZIAx8qqZYKAQ3TddwBT4wLbgaZ
         lauLUiPYoSnGlApHIOupvZbaiuqis0htAvFjIw8n16IcWwX/795h30Z0e1LU6arbFqHu
         An+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789821001; x=1790425801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Lj2u/Zjo691deIvNQnGk0TPSNETy/c4N8X1lSk8Bcfw=;
        b=LfIrUWwd35bXfJoPPIIyDadIh/CUXQy9CDBbM/Wjm9Ug4bgpcM1syyO7zW/5I0tDdF
         MhS3h5lz6xT8JVAczC6UQYcB2pIkHF0rnxU+8wNk+1y7ODdH4MlZkttKwUEIinu6C95f
         3WCI9h9dqaioymv2GSXDi2GV1VaICTQtpaQ66uLo7vrda1LDhCCjgHw11Hji6qolkYHO
         yTu7yw2Pa45XswC3uzMtVxXnVYLekAj7/B1lx1d4eg2LdxSYycxiEkybhZ2JP2NCC8S9
         fWl3FBEdtePRiNLUvLwrBVxYsdNvQUxkAIpUGkhU5BZL00VbqTpNqi33eiBnrJqwG+GR
         R5OQ==
X-Forwarded-Encrypted: i=1; AKwUvBzlr7ga8JpyGL+yZfuY8ZtOdyMFcWdq2ItVIHzt+QFbc1ZRIMawmsqlyLf0E91LWWALsoB2mrQvvK7UQpqUVQ==@lists.infradead.org
X-Gm-Message-State: AFuF++kY2v7orXU9Wy56D46o5hRG6HS9TQQO9eKZypKFlU28ftJrqC/D
	4Xi//7ajTlYzFkJwxFPIQvm3VjS7lTilHLqyuIJA+bRjvPI+i71V1bg+
X-Gm-Gg: AYBFou0Yu7+uXkNAztBev5T6Yi1r27GoTGL4xepqLV7aTRj1PBDWpKX72sW41WcNRrN
	yCg7VCms8S9DijtaV6cRLdtSiXsR6s97/t+XClC81uBKeY+YFUmOtDsirBaldconejwFxz7iIT4
	HfQ2tyxnw4VuZDzSKKVjwkXAL9PqBVMq/c1RTMEobWCMzZ2fzCkNtQqg6/4O9WCz9IcPQkxV8nc
	xkpkz9Z9C/nst3cygeyk5nmo8i0mRZFmLcI3FbPs8FeuIXkUtj6KTX4BF7nkRKyJGqlzqf9mHhG
	UaK7UfE51OLA8gpbJAbpbLvoL40J9TVIGMa5WabKvmiAeENzS+wViFb+vowgUw09RKwO94E38se
	xkAuVT1e0JrsGwKWLeki+c59IzXpmMj45p0xO1qucai09jKdY6xYLc+yUNrDexTzjOqYu6yWDPC
	0zZYvCOBsyTZFmNorT0dUtwSWd+slb8wMglwDS70vTw5ur37yTnHyHrkm702wrKATd1GH+j/efn
	ksfz7HgM2g=
X-Received: by 2002:a17:902:e946:b0:2dd:c0ff:e72a with SMTP id d9443c01a7336-2ddc0ffe9a0mr29054485ad.60.1789821001018;
        Sat, 19 Sep 2026 05:30:01 -0700 (PDT)
Received: from Aaron-M6 ([188.253.120.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ddc17d7115sm9552155ad.66.2026.09.19.05.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:30:00 -0700 (PDT)
From: Yaozhong Li <yaozhonguwl@gmail.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>
Cc: mfd@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Yaozhong Li <yaozhonguwl@gmail.com>
Subject: [RFC PATCH v2 3/3] arm64: dts: rockchip: fix power-off on Firefly-RK3399
Date: Sat, 19 Sep 2026 20:29:30 +0800
Message-ID: <20260919122930.1418-4-yaozhonguwl@gmail.com>
X-Mailer: git-send-email 2.55.0.windows.3
In-Reply-To: <20260909092728.1859-1-yaozhonguwl@gmail.com>
References: <20260909092728.1859-1-yaozhonguwl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_053002_147610_73418B8F 
X-CRM114-Status: GOOD (  12.97  )
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

poweroff on this board drops the rails and immediately brings them back
up, so it reboots instead of staying off and U-Boot reports a power-on
reset.

Firefly's BSP drives GPIO1_D0 and GPIO1_B5 low during shutdown, before
writing the RK808's shutdown bit. Mainline does not describe GPIO1_D0 at
all, and describes GPIO1_B5 as the backlight enable GPIO - the vendor's
own backlight node has no enable GPIO. Nothing therefore releases either
line at power-off, and while the backlight owns GPIO1_B5 it can hold it
asserted, which is enough to make the board come back up on its own.

Describe both lines in the PMIC node and drop the backlight enable-gpios,
with the settle time the vendor uses.

Fixes: 171582e00db1 ("arm64: dts: rockchip: add support for firefly-rk3399 board")
Signed-off-by: Yaozhong Li <yaozhonguwl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-firefly.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
index 0568dfa..75b75fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
@@ -27,7 +27,6 @@ chosen {
 
 	backlight: backlight {
 		compatible = "pwm-backlight";
-		enable-gpios = <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
 		pwms = <&pwm0 0 25000 0>;
 		brightness-levels = <
 			  0   1   2   3   4   5   6   7
@@ -327,6 +326,9 @@ rk808: pmic@1b {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pmic_int_l>;
 		system-power-controller;
+		power-hold-gpios = <&gpio1 RK_PD0 GPIO_ACTIVE_HIGH>,
+				   <&gpio1 RK_PB5 GPIO_ACTIVE_HIGH>;
+		power-hold-delay-ms = <200>;
 		wakeup-source;
 
 		vcc1-supply = <&vcc_sys>;
-- 
2.55.0.windows.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
