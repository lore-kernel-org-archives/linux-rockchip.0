Return-Path: <SRS0=AwuO=E7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C83F0C63798
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:45:20 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 478D12168B
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2020 16:45:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="HqpQkpYr";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZS4E7BK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 478D12168B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JgxgjmG6j9hcpoKGIPKCaeomFOXwzndlgG8t5eur7NE=; b=HqpQkpYrMUYHircTBMcbb2RXQI
	TsMapmbjDiAWx/otuZxIOeTqZRG8xlGIYB7EUjzdsxMK68qm/DrHyLvzK8UhCsb0znWv/terVqkgX
	0gG85T8CnxPUh0jnqcaR0m1XiS7MLudjHEUmTTrBuJ4cZNsxMo8IUvl7dnpP8SM97u/QYGGRW99ur
	Hhtg0zl0en7HlnxCRos6Za7cuZltV12LrtzOnNC4MBeZyIkWdv/NolSsZPfaIYm8/brKjTfaCEIwo
	IVtTHlXs2NeNtD1EiXzPw9OLu9vaD7b9syvEqx9ye2mcJRobl6bW6qFvnX4utLfpP619AOFncxR7y
	WknpzuXg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1khxuu-0005vt-6D; Wed, 25 Nov 2020 16:45:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khxup-0005ud-7K; Wed, 25 Nov 2020 16:45:12 +0000
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 529FA20857;
 Wed, 25 Nov 2020 16:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606322710;
 bh=8cjjclaA/vmhEiJGhNCIaK/0/JAKMBfJ3d0qzrpX5zs=;
 h=From:To:Subject:Date:From;
 b=YZS4E7BK3srGsuTh+q5EIDvKyRDccEGJGdUWte/QLVxbzLZakwqVxEgFQlOXWP+xG
 fWDx1WLNQPpQdTRZHnuLiHmWsaCUebiy3xjULAaVOtb9bsPQU378aXYKo0cUdO2p4j
 fgZQ+f0QU20kcGBdEosXCT+mUFjQiotrV2Td0MCo=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Support Opensource <support.opensource@diasemi.com>,
 Oder Chiou <oder_chiou@realtek.com>,
 Kevin Cernekee <cernekee@chromium.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Patrick Lai <plai@codeaurora.org>,
 Banajit Goswami <bgoswami@codeaurora.org>,
 Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v2 00/39] ASoC: fix !OF compile test warnings
Date: Wed, 25 Nov 2020 17:44:13 +0100
Message-Id: <20201125164452.89239-1-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201125_114511_437137_CB442E5A 
X-CRM114-Status: GOOD (  12.41  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Changes since v1:
1. New patch 2/39: ASoC: bd28623: mark OF related data as maybe unused,
2. Patches 1-13: add maybe_unused after discussions with Mark,
3. Add Sylwester's review to two patches (one changed so please review
   one more time).

Best regards,
Krzysztof


