Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 563A0C282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 14:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jz3oLhuaxpafFcj9GfQYim1ve90J3ajSLrwUs9nggt0=; b=vtKTL2JASKk5EO
	5v3QoVE39cKh8+am6f4VQfgDUqXzbLWZ/pskNnLHZ3Ag6oaZBGp7Efj/5AzjNpidd9tDe6+Up4VWk
	Megx4KBuGnrNe3gkUID1w1/IwSZwD6idRV4WBqmc46PmImTYcX17WqGtut+hAdL07MFeHfruyp9qU
	ZVAMH7JKb/L25r3kJUdAmv7jseD823eL98ugppHOaE9E/7I6457lfrztxYcXrslk3IQGEnWkCwm5S
	2xiJe1V3VoCCXkKKy55Qf7Ir1YYa6wIydAI5SF3pnPThlIXHNZYO05R58fKpoLDnWXLbb6F5sW0Hk
	PB94oKIPblRhy/SfvDeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ts0Ng-00000005wWp-04IB;
	Tue, 11 Mar 2025 14:14:52 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ts0MH-00000005w8b-47pi;
	Tue, 11 Mar 2025 14:13:27 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-2ff611f2ed1so1450973a91.0;
        Tue, 11 Mar 2025 07:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741702404; x=1742307204; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sfx/0w7tHML6j3jIZPou4W5Z11/9NxaRP60Pu8EnFQo=;
        b=LtykrI9UmScBIogdpqGwtZUMi1OC+oIeg8UkhujePbkyRfnu1B5aj4fGN7HXyALEMs
         Tjy0uacf3Hx73For/HzPryLCMpsvOxEvk37xVzlN2tkLjMcu0wYeSdpEwquvTS1P4yx6
         idgMZM1uOzs45C4l4cuKE43hHEYcRvraahxAeeaTEU2f9+PyasB5dgdEBBWkYIT/ox/T
         fUpGiGLzE9NLQE8De3Y2WjHwkX5iyMsoMdoot7e5uftdWUk8CyYoviAi8PixoBpuAiBp
         RN8y69WySu54n04/pUFcg3ccpPV/8jgkmGWcBNYHloDk9DpzZ4cc5zoUnPAkr+aXyf5K
         +3dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741702404; x=1742307204;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sfx/0w7tHML6j3jIZPou4W5Z11/9NxaRP60Pu8EnFQo=;
        b=wT3fXu7fnHprGcswI3+AfYmJwHvljF8kYtH0XTJiKESPGAOkdtMDZOjiHbYs4ggrJJ
         /jqaldWvPBy2wB7TW7PMCCrW2HIsEbxPrFYzKdz8qGmzVki1BNfT5YnCm+JGXm+5uOLx
         vud6bH9ThvuikoAbPWGOgslTMiayRw3hex7U99+sjr2aKXP6ggEwSdKn8gvOTXt1/JeQ
         F+yBoydvX6uVk3YA7L9Hsu7rApcUCF3MQVh6O+j4QKoVjc08I4zqPbrIHH9zVaQYhS3+
         2DsQCao8IL3HbTqt9myvE/2oeIDLf9+BE+xhZRAtve9nEN67mTWq4JW75xauKOS4/TiC
         RRIg==
X-Forwarded-Encrypted: i=1; AJvYcCX46hsOWV5cWFuq6Ea/uTkvFpqmiIbRB4qbQLGzU2CyknFCBHulzbpMhZ54EIB6hzBsl66TT5cPXgJiZXVziEaM@lists.infradead.org
X-Gm-Message-State: AOJu0YyiuZQDRMzdyb6Hxh7C/O5YyhpxkX/8SswnhpFLixkh0b2kzYmd
	qeLLRDVj5B7bxnSuPBJgx11SXjLbyLK/yZ2sO0+xR6bHK9Vk9mYprzbmWCVu
X-Gm-Gg: ASbGncshEER2OCnG3D4K2m0hgHrQO6WU+I35w85Nw+1y1AKOfFfKWLgN0GJsGIJOVtZ
	FUBS0X0PvW/Q3He5ho+J76oCIggFIudeqLPrG16FQj1OpmLMIYdBP3rj5g9PbbkZEftJijeCc3W
	5cgh514gAk0JkNXWRV3OOPr0isbh13tQvmru2Ai53ALWlOdoyT1Kli5Yjm40RHpsth2Qw9oG5tv
	9ywL5BZbHE+gwhgm0rziu3GvvMqdy/Mzyn5T+Ol17VlEWSd9MiWLfMh3r736G3Be/cuJUS8Qhcj
	ep3neijxVYBt+pqb5Xs4TBWdN9PJ9Cg3c3FFAz73ZI6cLg==
X-Google-Smtp-Source: AGHT+IE7O4OIqI5Hjq/tsry6aj7lx93QdJ7EXMkPekETaZ95tGM87nsuJvUD/hTrx6nTT6gvYxlT2g==
X-Received: by 2002:a17:90b:1808:b0:2ff:6941:9b6a with SMTP id 98e67ed59e1d1-300a575a5camr7228931a91.3.1741702403671;
        Tue, 11 Mar 2025 07:13:23 -0700 (PDT)
Received: from rock-5b.. ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ff4e7ff96esm11875300a91.35.2025.03.11.07.13.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 07:13:22 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Jimmy Hon <honyuenkwun@gmail.com>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Fix pcie reset gpio on Orange Pi 5 Max
Date: Tue, 11 Mar 2025 22:12:39 +0800
Message-ID: <20250311141245.2719796-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_071326_018745_57B4C664 
X-CRM114-Status: GOOD (  11.53  )
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

According to the schematic, pcie reset gpio is GPIO3_D4,
not GPIO4_D4.

Fixes: c600d252dc52 ("arm64: dts: rockchip: Add Orange Pi 5 Max board")
Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
index 6e4dcd8fff26..f748c6f760d8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
@@ -64,7 +64,7 @@ &led_blue_pwm {
 
 /* phy2 */
 &pcie2x1l1 {
-	reset-gpios = <&gpio4 RK_PD4 GPIO_ACTIVE_HIGH>;
+	reset-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie_eth>;
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
