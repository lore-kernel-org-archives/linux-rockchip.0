Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CAD31061B21
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Mar 2026 20:01:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MN3EsyBY86VQns8dK7l8ZouBBxaE+nAqtdNQnas2i6s=; b=yjWzZ0m8qr1qH9
	uLFAtK8KFrbMhJYNjh5kwYRHRcB5n96ZtgInDoYGAsuvgUemEZht84V3PN8ip0Q80zVLPeOjA7CZv
	BV602Me8cy+fozZGoF80QRUwdWhUM/+jVwMkM0AyH+YkUzNq7JC+g4qFq/ZbHeDGDgSznJ2D2TwD4
	fumUcNXYwGLdDZ82ZMrHxBYOXDUXRrVZuFWWOiC+y3jbJNnfNTTnIrGGEDmKBvylUChJSx1soHsr1
	i/65ZtuFHR1msdC/TAo7TavjvDR4yTd3QLrlnfK1H3IyNFuw/jNMnSF7lsqY/F5EMqOhzaNQVIaS9
	JZLswaEpQsGEOvNjeqhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7InY-0000000BoWz-2lJa;
	Mon, 30 Mar 2026 20:01:20 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7InS-0000000BoQz-1XVF
	for linux-rockchip@lists.infradead.org;
	Mon, 30 Mar 2026 20:01:15 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-7d7f592b8beso4182293a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 30 Mar 2026 13:01:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774900873; x=1775505673; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LxIwxmn6J4qQSSCoJJc8i/ANaXaz6gkd+aLXiTOc6XA=;
        b=fLsygwXxnjg8iTaH9y6SFVKeVJQ5qOc44y53cRvXcp7jbZzBYkGuE7prC7blTQSnjT
         JSgYXj40PYmVR56qFWuA4MmTtRkJuImaEmOFonrQGp5LOFdNPv1FWtzQmyvXRojfmzUi
         mKMU8GL10ggKhO4YaMfNvTBmHrXOC6AKueWG8xPZ3cRuxYz1Pyk3ZyglY+R7Dzb7uE12
         KtQ12gM8JXYkDQ8tVTvplZv0qIOGrEH7N6Eq/cGbNrQDRIcfhhfRGCn1SYwFAPf0sjir
         OdBqKzao/2ZTrXgGuK+pcslG0DoLMn3/NY62NPebrjOYJq0rgVktqSIbU3uSjQD3icjN
         CGGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774900873; x=1775505673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=LxIwxmn6J4qQSSCoJJc8i/ANaXaz6gkd+aLXiTOc6XA=;
        b=DPmrLHDrhm64Z43OX2H1kO/VrTaGKmrMrwg0bQoY+jzGKwUnxrRdGDY1XkGgNCAHAu
         JN7Z9ZJuEEdTKhcw0gm1Nta704hqOsb5tOfes47SpF5xnoquTNoizUhZXOZkXg1mMjlO
         dZtAHBWs6qHv4zF37MbtaMesynMQ4zTNHXXBcR4F7PekPhY49xhWG5kHqrZz4/63XQ0p
         gc5s4dav9VEsZ0NRtV0e9Zoz+FC7NnMo+7dYvlHnYtLwQdcB2cWagZ8tOvPGQt9IQhea
         cWNxnOcVdghpokgmPZSmxp91FO0Ha7eC3WI2wg5MKh+pyvUgUpAhsychlSnCiwnIFxSu
         N+Rw==
X-Forwarded-Encrypted: i=1; AJvYcCX7GvqUys0chXEdjg+FpqXJxDKicqLXYmCw9/0TSBuVcN4qDvCPiw7gsSb3hlvFrdvgEEj4jXYVG2oupJHuhg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzfUnt1FWHPjONyyJ8kAEl1RY7NK6qcgNfAX6QKiYouHUQTDJzx
	C144VD0SdbKy1IwQLikCmiCvjPR91U/P4Z9acWZ9Z4rDVFMXjFGQ9RkP
X-Gm-Gg: ATEYQzxFUx8LM+XNyYq/OJ9niXDu96NBG5+F6GM/oOGDaiJrCzkgSE3QhTBjzRLPyzq
	RTYv4t9uuuvuqbqotX5C6H4ThOTWE6Ucq25sBxDjHQIq/2POJ5KooK6LIZt1QVLvFNjekkRxFQ8
	osrFlvyxYrXgTBlex/SyHXsV5w7su+R0f97UE5uyKn65JToFPyqeH4yPITDm93DS4b3t4+qeg0/
	ulRQEFSmmFmHujt4DzDxqkvvUVMrg9W6exgHdn4sqZGvM6Mfe/M4LPviXuhvpYoXV3+WkpSW1d1
	ppDKrrpR6Pc/DCWX28oASH5sLyjWQJNwale3g66md7hCr9TegUCv8DevsKKGiMwzTKxjiwcmhEl
	BQEAQ3hwvt5fI955Wk115o5XxeQ6f5HZ0Cfj1SaHTqJgvs8g6jxWqhfGLPADv5d4N+c3Xlgwtyn
	FDQr6RfSAmm9NU7dDU
X-Received: by 2002:a05:6830:380e:b0:7d7:ef0a:1ceb with SMTP id 46e09a7af769-7d9fadbd658mr7337761a34.9.1774900873526;
        Mon, 30 Mar 2026 13:01:13 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7da0a336353sm6601068a34.2.2026.03.30.13.01.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2026 13:01:13 -0700 (PDT)
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
Subject: [PATCH V3 9/9] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Mon, 30 Mar 2026 14:58:53 -0500
Message-ID: <20260330195853.392877-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260330195853.392877-1-macroalpha82@gmail.com>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_130114_431517_39247947 
X-CRM114-Status: GOOD (  10.28  )
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
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 44de35bcd001..834d2c940810 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -872,7 +872,18 @@ aw87391_pa_r: audio-codec@5b {
 		sound-name-prefix = "Right Amp";
 	};
 
-	/* invensense,icm42607p at 0x68 */
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		interrupt-names = "INT1";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD6 IRQ_TYPE_EDGE_FALLING>;
+		mount-matrix = "-1", "0", "0",
+			       "0", "1", "0",
+			       "0", "0", "-1";
+		pinctrl-0 = <&accel_irq>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c3 {
@@ -933,6 +944,13 @@ &i2s1_8ch {
 };
 
 &pinctrl {
+	accel {
+		accel_irq: accel-irq {
+			rockchip,pins =
+				<0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	gpio-keys {
 		vol_keys_l: vol-keys_l {
 			rockchip,pins =
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
