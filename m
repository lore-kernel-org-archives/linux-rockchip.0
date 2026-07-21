Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 360ACC4452D
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Jul 2026 06:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/Rbu4diR76prcjcSEowy024ebi+YKtzxLEZXkfvjSo=; b=CQg4maSFx1LMEa
	Qz9XEl1Pfhm7srq9aVDbdbOZogcoZCc00wiZSh4SAOGW8zOiwXrmrKxomy0vB/4WOjznP3sR2hS2n
	imi7oQbLykmY4PXb0PtNHmwNfX3EarL/zWgQTeQgeIutUAImtNMwGlDX4i87QofvkC6cV1nBjVqIZ
	d21Yd1aTTFcRaRb11jM2mYtU1zh2B64Dw9JI/UOVZrq6MIpQ5CdSKOk6lEDUD5pgYLA8gWDA/OcdP
	w2tPIZ4HDCxIrEnu+jtyS44nPr6QXTgawRD44gESKg9qONGf/AlFbT/36Y8NMr2DpNcLMoG4+7tgD
	KYdkyB6iQweiLYEakk4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4Af-00000008Y7X-3XXO;
	Tue, 21 Jul 2026 06:41:41 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wm4AY-00000008Y12-2bbx
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Jul 2026 06:41:35 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-490d6730461so11236755e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jul 2026 23:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784616093; x=1785220893; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gxBcoaYqqWn7DDfCE+l3ErfQKRET5iv1Y4ILak6MpwQ=;
        b=YfAqwZqm24mk0xZoV1GOYZfQOt+Xat0n/0irEZS05crsoKT2hzsPXax3S5aYbkFpWg
         QkuUl4qgigXRDs+IYILjK2bcw5OO3F7YjZx4E77eVfcGIMIRuvRJ8EqvGebz8rpJq9cS
         oYYtJrdTiNzl50K8ZbJV7szAp8cmO8JHhYv4L+vIahS3hmqhxD6mkvJnhJNgbHC9+Se9
         KTTT3MqUdTUt9taq8c4vq1QhQKZsY/8aXovKwgCxuMYljQJ2mNuFfno1Y6eARZSFlcYa
         nyidUgasu+35ahYOxWgh4XMn/G/HKAvlG2gAn5oKg1dCvGGQAbLl2McbVTwepHsZO9up
         +rRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784616093; x=1785220893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=gxBcoaYqqWn7DDfCE+l3ErfQKRET5iv1Y4ILak6MpwQ=;
        b=VW/xz/fUYsjkipI/d/H0mlWMOEtWSyQPt9pDSP60y8nUjd+5k3MHGUHEAhgAcwKRFg
         WnJjK0kzHK6L7kosa6EMx55yFjYl5hzKN6vXmn0gcNeGmSJvnZ/VMyNLyj7XePv2Ier/
         PyfSwEwZnUA6ctWjFOq0gEQoyIQkaaLMkshfNVJEZUxDR2vUdq4A8Zazt+4BCJlexAf6
         +ZOXyQH23vZ5GdFjZgfJMedj/VJy1J3ig9SDp395gNiN2Q+m5Pjo81co66Z0NhX8b7Dh
         7G6UwNGNJMB+v8BdEWpq9Q9la76o5ZMiX8NysqxUu7yhlpwnO7IcFxuuRwkJ0DB4fcL8
         Vu2w==
X-Forwarded-Encrypted: i=1; AHgh+Ro7isC7LUp1e76omWJ/z7XDa7oX+oYEKwbopO74pVi2ceKwhYAjHMyy/3SwdFgGcCIS5PD3FgJQTSQ9CGLdUw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzT63msVHPr1dFFKvRio+5LeQKR5ltZ/cBM9CAm35JjDaHa24CW
	NtNhHqkU3BmhGQoYjwdz6qt+EhwQrltJn+MPOEijB8CF5PZSxv2hgPJi
