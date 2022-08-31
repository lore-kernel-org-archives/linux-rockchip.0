Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CB40ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 21:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jINPumO1bbmZl0EA++oSQBcRye5Anpue84huMkf7XBw=; b=fZfDb+prLL8e3f
	JvsS2gQLpH6Jpo8aWSt/BEZz3SwZ5IR7fScngJ6c+ok56dn93p+3m2FR0tMRKROKBUUiinKGv+wwD
	8w43DIa22/odRPoxCPg5D6jMTdC2pK8mhR/Ol/w3J+t/UjcbABzTYHb8MNfoYrTHGN0c5FvKxXAmd
	7miDcjZ0IZw8EBTj3L6NyqqE1+PkP8Y8B9b+LxQdQSDTg8zcDU0hkufJzr6/ggKb9q1f/h/tWQ4k9
	YXemsdN8IdOrEFxJR3ATeRTiBBo+SHEHOFGuOUKVig0ZmrVLEmm+aOqcejB/Prr9W20DMT16wkDY/
	rjgMXKcrG66ACB4Z1XGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVfn-008Lyu-Av; Wed, 31 Aug 2022 21:54:59 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTVfi-008Lto-TN
	for linux-rockchip@lists.infradead.org; Wed, 31 Aug 2022 21:54:56 +0000
Received: from jupiter.universe (dyndsl-091-096-057-024.ewe-ip-backbone.de [91.96.57.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 457BE6601DF3;
	Wed, 31 Aug 2022 22:54:45 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661982885;
	bh=rnG6GZ4GkpM0T3h0AvOlwd/MDv92M08/myKuULiUtsA=;
	h=From:To:Cc:Subject:Date:From;
	b=euyOpVZEpIBG33CK/yC2jYG2yORzUekIfAEmNcDp/BAuHZeq6Nz6EXyf4F/dXk+lD
	 1I6mdxNHE+icEtN2lGU7GpYvkv5L9WZqLatG2OIarvQ28ag3s+lvKh4zj9KRgX11LF
	 bn950B8PoDGY+vTGRg/W+KJ0ctf++C8DjbCqwScDZkFXXTo/mTjUQ0LERcFyxWeItC
	 goiYZQoD1fQWF19ZFWT19vFjbuSTGzCzG9E8Uo/9a/GsGQvoztvUyhvOC8Dg0zHSSJ
	 6rG5m/HzQdoVKSlzi93QWRRAu+/i+QK2aRO1cx3aBimzMVUSwW4tw3sxYbcHVwMtlv
	 f2Zr8/8LTsEKA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 2D57048015C; Wed, 31 Aug 2022 23:54:43 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 00/13] Introduce RK806 Support
Date: Wed, 31 Aug 2022 23:54:24 +0200
Message-Id: <20220831215437.117880-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_145455_215547_0D3504BF 
X-CRM114-Status: GOOD (  11.77  )
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

The Rockchip RK3588 Evaluation Boards use SPI connected RK806
PMICs. Downstream this is handled by a new driver, but apart
from being SPI connected this chip is quite similar to the
ther Rockchip PMICs (also RK806 is promoted to also support
I2C). Thus this series instead updates RK808.

-- Sebastian

Sebastian Reichel (13):
  mfd: rk808: convert to device managed resources
  mfd: rk808: use dev_err_probe
  clk: RK808: reduce 'struct rk808' usage
  regulator: rk808: reduce 'struct rk808' usage
  rtc: rk808: reduce 'struct rk808' usage
  mfd: rk808: replace 'struct i2c_client' with 'struct device'
  mfd: rk808: split into core and i2c
  dt-bindings: mfd: add rk806 binding
  mfd: rk8xx: add rk806 support
  pinctrl: rk805: add rk806 pinctrl support
  regulator: rk808: Use dev_err_probe
  regulator: rk808: add rk806 support
  ASoC: rk817: Remove 'select REGMAP_I2C'

 .../bindings/mfd/rockchip,rk806.yaml          | 388 ++++++++++++++
 drivers/clk/clk-rk808.c                       |  34 +-
 drivers/mfd/Kconfig                           |  19 +
 drivers/mfd/Makefile                          |   4 +-
 drivers/mfd/{rk808.c => rk8xx-core.c}         | 343 +++++-------
 drivers/mfd/rk8xx-i2c.c                       | 205 ++++++++
 drivers/mfd/rk8xx-spi.c                       | 128 +++++
 drivers/pinctrl/pinctrl-rk805.c               | 189 ++++++-
 drivers/regulator/rk808-regulator.c           | 496 +++++++++++++++++-
 drivers/rtc/rtc-rk808.c                       |  47 +-
 include/linux/mfd/rk808.h                     | 417 ++++++++++++++-
 sound/soc/codecs/Kconfig                      |   1 -
 12 files changed, 1964 insertions(+), 307 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk806.yaml
 rename drivers/mfd/{rk808.c => rk8xx-core.c} (71%)
 create mode 100644 drivers/mfd/rk8xx-i2c.c
 create mode 100644 drivers/mfd/rk8xx-spi.c

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
