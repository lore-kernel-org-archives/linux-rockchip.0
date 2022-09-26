Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D21BC07E9D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 12:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkIAQGuRepEupXU/2mQVZPI6B4RLTVEEkdsFvGjwr9A=; b=N/sVcjMqECzE47
	ncmutVUZjjxXIz639+UWIgfyMFj71UZOq1JIyLCc4rZKcuyYhy8bRpKD6fEqzytUwiroeNdccCQZT
	/HP1UjpniLH2jngi+2EDWFgVowPL4woqVHH+NUReF34RioAdMH0ivacLIe1oWQEhjCPEmGE6zuEg/
	nfu8p0uUC9FO+0dqx8Rn1+6WojZwbNM7Reu+YHD7fcSgO7Yk511onc0pBHwTWlS6s1PDkLRbfKug8
	Eh31JYzaiA84VcZ4Trm1vgzmUg1JeiT6CsWaoSO1EqEBbJv4DW8SBWVhOB75g8Ef2cpickLyqO4YC
	KFSgZbaVpiFw+EYTeddg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocncg-004zLr-Mc; Mon, 26 Sep 2022 12:54:10 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocncd-004zKC-Gh
	for linux-rockchip@lists.infradead.org; Mon, 26 Sep 2022 12:54:09 +0000
Received: by mail-lj1-x234.google.com with SMTP id p5so7281373ljc.13
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Sep 2022 05:54:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nabam-net.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=iorYNtrLY89hA3M2uo9zu8tdCvtrF7NjwvF7WRrO/5U=;
        b=xYYLm7cOGYF2Vyoz2KFZEOJkJtBx7Mx4jZdHDj2GC5WchtiPipydI7B2UvI5zXbOEN
         4DDNHjDfB+yMD6Tas5eZXn/Of2DdF/Ns4MdH6R0oQ4gnGeTfQ04ieE4meBgsCCa8AOg0
         risAwjwrUpUUlI81j9m21RtaFHMLUgiNMa30fU1tJNU7uzxGi9DR/tb9s7nAgKJ+HuY8
         qU7dpSVj9dsq/DCWSgaf1aX4ziMiI8MWZSLzVUQyPM3U34QYPp8g4KHkkIg52ZWCepj9
         sUSZVcAaxPPoFUWV9Xqs2FLoKTpl1kCAeZYIVMAqZgTKX8bIVQ/RkFD8f9vobSO0v7+A
         NVcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=iorYNtrLY89hA3M2uo9zu8tdCvtrF7NjwvF7WRrO/5U=;
        b=SQjZ5qiSSmczeltdBoQNh6qVe4nfBL2niTl4Aan78i2bd1i7JZP2ys1yYQR/q/bHVC
         8RY+Pw0hA/0KFS3EqKNeKkxz5oZotLFHOGxlP3AlZXxM9DwzcPR7DooK0iMoemH0QMH0
         esul4zMqg/D7zDFTVPn93+l0gqOfBWLazhHQFcggKXmmQjxCNDDpStUxPTEpAp3am0iX
         fGEY2RwCbJDPess3WubtYQjYRuzWj6/HTob4B40yj0JB6WCb18dCGB3kynSJIZHvgMow
         qpn5A0LFpfkCEmpQ9nJI8aDCuc9w9kf4h0t3zXFXzINIqFV2dHBhdrnAMhEmEaLygOQ/
         QLtQ==
X-Gm-Message-State: ACrzQf3dpC7NW4Focr6zIssltYWUzOOGWq63vhmvP93ZBSeurE+Rthj+
	k2/c6WknOgCWXEZ5zzEWVZ+HIg==
X-Google-Smtp-Source: AMsMyM50SWU4pS4xYv36iF42UW3GLEr4IvXbLPJoedh4+BC08jAN8LA9ONtEaabueblTk6/kUm64JA==
X-Received: by 2002:a2e:a30f:0:b0:26d:9162:9451 with SMTP id l15-20020a2ea30f000000b0026d91629451mr2755347lje.164.1664196843171;
        Mon, 26 Sep 2022 05:54:03 -0700 (PDT)
Received: from 16-inch.lan (c-7f0d225c.016-470-73746f7.bbcust.telenor.se. [92.34.13.127])
        by smtp.googlemail.com with ESMTPSA id d25-20020ac25459000000b0048af4dc964asm2530772lfn.73.2022.09.26.05.54.02
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 26 Sep 2022 05:54:02 -0700 (PDT)
From: Lev Popov <leo@nabam.net>
To: Lev Popov <leo@nabam.net>
Cc: Dan Johansen <strit@manjaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4] arm64: dts: rockchip: fix quartz64-a bluetooth configuration
Date: Mon, 26 Sep 2022 14:53:48 +0200
Message-Id: <20220926125350.64783-1-leo@nabam.net>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <CAMdYzYpdhJ-wWN9UAppQvaNqK8Y_RadYv2v67gD5S_u=1ZXw0Q@mail.gmail.com>
References: <CAMdYzYpdhJ-wWN9UAppQvaNqK8Y_RadYv2v67gD5S_u=1ZXw0Q@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_055407_804420_136E99D4 
X-CRM114-Status: GOOD (  12.26  )
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

For "Quartz64 Model A" add missing RTS line to the UART interface used by
bluetooth and swap bluetooth host-wakeup and device-wakeup gpio pins to
match the boards physical layout. This changes are necessary to make
bluetooth provided by the wireless module work.

Also set max-speed on the bluetooth device as it's not automatically
detected.

Fixes: b33a22a1e7c4248608e533fc4fa524258b3fae84 (arm64: dts: rockchip: add basic dts for Pine64 Quartz64-A)

Signed-off-by: Lev Popov <leo@nabam.net>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index a05460b92415..25a8c781f4e7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -740,7 +740,7 @@ &uart0 {
 
 &uart1 {
 	pinctrl-names = "default";
-	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn>;
+	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
 	status = "okay";
 	uart-has-rtscts;
 
@@ -748,13 +748,14 @@ bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk817 1>;
 		clock-names = "lpo";
-		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
-		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		device-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
 		vbat-supply = <&vcc_sys>;
 		vddio-supply = <&vcca1v8_pmu>;
+		max-speed = <3000000>;
 	};
 };
 
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