X-Gm-Gg: AfdE7cn3TFG0vkDT9tIBmfUPDKCtURxS4PVAdKc1OV/c18ui+zN7WRdL6EnL7VCugVE
	DgN+BoxobQw2ugkKcyhjb6ha5XYjEtKUHhmec0Tk83LmoVar/7yEHY+gbDsZQ8TwLQUJm1DsnEo
	NNqp3mhbuy6I0ErbwximIpgF75ox4BKpO81+uCFjThz9X8010V4qmgmRG23ws2FTn8DiaQpyli1
	kCC5cNLpFKRXypT/ZIPypvOhUrA7ZEEQz8zzw8ujJgsg4t7X5RVdXf2oAC/4bOTg0ToQweg0QWc
	yFig4sVqxsYRf2cCXLiJZUxwCx7NBmHlwrvaNOz8r+jOXIbd/TcCcb1oRV2kQ2HRkmFqA6ZZI7A
	hm10h2QUuhFQDCT2gytwxxopsTVbQ30piPD17nuwczXT6nUZdAwtmeXcQJiizlZZWp2OoNUJ+WY
	lkIzzgl0VMjuw6F5bSaxgkNZiI9BQR9hVxin8KIcoVi47xJLgMwIRoRm8ys4fXvWnBmPZS3xwiI
	y+1y8kmTxE=
X-Received: by 2002:a05:600c:4584:b0:495:6713:9a62 with SMTP id 5b1f17b1804b1-49567139f63mr6189235e9.1.1784616092535;
        Mon, 20 Jul 2026 23:41:32 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B88AD00DA0BF9DB4519DBD6.dsl.pool.telekom.hu. [2001:4c4e:1b88:ad00:da0b:f9db:4519:dbd6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f63ed1911sm38837951f8f.22.2026.07.20.23.41.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jul 2026 23:41:32 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v4 3/4] arm64: dts: rockchip: add HDMI RX audio on RK3588
Date: Tue, 21 Jul 2026 08:41:14 +0200
Message-ID: <20260721064115.64809-4-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260721064115.64809-1-royalnet026@gmail.com>
References: <20260721064115.64809-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_234134_706962_50D69BE7 
X-CRM114-Status: GOOD (  12.22  )
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

The Synopsys HDMI RX controller exposes two digital audio interfaces,
one for I2S (0) and one for S/PDIF (1). Add the #sound-dai-cells
property so audio cards can reference them as a codec, as documented
by the snps,dw-hdmi-rx binding.

Add a shared simple-audio-card routing the receiver I2S DAI to
i2s7_8ch, the receive-only I2S interface dedicated to HDMI RX, with
the receiver as bitclock and frame master. The card is named
"RK3588 HDMI-IN", which is what users see in alsamixer and what ALSA
UCM matches on. It mirrors the existing HDMI TX sound cards in this
file and is disabled by default, since not every RK3588 board routes
HDMI RX audio; boards that do only need to flip its status.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
Changes in v4 (both suggested by Sebastian Reichel):
- define the whole sound card here as a shared, disabled-by-default
  node mirroring the HDMI TX cards, instead of per board
- name the card "RK3588 HDMI-IN": the name is user-visible in
  alsamixer and matched by ALSA UCM

New in v3 (as "add #sound-dai-cells to the RK3588 HDMI receiver").
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index a264001..e0dce15 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -23,6 +23,23 @@
 		};
 	};
 
+	hdmi_receiver_sound: hdmi-receiver-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "RK3588 HDMI-IN";
+		simple-audio-card,bitclock-master = <&hdmiin_codec>;
+		simple-audio-card,frame-master = <&hdmiin_codec>;
+		status = "disabled";
+
+		hdmiin_codec: simple-audio-card,codec {
+			sound-dai = <&hdmi_receiver 0>;
+		};
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s7_8ch>;
+		};
+	};
+
 	reserved-memory {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -338,6 +355,7 @@
 		reset-names = "axi", "apb", "ref", "biu";
 		rockchip,grf = <&sys_grf>;
 		rockchip,vo1-grf = <&vo1_grf>;
+		#sound-dai-cells = <1>;
 		status = "disabled";
 	};
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
