Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0DA1CF2561
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Nov 2025 22:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1UOCetxP+Wpiv6CZTSTzPQz78c7i6Pu6+x1It3RIjqI=; b=lQmbQBl24oRAlg
	TnaqLmmfNspRVr8FKyqDGOVyULRqr0dapMzkOnoGSJyR+YhlM4xRuMrvceMB7qrZS022x5WcP9qel
	yLeokpqLTJC1xvFEiiLaA/ZCi/d1uL+3Bbs/dpPf3YIUlB2rvkTCsLEvbnkJMhusiwf6HqN1d05bz
	flYCoS8bBAPC92NO+lcFy3i7dLFo4ww7Xb46mGNNWBzE7Us3IgZ6Yb8srKqT0GC85/Lsk+4YwOxCg
	U3Xj89cSeWdb80OjnqOFlLnPt09pftKrQ+nhp7ItfD8PePB/qxV3dBnet+w3saHErYt0PoSnUaJf5
	+jq8FJjgw6WGyGSqf/JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLUGG-00000001BUh-3vMt;
	Tue, 18 Nov 2025 22:33:20 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLUGD-00000001BSD-0e5x
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Nov 2025 22:33:18 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7c71cca8fc2so3823387a34.1
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Nov 2025 14:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763505196; x=1764109996; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nYjvYxfV5+RZeySdWRUiMPK8ycstukvx6z5qAN1mejI=;
        b=RcoHetGiumO59O8orT8uBZ08S8ZWzdU2O+uzDmLJsG/T1l+jz9HGvANj6SSKsTK1JH
         BaQuQ0wtdIja8vjPPuxWHoUnWEC61nioa8q3xzcrwZNn3hjPDmhz0wOuePWXcl1GkjTG
         1vT7DXLw2DhSNCgvzxele8WPtyCgoROfxU/hdq0xnaEEgISqASaAJz2iG125e50pnNr8
         8ogptKU34hCXwa/VAr7aNd69gLiNGUOG2kdN4BuNJzJpNY+tjC6iPWKPZmI62//57YJ0
         /jGPa7mPyV7lifbRSOx5OTdVSpXs8JwJPF5cIK/6Sf97qdL1qPWKaRS0UCEw4ZkTCXee
         hp3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763505196; x=1764109996;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nYjvYxfV5+RZeySdWRUiMPK8ycstukvx6z5qAN1mejI=;
        b=I3HrtMGzk3mr+tV0AvkJUn8oMj9+GbdgFZymtGBeL3htyYUir8AndmwSTrvqUdN/ea
         aL57VX/GqVIkhj6AvuuXHol7HBvp8dLazGXXyQemRNIOky2rJBH9STs/WQjIZAuxwreM
         ltEKUfaqUXO+9Dzq+CiXXNpNdnzY+LqiBIuY2ZWPJ2gXB8EqGA2CbQigHty49E5RlRnp
         2G2+cxNefxDLif/SrK0uEzmTCtHhM24o35H2+vKf+VEyMS0K+pmAHxtnUwnr+uPVnG40
         /SIDAnP6BL3fEsB0TlQbzU1S7PpHc6Wbu9SXRRPEX8vaM17rg/YD7cMtJ0I46sr5V37+
         WI1Q==
X-Gm-Message-State: AOJu0YxAwOOL4UIR34niS2pKVMDdI6QO21rFrw6xZU/A01dK4l2eHJvV
	tn8td73tgdvtiPeFQl/t1CIVNdPUezBKdanGURVh84ITPs86G8O0Blo743hQTw==
X-Gm-Gg: ASbGncv9SzGuhCKSQAdySbF/YCn1zaMct8ZmWcTQInIO4hc1cETe+BnfhanLioEdgD6
	bpbS2K+LGnx6M5sjUOX8f8WstXAhWEEIee5ouUF0r1Symia3W97OOYMmB95qm81QMHAm3hBwzSu
	GA5AG3MwlZdSX2DSgcvC8/+9P7JyghwLoT1MPuAhPj/PX3r+0ZbOq3q+2jdtBhv3NT4ISRWuc0y
	23/29nWZNgyNNwofCmywoVGrBU86cxQkFmQ/4C3z3LP5a/6XANkU0rx/oH8LA6oQH6p4zld/Vyh
	f8kadjLy0bMaP1Llfj1f3tRQwRGEFvZ7vYZvKt2D7g3xzImUmlxz3FmiYipl5VhYrczn/J1X533
	OEwglkQCDoBmdcJit48SxeVYsgaOzp0SnZDgGT9djczbHw30lK/BbiACriqcx5gdiiwI4fJF9Xo
	+54u/6a/NN
X-Google-Smtp-Source: AGHT+IGfOB+5AVQMdGMImDRmwBxYZjEKOF0RSGcutvp4vD0d3WB71GhxxZTBquvv4VAvc/4JPZW9/g==
X-Received: by 2002:a05:6830:3509:b0:7c7:da3:ed27 with SMTP id 46e09a7af769-7c7445524b6mr9960558a34.35.1763505196250;
        Tue, 18 Nov 2025 14:33:16 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm7136960a34.4.2025.11.18.14.33.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 14:33:15 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/4] arm64: dts: rockchip: Correct pinctrl for pcie for Indiedroid Nova
Date: Tue, 18 Nov 2025 16:30:47 -0600
Message-ID: <20251118223048.4531-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251118223048.4531-1-macroalpha82@gmail.com>
References: <20251118223048.4531-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251118_143317_197364_488017D2 
X-CRM114-Status: GOOD (  10.33  )
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

Correct the pin definitions of the PCIE controller on the Indiedroid
Nova according to the schematics. Since GPIO3 D1 is already defined
as a reset pin in the rk3588-base-pinctrl.dtsi file we do not need
a custom definition anymore.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../boot/dts/rockchip/rk3588s-indiedroid-nova.dts      | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 1562d02e85d6..7233e290d0cf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -483,8 +483,10 @@ &i2s5_8ch {
 };
 
 &pcie2x1l2 {
-	pinctrl-0 = <&rtl8111_perstb>;
+	pinctrl-0 = <&pcie20x1m0_perstn>, <&pcie20x1m0_clkreqn>,
+		    <&pcie20x1m0_waken>;
 	pinctrl-names = "default";
+	reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc_3v3_s3>;
 	status = "okay";
 };
@@ -515,12 +517,6 @@ bt_wake_host: bt-wake-host {
 		};
 	};
 
-	ethernet-pins {
-		rtl8111_perstb: rtl8111-perstb {
-			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-	};
-
 	hym8563 {
 
 		hym8563_int: hym8563-int {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
