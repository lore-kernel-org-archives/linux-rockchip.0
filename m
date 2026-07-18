Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C69CC44524
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Jul 2026 08:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1aHqA7179yFmoIKJzxOkMrAI+t7mZO8eKSPUuEbiHhk=; b=PRgOEH1QLYvW3T
	lb9KH7Vuv0BqSeIuDYIFeVvPxOPxtq5au6jZbId9eCqBPMJi3AyluxKHanxbOMYTCt5a9+5TqsJcq
	e0/gXPZRNd9mA1Qd7VyM4kccIW/p5mjmyNWprHs1Fh8LoFSVExZCAs3glQ07z4/nnWm7WuykpLoJ/
	UP1Neqn57XOrG7GNhfui7nAscUTzt48t+tfsU7UquOemF0BtnPFTzhCTHKk7r1iOMWRNa6JSgj4BS
	wiNYvKRpNH83tg7z9Pcp68bg0o7JQPVpB7LvFZExTkPq+CU9HVOIBxUSnOSTm2UdQgJmh6qA5GHpb
	1f7wpfZBvRXfTvZM9wiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl0rr-00000003uzp-3MHf;
	Sat, 18 Jul 2026 08:57:56 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl0rm-00000003uwI-2ywp
	for linux-rockchip@lists.infradead.org;
	Sat, 18 Jul 2026 08:57:53 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-495522bc0e2so272185e9.2
        for <linux-rockchip@lists.infradead.org>; Sat, 18 Jul 2026 01:57:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784365069; x=1784969869; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OkAddxCtIZjvbuQcdVYEMV492MXwwpyu35XKLgJr4rw=;
        b=OQWzxOt+VEIB+Byy+P2e55WTMYLqffyoltJVc2fVwjKWJEt+6NQyepyOprtskdkyr9
         JwHCHwTHmZkpbbi0s3nQOoNtk9i4ulIPcqLgtQ5exD3zfjn77vLdcL9SM3I/9J0MQJE0
         tWm2wkTcR/5x2ROHvMyBUNP0i5VbD2A2rQ+qM+6XOkFlCn0clowOWgoRsK2hUyW27Asu
         lwSj0R5BplmtxMZ8nVlYF1YcwYQ2QCa8RKG1wIOANVVYelXjLrSk5BYv1M8cGAYbEGrQ
         Oi3GiGQuYSnHLVWrs2Zp6/83ef8hOo6FUvFZ3XH71X/2TgF+0kFngPnO7fUdsts78mys
         oZmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784365069; x=1784969869;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=OkAddxCtIZjvbuQcdVYEMV492MXwwpyu35XKLgJr4rw=;
        b=EJMtBkUjZjqPEFkaq8ygaCHuE7/1ahFcc+BEwxVVeAerWzoqYIediuolnjNorYlKJj
         xX99u7pOb2XC1HRdILhJ6V2s1XwhQ0p13qSXn24RAiLJNB8vT04bggCxHV3+v6zEimDc
         AgjcLQoV4aJSd74AjWT+dsGuuNzflDLq6l57qgeLO+uOT0UXhEi0cWeJRZMMBza+eGAB
         jg2yLdzEuXncez+EYKrllqFSvYv9Ji8PChSQYR2P6+lqu98u+kAKYMdNgbWJ4cl8s0/u
         03uPzl5dRTjJMSG9lX1bKPM9yz3x44iwM7cPwcjYjmu6ClPwAgi2fnawbnbScnlm1KYR
         xrUA==
X-Forwarded-Encrypted: i=1; AHgh+Roo7usofbj+9/p5Uq+Dt8qOosRcCK0w9Rkxr6V0C4SUJnBwzkW6RY6WVb+KYRB3xqZK5FhlCBsKN/W7Ahjdtg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzdeYUDvHXaCTgtQgXJsMQdr44JTHPMkFHwAsHrc2M2MgoqXJTe
	+NeOgk8Wth+z/nQS7J4thm8YOeCitkcLE1XYW4W4JHFED+Y3zqepK/St
X-Gm-Gg: AfdE7ckQJp0k4Zs7cpTRhmtQxRPy/EhVjMb6SDMbMxTvuQCvrks5SaIdAPCEsyBx7ql
	sAByygRxPpM5NCSbNavWmn+WPp5V7N0gACKl0i7ah+zIiFeRtXKUtwoc3lNEX9gcDfHymh+WivK
	OLH3L1EDq1DG0IdvFBcw8aJ6VbYKQinvPLOoFU5JxMtOIcg5BUuxNPkeoIuo+pBugtPIwroaiZn
	2TUnhmwJqOpcr4bW3e/tQ8StD1RIEOiYx+ZMGr/nAOc/kMsiaE8aF81dYK6xBZlyRKiQoLsCg9K
	WiSJtgT17g7koqu+t9I1pxwB19y4wQYfBAQAUyKUdK6LSvlfl/S3MbMS13nbozVI30z+rVH0qBD
	cOInbwR1cvP38dC/gbz/7QnMpN/mJuzRY0lWV06TKGD5r2hePHgrQP1lfp1V5Wlz6vQN4O5BcYl
	gLnYKvIX3Djj/eUfU/eiuN1uP4iY0yzG7YKIOWJ/5bPpNgTb9scUyIXdPAj/ZCLDAd9iJKyh15/
	ui0SxRGCQ==
X-Received: by 2002:a05:600c:3553:b0:495:4a33:2c34 with SMTP id 5b1f17b1804b1-4954a39955emr39555925e9.0.1784365068868;
        Sat, 18 Jul 2026 01:57:48 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8D1600206D23E70680CBAA.dsl.pool.telekom.hu. [2001:4c4e:1b8d:1600:206d:23e7:680:cbaa])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4954834edc3sm91477455e9.0.2026.07.18.01.57.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jul 2026 01:57:48 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Dmitry Osipenko <dmitry.osipenko@collabora.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v3 4/4] arm64: dts: rockchip: enable HDMI RX audio capture on Orange Pi 5 Plus
Date: Sat, 18 Jul 2026 10:57:28 +0200
Message-ID: <20260718085728.6797-5-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260718085728.6797-1-royalnet026@gmail.com>
References: <20260718085728.6797-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260718_015751_219413_5A4FB9F8 
X-CRM114-Status: GOOD (  11.73  )
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

Route the HDMI receiver audio to i2s7_8ch, the receive-only I2S
interface dedicated to HDMI RX, through a simple-audio-card with the
receiver as bitclock and frame master. Together with the audio
capture support in the snps_hdmirx driver this exposes a capture-only
ALSA card fed by the HDMI input.

Tested on the Orange Pi 5 Plus with multiple HDMI sources: capture
follows the source sample rate and stays in sync via the FIFO-level
clock tracking in the driver.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
New in v3.

 .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
index 9950d11..d5840e1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
@@ -37,6 +37,22 @@
 		};
 	};
 
+	hdmiin-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "rockchip,hdmiin";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&hdmiin_codec>;
+		simple-audio-card,frame-master = <&hdmiin_codec>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s7_8ch>;
+		};
+
+		hdmiin_codec: simple-audio-card,codec {
+			sound-dai = <&hdmi_receiver 0>;
+		};
+	};
+
 	ir-receiver {
 		compatible = "gpio-ir-receiver";
 		gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_LOW>;
@@ -247,6 +263,10 @@
 	status = "okay";
 };
 
+&i2s7_8ch {
+	status = "okay";
+};
+
 &led_blue_gpio {
 	gpios = <&gpio3 RK_PA6 GPIO_ACTIVE_HIGH>;
 	status = "okay";
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
