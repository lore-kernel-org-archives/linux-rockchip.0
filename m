Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D77A4C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 16:53:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9W6blPASDJTv887dAMpj4PISZ3k+R0WJry0qcGTOKuw=; b=I+NWjXXEYhqFmx
	K5ENgFf54pUdYr68ViLbyFWQcexrFvG9ABBsCUfY4CJk+X9ZU4Xcok/5cbltWQnfZYbjDeGT6Ur1u
	i5MX5D6TX7bDJjHDl5iTb4LYiKslDRO7TawmB5sTIjLnldzSrm+X2txKbcBx1XVVWRiExcXCxa6o4
	MdGg3JBgDL9Fm5P6rOcNEKfhRdK41qsT1TX+BJFk9AOMVaAWUbE3iRH5hwbdGEdTGsNIAuaDyzie8
	Omcv44EaKh9723SzXD/9vA1ltvayk4ZJqHZunWpwUo1p+OjSyJQsRKxmWAyBQSbW0bUv+AbAuk+QP
	UA8U+2bzSgpUlnbDFcuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLQTD-0000000EQ1h-0gZF;
	Sun, 23 Jun 2024 16:53:39 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLQT6-0000000EPzt-3b2v;
	Sun, 23 Jun 2024 16:53:34 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-42172ed3487so26371625e9.0;
        Sun, 23 Jun 2024 09:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719161610; x=1719766410; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0dyZkCyrKd/4PD4Jvfjt6KqBEYL4dXW/zmdctqRuUTo=;
        b=U9pxOXQmMNopVvWKLpJmjhJTjgKxuHmQ9YDQMTM3lWonNT9SnI4Ir8HnCns0/HCheL
         w6nNlsS02ryuOJIQqXOnGGiyHwJ+5oWGYeKp155P06j0Waxfq0MXJEbiYdHLSxb1fhqq
         jZxfCZZ1Uu2r3RiY6Est4Ngl5INzWoj4QmTZJaucCj1A2f8yHpVshJT4441hFqQSVXJB
         2bjGZaSYVgJQp2r4AFozW+/ah9cXSCCvAKdr0RnM02SaDmSEpz8JISPC1FA6R890VsU6
         jAaW/qstBI2fPiJTNCTsJYzEFvIif1wL90O9kMoWmypVsr0/+QkIL3aemwasTAD6OZOR
         uVtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719161610; x=1719766410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0dyZkCyrKd/4PD4Jvfjt6KqBEYL4dXW/zmdctqRuUTo=;
        b=uix1/UacwNlYAY5izi3V+RGHcbI4BcGfHVL1TIg0zCy5OIdBmeCtMauvzeLIaVBaBt
         yUOyR10Yyt/Slj9hFpvhNVdI83jFq1279xXYZdSB/KTlRV2kxPX6+/nJA9fHVKs7jiZN
         Iv3EpkVwQaBo1w9YDnQnl2pef6XugENtgihk91y42j27firwVTVIpqpy9KNTkazohIjb
         9a+kIvg0kZvOGcfqOzzqOM3NMxzuAOhiTxBEWdoVByA6ddr1Xj7WOJRgg+pr5MoEKpPJ
         fc4h7VDlnlrGB2BO8wSxOtnMmIOoGUmBSC/u8a7z9CMsl8wCZno0w8096lYMhpgn4VKa
         RiPQ==
X-Forwarded-Encrypted: i=1; AJvYcCXoFfbiOy6KWDXvxWuTIzpU/PFJKa+W988hhh26EcK2Y6fgdR0LcfMo+IYJGS10gxfnV4Uxtla0ebuUIhUCF9MgxugWqoEo5TSVhd6HWyQFpFhLh9gZLdwpQSbMC1obICOoAZjvi0LL5FnOnCNPuw6pO2wTG683e+E=
X-Gm-Message-State: AOJu0YzC18gNlI0rCBXO9rdEm1zPXVBPzAUPVJQ29DT5PaNoSAPuEJmR
	NameF3M53p7LmKtblzEU7YEVHsH8oqu+RbqbUPKsCuFox3TOkMLs
X-Google-Smtp-Source: AGHT+IFgHhHsrKsxAy7dmmoxUFNVOL7xlboI1346xmn1iLjG/0qF876onfSoisezAZAB/qDCi0tDeA==
X-Received: by 2002:a05:600c:4fc9:b0:424:8e5b:e71d with SMTP id 5b1f17b1804b1-4248e5be7d2mr11488085e9.28.1719161609998;
        Sun, 23 Jun 2024 09:53:29 -0700 (PDT)
Received: from morpheus.home.roving-it.com (8.c.1.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::1c8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4247d0bea05sm144835555e9.18.2024.06.23.09.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 09:53:29 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: Enable PinePhone Pro IMU sensor
Date: Sun, 23 Jun 2024 17:53:21 +0100
Message-ID: <20240623165326.1273944-2-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240623165326.1273944-1-pbrobinson@gmail.com>
References: <20240623165326.1273944-1-pbrobinson@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_095332_924706_F8C26AE2 
X-CRM114-Status: UNSURE (   9.80  )
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

Enable the IMU sensor on the PinePhone Pro including
the i2c4 bus that it's attached to.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../boot/dts/rockchip/rk3399-pinephone-pro.dts    | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 5e46f682f0f0b..fbaf0202df632 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -436,6 +436,21 @@ touchscreen@14 {
 	};
 };
 
+&i2c4 {
+	i2c-scl-rising-time-ns = <600>;
+	i2c-scl-falling-time-ns = <20>;
+	status = "okay";
+
+	/* Accelerometer/gyroscope */
+	mpu6500@68 {
+		compatible = "invensense,mpu6500";
+		reg = <0x68>;
+		interrupt-parent = <&gpio1>;
+		interrupts = <RK_PC6 IRQ_TYPE_LEVEL_LOW>;
+		vddio-supply = <&vcc_1v8>;
+	};
+};
+
 &cluster0_opp {
 	opp04 {
 		status = "disabled";
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
