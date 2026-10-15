Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 315FCCC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:44:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oOw2vtwr4F3UA6QtQp08Ns/K/M8a48XjSV8hO+7VJTo=; b=k7oOpaosvMbZc5
	oeZb8R4Oz4otpn2eSW2pb3Z8f131Q8KAxjJrfk4PAO5OMx0t8KpC/1YKL1P732atEI/t3MHkFjjxr
	fcZ+rmNJRh/2l/5iK41aCke1B42REXVVrGlESnpKIkR9oPHIoAICS+Q7NX2De31VicLQc4NolARvN
	qpm7NWmOnCMmwN35aochFFpLHp8ZE/Xwi0rLdOIJ/sF9WFQUE1a0+18Fy55jCk1GdMOH8nUkk+8Zb
	5fvKFnEluGGjDdbDyhH2iuLApGfrz7ebxvPQznB0bhBVK8NuVCyF4uym+PEfBmQMVqf90JZ6kINcM
	zWSpu4vob+v/PBDCBz/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAVj-0000000GatL-1IIg;
	Thu, 15 Oct 2026 01:43:59 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAVh-0000000Gase-00ey
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:43:58 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-cd3310348d2so3183636a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028636; x=1792633436; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=geVeIRJMETVZrOFQgXZr74ay0B29FFoh4B/JZUuVWw0=;
        b=amldT5LpnT/MOeIja0O1U1+UCBciB+1GpAWT0H9pYhVY6s584ur8JKzYIxpy2WFTWE
         JHHyPpKyKtA+WhnQFVLusZca3uaVBGZZzv/gi6UD8bzk5pzQu1mb+QxbeC2BhJevWlA+
         rswguwBUcXvsBR1wI7Z3ekKqcpRKXcW5xi3wYliRCi0dOi5nwpT7VkJaqsrJh+PHt///
         jfxaDq/SGxUJojvelPRNcPtLhfspwF4L9Bj28n0Lo5+epmI2d1h7SnrZH6/eKlJdjyT/
         IaR6UrM/N6kRzqrR4kvToxZQUB6XIhfOmcYZ0Hkebn5zCulqU6IPl5IOVMGVfviiw9GQ
         GBrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028636; x=1792633436;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=geVeIRJMETVZrOFQgXZr74ay0B29FFoh4B/JZUuVWw0=;
        b=0vkbd+EHaZbL21jmOiMjbQdOZGWJPLx14mJlgQ6THivd2n3HehxWZ46KW3wIOqI0sG
         WfLV/ZkUS3mM1ZFbHPaV8ejUk00Mzd/qbpZ99j75nDWh9yOBg1jYYIZ5KpU441HPxKpG
         hIDjcgFVFN5YShE80Y5gCbrm4kZts7StVNr1MqWz1JVo1Mslmu/74mrf2Woo5sweyRDt
         cjOUXAGrbupuYc+XqyxzBcwCrbD/TBpQo1LPN12ot4mehvDNrrNLFHE6YomO7bCyRGkX
         napUI2zwS7Hjkun+twvXPwncS87wjYLxHfodVZFcEPw/+I6SuurRnYmyK8DhA2Jxkuyi
         PWFQ==
X-Forwarded-Encrypted: i=1; AKwUvByVh/231CHHy7PYPjrLE586DJia7fHvsXsz1MqxrnGW2D88sGaVjgs6Vhaue4jl6BQuShEJgP0IdacSTv4m6A==@lists.infradead.org
X-Gm-Message-State: AFq9FYLKIdAGwqIs89LXwUfZm7l7th5CP673u+BlVBui3PZog5Cr/Urw
	wGkZXMUmby0KOutYIoPoadakkxf6oPrJDUQnjx3YaIZsre2xNP59bjTs
X-Gm-Gg: AYBFou29MFIWYpT5Nm1vAeOZSaHfV+YA10l8uXj+Hc7UIPTdTljG2KijbYisGiXGFPh
	RhPClGRkMasORWRx2tQor1ccNLWJaW49l1kw0T9q+MrZQSGZQyUKtsV2jD/SY6hjsj9ZjLlXG4w
	P8GFBU2OdfAFU4wCoB0BlwlqXRkekEYVXu/RSSx4a/e6vlrpNWRriwTlBs2ELagXgaXXkd2q0Ac
	yYHEVKy+RdVFmxwsml6raepkKg3AmXQIOkr4EkgFuuIGaimvl6df+pTxamhKo9NBvtqlSQ60xaU
	m0g48yHSaNwRg+8qwU6FQLqRF+ze2dr79AH3fwNKPv5kvH/D4zyKHpD7dvuxwkyKFObG0bVPPqj
	srtjPkYMZwGuTdXz/HDCDi+qMNAmnCsUwwiaJRyZrre1nVoQfDYz1JySq4uNsujjUB8TCU4APlx
	/+S2wwS3NzFd5WQW53BDAVYsLRSJJMglAThzzLtsGqlhyjD3qMhbAcT1I/9FwXgn6JDyuDp5EhT
	3VOFIfNErcj2d6QzQsPAm87EbStZR81BqXyigz6y7lDcDyA8DyyBQomhJMRaUCGAxQKL+OMH6XG
	gdtjFKnWkMRCEQ==
