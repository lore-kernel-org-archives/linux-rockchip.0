Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28600C531D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 16:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mqphKKSudG2y91YT+pRe/E/vyZJo4i9ODKlyqbzWH8=; b=SWE018rSo662ke
	DTQhwMZPifK7XlSPqtW0m1dBLLl/7sO5AdLXjOftLswQ1F8nckmfPju1mDBRj137WRRr94WFHESzj
	JUR+mThczY9WGgruPwSVJ/4bkb0BEWYqi4+Fo7hNwLoZsyU1VphzVYvUSFKX/I1CDXo7OnbWKhUdA
	5oWKJnkMsjHzyd0M4oQVhNBLLCKrAsTXX39QRY/jGi3TOcR1GCarIDhoGiP+LGFTQfVt3o161qqsh
	0+BH/xrWglwJw2+V748xkskAG3H/X9EVvEaCAg9f+66eaCr2yLjpRI/3JQxkhz6IKsbWScP/6qSet
	BE+Ov62e6zkSHofFDZnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woOXf-00000003Rpz-0AKs;
	Mon, 27 Jul 2026 16:51:03 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woOXW-00000003Rha-2S6Z
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 16:50:55 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-45691990234so1883586fac.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 09:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785171053; x=1785775853; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=P4orRH5o7SeTQHiprInxKSxyEC4KQeq9M10XeAvDqXR0bdOQvURbEP0Hzv4+ya0wlV
         GINgJi1yjpVjDnkmcl8mWk3UBylOy9R8F6gV7OehOZwkJtA/DFqL6PkfF6+Y64CrRoU3
         Nvu4MvNlTFUAfkZq16iQlH2KlZc3HasT8LmXYXH+Gb4czyPALvJGhs3cwGHnbYj4e2fR
         Os28vx2b7ZP6zDivc9OcAAOm7lnkquriJICNhbQ2nsgD3YwnvT/pb4ihJYdBEgWm2yPJ
         r19NkxCsSLOOOIDFY2YxpbuLSrAowwyujazoNntyfQGUMB8wd0n/cAYRrXwfxighNa08
         lupg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785171053; x=1785775853;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=a0mdfiM3qjdIeg57ItkPiqiLUsLGffK5s/s59dcT3jw=;
        b=S+Pa0cOl4Ks72SOaLvgoV2Knjr0oIi86H39JgS/6NZ8h2nahrtPO6XmpdcaVILasAH
         TR14BS/1mtTIy1ymWHcOFiHc5oBBPmkc3qBolOWGJDlAfpMMsbzuqNMTJs80D2kJPigW
         TwMZaa2xAF+PEF+K9vRIW5jM5+142WfAP3rR/UoZH4l7QNgdnIuAdxnOuoNVhNnHm7kl
         qcJyqZzBVf1GUWC8bzEHNa8QK5Whme7DnyD0uM2VvaJmNxcOJuIVmqgsB9p7CP23xe8Q
         HsbC6oHmw9Mv4aKNjaMZU18nL0+qwzwmWNNkmDuvH3lByEby7CwCMmFfYBcTEv0Aib14
         g5qw==
X-Forwarded-Encrypted: i=1; AHgh+Rpomq6tw3Hm9sNG/b/y1Ycmu63Hf1mZeQqZz7zItgUdZdTzMdlBziUYJ3TMdVeZ9LgYWSdM2plbBog7Wwxzhg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwLxA5o1wvzvxsHGB2lAOki1DWejC29ZpdgvEyAgZfxhqufu3Mv
	7f1ed1nBEWSvGnF3BS3ARHGghzKBsVpifxrUcvB+cFG1XyzTsqur+HKQ
X-Gm-Gg: AR+sD13yKP+/tFUI+6rVDkCEIpyurPUKQl77ufQHclOZ07GIGZe0cMn9nvJLpVFlvTC
	5sDgxdaQ+a9DACAC3n0FysFHRf0t58uXBr6nZgF2c4zg8zvl+GOI880NdL6w9rLS24nWIRt6yaC
	CMkTZMgQW+O1k/jgcWm4CTW4yjm4BnOxYs6+KgxnZ3b7irjaWARwYmNcKzKO6BQqV68+92gf5zX
	pytKP2nYbPcAMR+QvSCWrbEEaYoewShfeS26dChzpGrS3sJulNJzF8C5sk2Hi4ilTIZX4iq4vY9
	SXfFrAuSdYx1BW1nI2twnSbmvSf5gceVuO91f0TpEbDUllcQ2G/dwf0WfkTdrRRwxsc3Gza3x/V
	c+/sX0YHv8uuOgPIY6O1q2qmQfOM6MmSZNzmeff4dRYKBuxmwojDq7gMBUwDURh30TO8ebP2aL3
	bKwKFC0qU6MOPBoz9P5zB4fHDN9/5ct9xnOBYV7jCp6A==
X-Received: by 2002:a05:6808:f87:b0:497:e7e2:757a with SMTP id 5614622812f47-4ab6a2c4052mr8192276b6e.31.1785171053539;
        Mon, 27 Jul 2026 09:50:53 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:30e7:7cd7:b59:5863])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ab0c7a1912sm11395050b6e.2.2026.07.27.09.50.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 09:50:52 -0700 (PDT)
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
Subject: [PATCH V20 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Mon, 27 Jul 2026 11:48:13 -0500
Message-ID: <20260727164815.65190-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260727164815.65190-1-macroalpha82@gmail.com>
References: <20260727164815.65190-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_095054_637661_9F82163E 
X-CRM114-Status: GOOD (  10.00  )
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
