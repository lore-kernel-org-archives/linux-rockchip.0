Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 819A3CDB482
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 11:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BzXlmPyDBEP5uVE0NCjU2OOD4bAODxqOjyR2mPcEFNs=; b=u/MkGkRNkytkcf
	BN9M/ik97Z1/tAzV6Pflzsk9ISijCsgDVv0eAVplSEkg1rz7ugYk5nZY6Dsg1NCAdZbLutYVhjZGR
	ADABnavvPJSQv5vNAThERrKlYEo1fGG6ybN6ewlZEfu6VXq+39UtqtaXJiDzDNkC3mnKDiKw+hhdm
	Q0X71ZPkafVd7K4y6lM1d/U2VOwi6Hww6BRGut0UKSsLdafMHcJhp80JEXRv+hImlzwFJRht/Y7rQ
	8flIxDc/Zjdpc+788ENYrvZLZZ3Ctv+KviasObZj5V7avgZjpiuDX19cn5ykQc2CwDv9txcvMw+4G
	QZR3ROH3NpFtthkjGMgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrGe3-003L9T-37;
	Fri, 13 Oct 2023 11:47:55 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrGe0-003L7L-2G;
	Fri, 13 Oct 2023 11:47:54 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c8:b70a:ae01:c2e1:3bb7:ed5c:6a0d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2144A6607357;
	Fri, 13 Oct 2023 12:47:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697197667;
	bh=qnEq8Sp9V5HwTo+4/aFGw2RoRPviwf6K6ml/tXqx2No=;
	h=From:To:Cc:Subject:Date:From;
	b=JiQL9f4Ayn30azENa7+igcoAIQ8NfZVhzBwjA7B8zBOpHkw9R8ycMAMRXIWUYryBg
	 VRBJ0ZOJtlCJ6kUaCmoVLgZaQiSPluFz7xJ35xZRN2t75JRsHHxLl3s+mj0eIDhxfn
	 emLlFw+8Jc08eZnnb4vLxWhAj7aPYPNrzL2m5ZPgTBgCcnWUgyco0iszgf5QKUCHOp
	 6+7l+LDfaaOlOZd5U5ZW3yI63AS2dTrvUi/BklPTjSL9QA/Jbx4NyawVidQlJs3GdG
	 akgQJL1VjiHa35R+2KxAaeUUXUWRkht6v0K6M6GXzStP/+6gIwgpu+wbletEp4Pp8C
	 TWiFjyZcNFl/w==
From: Christopher Obbard <chris.obbard@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Johan Jonker <jbx6244@gmail.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Yogesh Hegde <yogi.kernel@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/2] Fix i2s0 pin conflict on ROCK Pi 4 RK3399 boards
Date: Fri, 13 Oct 2023 12:47:25 +0100
Message-ID: <20231013114737.494410-1-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_044752_912905_41D49C19 
X-CRM114-Status: UNSURE (   9.92  )
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

i2s0 fails to probe on my Radxa ROCK 4SE and ROCK Pi 4B boards with:

    rockchip-pinctrl pinctrl: pin gpio3-29 already requested by leds; cannot claim for ff880000.i2s
    rockchip-pinctrl pinctrl: pin-125 (ff880000.i2s) status -22
    rockchip-pinctrl pinctrl: could not request pin 125 (gpio3-29) from group i2s0-8ch-bus-bclk-off  on device rockchip-pinctrl
    rockchip-i2s ff880000.i2s: Error applying setting, reverse things back
    rockchip-i2s ff880000.i2s: bclk disable failed -22

This is due to the pinctl attempting to request a GPIO which the boards
use for a different function.

The first patch adds a missing pinctl node i2s0_2ch_bus_bclk_off to the
RK3399 devicetree.

The second patch sets the i2s0 pinctrl to use the new node when idle and
fixes the issue.


Christopher Obbard (2):
  arm64: dts: rockchip: Add i2s0-2ch-bus-bclk-off pins to RK3399
  arm64: dts: rockchip: Fix i2s0 pin conflict on ROCK Pi 4 boards

 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi |  1 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi           | 10 ++++++++++
 2 files changed, 11 insertions(+)

-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