X-Received: by 2002:a17:90b:4a49:b0:3ac:a167:8542 with SMTP id 98e67ed59e1d1-3aca16787f0mr98748a91.30.1792028636097;
        Wed, 14 Oct 2026 18:43:56 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:43:55 -0700 (PDT)
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
Subject: [PATCH v2 00/25] ASoC: Fix constraint return value handling
Date: Thu, 15 Oct 2026 08:42:59 +0700
Message-ID: <20261015014324.5569-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184357_041639_48CF3F2F 
X-CRM114-Status: UNSURE (   8.31  )
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
Cc: imx@lists.linux.dev, wangdicheng <wangdicheng@kylinos.cn>, Kees Cook <kees@kernel.org>, Sang-Heon Jeon <ekffu200098@gmail.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, linux-rockchip@lists.infradead.org, bui duc phuc <phucduc.bui@gmail.com>, Chris Bainbridge <chris.bainbridge@gmail.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, linux-sound@vger.kernel.org, u.kleine-koenig@baylibre.com, Zain Aboobacker <zainaboobacker33@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Md Shofiqul Islam <shofiqtest@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, asahi@lists.linux.dev, Hemanth Selam <hemanth.selam@gmail.com>, linuxppc-dev@lists.ozlabs.org, Syed Saba Kareem <syed.sabakareem@amd.com>
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

Link v1: 
https://lore.kernel.org/all/20261008103831.542533-1-phucduc.bui@gmail.com/

Changes in v2: 
 - Add Reviewed-by tags from Vijendar Mukunda and Chancel Liu.
 - Remove redundant integer constraints already applied by 
   snd_dmaengine_pcm_open().

Best regards,
Phuc

bui duc phuc (25):
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
  ASoC: renesas: msiof: Remove redundant period constraint
  ASoC: renesas: rz-ssi: Ensure the component is marked as opened on
    success
  ASoC: renesas: rz-ssi: Remove redundant component open callback
  ASoC: rockchip: rk3399_gru_sound: Mark the link as started on success
  ASoC: rockchip: rockchip_max98090: Mark the link as started on success

 sound/soc/amd/acp/acp-platform.c             |  7 ++++++-
 sound/soc/amd/ps/ps-pdm-dma.c                |  8 +++++++-
 sound/soc/amd/ps/ps-sdw-dma.c                |  8 +++++++-
 sound/soc/amd/raven/acp3x-pcm-dma.c          |  8 +++++++-
 sound/soc/amd/renoir/acp3x-pdm-dma.c         |  8 +++++++-
 sound/soc/amd/vangogh/acp5x-pcm-dma.c        |  8 +++++++-
 sound/soc/amd/yc/acp6x-pdm-dma.c             |  8 +++++++-
 sound/soc/apple/mca.c                        | 16 +++++++++++++---
 sound/soc/atmel/atmel-pcm-pdc.c              |  7 +++++++
 sound/soc/codecs/cs42l42.c                   | 16 +++++++++++++---
 sound/soc/codecs/nau8325.c                   | 16 +++++++++++++---
 sound/soc/codecs/nau8540.c                   | 16 +++++++++++++---
 sound/soc/codecs/nau8821.c                   | 16 +++++++++++++---
 sound/soc/codecs/nau8824.c                   | 16 +++++++++++++---
 sound/soc/codecs/nau8825.c                   | 16 +++++++++++++---
 sound/soc/codecs/wm8580.c                    | 15 +++++++++++++--
 sound/soc/codecs/wm8782.c                    | 12 +++++++++++-
 sound/soc/fsl/imx-pcm-rpmsg.c                |  8 +++++++-
 sound/soc/intel/atom/sst-mfld-platform-pcm.c |  7 ++++++-
 sound/soc/renesas/fsi.c                      | 11 +++++++++--
 sound/soc/renesas/rcar/msiof.c               | 16 ++++++----------
 sound/soc/renesas/rz-ssi.c                   | 19 +++++++++++--------
 sound/soc/rockchip/rk3399_gru_sound.c        | 14 ++++++++++++--
 sound/soc/rockchip/rockchip_max98090.c       | 15 +++++++++++++--
 24 files changed, 234 insertions(+), 57 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
