Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB66BCDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiOk7ogAnqR1tz2vxHOXxiyu2AUia9m+cDQOIK671VU=; b=JXWTZ9yI8MlXup
	HDO2LAfNtyAfsjD0JaGTDis1S2aQ5L61R56Gq3A4O6CV/ozD3Pws6fhEcQ9vaSUb4B9D55hKYdWaX
	pYRyJwWuihJeS9VUvTIcKgSvZu2IP/Yq7Wrk0q7SJIODvLmkF5E5a70dKFXj4vUi3TZYF9RIsoUdB
	/BsU/fopJDaSLm6pKILfAgvKTQwe+dYyKhgyopwnMqYRqyiUOcLQDz2iDVbVBgI2MOEoMO7QvnpkU
	ndw+zSuP9pE4sduKHuZyUlIQCGbiaJWAVT/xxP6A3j028ZWZL4W9ofdG5csB6JlBT2IdkIJAVIi9+
	XZCJjEyC+q8sFxnOYAFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsTx7-00AT3h-1h;
	Mon, 16 Oct 2023 20:12:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsTwz-00ASua-1r;
	Mon, 16 Oct 2023 20:12:33 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qsTwu-0000QB-Q3; Mon, 16 Oct 2023 22:12:24 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Christopher Obbard <chris.obbard@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Judy Hsiao <judyhsiao@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	Brian Norris <briannorris@chromium.org>,
	Rob Herring <robh+dt@kernel.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Yogesh Hegde <yogi.kernel@gmail.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Corentin Labbe <clabbe@baylibre.com>,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-kernel@vger.kernel.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v1 0/2] Fix i2s0 pin conflict on ROCK Pi 4 RK3399 boards
Date: Mon, 16 Oct 2023 22:12:18 +0200
Message-Id: <169748713689.982818.14313668807415400753.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231013114737.494410-1-chris.obbard@collabora.com>
References: <20231013114737.494410-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_131229_655842_6D95F867 
X-CRM114-Status: UNSURE (   9.78  )
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

On Fri, 13 Oct 2023 12:47:25 +0100, Christopher Obbard wrote:
> i2s0 fails to probe on my Radxa ROCK 4SE and ROCK Pi 4B boards with:
> 
>     rockchip-pinctrl pinctrl: pin gpio3-29 already requested by leds; cannot claim for ff880000.i2s
>     rockchip-pinctrl pinctrl: pin-125 (ff880000.i2s) status -22
>     rockchip-pinctrl pinctrl: could not request pin 125 (gpio3-29) from group i2s0-8ch-bus-bclk-off  on device rockchip-pinctrl
>     rockchip-i2s ff880000.i2s: Error applying setting, reverse things back
>     rockchip-i2s ff880000.i2s: bclk disable failed -22
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: Add i2s0-2ch-bus-bclk-off pins to RK3399
      commit: 3975e72b164dc8347a28dd0d5f11b346af534635
[2/2] arm64: dts: rockchip: Fix i2s0 pin conflict on ROCK Pi 4 boards
      commit: 8cd79b729e746cb167f1563d015a93fc0a079899

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
