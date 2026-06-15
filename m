Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B88F5CD98CE
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 22:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MWofSqJIHdpDH3TMUiJvEzzKkabxmsuUk8U95Pb7AwA=; b=3hgPehOpkiCkYj
	9ScgSUPVr0JSh0jO09tKmSE4GJPkLWrk2kgkkED6negw2qNv4aCUlrmbQbq5cjX2Ybje0hJViCKeT
	EjuiwNjOKC9sbe1pGr4bIANtgyQIcZywS2M9i89URId8Obuh5G7HeUNUItTR492k5wQCWvuigKx7y
	ovKBiys8ExO0644dTQQPFlsA179uM6oDos99q7O8VZ7I4FYg6/r4qfxHV6SL0k3gBBh4eDG/1xADu
	w5gWcsJMu3WxSVnz37SYvg6rPBobv/m8MpZaSWEUotfmZi/e+CtODQsdS6fWCxL2PjeIm1MrDMSKJ
	Rvd7tzsI86rWEEXAbbNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZG8a-0000000EuT9-2T1Y;
	Mon, 15 Jun 2026 22:50:36 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZG8W-0000000EuRq-1mvX
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Jun 2026 22:50:34 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-915aa0a9293so481062485a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Jun 2026 15:50:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781563831; x=1782168631; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VVS9U0UK2IIxJF55elsvQ+90uQ+p090ADnS+1Vo5OFY=;
        b=ZYl6+QIyQnfS2TeGVFTremJ7r7JW2AxgsstIrrncgY6NobpixTP/6llSa2gMU3r4mW
         2VgxEDX5igwSERVCFn56B4NePeJcKSITTf4D6AQ0kaZHPlYOn0NyTFunlsYmdlmGt03s
         1yMa1gbaifLLF5zQoVkO8UhS5euhkhXKuIJ47e9GsOF+XwjxzKZSHGOOu+T4QOhNS6T2
         8PyFOC50FESsQWRatnBAytmDs4zwmPZsZ7Gq/Pd4JscfySEs2tX5oAed3stwbS8S/oc2
         8dZQTymeq8yoNNgd1U1rUP5lIF8npHyvRDc0ztqkzxBRpn1mHhNv6R+T3umnQqcu81QN
         hVRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781563831; x=1782168631;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VVS9U0UK2IIxJF55elsvQ+90uQ+p090ADnS+1Vo5OFY=;
        b=bJzecbbodHGz/tpxxG/XF9eT1yqGrp3sxrUhySScNTym5wL/1SBSY0zoi81zMTcHrd
         1+yNgaFzNaKsbQfVEqn02cU2wUmyUw/z0MkUtSG8RhzKwm8GIdo5H5DS/bk1nmdRIyEP
         lCmpVPTf80p348JzWaU1Jq3GNsArzFeZoOfJPlUMgcskR9ZNIv56wcho6fFCrVrhSh11
         Sq4qqHhiLY1lSVuXs+d4mlzhR4pPoIgvKefaDWU+GyhvOUzxAFJPGuE62+5z2oq7xcje
         QAXS356xrBKqyGhrEsw09VbYZ8hg+vGfTglFc+PkSIDhjgVmJ6gH7l3zIvwXandwQY5D
         Znyw==
X-Forwarded-Encrypted: i=1; AFNElJ+BW+vW5z+RvE7sqDhzbkHDOZ+UDezJ2fUU1AEQ2+s3HogXk/z1LNMvEvrxF0wv5/Jn9j1QQkZA7mux2QEhHg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzjFqa1hJT6MzAJh2A1vhmyVScedeUWcTiVGU9O/sTM4s0LwHFM
	IbzblVnQtsBXgJ7s7FTgeI+BXI/yD0XMVobKUvfgjXLgWwujzngIG8fj
