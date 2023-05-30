Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C749AC7EE23
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 May 2023 18:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VEJbW9Ok0sindEHuvj0YKDUyihiV0bg4zAmJNaVjK8Y=; b=i75ru63mr4DaJf
	nLL/Dpb8rN5GeZi2ZcUdoA3KcaDm1eXAeQWF+8TGeg8XZ9cW0/czjSSUv6fp1Z9g7eWeHet6vTOgm
	rCAA+SitHYyLt+YVnIcWFq3n7XbmI5igfJdBbOWJc57uT55NyQE4b7lIlaz3RFYW26gXg0jEqVM+x
	eLJNC3Bz6d2uoFIkqBW87gVs4p4B8lScq4GUjra2TidqKCl7xnMjzgbpwYtK7mrZ83l3yI7u7LdaZ
	soHSwb7zLvkLrEZpJchYiyseloobClzQ0E+43+/WhsFqG4zZRmY8PoedkFznI43ijEWLI4frqpSrY
	HMX0bFIYxb9wk1MgVn5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q43p5-00Eqd0-1V;
	Tue, 30 May 2023 18:11:55 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q43p1-00EqYu-1D;
	Tue, 30 May 2023 18:11:52 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D11BA66003B0;
	Tue, 30 May 2023 19:11:43 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685470304;
	bh=GQF9lUAe0Utvbi867xCuwYxDhrPJXP6m2MEpKIazxXo=;
	h=From:To:Cc:Subject:Date:From;
	b=Gb34rY/H0aIJjjGOchyEPTHOzBtnXtSSUbQsHDxYhKy3LCWlhY1z4fewyDPhPSsfc
	 brl+qlCTDcplTnVbe5pdI48q03dxP/JpPd1iiEJiMld3/y2STdpl+kkXHE5gUJUmEH
	 kOyZ/P0lmd3mzC0+aiXvNGlEbXt4Q1ewQz5e7KTuz0+Z95Uts7A3Y2nKgSFcYnKUyR
	 MYYC4keeqB9I5CEfhzMpE/cCcUpCdIpyraA2KamNxlhfOoERTiL8MmoLspVjplJyLi
	 3RppIVXc8AC/rSRches7FtT+H5qT1pmZBsUWNB8mr4yliCZ9dp8loOsUc41lbOHnsZ
	 /qT/mR4f+TWYw==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Zhu Ning <zhuning0077@gmail.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	David Yang <yangxiaohua@everest-semi.com>,
	Daniel Drake <drake@endlessm.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org,
	kernel@collabora.com
Subject: [PATCH v2 0/3] ES8316 audio codec fixes on Rock5B
Date: Tue, 30 May 2023 21:11:37 +0300
Message-Id: <20230530181140.483936-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_111151_539298_0A093E9D 
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

This patch series handles a few issues related to the ES8316 audio 
codec, discovered while doing some testing on the Rock 5B board.

Changes in v2:
 - Preserved original dB gain range in PATCH 1
 - Rewrote PATCH 2 conditional statement, per Mark's review
 - Rebased series onto next-20230530
 - v1: https://lore.kernel.org/all/20230524074156.147387-1-cristian.ciocaltea@collabora.com/

Cristian Ciocaltea (3):
  ASoC: es8316: Increment max value for ALC Capture Target Volume
    control
  ASoC: es8316: Do not set rate constraints for unsupported MCLKs
  arm64: dts: rockchip: Assign ES8316 MCLK rate on rk3588-rock-5b

 .../boot/dts/rockchip/rk3588-rock-5b.dts      |  2 ++
 sound/soc/codecs/es8316.c                     | 23 +++++++++++--------
 2 files changed, 16 insertions(+), 9 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
