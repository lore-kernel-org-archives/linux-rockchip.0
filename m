Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0446CA600B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vD4t4hqOajda+K4iCLnRNhiBZ9LH5OZBfYA1ySNE5WI=; b=ytxtFa00y71+3h
	fvGYhjQzShgLQ6Br0jD/Mx47K096ac59GE0laEJbAmdn2BSQSiad1nWqIhvFcU9J4ixU3FSwcNuFP
	7Tr8ajxq48+9/J0/laNBwwhvs5pLtoeuY9mACQ+kHHs5mQB9xreJpshdfMjG2pUV4F8LCuBzotFVF
	dcoPBTwvdQqUW4ibnWqDWnUKwTFbzpmpXgwbdzAtKtrAv+m/0VwOP/VdlOUvQXTXOqj5vJrD627Ks
	d8qtQV09ve06xrDtMXD3dVA5/2GvtngKVVBY9ux9xqMkdWwebSWs5navyHqaETAB3Cc53i29BSvB3
	fFt8y9iP/zbFPY1qg2gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElWo-000000049Fo-0Bv0;
	Thu, 08 Oct 2026 10:39:10 +0000
Received: from mail-dy1-x1333.google.com ([2607:f8b0:4864:20::1333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElWk-000000049EM-0dg3
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:39:08 +0000
Received: by mail-dy1-x1333.google.com with SMTP id 5a478bee46e88-33bf40b0c8bso1963412eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791455945; x=1792060745; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2hpUwEsGMPkIBbYBiNYjLbx5Pg/A2Eh/bQSXX+ThuQY=;
        b=QyGNrKQVSN/Hiz/lZtwaXuFAfy6H75RCUSqfcL26FUW6Yrvw3KEtzVzKpJaRIJX7Oj
         SfJ7etzCpS85POacHMKu/ExJVV25kZBFokoLwS3e8WQ/UX16X7mD9Ez5YFy4qaMBi7aQ
         2lb8co2hrEv8tziY+b3Hn92Ow2t3E5/vCrh9SF0n0YAVa1HKLjDvkSLOyY5321+qjt49
         Hzc+O/VhgT6yC5+8+G+ofomKyyqOPNnPFkHiwA5WRqT78NGqoc1b/35TIgfKuXNPOOtc
         TVjc4NR9bsxdU9Kcx5vPwKmMqNUbMoE6ucXsZ/imtoId4yCdDzUdexwctMfOlZHMeYU4
         r1Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791455945; x=1792060745;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2hpUwEsGMPkIBbYBiNYjLbx5Pg/A2Eh/bQSXX+ThuQY=;
        b=yE2gIbk79zFHjOVSMU7ExMK2/u63uEyxsVLp5aeYMEHYwSJ6XebEfN2xQGjJZquidN
         Ntil2RlHOnZ02Vf8AMsRJseJJfX8ZGN05Thg1FvFOXKXUb58KtSh9UHBO4hKMXKNEFr1
         b2uQjuoRL4qKjoREBIG8YTu8NevzMcARsXj9ivs073HhfV552wavI9SlKY8/KfK/YTrG
         /5vFSyVAGickG/5XgcoKKBGc1mpQMXg1i/MCtFI7s+rz9ekLyfX46NNh6xmA8+ZjA/+5
         K4BFIOJZjOsG77YGVPbUPMzIewm8OSeWhL+VokvcewhhbV3X4qsdrmI0wgzZsmz/wk4O
         9AZg==
X-Forwarded-Encrypted: i=1; AKwUvBxaBBH2zBxoX5s/u1wSjt18jMtycTP2qhbdDDWghoZ4k+J5lJDsszUkijQ+iKav91jWNmNv7H8LoqtXqT9nvQ==@lists.infradead.org
X-Gm-Message-State: AFuF++m0pWX3prR3fYmQHePtI+eWr14OtybmXEztZyMvTA1+RB6HAo08
	OYIyN8zKjrD3k/btfqgtQaJl+iSD5wBJVbQ0ECJqrRLhncgvayfVraEd59yHBw==
X-Gm-Gg: AYBFou2TtbVyGj9jfQMbB25OakP6NL0JX9DzX6l50Vumfx7VOuJppdBkXkDUyDXXJ2T
	M+H2RKb4Y6MZH2i9JzAMFQ3OJUxYyoj2EJjejdUTHj6GolCN+jTjURU9FLo5qcK58I1BdsVbeIi
	Jn+K5hTv12LrD4HbQKZFFcPpHWyxNiU4GJ7ZzMrpl8j5Qca8iAjUa+DjEkimS+ZC14iWDS4o2nC
	4ID42FRPpJ5oLe5PO2A0AHWd88PWIb7OeaZPzAtnWVQuo0pyT8ea4jV09IKIu8wEEwAwO0SXd7x
	89AvQ71VsGJ5nQj/8/JTxM5moriCvbkBl/Y0OdraT522WQhPjYz+5sWUJ22D9ewQDFdp5z7bcYk
	Dm2pIw52IpmYguCqnzSNWC1EHxbfeQT08eddnXeDucaTIypi7caiXoMySdCO5+MueBTw4kJ8bsi
	P66HekqAGHaP1PzFMpW1A9avyWExfMMuBGrkbAhWWVZVjTL8kNPhy0BMlJVrQP7erIcjurxw8jG
	6iOXIo8R/GP61Qqn+1Wmr1TO4XsGNrNPSXBQ0XPXol3wWKeeQ81eXwNY+RqYAR0ObrIfNWguFK3
	9T/cY38MbqkZhg==
X-Received: by 2002:a05:693c:8819:10b0:352:2e15:49a9 with SMTP id 5a478bee46e88-3522e154b4amr965099eec.33.1791455944704;
        Thu, 08 Oct 2026 03:39:04 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.38.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:39:03 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Vijendar Mukunda <Vijendar.Mukunda@amd.com>,
	Venkata Prasad Potturu <venkataprasad.potturu@amd.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	povik+lin@cutebit.org,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Andrei Simion <andrei.simion@microchip.com>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	David Rhodes <david.rhodes@cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Shengjiu Wang <shengjiu.wang@gmail.com>,
	Xiubo Li <Xiubo.Lee@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	Nicolin Chen <nicoleotsuka@gmail.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Cezary Rojewski <cezary.rojewski@intel.com>,
	Peter Ujfalusi <peter.ujfalusi@linux.intel.com>,
	Bard Liao <yung-chuan.liao@linux.intel.com>,
	Kai Vehmanen <kai.vehmanen@linux.intel.com>,
	Pierre-Louis Bossart <pierre-louis.bossart@linux.dev>,
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 00/24] ASoC: Fix constraint return value handling
Date: Thu,  8 Oct 2026 17:38:07 +0700
Message-ID: <20261008103831.542533-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_033906_192409_ECDF16AB 
X-CRM114-Status: UNSURE (   8.21  )
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
Cc: imx@lists.linux.dev, wangdicheng <wangdicheng@kylinos.cn>, Kees Cook <kees@kernel.org>, Sang-Heon Jeon <ekffu200098@gmail.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, linux-rockchip@lists.infradead.org, bui duc phuc <phucduc.bui@gmail.com>, Chris Bainbridge <chris.bainbridge@gmail.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, linux-sound@vger.kernel.org, Ravulapati Vishnu vardhan rao <Vishnuvardhanrao.Ravulapati@amd.com>, u.kleine-koenig@baylibre.com, Zain Aboobacker <zainaboobacker33@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Md Shofiqul Islam <shofiqtest@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Ajit Kumar Pandey <AjitKumar.Pandey@amd.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, asahi@lists.linux.dev, Hemanth Selam <hemanth.selam@gmail.com>, linuxppc-dev@lists.ozlabs.org, Syed Saba Kareem <syed.sabakareem@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: bui duc phuc <phucduc.bui@gmail.com>

Hi all,

snd_pcm_hw_constraint_minmax() and snd_pcm_hw_constraint_integer()
may return positive values on success. However, ASoC only marks the
DAI, link, or component as started or opened when the corresponding
callback returns 0.

This series fixes affected ASoC drivers to return 0 on success and
properly handle rollback paths.

Found by manual code inspection.

Compile-tested only.

Best regards,
Phuc

bui duc phuc (24):
  ASoC: amd: acp: Fix .close() being skipped on rollback
  ASoC: amd: ps: Fix acp63_pdm_dma_close() being skipped on rollback
  ASoC: amd: ps: Fix acp63_sdw_dma_close() being skipped on rollback
  ASoC: amd: raven: Fix acp3x_dma_close() being skipped on rollback
  ASoC: amd: renoir: Fix acp_pdm_dma_close() being skipped on rollback
  ASoC: amd: vangogh: Fix acp5x_dma_close() being skipped on rollback
  ASoC: amd: yc: Fix acp6x_pdm_dma_close() being skipped on rollback
  ASoC: apple: mca: Ensure the DAI is marked as started on success
  ASoC: atmel: atmel-pcm-pdc: Fix atmel_pcm_close() being skipped on
    rollback
  ASoC: codecs: cs42l42: Ensure the DAI is marked as started on success
  ASoC: codecs: nau8325: Ensure the DAI is marked as started on success
  ASoC: codecs: nau8540: Ensure the DAI is marked as started on success
  ASoC: codecs: nau8821: Ensure the DAI is marked as started on success
  ASoC: codecs: nau8824: Ensure the DAI is marked as started on success
  ASoC: codecs: nau8825: Ensure the DAI is marked as started on success
  ASoC: codecs: wm8580: Ensure the DAI is marked as started on success
  ASoC: codecs: wm8782: Ensure the DAI is marked as started on success
  ASoC: imx-pcm-rpmsg: Fix imx_rpmsg_pcm_close() being skipped on
    rollback
  ASoC: intel: atom: Fix .shutdown() being skipped on rollback
  ASoC: renesas: fsi: Ensure the component is marked as opened on
    success
  ASoC: renesas: msiof: Fix msiof_close() being skipped on rollback
  ASoC: renesas: rz-ssi: Ensure the component is marked as opened on
    success
  ASoC: rockchip: rk3399_gru_sound: Mark the link as started on success
  ASoC: rockchip: rockchip_max98090: Mark the link as started on success

 sound/soc/amd/acp/acp-platform.c             |  2 +-
 sound/soc/amd/ps/ps-pdm-dma.c                |  2 +-
 sound/soc/amd/ps/ps-sdw-dma.c                |  2 +-
 sound/soc/amd/raven/acp3x-pcm-dma.c          |  2 +-
 sound/soc/amd/renoir/acp3x-pdm-dma.c         |  2 +-
 sound/soc/amd/vangogh/acp5x-pcm-dma.c        |  2 +-
 sound/soc/amd/yc/acp6x-pdm-dma.c             |  2 +-
 sound/soc/apple/mca.c                        | 11 ++++++++---
 sound/soc/atmel/atmel-pcm-pdc.c              |  2 ++
 sound/soc/codecs/cs42l42.c                   | 11 ++++++++---
 sound/soc/codecs/nau8325.c                   | 11 ++++++++---
 sound/soc/codecs/nau8540.c                   | 11 ++++++++---
 sound/soc/codecs/nau8821.c                   | 11 ++++++++---
 sound/soc/codecs/nau8824.c                   | 11 ++++++++---
 sound/soc/codecs/nau8825.c                   | 11 ++++++++---
 sound/soc/codecs/wm8580.c                    | 10 ++++++++--
 sound/soc/codecs/wm8782.c                    |  7 ++++++-
 sound/soc/fsl/imx-pcm-rpmsg.c                |  2 +-
 sound/soc/intel/atom/sst-mfld-platform-pcm.c |  2 +-
 sound/soc/renesas/fsi.c                      |  6 ++++--
 sound/soc/renesas/rcar/msiof.c               |  6 ++++--
 sound/soc/renesas/rz-ssi.c                   | 18 +++++++++++++++---
 sound/soc/rockchip/rk3399_gru_sound.c        |  9 +++++++--
 sound/soc/rockchip/rockchip_max98090.c       | 10 ++++++++--
 24 files changed, 119 insertions(+), 44 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