Krzysztof Kozlowski (39):
  ASoC: ak5558: mark OF related data as maybe unused
  ASoC: bd28623: mark OF related data as maybe unused
  ASoC: gtm601: mark OF related data as maybe unused
  ASoC: inno_rk3036: mark OF related data as maybe unused
  ASoC: rk3328: mark OF related data as maybe unused
  ASoC: tas571x: mark OF related data as maybe unused
  ASoC: kirkwood: armada-370-db: mark OF related data as maybe unused
  ASoC: meson: t9015: mark OF related data as maybe unused
  ASoC: qcom: mark OF related data as maybe unused
  ASoC: samsung: smdk_wm8994: mark OF related data as maybe unused
  ASoC: rockchip: mark OF related data as maybe unused
  ASoC: ti: davinci: mark OF related data as maybe unused
  ASoC: uniphier: mark OF related data as maybe unused
  ASoC: ak4118: skip of_device_id table when !CONFIG_OF
  ASoC: alc5623: skip of_device_id table when !CONFIG_OF
  ASoC: alc5632: skip of_device_id table when !CONFIG_OF
  ASoC: da7218: skip of_device_id table when !CONFIG_OF
  ASoC: da7219: skip of_device_id table when !CONFIG_OF
  ASoC: da9055: skip of_device_id table when !CONFIG_OF
  ASoC: es8316: skip of_device_id table when !CONFIG_OF
  ASoC: max98090: skip of_device_id table when !CONFIG_OF
  ASoC: max98095: skip of_device_id table when !CONFIG_OF
  ASoC: max98371: skip of_device_id table when !CONFIG_OF
  ASoC: max9867: skip of_device_id table when !CONFIG_OF
  ASoC: max98925: skip of_device_id table when !CONFIG_OF
  ASoC: max98926: skip of_device_id table when !CONFIG_OF
  ASoC: pcm1789: skip of_device_id table when !CONFIG_OF
  ASoC: pcm179x: skip of_device_id table when !CONFIG_OF
  ASoC: rt5660: skip of_device_id table when !CONFIG_OF
  ASoC: tas2562: skip of_device_id table when !CONFIG_OF
  ASoC: tlv320: skip of_device_id table when !CONFIG_OF
  ASoC: ts3a227e: skip of_device_id table when !CONFIG_OF
  ASoC: es7134: mark OF related data as maybe unused
  ASoC: es7241: mark OF related data as maybe unused
  ASoC: samsung: i2s: mark OF related data as maybe unused
  ASoC: max98371: drop driver pm=NULL assignment
  ASoC: max98925: drop driver pm=NULL assignment
  ASoC: max98926: drop driver pm=NULL assignment
  ASoC: samsung: smdk_wm8994: remove redundant of_match_ptr()

 sound/soc/codecs/ak4118.c           | 2 ++
 sound/soc/codecs/ak5558.c           | 2 +-
 sound/soc/codecs/alc5623.c          | 2 ++
 sound/soc/codecs/alc5632.c          | 2 ++
 sound/soc/codecs/bd28623.c          | 2 +-
 sound/soc/codecs/da7218.c           | 2 ++
 sound/soc/codecs/da7219.c           | 2 ++
 sound/soc/codecs/da9055.c           | 2 ++
 sound/soc/codecs/es7134.c           | 4 ++--
 sound/soc/codecs/es7241.c           | 2 +-
 sound/soc/codecs/es8316.c           | 2 ++
 sound/soc/codecs/gtm601.c           | 2 +-
 sound/soc/codecs/inno_rk3036.c      | 2 +-
 sound/soc/codecs/max98090.c         | 2 ++
 sound/soc/codecs/max98095.c         | 2 ++
 sound/soc/codecs/max98371.c         | 3 ++-
 sound/soc/codecs/max9867.c          | 2 ++
 sound/soc/codecs/max98925.c         | 3 ++-
 sound/soc/codecs/max98926.c         | 3 ++-
 sound/soc/codecs/pcm1789-i2c.c      | 2 ++
 sound/soc/codecs/pcm179x-i2c.c      | 2 ++
 sound/soc/codecs/rk3328_codec.c     | 2 +-
 sound/soc/codecs/rt5660.c           | 2 ++
 sound/soc/codecs/tas2562.c          | 2 ++
 sound/soc/codecs/tas571x.c          | 4 ++--
 sound/soc/codecs/tlv320adcx140.c    | 2 ++
 sound/soc/codecs/tlv320aic23-i2c.c  | 2 ++
 sound/soc/codecs/ts3a227e.c         | 2 ++
 sound/soc/kirkwood/armada-370-db.c  | 2 +-
 sound/soc/meson/t9015.c             | 2 +-
 sound/soc/qcom/apq8016_sbc.c        | 2 +-
 sound/soc/qcom/lpass-apq8016.c      | 2 +-
 sound/soc/qcom/lpass-ipq806x.c      | 2 +-
 sound/soc/qcom/lpass-sc7180.c       | 2 +-
 sound/soc/rockchip/rockchip_i2s.c   | 2 +-
 sound/soc/rockchip/rockchip_pdm.c   | 2 +-
 sound/soc/rockchip/rockchip_spdif.c | 2 +-
 sound/soc/samsung/i2s.c             | 8 ++++----
 sound/soc/samsung/smdk_wm8994.c     | 4 ++--
 sound/soc/ti/davinci-i2s.c          | 2 +-
 sound/soc/uniphier/aio-ld11.c       | 2 +-
 sound/soc/uniphier/aio-pxs2.c       | 2 +-
 sound/soc/uniphier/evea.c           | 2 +-
 43 files changed, 69 insertions(+), 32 deletions(-)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
