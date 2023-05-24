Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF268C7EE2C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 07:42:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MCOy3oiTdVyd2pCW94eq9E2akEynQYDt4XSII6L3xbg=; b=3xJB9WZR2z0R0b
	+3tW/vQPU9U/3GhEaJmqX5w5cmyIhiurup+wfpRxLL9VSm9DPdStx/4OzPraSurRDOhaeKjaXANXM
	m+uWy0GLfYOBleRUcPTkYSbxCJpgaAQK72lrr6zUyf09NuKaqSA/LVa1StCQudunVtFr4PwKLsdUF
	oYW/bW5gRobcvfK0vSYtWOKMcVCBhDiGfYTNnhH7bA6WYtOJGUhKBvUwIWKnyzo8MuXaN8j67+uZQ
	w6stbjrevPohVOGllp6Opa3XDdwTwSBezHkn0FKuD8qABsXBG1j1F+H8Ac+S42ngl/4EhlSDEV+ma
	OqGqH8DLzQnKQtqLkoFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1j8I-00CduN-0r;
	Wed, 24 May 2023 07:42:06 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1j8E-00Cdt3-30;
	Wed, 24 May 2023 07:42:04 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BF15D6605992;
	Wed, 24 May 2023 08:41:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684914119;
	bh=rIv0A5Qf9tPl9upoHpRp3OawplgowbPYSCpfX7sHQQs=;
	h=From:To:Cc:Subject:Date:From;
	b=mkVmnzX7hyiNjGwuOi5uJH4qVAYOE2KMAxnr1E4ywOBmJfn+sUDyoZNPzuPGiglxb
	 gjMITxPbcKo/PXM0riNWt26Q9cCbbCMLf1xg+14Awi5pPoebFb0+XrZJRAoJFGb18p
	 bZG+D/xkXEBXtPCrTO9Snx0tTpU5IhcQr5BTYB1femUNNNk+9Mom7bW1avP+DKhS97
	 vo1b9t3qacx9zR97zxM4gap6+CCkprrqy8u8Z4j+aGukg/QSqGwiVoawOJVNslroXW
	 gnSOeGiDQN0MWMr70bjVjF7YIR/R5p0mTqF/lDRQmDFSS4GOtYAfZWsfOPPYVZYmwA
	 cmuZIImgz60TQ==
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
Subject: [PATCH 0/3] ES8316 audio codec fixes on Rock5B
Date: Wed, 24 May 2023 10:41:53 +0300
Message-Id: <20230524074156.147387-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_004203_145083_F06D4B85 
X-CRM114-Status: GOOD (  10.51  )
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

Cristian Ciocaltea (3):
  ASoC: es8316: Increment max value for ALC Capture Target Volume
    control
  ASoC: es8316: Do not set rate constraints for unsupported MCLKs
  arm64: dts: rockchip: Assign ES8316 MCLK rate on rk3588-rock-5b

 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 ++
 sound/soc/codecs/es8316.c                       | 4 ++--
 2 files changed, 4 insertions(+), 2 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
