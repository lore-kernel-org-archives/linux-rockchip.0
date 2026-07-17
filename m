Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C17DC4450A
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 01:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U+AvNTnaWWHQDniGgoZ4wswP+PBwqFqf+vrSUZsIeQs=; b=pI3S5+EBUTXfjF
	FFMVlty1/JPIDyWvdIF5WuhcqLPuX5PAkQKrhJavno7Zqy0XaVfnMiCJmTfaf3K+A2dLXLNYr6tkF
	vD834nVNTDe+H5nJ/rkebkNdXNE6R1Kuxf34AblKQV1I6A6z0A/MH1/d+z4Vg/e6LXjEpkvxuYhBx
	1S/o/S3pgREglvwxrXc5eGtxOmHr6+U+m9hKOCDM30K0QQ3KZmSFb/fdSNoEcA7Ei1s+1ALVpM43z
	Bfpa0eneUNyDwmMRZq9uTClzSiFwS80l8ADutLpElurHX8Eox0KSSNepFh7V4BWnPO95nlcH5CNO3
	xISA/YjVI6yux0gNcaDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkX3V-00000000sPJ-066M;
	Fri, 17 Jul 2026 01:07:57 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkX3T-00000000sNx-0qVJ
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Jul 2026 01:07:56 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-81e8fa1b8d6so66992867b3.1
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 18:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784250474; x=1784855274; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IWPYffNjafyuAOVGsfoGgw36TjYG2N8QaPcc9w+7yyQ=;
        b=M6GHsuqTqPcVbNR+oOdh6yTtkapvfBfK7gF8MUu2Rw9t3X9oW9wnZ1i2w49OLX0P35
         5TV5fHVeU6B4kOchfjSoV4oAQzqsPciUXPcWi10Xnp9c2UTJ85pGx+WkXNn80IwmAsgx
         Y6DOee2KKc2G2T04trDvpfhcxxrtnr0fmrvFnN/PkZWDdRptG8mv4JINYrl9ehIBD4mo
         leW2uGr/5+DVfqbt3KMLXpn7Ca2D4W3E/kINSMAZcKlZceaik1KaJIvj/5ET6lKgr7c5
         EQwn6ZG6l5sn3HGlJ+Xzr0+6u0M3I0YOG7r8e1vx0L33mY3GDu62hVZzTaCN7+e2wWzQ
         1hKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784250474; x=1784855274;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=IWPYffNjafyuAOVGsfoGgw36TjYG2N8QaPcc9w+7yyQ=;
        b=rqbN0ak8TZND9iL6cTss1tizuTviZSll9+DwLXBrpCMtS4WcwJ1FDPouYMIFAqsgtb
         uPR7H1NBAJjBTlDXlEESMl9H7F2/33ZWbh/dhhnpcI9SWWCtRIniC4A3Cj2eqZtQxEZP
         x2BpRQPN7e6UEFc6E6RXycEUqtc1qhgssupAjSbIZJA+pSCV1aXIXZfQebc8nlf49Rpy
         /4de10IXTYKhBq5xYIOv0NdfnG6VhOHbPOPzPjIwD1g5Yeo/KALonMHPMZUE6KhlBI0Y
         wMjRxkEZ9eFqF4/QIzXieSilOKxtvMmjLPHsHUU+4UFruP0zB1E35v0WjyBxhbabILLD
         fJ3w==
X-Forwarded-Encrypted: i=1; AHgh+RozXj/3sKIZbjE4oTKlmoPBwCkFgBZVdJCUR/HOrfj7KeMABAyT/CzjjW4vyKCjv7xW5/vIIK1dG0zkbyE4bw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzIToFRtwEXnXuoSJLjvvs9g42R8Dm7gpMGzzHKGliEiiUH/EQ4
	9LfJT05XaJawkTLjnlvmL4EyhQIO0HG2zsyRzr3IhUiDmyJwfk3Bqx22
X-Gm-Gg: AfdE7ckeQu2w1Jg1tiClFp+gi4gSW8Lud6xrK4FFoN6Bkjhq0l01igl76c7WYr9wZX5
	YH4qWx6nuISWodGwMdmi19QFxfi5XH+kw14NII99qawan/PcaxkbUUz5SJ7A+92IYx1Y84OaWiv
	iUu+a6z3u5T+7aKtrjhQ0TyowRFQQ3+XBqFq24Y37u1eQ5GVkTBT3WlZ6cqzpXvehVkFIIrjynB
	2NAESPyoawEV94tPZ7k0Yaz0EfZGNZXZ4JgQatS2haAeeW8oCww8vSIoWss7+hyvqOhXHEIUOfG
	qVsDQssbULTNc2Y1qKLqFHEMQ3a13NQU6tG1ZTaaoMR5IkL3AmSHGtu2xFev6Tx/RRkHlYiYRoe
	Ikl7jKh3HrLg80mNqXy2n9GGRH/yM2b9PJK2IU9QJeOX9Hhj80XtVSFuNaD9/e/oLHlMYpJSK6g
	eNoDuTP+EU80IE7UPD5oMTrdTKBTDphAG9dT1M826BrZRAf/0=
X-Received: by 2002:a05:690c:6e0a:b0:81e:8d95:3d32 with SMTP id 00721157ae682-81ef26cd37dmr324127b3.9.1784250474013;
        Thu, 16 Jul 2026 18:07:54 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:1b3:a801:a24:e2d1:829c:ccde:e84f])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-81e8f4c5d3csm159095057b3.15.2026.07.16.18.07.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 18:07:53 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Keep rk3399-roc-pc-plus work LED on
Date: Thu, 16 Jul 2026 22:07:36 -0300
Message-ID: <20260717010736.578419-3-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260717010736.578419-1-festevam@gmail.com>
References: <20260717010736.578419-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_180755_241048_FB9ABFE4 
X-CRM114-Status: GOOD (  10.03  )
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

From: Fabio Estevam <festevam@nabladev.com>

The rk3399-roc-pc-plus inherits the work LED heartbeat trigger from
the common rk3399-roc-pc.dtsi.

On the rk3399-roc-pc-plus this LED is the prominent blue front-panel
status LED. Blinking it continuously is distracting for a PC-style
board. The usual default is a steady power/status indication while
the system is running.

Use the default-on trigger for this board instead. This keeps the LED
useful as a simple running indicator and still lets userspace select a
different trigger or turn it off after boot.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
index f87bc7b6afc1..7e8039b19be7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
@@ -93,6 +93,10 @@ leds {
 	};
 };
 
+&work_led {
+	linux,default-trigger = "default-on";
+};
+
 &fusb0 {
 	vbus-supply = <&vcc_vbus_typec1>;
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
