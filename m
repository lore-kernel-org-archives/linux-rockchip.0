Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B25BC43602
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 18:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4xZl9p49EXGugvkXT2xNVx8xAsukIiEC/Iu33TtUmrU=; b=zE8uEcP9kfU3O8
	jZFzKp7AZrJ4IeUufNrWyrvUsUZ1gWraKYh4iW+PWrU5mKwi3kZ7wcHKm9e5vBfQp/fOrkUML8RYZ
	EbtYp3K9BNYxW86IzCUh1B/yTIOCzpsTHrejN6/cMibdb5gvJP7H+AbBFhu3JMS+BT7GjEmpxc+kd
	6Cljn4nO1YZrpDqb59K7iqVK/lavsfabXpOnSKNhXpf/70loOx/P9hFRrQvG6T4/Se7piR4rVL+41
	9ojXf4cAUlcgV2WGz4uB706l9Ut+RpB1VaXyeY3UZboGD5VFRe1HhNjXrPFS2w2BV5Acjxdg82FUx
	/GEizYJVyCKE8AmLT8Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf085-00000002s2e-0y3A;
	Wed, 01 Jul 2026 18:57:49 +0000
Received: from mail-pj2-x00.google.com ([2607:f8b0:4864:39::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wf083-00000002s1w-2Ai1
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 18:57:48 +0000
Received: by mail-pj2-x00.google.com with SMTP id d9443c01a7336-2c9dbd2e24cso4378575ad.1
        for <linux-rockchip@lists.infradead.org>; Wed, 01 Jul 2026 11:57:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782932267; x=1783537067; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3vTxn+IRtJSqL6xc6vMJ7NTVF6OVFFm8iwglxUc/lx4=;
        b=dGPpsgSuGxpFPRavrMtC1DZvWJpDX6EHHzMWj9RyhVRWsaXas04udEa1ZdXm8bI50n
         gyUUxV4aPqbEamxVHnjLhEC9vJnOF27CLpteY8mU9uBPPcLbStSCWCOeobExd2QA6R7B
         +fOjsrwnpbjXWFstjJ/SldtdQZXvk9zTG348D1voU6xjPNbR8QCjjWWFtw7BXgNGJLRT
         2FtXNt2VTJ06pwidw2euYnZnvrId+F/GoIY/chMeTOjlUMKXu5xoy9XYNUCIdeGIbKYu
         zCXT9EQHZ6WXD88wsTZFmd5/BbvWRXkdKHQFlKR0nMzbqighX60zl//yjQ/UXw4PD4da
         ATYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782932267; x=1783537067;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3vTxn+IRtJSqL6xc6vMJ7NTVF6OVFFm8iwglxUc/lx4=;
        b=Y+76yg+h3M6aFebfS0mKMNyY9H0YDYLG9o7VwL8fVpCSA4pvFY2bg2Y7Tw4HAGQfi9
         YNYJDXxpvI9SExMIQ7LUWwQT+gzgFKFzsKy465J/pisWdEFmNkmh7pbebtdcxLpVavef
         4Ur5E/kDEG0of04eCuzdeOZg5/7dKIJ8A31jErPKASk6yfFAz79ncpgtYpsUkEEGr1Nr
         tfTYZAJDV+mus9uw+Yp1m6rD5TZB9y6D9Co1lR9DRrPAtxLoa52NwH/FYnq1X3BIUkd4
         59B03g1/eNNusZN1smmcgx97T0kqcpUhVj0lYiOBxa5fGUfF6IShSx3/X8dPfLSdNpQY
         x1LQ==
X-Gm-Message-State: AOJu0Yw+vPbn3t87993GFnTAm+9bE5BwSbHlLkh8pm+TxqQkU9udt6DP
	WmxygWqWqS3ZVV3bHa9HoH62Sk7vbbdgKxQZOdbwuKlSc3Cmp8D2966q
X-Gm-Gg: AfdE7cmXQUX/d7IOUouMElJ/0vVzeRCbpG4owhb7fsKTzuG2zYYuCs21r7olscJ5NpE
	gvheQk5eHBDI+OSQjk8MxTW8dQZusy0EvNsUtWO4z7x8i4LkxXi1WtU2nByNaMsRrNNJiFNq6VD
	PkWoqfWdddECZ23S96xt8He2QZIvCVwqwk0vpqEudT/ok57IQev4/jB8yxADgZPS7MfjqUe7tMZ
	bNp6mxlUz50O3cUnvGEVes+fRE3C0v/CdPBm0xoM0d3gWCUUiE+RL9Z/u/tmsYdYy94RpDp47ol
	NgpCmkSAe6IwFbVbZ7gR3eI1GSpUslZwJqJQ0mnSVsh/KlC4RF/6swqZl6Ma3vBnC5NBv8ueOgy
	8Odd6tFABftqKPE5EEtXolM9IULU6Q0ztR+CFaL7ni3fNiuKJw8qVNkosZMqOkCByoXpkH/7NKv
	Ok4Dl+RIj7dmJESSnL6epLfQ==
X-Received: by 2002:a17:902:fc44:b0:2c9:dbb5:c1ec with SMTP id d9443c01a7336-2ca7e8b5334mr32518925ad.47.1782932266888;
        Wed, 01 Jul 2026 11:57:46 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ca9a8dadaasm2624205ad.14.2026.07.01.11.57.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Jul 2026 11:57:46 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: Replace deprecated 'gpio' property with 'gpios' for 9Tripod X3568 v4
Date: Thu,  2 Jul 2026 02:56:57 +0800
Message-ID: <20260701185657.4092955-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260701185657.4092955-1-coiaprant@gmail.com>
References: <20260701185657.4092955-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_115747_558508_547B7603 
X-CRM114-Status: GOOD (  11.24  )
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

The 'gpio' property for fixed regulators has been deprecated in favor
of the plural 'gpios' form according to the regulator-fixed binding.

Update the USB host and USB OTG fixed regulators for the 9Tripod X3568 v4
board to use the modern 'gpios' property to conform with current
devicetree binding standards.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
index c3ffb3fd51cd4..e3f53fcf80e02 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-9tripod-x3568-v4.dts
@@ -205,7 +205,7 @@ vcc5v0_usb: regulator-vcc5v0-usb {
 	vcc5v0_usb_host: regulator-vcc5v0-usb-host {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_usb_host_en>;
 		regulator-name = "vcc5v0_usb_host";
@@ -217,7 +217,7 @@ vcc5v0_usb_host: regulator-vcc5v0-usb-host {
 	vcc5v0_usb_otg: regulator-vcc5v0-usb-otg {
 		compatible = "regulator-fixed";
 		enable-active-high;
-		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		gpios = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&vcc5v0_usb_otg_en>;
 		regulator-name = "vcc5v0_usb_otg";
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
