Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AFB1C46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 22:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GN7ZyealTIGlGqwoerBYLqzu3laHbO4hRst2YX+mvjc=; b=uc1rH+HnIHRLHUWHQtT+HTJfV4
	7YG23dNbPbNqJivjBEaoShEalRSxKFhmt27oCpyogser49svg3yWya7Qn+KV3qpx+aYGEacrlmojG
	8z6zA7VCQQg7qcEwA5rG+VmUxlIlwnI+19Ebe8l7pbRrkkpCsMGlie41lE4lPYGebftSj4mTcFz8I
	61aBhPuZomeMQzFYUjqVrb+wbV4lbkTykagm0WLwVl8XLn14mQDk5O8SzVLK1zGgLhOjmUEZF/C4Q
	VUE/1U0dsbuk5wry0GfGPbbhCvkRxr7ScbuXxKi+UwCQa2E28ZaBjN0ENYhW+BOAapANxSu+xuk1W
	2Ht+KkMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFNXd-008q9F-10; Tue, 10 Jan 2023 22:56:25 +0000
Received: from pnkfpknw.outbound-mail.sendgrid.net ([50.31.49.41])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFNXD-008pzG-TZ
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 22:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=iu9XeEHXs85wlWI08zrM0heL4rRQNr148D7eobXqpVM=;
	b=JeTLAGCio3p04KCfTFic9sY6ZRzSgfXUaXVuRqvp0yjrWGWiw335WBWqdZUfCDxpAqRS
	bdADo1gQ73+wl00ukc4phuI76MuLwKTWaPL9/I2sVLCSK7fLFsIWKMmvzhfPuPSsgRAqOK
	uOZdgQcCKQ/H+ENK0y/acbZiRUi+faqK7z/gN8Y152Bv/j/KDH+9nTaCkEnXqjinEQlWaO
	Km/9ZivgpCa0tjqVxi1uy2HggPvh5yqmM4CRxkENpOk0D2oTvqKTo6wVSyod8IF/wvRj9C
	mWSD8juLBI8YbfU5euy2jpLHY0qaQKmmpHpZGJ10bcclmhQ2xSoUIuRiveFs8Xzw==
Received: by filterdrecv-69c5db5cf4-xtwpv with SMTP id filterdrecv-69c5db5cf4-xtwpv-1-63BDECFE-2D
        2023-01-10 22:55:58.84405825 +0000 UTC m=+3665522.168729091
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-6-0 (SG)
	with ESMTP
	id Mr120nyQRqec91sAAXlt_g
	Tue, 10 Jan 2023 22:55:50.525 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/2] arm64: dts: rockchip: fix hdmi cec on rock-3a
Date: Tue, 10 Jan 2023 22:55:58 +0000 (UTC)
Message-Id: <20230110225547.1563119-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230110225547.1563119-1-jonas@kwiboo.se>
References: <20230110225547.1563119-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID:  =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h+QgBffmXDJfQEHAq?=
 =?us-ascii?Q?s25=2Fe17FJ3dKFHD6gTSEYSLMW01yEpPM+m=2FOyv5?=
 =?us-ascii?Q?C1+Y3KIlUfqNYvjwqYjVLxEzgDfHKDoIBIHij7o?=
 =?us-ascii?Q?WMFLWthIpMTi7LUYprWhmtTif20sIsxA6NllIRS?=
 =?us-ascii?Q?abJaqSwmytQGsBvAp0PGyCY7HOsfh+ogWqQbhGb?=
 =?us-ascii?Q?nqvedHyuLd7oHIx50sDwQ=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Michael Riesch
	<michael.riesch@wolfvision.net>, Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_145600_084414_DBC8E7B4 
X-CRM114-Status: UNSURE (   9.23  )
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

HDMI CEC is configured to select HDMITX_CEC_M0 function of GPIO0_C7 by
default in rk356x.dtsi. On Radxa ROCK 3 Model A it is routed to
HDMITX_CEC_M1 according to board schematic [1].

Fix HDMI CEC by overriding pinctrl in hdmi node to select HDMITX_CEC_M1.

[1] https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index a1c5fdf7d68f..c9cded3d2f1b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -279,6 +279,7 @@ &gpu {
 &hdmi {
 	avdd-0v9-supply = <&vdda0v9_image>;
 	avdd-1v8-supply = <&vcca1v8_image>;
+	pinctrl-0 = <&hdmitx_scl &hdmitx_sda &hdmitxm1_cec>;
 	status = "okay";
 };
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
