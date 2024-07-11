Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69120C3DA41
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 06:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fUdQT2C3tRCDoy04irDES0UPSbY9m1rzsvlgc9h90Ks=; b=JQsfLutmd0xGZm
	fPxEblDAJ81TM1NlzervqPZU/daocemGA/WyadfjgMEbfq6/B4sU7/aFphkhJZJVLtwAZ2VJwpcbJ
	3lcY3qWor0lsqJrLwbnpYuT0bPj6mzfKEKDh4RbDSYztuW3Lwxg2kV1q5xdNoIq6rqTamr6IdlRD0
	03cKk2AP1cnKkDEcMsVW9lmB+fphHELWOg/PGasR8djxnVZtA1vYTNwxCkBjrZ/WorEBkM4AWMDRF
	OA5/WbNirgh+iJWR4dWJbfit07G2iSxjngPRyAMTuCvpYhSTZfgcIy74kKB00rAnzEh4Q5+jjtMLz
	cO8DVAo4SgalnfX+qxww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRn0V-0000000CrAL-0WET;
	Thu, 11 Jul 2024 06:10:19 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRn0C-0000000Cr4R-3Npw;
	Thu, 11 Jul 2024 06:10:02 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-1fb19ca5273so3001635ad.3;
        Wed, 10 Jul 2024 23:10:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720678200; x=1721283000; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=amL0i3U0AlpayuDFzxy6krwzUQYPva5CT6eMHJ9zRTU=;
        b=Skm4GDv+yFP6p+S/goJIS+EDrxnhLTUi5248MDq76lu4v0MjX3vcQaPPHh1SiWKvdd
         zFswSuvQYS/qKwX0f6DCJbSappOHBvqigJXVRS0QswPDWeusEIexVv3Qdc5R9XRhIUD4
         r52pEzH42M9mhuwNvb/jh6sFrjhQXPVERFCekrbieyxuqClygjnZ3TCZWVGAkgjBeu6K
         1w9sS1TAbCbXitTMdqYn135Ayu9D2KUx0UHOmZAeAPTi4nCbT29mAI2eIYVEzyBGZWbI
         87HehzhGmmWFH/ak6Xqse46BUxFxLKVYjJeeQ1tQjTkBIMKikXzEiozfrcC7tRjJ56q8
         ld/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720678200; x=1721283000;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=amL0i3U0AlpayuDFzxy6krwzUQYPva5CT6eMHJ9zRTU=;
        b=fYhQbHSXERblyZJhbE9hiyfPm/63RRUhbCY58oO4TsamXNvqsVvxJ4p/dzuQRKg0CD
         EPbCTUyNrusH18r0xC+8peSSY/Upa4nTNHMkLXsOzlXDsVua/xN3J/c9EVfHJDDUq8y5
         wv1c5OX5QO/qnMKe51UiBzERe7DNv1hC2WrfUPG6i0zxJMANcUtpJX37MAsX3f0GFNjD
         L3/cgwboP38ZJ6DcEbTmx3zx0feJoJ6e8v4K89/Eu8Wur8+xmFOd5Qa5IoUADWu7ptbR
         HfuQcvTJDQfZ9+b7OMyE43xOgEAHq/2cpbIDQJpATLCYLEX/w8G2aLjjT2r4CIOkORL8
         1XqA==
X-Forwarded-Encrypted: i=1; AJvYcCUzVLhqBPFGfTs6V1AvlgzhXknLQFmeLrae51OefuWIE3CQWo20Xot3JYRAG3uTQCRt9QxPLZy5BCwUdksSxPjPaKcAOjaj7z0qmJnqLByS7nlMYFL396iPFZ0vln/Aq6axtGMbpjMHrUHW336bTp+WzCBNz5ICAN4=
X-Gm-Message-State: AOJu0Yz25KQt3qSll78+sMBhejrW/kFvmoUkgpc6laAmhYjdq4L7bZ+B
	0JnRPbxZ5N7Z3/19RdNSf3RDUQGBHNpRv3VZv3853JSnQBI9Us09NnV6wA==
X-Google-Smtp-Source: AGHT+IHNgkIOVxrxv50voAuFb/D8XfO6THqHTM2xrFSPja8CeSVW1OiVWX4BVgbQ7OUzpTaC3rvmOw==
X-Received: by 2002:a17:902:e30a:b0:1fb:76d9:fe84 with SMTP id d9443c01a7336-1fbb6f0ce0bmr44688475ad.65.1720678199544;
        Wed, 10 Jul 2024 23:09:59 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fbb6acf681sm42710165ad.267.2024.07.10.23.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jul 2024 23:09:59 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
Date: Thu, 11 Jul 2024 11:39:34 +0530
Message-ID: <20240711060939.1128-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_231000_867109_EDA7B20A 
X-CRM114-Status: GOOD (  16.43  )
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

Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
signals.Each component of PCIe communication have the following control
signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
high-speed signals and communicate with other PCIe devices.
Used by root complex to endpoint depending on the power state.

PERST is referred to as a fundamental reset. PERST should be held low
until all the power rails in the system and the reference clock are stable.
A transition from low to high in this signal usually indicates the
beginning of link initialization.

WAKE signal is an active-low signal that is used to return the PCIe
interface to an active state when in a low-power state.

CLKREQ signal is also an active-low signal and is used to request the
reference clock.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
V2: Update the commit messge to describe the changs.
    use pinctl group as its pre define in pinctl dtsi
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 2e7512676b7e..ab3a20986c6a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -301,7 +301,7 @@ &pcie30phy {
 
 &pcie3x4 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&pcie3_rst>;
+	pinctrl-0 = <&pcie30x4m1_pins>;
 	reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_pcie30>;
 	status = "okay";
@@ -341,10 +341,6 @@ pcie2_2_rst: pcie2-2-rst {
 	};
 
 	pcie3 {
-		pcie3_rst: pcie3-rst {
-			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
 		pcie3_vcc3v3_en: pcie3-vcc3v3-en {
 			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
 		};

base-commit: 34afb82a3c67f869267a26f593b6f8fc6bf35905
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
