Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C350AC44539
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 15:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mqphKKSudG2y91YT+pRe/E/vyZJo4i9ODKlyqbzWH8=; b=3tHctIfNouKG0E
	ioEc64ahQjCSz+ZjFoZyp1B1FXo/M5RNzViSHD839wpHkKxOb5zJlq240cLgYBATXZo9OX0bL6byn
	GSW8zKn9CnGZzKcQ+B064B+hICpyD1/AXqnpHaw9XxnqicAfFsVfQ3CQVPt4hqbTndQTLEeFNYyv9
	VmpNJOnyUQR88/1hXx/S+TRbd73LrR3rvtC7UAHtlbWhSbu4GaCCudGYBdd2eFrAjJs3RABPSp99o
	yhVFyePWkV+Q2eWq10IOK2Gx+9b+P2AXaK43PQcGQi0yMG+Rm31u6ojWUqpfLSB8CWXacd6E0y+be
	knb935RgYYVbSG/6Rxxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZ5Z-0000000CDdY-2cHS;
	Wed, 22 Jul 2026 15:42:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmZ5X-0000000CDae-1hMd
	for linux-rockchip@bombadil.infradead.org;
	Wed, 22 Jul 2026 15:42:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=; b=hcFIexYK9a6Ekl45WiueMzifeP
	GflrgZN2t96atfDxzK/6kIK7PL7SDoAMPep5Vru+ttXV7yexk79pY6FfohtMwRiPtPJaY53BpjFuI
	pIkn7nOx+bbXew5kiwqyoDn2tS8DKZDCCxidtO1zo3ho8WVCeoXI7THTFwmKzPR8LQFL1EHx2jEwd
	j4h+RpnVgB0Vcrd7DsCEDK4WFCRwg9ucZRNe8Iyvzq0qNgdUilDbygj9Ilze9cDr+FqAF5gdoE6vq
	z+gjipdzp1KY5pkVLEWMGbRPOgGWwosbPuHThJLr59okJG8ygr965CQI5NbHsfPV3WMOY9SFquOTG
	yFuHdw+A==;
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wmZ5U-00000000xqY-2Pns
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 15:42:26 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-6a1160a2c42so8421228eaf.0
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 08:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784734942; x=1785339742; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=amjYLGBihdc5i4DuPaI+ldIvD5fQFEV3Y1pkKP4w7JH3xSu77FLUCBAsvaynEuaYE+
         gOJIDnJFx77eASMqPJj+f/OHNatU/Oc1KZteFWUoNtQ7RNHbFZkYRRJZgYGJMkaG0CqE
         XaQXK2lAvQyTwx1vEGgO9k5ns0WOzakmuT3rdwMsvZqB5+2Dncr9RTe/4z6eMRkmzi67
         DWS0l8NjPTQqAUXxvdybKjmSRzuKo5wCKZdXql0+iRteKO/NwOAWCAONz/044VAPjxUC
         +YNI+x64CHld8TaReeu3Bqg3uWUbGn/IzFPqS+DxKdJ2rZwe0jSTTXKRbDNmxE1ljjl7
         bbFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784734942; x=1785339742;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=QfovMq1Q6ItOx9Ic9Yv4pwXdntrd1HHw5BukFo5ABQ2Z1NtZC3Tjr1t8GDhMwRPhue
         xg/JaBLaDFY1r/3r/iza50MSfxdp9f0orvcD63bMS64Rhx/50gGGstNd5O2MiPQbvnBk
         IkJnnrkkWc8N1WrDgW6ruz/Pf9PX3k9iarxUkQg5oXXf7XwdvocusbSX3DdvwuN0PaJW
         ZKTDHuTEQSRkhQliycaqHC1OTAxD2y0VY+ansxeGA8bI5R+cijcj0eJ1DpU4Kn7xM2Ry
         T7EZMbZa9D1GYKgYjeYK22PBeK2UUZwFsF9kk+6ND4m6Im2kjsFXbTTu5RVPZLwKNLCC
         gX1A==
X-Forwarded-Encrypted: i=1; AHgh+Ro9MRZJ2j/h4hEXLwMcCGeY3sPPa4NxEX2gWQZPeqh1gY1XQsfVVxSy6Czj4GdbNIhGCWpsx/47LNSa73puvw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyG8522eSfTdQ24O0pr3L2qKdKzmOmBr6L/eDIf5mHpfukmydVE
	j4kVjGkTidnr5dFSdMVr2lLWzTEAVTtQVt3QnM0Bc310EHAhrC5jLDqY
X-Gm-Gg: AR+sD13Rh5P2INst2rXKlW7SusWDGKdqERfK39siY7it5D61/u17n6r3vfegEhAt/Xp
	+aWZs4LWDT1cbEZCBmH6KqiYsbGgeztAuNXwpebM96f60giAUK5LuLVWh6+8nO1EdA5z4KDEUsd
	iTJRZ5mKtKhGbnJX0koKZ5XLTkPIdjCAyB8O1wYS/GY45iHg4ZELqvK1v8xXKSzxYiA3vVu/csO
	mRRM7aR3dF3XuCtDM1zwldhLeil0msPy1gVbUlHiPY1y41cgyzRS1r/wbxaJPFYYPIfEt5aN1ZS
	dlRhHo58cRGsQFBmuKrDCmDhOY6fZgV/EA71+ypf81uFypcTgKs1blL2Od0p01wR1/vS96nXFpu
	6QrjoP/1A7IgHmKrOxpp490qWC69Rve6hRvul7UkKUL2k/1B3d/xQwkalDXhJ48ndV0TDzR3niA
	hA
X-Received: by 2002:a05:6820:c91:b0:69e:97da:285a with SMTP id 006d021491bc7-6a5366ba46dmr11304145eaf.29.1784734942387;
        Wed, 22 Jul 2026 08:42:22 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6aac3a494d4sm1300804eaf.3.2026.07.22.08.42.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 08:42:21 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V19 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Wed, 22 Jul 2026 10:39:40 -0500
Message-ID: <20260722153942.144387-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260722153942.144387-1-macroalpha82@gmail.com>
References: <20260722153942.144387-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_164224_747196_10D76CAC 
X-CRM114-Status: UNSURE (   9.88  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
was tested with iio-sensor-proxy and reports correct orientation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 8d906ab02c5f..b770bfd5268d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -871,7 +871,13 @@ aw87391_pa_r: audio-codec@5b {
 		sound-name-prefix = "Right Amp";
 	};
 
-	/* invensense,icm42607p at 0x68 */
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		mount-matrix = "-1", "0", "0",
+			       "0", "1", "0",
+			       "0", "0", "-1";
+	};
 };
 
 &i2c3 {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
