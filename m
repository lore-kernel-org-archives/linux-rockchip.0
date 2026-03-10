Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B936FD2D97
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 13:49:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bZu4xiVmlqqlVvF1lslNsh+WHIqozPZRUaRBHLVYrfg=; b=Pt6Ig6GHFrUu0U
	ewyc4TNSIujseVkmefYqY8Fw5NTADo7lmmUC69xEWcKI48A2KYC8wdRu6UIhNXIJuNPx01bOMF9Wm
	P77rii7BwkQhXmc8hv9zFP9Uw/B22rXUdtyUJsRokLX0fq0L/kTwnZeSs7Dk/89iFTkCDcRpla390
	uCeuguvlmUAphNd3yPir+SASzwYBbC9YxPWJy8jdurnwsPqcmqlI1vfRbvQ8X2ERYqMZ5udnVKa4a
	XETcL2/gY7x/cnt5/QUFrDLB1yyzMsdPhxYxcSeVrZWBFZzoOMx6x/xruBSeow9ZL9INMCAQGbH5U
	ef8tW05Le+KJJBGvPq8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzxSV-00000009dF9-3tUw;
	Tue, 10 Mar 2026 13:49:15 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzxST-00000009dEl-3fPD
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 13:49:15 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-7d75ed779bfso513919a34.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 06:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773150552; x=1773755352; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jh+5BGUQpxoxlv8hrHifglehZ/PN15+tKGmZZiN1HKY=;
        b=PJnV7aJM9GJhiBk2euiSqP+HI1dOwNsjb3WKxAHveUIK9BBo8TeiuV9zVWOSTPnYuR
         GSzJHZ4VdCs05wuxRYjfU59pfx3sSEAq6D25Zij7TX+xbQ8oKotCmlJbSRS5O5FYcDOx
         zDOfuphwAV0iVfPxi69uFkO5RVYGdVnnwkt+efosub2Qnnpy5R9JdLAvCAISI82RfTlK
         NeuFs/73Y2CwUpU6RWOUF7tfdzEiLPdlPawKcUPWd8UhPpSqNMfZtAekKumxHr1Ww+b2
         aw95ADtK7pnt6yyX+XzCDomDFibVH1Z5a0fpKK5mN2CP+4FPHDZiewryf5E6yxBd5ZeP
         cQCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773150552; x=1773755352;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jh+5BGUQpxoxlv8hrHifglehZ/PN15+tKGmZZiN1HKY=;
        b=pYIy1JfissaNtHvifaJP9jLtEzsW+mONfm+o+xWUW03lU4X5frlOxKvWmLWYjsPCQ2
         OAjb1NZ2DGJj+X2h9px4SDZLfTPrnmrLah29sOHMY8naM6LhjSvYmAKF6qtvBLi2xOOR
         Dl/mQh5EEuQuWExsR0Gx9ggscrEVt+EZOKxqFgVm14PYm4RCDgvsYrXaV2K0RNMLd1Ao
         /eOxG0ah650I4NxUe+YWBybAYOI4jfT0YXCeyDMZOJ6sSResglPyXbDBz4gGgH6oWcG2
         xXj/kCTx7eK5w49NFFcWT8wdEATjRMXKwIakeEvr/Y1g8sNy1cSheI9m5soQpHJ8JpN+
         X20Q==
X-Gm-Message-State: AOJu0Yx6fVHwPZoKX7V2svyG3IGkemG54HEmfftUF5bt35yZk6gFWaQq
	kEuXAmUYbpQWvQ0yqL4vD8UNu/vwwX14DNO6Y5as91qWHT8zGsZcIepl
X-Gm-Gg: ATEYQzy5gyD1Swn20JPUzWuZNSHmsg4DyRb51d4drK6TKHBlIHD9M1RxzqEwhjYan0X
	0U98ptA3Tk/0hSOiNW8tzKidrlLSFrw9owmDk16hwVUx8MqewqOKY+ZxTK1tU+n7+4d/0oIOiGS
	loEx+Vh+QMp3pCKbagdOrGhnj9DlAexPRrQw4EjTqXy5cbbRUifxVFY75LJ6ijoWavcoTROYEg7
	QwoR+IMqbkqPD8N7EUrpQjSKakz9tWQbFiRh992UCvhuXzjhgGKbtUi6J0mjpFsj0XwEKxYr66K
	6K0ndA1PdJ5bcghjMkdeQYo1XJxvlzPFqkZfh0xJ/LndjSDP2OsOJpFiUerGgdAuqHqlANI3QeM
	v1+Nkk4+Hryn9bvDqOUnnlIKgDmjz8xl5mkTwgyIoUgNSGDi2G+zN0orvCc2flVRXX/N2cviDIY
	4zfPfqX/gjVIrEQH/3xstk
X-Received: by 2002:a05:6830:620f:b0:7d1:9516:6858 with SMTP id 46e09a7af769-7d72702d2a3mr10048666a34.24.1773150552233;
        Tue, 10 Mar 2026 06:49:12 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d75039b811sm3357767a34.16.2026.03.10.06.49.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:49:11 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: Correct Fan Supply for Gameforce Ace
Date: Tue, 10 Mar 2026 08:46:48 -0500
Message-ID: <20260310134648.550006-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_064913_939795_7A8940AD 
X-CRM114-Status: GOOD (  11.48  )
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

Correct the regulator providing power to the PWM controlled fan.
Without this fix the fan only runs when the audio path is playing
audio (because the speaker amplifier and PWM fan share the same
regulator).

Fixes: 4e946c447a04 ("arm64: dts: rockchip: Add GameForce Ace")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index b69d7aa0b2f1..89618394c0bf 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -318,7 +318,7 @@ pwm_fan: pwm-fan {
 		compatible = "pwm-fan";
 		#cooling-cells = <2>;
 		cooling-levels = <0 120 150 180 210 240 255>;
-		fan-supply = <&vcc5v0_sys>;
+		fan-supply = <&vcc5v0_spk>;
 		interrupt-parent = <&gpio4>;
 		interrupts = <RK_PB2 IRQ_TYPE_EDGE_RISING>;
 		pulses-per-revolution = <4>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
