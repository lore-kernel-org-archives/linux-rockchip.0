Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E45B6C3DA49
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 19:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wp6BnsmQc/MDmcotkq+r37sSA+gaIBp7fCubeICfTAs=; b=TuFXt/ju9qEje/
	BAZPdaVGoF7aqENXox5ZE53bZf2oZC+CvBos/PWSloaQhXqpXnoItrJa0iNDHN+rs6r5BL0dHOgTe
	12Don2vodeBe6KPd7DCuQyPUAyB3mhBZr1Gfim83ocnlDmlVzY+omZFdG+c7/0t7svN5dysqVpuvS
	E1DiG8szd5F88D+RBGCs1aDJ10OFu7SrJdKlB8o+l1ud/0sOKviVQRy3QjFObNIB9mRzEv/1Cjj7/
	dS0H6AkBkl3xh63j6T//PqOTSo1yMIIUb/d2dYNGzeTA2i648cLXKL+tQ3g0xrqg9faNEKPSgFryA
	hHJ27Ae8KlNR6UawfXzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXQzK-00000004pEY-2qTY;
	Fri, 26 Jul 2024 19:52:26 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXQzE-00000004pBL-2CmU
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jul 2024 19:52:22 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-704494efa7cso809846a34.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jul 2024 12:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722023539; x=1722628339; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6rmiAxGwGeB9IJv4k45WD7DbCveUNV1yEEf/83JRaI=;
        b=bwqjYJleZGsS6b2ZrE0aNZzXtQCEvXgPDEbAYSSjGAfdwNn32dUVHrsL+Z3NSMFEfx
         Sir6Wixkfwx5SeOvax05HBcGQs+TwHDdRoq4nP0b+Gsj8c1B3L9LQdeRBXd8D+KdzoXq
         USpt88gFUAqRqZj1KO6eTBC85llqE0K4CIZxyIGwz5EtVyCrdn9CWRKRsnWq9+9Qxuef
         gzLSfkE6DKlvSGPwKB9NUE/3OD9vFKoSjARhMwogXGerCy8KYwrWx2jmjFHAN56B/Gmt
         kqe8ucMPksqfE+EQF+xhvOhQaSHElJ8hWECzbedTUUZZhMmUwnbwh07QEjEpZbyqQiqn
         DaKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722023539; x=1722628339;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P6rmiAxGwGeB9IJv4k45WD7DbCveUNV1yEEf/83JRaI=;
        b=jleQoBtVqX3gFcdBZ8QtUpesk6uzpBiLyjfm+9W4s1b7zAfUMIWDOKKaHm3vg4Pucv
         lrlXHL7Nb2H0G9lMrZPSEN+2bX9IsK520TJYrIQIQzrMo2aAYSnHdZpttrpJPEdwJF/z
         L/4bjjacAqK1R5pMUNAAQKCBw6N1FGsx4jOA77frJJCNHiriPdjzMAp1tTWgQ6quXJi6
         ugqcfdyWFe+U3ylMgo17umXnZCBeBSyWLRkTXxDG3AyX7ulVlOMLBbix+1PFPBzJgg3V
         OMebnduGeTa3Bodq0oHHpgqmqpnrykJPfwu4o5uNFk5kk+n9akwpHpSZwkWKGP0pAgDe
         paDw==
X-Gm-Message-State: AOJu0YydcQZaLIyacGw1p4BCgnOnzgMk8BuI766rScXQWNCfP+xebYbU
	EsBH6mPzRS5Bdcf1RzcuKT4WtaD85KUfVbGulWQ5CKcJ61TBj48dEaeu+A==
X-Google-Smtp-Source: AGHT+IF0f29yKR6vZmoW9R2ZZFUMQXzYcT8J4lUuOIvw9i6Fucmn9tM77BX2/R1rNf1Ei5yrVKN1pw==
X-Received: by 2002:a05:6830:2aa5:b0:703:6cdf:461b with SMTP id 46e09a7af769-70940c05695mr890633a34.6.1722023539199;
        Fri, 26 Jul 2024 12:52:19 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:c1f3:7caa:bc8b:ab10])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-70930778069sm889972a34.59.2024.07.26.12.52.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jul 2024 12:52:18 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	jagan@edgeble.ai,
	andyshrk@163.com,
	jonas@kwiboo.se,
	sre@kernel.org,
	t.schramm@manjaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/5] arm64: dts: rockchip: Pull up sdio pins on RK3588
Date: Fri, 26 Jul 2024 14:49:46 -0500
Message-Id: <20240726194948.109326-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240726194948.109326-1-macroalpha82@gmail.com>
References: <20240726194948.109326-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_125220_595476_4F9BAD2C 
X-CRM114-Status: GOOD (  12.75  )
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

From: Chris Morgan <macromorgan@hotmail.com>

When using an Ampak derived bcm43456 on an RK3588s based GameForce Ace
the WiFi failed to work properly until I set the SDIO pins from
pull-none to pull-up. This matches the vendor kernel located at [1].
I tested this then on an RK3588s based Indiedroid Nova and did not
observe any adverse effects.

[1] https://github.com/rockchip-linux/kernel/commit/b96485b7af46a99c14f3c4818eb18c7836eb809c

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
index 30db12c4fc82..d1368418502a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
@@ -2449,15 +2449,15 @@ sdiom1_pins: sdiom1-pins {
 				/* sdio_clk_m1 */
 				<3 RK_PA5 2 &pcfg_pull_none>,
 				/* sdio_cmd_m1 */
-				<3 RK_PA4 2 &pcfg_pull_none>,
+				<3 RK_PA4 2 &pcfg_pull_up>,
 				/* sdio_d0_m1 */
-				<3 RK_PA0 2 &pcfg_pull_none>,
+				<3 RK_PA0 2 &pcfg_pull_up>,
 				/* sdio_d1_m1 */
-				<3 RK_PA1 2 &pcfg_pull_none>,
+				<3 RK_PA1 2 &pcfg_pull_up>,
 				/* sdio_d2_m1 */
-				<3 RK_PA2 2 &pcfg_pull_none>,
+				<3 RK_PA2 2 &pcfg_pull_up>,
 				/* sdio_d3_m1 */
-				<3 RK_PA3 2 &pcfg_pull_none>;
+				<3 RK_PA3 2 &pcfg_pull_up>;
 		};
 	};
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
