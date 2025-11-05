Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCD5FCCFA13
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 20:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5AmLOPxfn/cQBbE5Ki0B4MmZwMkKyrpOIVQwrrJfG0=; b=YZi39AbbuYUg6o
	Rp45yaue+7GZc1ac2nOEFQm7zsQYCdbTqdtuV+bzt/AgrJP9s1MPHpTqkTIi5gKeu+gFGUq7JrstV
	P0Y4cuCSOIgllUQ0T12MPezhWL0WkSxCX5oMzxUvZ6LMwLrq2QaxtcdOOnSub7UskKAP+Kyo4yfu0
	em/d5PQjUKx6LtQwhoSythma1+sTkLAB7bCszV/1XKbmCNmyxZ+9YSzTu54pgFRKd3HeNDoEvkn2F
	DtMLzMYc/ehkNkzzaF1Mx4quc4bSFZenReu6lN7q8TK7KLq2Pj3mT5RIELIHFoM0pD+vftLBsas3Q
	WITF5Q5xXambTKMJj0FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkbf-0000000EPP5-20dc;
	Wed, 05 Nov 2025 20:59:51 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGkbc-0000000EPLw-2o2Y
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 20:59:49 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-6567607bd65so75926eaf.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Nov 2025 12:59:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762376387; x=1762981187; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N22dGVtS/3pOfQFih0jmM+cFj7E1JVHpsRdCDkBqmL4=;
        b=W46lbU3H6oOymT0L0xSqwDQLcKeMOerez+lAeEWKIRN/DPcdSzTC4IpUSeQl+Kg9i9
         eWoYKWrb7lpCXcjifuE10U9u+vlw3wLmGUkdkSvA5oFPpKCeMzq0LpvHDPmDWOP21OtA
         QqYFEadNLp+H8zd03xD/GGaIxWQ/hIa/5L+U9+F5lq6xpUZyzdsdznPaP0M5bJZtFUB9
         61NlEdERt4dvd3K7svK/bfgRuC9o6vRXQ2n2/pLZh1heHxW67pk2bsMbeYBidoVSSWkX
         volRO7aAdBs48+HwvV1mP+mPjuTkSOiukZnSgjyxF+YvjNaZDOzZEoKjWKy0yckjxrJB
         RkjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762376387; x=1762981187;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N22dGVtS/3pOfQFih0jmM+cFj7E1JVHpsRdCDkBqmL4=;
        b=sykWSx1JbPOVfzw7lMwg613i3BhWIQTH/asFuq+m32BAgVSdy7gRz9tMPKdZimljyg
         IBAdgb7o3jv1ugVFlgJlR+7H1wrMu4L6DlZc5B1ydjo9SVvPWjsubVV2DgBh+dxV7QAS
         XoJFzL3aO9Wdc7l8wbwdla2UPOIwaJ8g+CPvWy/6lhiZ9kFx77R12pO8L4XUO84Lef1+
         GNz5unciSpnralB2fgfTLY4Nspp8rvTTob20yzRiqH4gnzFFYdMldMIvkP04lZEUdj/b
         OEn/4C2Dt3dpCddbyJxtacC6cYhpZK5+4Vgzuo23CM7PxlrrYYXKuT1/74+23uJL0pSr
         /ZgA==
X-Gm-Message-State: AOJu0YwxmrK8f/PenmISzc6KMlck/W2KOlpAaeI+NMFtq+zPSAsoPdvg
	5vCC85pBh0JGjD61U01nIFlJB4g8yYiTHY49XmUExl0v6aE13LnKgoYF6OtA7w==
X-Gm-Gg: ASbGncvC0UWRED/vKVVJmYSoIaqypNa4X0gHYFZWmNsXp9jHLmarGO+BpUXYtm2jrIb
	eNaRf5KArU+QyuhOtC/vhc3lj8OE5J5TkxKl4WEsYTO93/3GE1swr5CCtQ4b4NhD3987zOrdXoe
	HyKjaYqg2bmlmiX6eX4urkIKn0kdShVYGwMUmZSITDL+MKfxVoDy53lrmZ0BS7EG15CFfrbp3f0
	soin7/PNJIWzJKvMwshHyNwMUtb74pd2e1ZfQaVNYMVIRPfpX3P6TaOg0yYu7fn8Q/ywcXpy66Q
	v92y3BHkwbSEt+RREsXg/2+B9BRPgmgl9u+39rrlJJ2R9J/oEQqiaZ7m/35rPQobmHHgP1fGIt/
	Orho79rNb0KA3HWO+dWfyPmlNCpHsKMFRxp6mXpq0YGmin1aPt2aq3QtNIbhlzBVlbINafFxDNg
	==
X-Google-Smtp-Source: AGHT+IEWz824Eyik5jV6bGE+8iMtXIfPNIwn3pxabNdKpRbpIMMD1Sw3cT1AACv65t3yhikmRX0kMQ==
X-Received: by 2002:a05:6820:188a:b0:653:63d2:22c4 with SMTP id 006d021491bc7-656bb509200mr1869080eaf.0.1762376387402;
        Wed, 05 Nov 2025 12:59:47 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-656c5713288sm160312eaf.5.2025.11.05.12.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 12:59:46 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	damon.ding@rock-chips.com,
	jbx6244@gmail.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 5/5] arm64: dts: rockchip: Fix DMA for Indiedroid Nova Bluetooth
Date: Wed,  5 Nov 2025 14:57:08 -0600
Message-ID: <20251105205708.732125-6-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105205708.732125-1-macroalpha82@gmail.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_125948_720022_EEF4B12B 
X-CRM114-Status: GOOD (  11.06  )
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

When the device was first added, there was a problem with the bluetooth
controller that manifested when DMA was enabled for the underlying UART
interface. At some point in the intervening time the problem appears to
have been resolved. Add the UART rx and tx channels back to re-enable
UART.

Fixes: 3900160e164b ("arm64: dts: rockchip: Add Indiedroid Nova board")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 0796ba6d2504..dee053afc6b6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -944,12 +944,9 @@ &uart2 {
 	status = "okay";
 };
 
-/* DMA seems to interfere with bluetooth device normal operation. */
 &uart9 {
 	pinctrl-0 = <&uart9m2_xfer>, <&uart9m2_ctsn>, <&uart9m2_rtsn>;
 	pinctrl-names = "default";
-	/delete-property/ dma-names;
-	/delete-property/ dmas;
 	uart-has-rtscts;
 	status = "okay";
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
