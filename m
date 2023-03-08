Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF774C74A4B
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Mar 2023 11:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0Van8olytU6bm21BHs9XRxVwsScTrRnHAOtuQ5EGEkg=; b=FuDrZnul3AEfJx
	p/L49lUrLamI6/8utxgiQJyMYzuoWBDzsG6wI8ICBMJYJ7g4Zo2qhAAHktY0v+jk/JilkFikpzpzS
	7S+SYw3Tu0NmwePEO1XQc6qplYm2zdo9bNcWKjpG/NmulST++KNpGm8zCvFsPmlLAqwXJwIQH2mil
	X7HpNWMR16BMgamvv+bYoMwAY6r/gxzsQI7ZV7yBmvMd8KPLSqFd44LR6xEbojpzNbfEM7QI9y936
	xX8O4MxJY2oCxdfK+xww5HE8qK7T3lS8RP+zUwQ/PHm2NtkI059kbM5G7UR1W4fW+oxUl7KLp5Iok
	H6/jW4cyOCiaqfatrhCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrsv-004axI-9p; Wed, 08 Mar 2023 11:23:05 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZrsr-004aud-3r
	for linux-rockchip@lists.infradead.org; Wed, 08 Mar 2023 11:23:02 +0000
Received: from jupiter.universe (dyndsl-091-248-211-125.ewe-ip-backbone.de [91.248.211.125])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 572AC6602FF0;
	Wed,  8 Mar 2023 11:22:58 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1678274578;
	bh=2C4HJnfnDAEoc5caRpklugf01GZjHVXbn+TxwWV+gzY=;
	h=From:To:Cc:Subject:Date:From;
	b=ROHIm+VmXKZWgZhOUQXawvDne46n/lx49mzVgCwwflfO6nMYCM8o0/G/t5c1AOk6z
	 2FT03hmqMMvYJb7al1HJqP6CVugSc0WaBUH/glc/tHSVB3lHQGDy65UaumWZOECSg5
	 tOtM8iaFh/HJxYUStY8ucsvkK/mhAyBAIBvk0MBJjJxfaiq2T41idbZmIkOfpP/bzK
	 0tGnasOT33Xs3BKT3IVPl++BT5CmfFlBzZrl6zIou78IT76mEP8ZAXbZJZ+L4uuJul
	 0TGZ2pszpHO+CEdChf5uzspqbQNms52Y5+nQ53NYrc4cBbql9CgJHFK4LAcjT152Rw
	 IN5W17mRGAz5A==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6ADF248010E; Wed,  8 Mar 2023 12:22:55 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Amit Kucheria <amitk@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [RESEND] [PATCHv3 0/7] RK3588 Thermal Support
Date: Wed,  8 Mar 2023 12:22:46 +0100
Message-Id: <20230308112253.15659-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_032301_416268_DDAF6466 
X-CRM114-Status: UNSURE (   9.61  )
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

Hi,

This adds thermal support for the new RK3588(s) SoC series. The
series has been tested on the RK3588 EVB1 board.

Can this be applied? The series received absolutely no feedback
for a full release cycle.

Changes since PATCHv3:
 * https://lore.kernel.org/all/20230105180340.29140-1-sebastian.reichel@collabora.com/
 * rebased against v6.3-rc1

Changes since PATCHv2:
 * https://lore.kernel.org/all/20221031175058.175698-1-sebastian.reichel@collabora.com/
 * rebased against v6.2-rc1
 * drop useless cast from patch 1
 * add Heiko's reviewed-by to patches 1-3 & 5
 * The discussion around patch 4 died, so I kept it unchanged

Changes since PATCHv1:
 * https://lore.kernel.org/all/20221021174721.92468-1-sebastian.reichel@collabora.com/
 * Collect Reviewed-by/Acked-by
 * Use TRM channel info in commit message (Daniel Lezcano)
 * Add patch removing channel id lookup table (Daniel Lezcano)
 * Add patch allocating sensors array dynamiccaly (Daniel Lezcano)
 * I also added patches simplifying up the probe routine a bit

-- Sebastian

Finley Xiao (1):
  thermal: rockchip: Support RK3588 SoC in the thermal driver

Sebastian Reichel (6):
  thermal: rockchip: Simplify getting match data
  thermal: rockchip: Simplify clock logic
  thermal: rockchip: Use dev_err_probe
  thermal: rockchip: Simplify channel id logic
  thermal: rockchip: Support dynamic sized sensor array
  dt-bindings: rockchip-thermal: Support the RK3588 SoC compatible

 .../bindings/thermal/rockchip-thermal.yaml    |   1 +
 drivers/thermal/rockchip_thermal.c            | 322 ++++++++++++------
 2 files changed, 226 insertions(+), 97 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
