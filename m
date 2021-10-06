Return-Path: <SRS0=o2ac=O2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A407C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Oct 2021 16:08:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D65EE60F4C
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Oct 2021 16:08:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D65EE60F4C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3EXgtlqZxqsBle4pq22kCcDe8QsVTzJ4efkJ8o/o7pE=; b=d66Ik+zYiC0443
	7eXs4vxjnOPKvSUbuaY/cF5QUunbMs1w62mxZvy1soJXYwRkHTc6GK0XyiyrDT52kYro9dL6x8kpe
	Gvndf3tXiCnYnVh2TAPQxzIuC+Vn3gky6XKarkQfX4gqtG6O+IKg+US+pSfVpe1SaV6/nhGmQVbbE
	k+7dXcpcs3xVlsPqm6BWReGXlQwv9HsuopbuWdnXQHp+YVnuaZzVY0FZYFo5vmz24pieoj83DnEAe
	Q+A8gC+bW/FwqsD8N3aL4/zve5lM7kmbPWZU6F6+qTS/ZsgzaYAPbpZV238mqaV7RXBCOaK5eQ5QZ
	RsKXHNoqqoB/JGYIiRIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY9TO-00Evxv-Vh; Wed, 06 Oct 2021 16:08:50 +0000
Received: from mail-qk1-x72b.google.com ([2607:f8b0:4864:20::72b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY9T8-00Evt8-Oy; Wed, 06 Oct 2021 16:08:36 +0000
Received: by mail-qk1-x72b.google.com with SMTP id w14so3008682qkf.5;
 Wed, 06 Oct 2021 09:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SfABEpKo5aCNhWWFRp+nIlEvRuLr9UIoJUGA9Ex395U=;
 b=ayv51O0gLvoEXmat4PQ4z81/U1Hvza8JetE3UwN63L2VeYSuntgDlAsTfyUWewvaS2
 7L5BoW/KH6T2XG5GAfKJ3yo00j/GZ/Dpldamrg0i21AmXPp07Hf7ic2ff0ew9NTKcWIc
 YPCLZYW1zdba7lW5zoAVuQ97Vsy4mC+UK4aiIYYJNYfWHD+61t7jGHSyTO+0XYd0OiEt
 njb8zQXKhS5GcC6/2N3ccFG5W/3mNGoC6IcIFM7TDglKzOsG8QyRMZ1rE/sUTooXepYz
 nHnWNsCISbBMUKz9eO/XMVkc0zVwWnM7jrEP04PNjWNYppILtixsk83iPqy17GO9yhDR
 ry9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SfABEpKo5aCNhWWFRp+nIlEvRuLr9UIoJUGA9Ex395U=;
 b=4uc7Crx0Sf7HVVVSBpn3n8cyZ9niOYvD9GznnNBmy/t2jNn/vJTxDqVx6jzKxxM4m5
 PqqcXSGwiBTaXDNkrcSGbj81oVvW+01aUg9+XGLFJp/CwwHlh6s5CmoAvawd2gI5snU0
 te7g6ke+laUjLwKpqI+C9pOmDp01izuU3t27QbVypLNjiRDdIh349I3mGUchSWWIZBVb
 NEhBLhUzTti+7HMG9/JlrJyOsnTECdG1N6eGqQj62yc23TH6yr+drPIxWHNxh8WkXo35
 ItU/RwA62BBBiOMs1Eq8ZhZxQyVXvA6o1/t/XVAxfh0Y3b2QPG/+I1DBBHRwUreAlbAF
 tH/g==
X-Gm-Message-State: AOAM533ajELZqucnvYo8fplGyri4q+N09IPxbSHDeqJn1vq0ij6Hyc76
 lU4vin/huXeoD3/5RuN0H/o=
X-Google-Smtp-Source: ABdhPJxV+DBdtxktwW++z9lHxpFRu6s4Ph6nQw4TBCFM2s860zrVlXxr9ws71JBix1XdPplQoI506Q==
X-Received: by 2002:ae9:dc45:: with SMTP id q66mr20456170qkf.2.1633536512064; 
 Wed, 06 Oct 2021 09:08:32 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca.
 [209.91.167.254])
 by smtp.gmail.com with ESMTPSA id k10sm11917526qkk.124.2021.10.06.09.08.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Oct 2021 09:08:31 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Javier Martinez Canillas <javierm@redhat.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Peter Robinson <pbrobinson@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH] rk3399-nanopi4.dtsi: enable sdmmc regulator on boot
Date: Wed,  6 Oct 2021 12:08:17 -0400
Message-Id: <20211006160817.13808-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.30.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_090834_833453_30F7D385 
X-CRM114-Status: GOOD (  15.87  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

When trying to boot a nanopi-m4 board with an SDHC-class uSD card, the boot
comes to a full stop shortly after initializing the mmc subsystem. The boot
can be cajoled into continuing if, after waiting a minute or so, the uSD
card is ejected and re-inserted. Waiting a minute or so before ejecting and
re-inserting the uSD card is crucial since the boot will not continue if
the card is ejected/re-inserted too soon after the boot has stopped.

The nanopi-m4 has a uSD card and an optional eMMC module, either of which
can be used for booting. In my case I don't have the optional eMMC module,
therefore I'm booting from the uSD card. When booting from the uSD card,
its regulator needs to be enabled at boot.

Curiously, this should have been an issue from day one, but it only started
to become a problem after commit 98e48cd9283d ("regulator: core: resolve
supply for boot-on/always-on regulators") was merged. Additionally, by
coincidence, I happened to be using an SDHC-class card in my device, and
saw the failure. However, if I use an SDXC-class uSD card the problem does
not occur.

Much thanks to Mark Brown and Javier Martinez Canillas for their assistance
on irc!

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 8c0ff6c96e03..5cf02e2ef9b3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -71,6 +71,7 @@ vcc3v0_sd: vcc3v0-sd {
 		pinctrl-names = "default";
 		pinctrl-0 = <&sdmmc0_pwr_h>;
 		regulator-always-on;
+		regulator-boot-on;
 		regulator-min-microvolt = <3000000>;
 		regulator-max-microvolt = <3000000>;
 		regulator-name = "vcc3v0_sd";
-- 
2.30.0.rc0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
