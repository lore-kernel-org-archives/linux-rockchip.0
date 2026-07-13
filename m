Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F3B9C4450E
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jul 2026 22:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mqphKKSudG2y91YT+pRe/E/vyZJo4i9ODKlyqbzWH8=; b=roQ+e0CmNQ167a
	GzFOrS6oR/b6aKW0OBblQ4wux83PCmVy1PnlsI1vS0aW9jPGmAuL15QTF6p40VhpZBASJ6Cub9FPm
	EALb6TUrqAooBnpcRCV1wsCiTOltYoWarO0CXWd7wcKOen0iZcGURuBKPDblNVvwoA6H5JG4qi+EO
	6FlAB+KrOFAjRRKSjYrVdu+9ikVfRzlHbBFKdiyxRXmpFTb55TcLYA8NSL7c9MzVUfk+SMdYacpR/
	u/+SQn0fnUdMkcttjSg6H0XttTca0QUfVP4ZHPKTXbutafJxnO1rlquMSVDwrVOz+sjHkGm8QFv2P
	+9VJTSQXGkZkXLuq1gsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjOiH-0000000AU0c-1NAp;
	Mon, 13 Jul 2026 22:01:21 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjOiC-0000000ATxZ-2HEA
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Jul 2026 22:01:17 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-43bfe209e45so248492fac.0
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 15:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783980076; x=1784584876; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=UuTvvBYP041aEcgNSIO1WfFjqRhvBSLYBabqKLob3WgeLW41rbaMtOG2/N9aVvYegE
         YSOTG3dscdtCddRSVt4/YKFBqoM/gUipVzPkenn4IpO9QLSVuuJizJTOn/bDJTfFansy
         e3K4klxFHGdzDsXPq+1RyiGV3uPkpoa1HyRUsoN9LJ6pFRQvD1F0XSSLPczVK/1AbQwx
         48+Gm0ZjeM6Zq4LMuHw4Mq3kWaCuMHDNsTwjdk+menIRS/0w4I1WZI0mvrzY7UL6huXM
         sGilGKGMMe+DBfZbEUIRXOwdM+awxsR/pnqmDTFy51mPRZYx52JGkmgvflRWhxZAe79a
         /oLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783980076; x=1784584876;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=FPFZIJtGfblpAqxIg2tYgeUWREpmFvIt42HbJIBsM3jZjZtD0w296vDc0SxZr97P3g
         jrZ6i3FzxJPNyISYxgiwWXeZk2DHxWcrHW5YkksY7T0JFFu5LDKTy9O9+k491/wWjFoJ
         g4KJinVFjQVST2V9hJubRikWVvP0gVknyXb3YyjkEvt0X65nPclJ106s+XuUf202wRrx
         J7zr/ALhI3MGnJjgXme7OE/prNd5jWaFRypdM0YIRaQH2YCas8Hkzt5c995wB+yTzdgC
         qLvyv3ossGg/gN/PSyc5wBmsParEF3bLFlli9n47MQGnHjhOrZVill/uTz6P6mf5kJ1Q
         rNKA==
X-Forwarded-Encrypted: i=1; AFNElJ+nE25CsTp8m1J+OheQG5ryW4fL7rsgee0QXuHfhQpRoBkw7LyTF9MgKucm3uagP+R9Li7j94hPs6QEBs2a+w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxIoytclaWmgYu/N6ebIKcM07p6iT2lRRvZrdU7aGYfcRwNP5F3
	pTLkKwXVZ0+40i8Xsr3QGDbMwzcEQfSEDNdmF/7XZyUb1WurYQIB4ahO
X-Gm-Gg: AfdE7cn9PZqk2ZjhwmMNhs7DU3C7v1Uuy8NNft38Ob5YCYA8Hp9T3eQlzVwhTnvahpT
	kj9snbAXGPICHPuVZZ7yEj32H9BFlRLGmmEtJA7I/lJg+8FaK0rVKqBUTEh1uuDoU4XligZTw6S
	AhdYPQxaNHiSYG5/dN9VSk9IamBVO12C73L2evV6DLzHWrnEZnYEJZR/5188gkTy/HClMn7e39n
	KnEfNsfANBjTJ4f8HjRfJ/tlOUmhCqvvwVIEJqvUd86IRvaM9oYvEUJ2mnf61Rcb9ExAJ5k5s1E
	YIABdN5Vy8KtlbWuqyv1GX9H7gU/0wzpgtJgc8U6aizYPvDiJURS231rQ9BRBlw4TwtjhIbTkV8
	rT4Nt0qtqbUAynQgufeXYhZFFgtsBmnicfYR0I5gPPmiwXMdrskA88ZAbxlgk1Uy7zQaPhZiSCt
	9MW7ZnNiEbwy8qnLzzzkD5hA==
X-Received: by 2002:a05:6808:d52:b0:495:eb85:fc31 with SMTP id 5614622812f47-4a42ababf2dmr7011314b6e.1.1783980075443;
        Mon, 13 Jul 2026 15:01:15 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4a1acc82f3csm12939785b6e.3.2026.07.13.15.01.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 15:01:14 -0700 (PDT)
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
Subject: [PATCH v16 10/10] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Mon, 13 Jul 2026 16:58:40 -0500
Message-ID: <20260713215842.69097-11-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260713215842.69097-1-macroalpha82@gmail.com>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_150116_600396_09D02CBD 
X-CRM114-Status: UNSURE (   9.70  )
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