X-Gm-Gg: Acq92OFALiWpXCzH5SGJWhe9jkUuRK1r/dxeOEICRjjkPrjc+I9P9BNxc3gkfQmJweY
	raCtCTtQjuhPyfM2BtbvaCeboO/HVPgXMnpOYocqKTVu4VLP8QiJKftWHP+DYbaS0Um35gpjGuW
	1ycAmpMVVwCUSdyLoJZV/YMCL/1ir8PZgJL7sAQE6ExQc7BoQMwFzM9gjyuuWB8f8Z37WB8dLZF
	YNqn6A9vFVKUhDP20KrDRP/vGhDHdIrOZk7TuNZOLZRYRixhY0NF/hJp+oe40CFDsN7/pjjIBX0
	adDyfY5ZrWlpbUkWSkunOIj02NtTKIFrO/YYO8HWRZPplQXlCZKwjzN7JCSynySX46UtzLGutyt
	TE3gVFEdhLknna4h5hWDYwi0KaoHRVXeB+6Kw2u8x3chJX4XL6qp77/zU2ynSs6jNVd/y9dkhjp
	U5PAH+tNyfmTYTML5u34NgOVZAapNHXPGRvcQYDFVtBHPpvNwZzzaQeqaVA1WzoiWTmN1u631kJ
	u3VcxR9zjvF
X-Received: by 2002:a05:620a:4626:b0:915:422c:a0 with SMTP id af79cd13be357-91c2e9077admr216456585a.22.1781563830584;
        Mon, 15 Jun 2026 15:50:30 -0700 (PDT)
Received: from oklopfer.hsd1.ma.comcast.net (c-73-167-46-184.hsd1.ma.comcast.net. [73.167.46.184])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a069389sm1273568785a.45.2026.06.15.15.50.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 15:50:29 -0700 (PDT)
From: Oren Klopfer <oklopfer37@gmail.com>
To: oklopfer37@gmail.com
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Robinson <pbrobinson@gmail.com>,
	Thorsten Leemhuis <regressions@leemhuis.info>,
	stable@vger.kernel.org
Subject: [PATCH] Revert "arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro"
Date: Mon, 15 Jun 2026 18:50:13 -0400
Message-ID: <20260615225014.219115-1-oklopfer37@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_155032_473978_93678024 
X-CRM114-Status: UNSURE (   8.81  )
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

This reverts commit 096bd8c679185f898cae9933c6a68650fa26ea4f.

Just as with the Pinebook Pro, there are multiple chipset variants for the Pinephone Pro, and multiple firmware binaries for different distributions. The change causes issues with some of these combinations, and reverting it resolves the issues. See the Closes below for the full report.

Similarly with the Pinebook Pro adjustment, the original commit only indicates "further description" and not indicative of fixing any existing issues, so reverting should not kick any back up.

Fixes: 096bd8c67918 ("arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro")
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Peter Robinson <pbrobinson@gmail.com>
Cc: Thorsten Leemhuis <regressions@leemhuis.info>
Cc: stable@vger.kernel.org
Closes: https://lore.kernel.org/r/20260607225901.64019-1-oklopfer37@gmail.com/
Signed-off-by: Oren Klopfer <oklopfer37@gmail.com>
---
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts | 18 ------------------
 1 file changed, 18 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 8d26bd9b7500..d46cdfe3f784 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -734,12 +734,6 @@ light_int_l: light-int-l {
         };
     };
 
-    wifi {
-        wifi_host_wake_l: wifi-host-wake-l {
-            rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
-        };
-    };
-
     wireless-bluetooth {
         bt_wake_pin: bt-wake-pin {
             rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -766,19 +760,7 @@ &sdio0 {
     pinctrl-names = "default";
     pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
     sd-uhs-sdr104;
-    #address-cells = <1>;
-    #size-cells = <0>;
     status = "okay";
-
-    brcmf: wifi@1 {
-        compatible = "brcm,bcm4329-fmac";
-        reg = <1>;
-        interrupt-parent = <&gpio4>;
-        interrupts = <RK_PD0 IRQ_TYPE_LEVEL_HIGH>;
-        interrupt-names = "host-wake";
-        pinctrl-names = "default";
-        pinctrl-0 = <&wifi_host_wake_l>;
-    };
 };
 
 &pwm0 {
-- 
2.53.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
