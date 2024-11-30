Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65EC6D735EA
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Nov 2024 00:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ez1GgUHjRJIUwGfKB/hi+H5BMPHyamDmJygCrjPzmw=; b=lEp+kVUy/5ll+l
	rVIB2QdQrueQePgnK8vzah26fxINjc7W4rCu7Q8DmeM6EOSbUk1JWYeCTTGlOR/mkn3Fv/1RmZa5P
	RJbLvA/tsWEuRcBRQHquO1XGAUaoMBxLag2/5u6sg/0esy6LxsZ4EYJq2FENwgOykwxJMkstACkNS
	agiHIsxIOV1h8XLeLskJAY6v8bNTImk+7Om9h1IHDNcwW/1r8bBnP9h4v+141T94Ldt14LMIhDQ4A
	IWZvLNsiR4g5s8fw8JSVw8cL4mGAlZnp0i9XtfRCpfIie0kFDSGwbzZ3fYuh9pLI/YC04aqvRuFzw
	RCmi7LoRMXRYcqmGGjlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBYA-00000001B8m-0G7r;
	Sat, 30 Nov 2024 00:41:30 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHBY4-00000001B5x-3YKF
	for linux-rockchip@lists.infradead.org;
	Sat, 30 Nov 2024 00:41:28 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4AU0f3BE024368;
	Sat, 30 Nov 2024 09:41:03 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH 0/6] arm64: dts: rockchip: sync dts with schematic for Radxa ROCK 5B
Date: Sat, 30 Nov 2024 00:40:51 +0000
Message-ID: <20241130004057.7432-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_164125_094691_C3C07064 
X-CRM114-Status: UNSURE (   5.91  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, alchark@gmail.com, FUKAUMI Naoki <naoki@radxa.com>, krzk+dt@kernel.org, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

this patch series fixes regulators, pmic, pwm-fan, and rtc to match
with schematic[1]. some missing info is taken from vendor kernel[2].

in addition to above, convert heartbeat LED to "pwm-led" to control
brightness.

this patch series depend on following patch:
 "arm64: dts: rockchip: rename rfkill label for Radxa ROCK 5B"
 https://patchwork.kernel.org/project/linux-rockchip/patch/20241128120631.37458-1-naoki@radxa.com/

[1] https://dl.radxa.com/rock5/5b/docs/hw/radxa_rock_5b_v1450_schematic.pdf
[2] https://github.com/radxa/kernel

FUKAUMI Naoki (6):
  arm64: dts: rockchip: fix regulators for Radxa ROCK 5B
  arm64: dts: rockchip: add regulator for NPU for Radxa ROCK 5B
  arm64: dts: rockchip: fix pmic regulators for Radxa ROCK 5B
  arm64: dts: rockchip: convert leds node to "pwm-led" for Radxa ROCK 5B
  arm64: dts: rockchip: fix pwm-fan node for Radxa ROCK 5B
  arm64: dts: rockchip: fix rtc node for Radxa ROCK 5B

 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 247 ++++++++++--------
 1 file changed, 138 insertions(+), 109 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
