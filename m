Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31D90CCA46C
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HJq2F+z+ZxqwGhr3as7vhuWeU4Q/RaMEZDea5aSfNao=; b=3B7yh+Mqlql5CL
	UjHXLOLtmrG+5B1uqupVe8ft1YAiQfe8gyWyAU2w7BDt+nm0t4hHozPHa1dBbdRP8OavJnesLCd1q
	PpRq6ji+TtxDqF7KjedSRQX7dug8MDh+n64n3cH5dsXnKDOlrU7/iSkRu7ZOdU1l/q5eybGjsBX0l
	i0K+IyMOvuaHyvEC+9lRr4I16dbS7GpEnmf1qN1JcDLmPEmauLVKYvXKGOZqpLwLrWgpC8tHQPQCh
	iyH2TCgsE7Lu0Tcnj4uFuB3vHAzrVU7bmaG1/L8Zr6hA0pQCz8ZSA1k4S7N+N0buqD/QFS3SaZ2DN
	yUnS4tYHlvyteLsYxsgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZHJ-00000001wWY-2ebq;
	Fri, 16 Oct 2026 04:10:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZHI-00000001wVx-0Imz
	for linux-rockchip@bombadil.infradead.org;
	Fri, 16 Oct 2026 04:10:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=SYnQxKBL88L7bG0SnRsZyN/ibAKxj/QjIVLFKTNculY=; b=au1gj+Zw4JLR8rwR2FeDPvEnu/
	nBipfHkQMb0Ooq48cXbQ65niAgU0HwCbL9t/3P6sUWW+xiRf7FqoD4X0QBNUvxd1UDpDbXdJ6/phj
	hJYINR5C0sYzvqs7LQLemtphXmeGD/5BoCCSBLI3ekKlf2Xt0V4DjNJfdP5gzfNxujR7emUn20Vxp
	1E85iJDntZTRRuqwlFpEDQ8NySZyTA4oYqg3vpQ9Dt6aDiIZzjSzI6HYJYlYgRDQ1Dm4XaBSFHm6a
	aJ75FfDuLbyiOB5krcf+tYuV6aCVSOKo9dPQCc/+ZMEtqp1zucpt+1ao/8o3NGcGUx3qPBoxkq1nu
	/lzp3I6Q==;
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHZGl-000000015LM-34MB
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:10:39 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2e60f9af6e6so22915405ad.3
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123809; x=1792728609; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=SYnQxKBL88L7bG0SnRsZyN/ibAKxj/QjIVLFKTNculY=;
        b=mByapUYsjmRYj8+L9c4IJR0TWmNZXFFfZm7I+n5EI034Aazuyv2mrmO5aXri7j7iLQ
         TXJEHF7c69YQwaD0NaQnFgPCbb8x2tAgnkEsZcbrsWgiw+EWr5aWGAfn+Udv6aW795ZR
         y4mXla8xObx6GY4vAgPL33J9B4lrJrlvFvydPqpCtZdL6Fg0ZD9GI8jHU1KVXrx9uaAS
         AtEmG9DEMk03TY59J2s0DoE8WcamWwZ/UCcLq3Kr0X4nlVlLQYPiCKIpQOcL8PwDUBNm
         dXs67FfhMc/RTlEtrM7ueDCrNzNHlTiKvonavK22F+fMxmJAcUsVL8Hx8iB44aj0gAF0
         RibQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123809; x=1792728609;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SYnQxKBL88L7bG0SnRsZyN/ibAKxj/QjIVLFKTNculY=;
        b=xZ0a32Yet5Jaovon0FxLGo/wudS5DWfTsYignI7NI8+Mm1UNoCcN8PqTfQKhrclGvz
         aMJ+cKoT8TYoo3g/rJW2IKtfUV5ujoUDFEo2XdqI9LLq4exHjAFsOmPqfzmhRoQDvI/I
         cMh6SY+/4OMD4/NwRrKIl8OEsIsL+jCgacdfc/FRfBPbg2MIkJEhtjDrNEbSEuhJPge7
         WNxr5xB9DAkFE9o4ByFQrq5symbTK5kE/ZvA4L8E8Fq4WFdYiN15/B77bpzBl4PTbDMM
         Qvf98DoCqWALBehxLsPgkWAaA9n0t+AD+TQM8URRE/krB6ImZNGUYe4tDj54d0YERghj
         3NxQ==
X-Forwarded-Encrypted: i=1; AKwUvByDCO/v3uxolPIROypp4feh78bTm6NfeqbA0YGz7+Cm4m8T5zrXIPMDYpUHZ+88T8ytXQq5fFO8Yb9ZeYHORA==@lists.infradead.org
X-Gm-Message-State: AFq9FYIt7lns0D7Gl1Ap8Y4hS4IejI+XsOEE7gKAcfiQ1U+5sNcYghhI
	YiPkUs84LG/3CAcWArjscqoPgn0BOHiImfiAL7ZSlS9N5rCWLJees4Ke
X-Gm-Gg: AYBFou2CxdTANhZRxrWl+g9JrdAEMVdxRDFx9Umm3HXceCySO7hEE1yPXOWj7eKChmb
	oQKGJpIKP8jFxrwZccveRh8HM5VhrEm22f7RBjjiHid3tYOqB5HYLP1CWVE1JWNIYlE9ISLmZIk
	9kCUVnVbYkVChYviYfuMARNZ5h5JPuMlsc5lNtUbVsyNwKsI5sT53NA4rgC5PhuABuDGy7GM2IR
	43/h8uZjD2n1DbxH6vT98l9RjpqVeyUPlbaxhJGPpHasKo9Hc1zghQuIh6kYXNRb4LJup/OzDCJ
	T9Zzsoc7I/p0mKF4Zjb1K2tJbuvIEhxe1N5sjDjueIfWjxYDCxmTKWz4SIPMq7+s90lbTLCTTej
	OTpmaRY0LXiFETx5VkYkshOfnNICJd4j1wl+0GPRvds++laaEq3OG28ZYQKdQcsHAQ3E7O/6MFL
	qbJepbyM0rD16bS5dVr6w7ilCuL1PXgeT7bG2n1486xPHH9GGNYJdOTOr0pH7aDHTZFCt+A+GMk
	pOPcBdBxFQflXDohoGc/7gd29KLpjVqH1wtkGtaEgN+0NwUMmYBO7kkBFWf+R3vGD+bIKwj+PgV
	J06fUiUqFiOF0w==
X-Received: by 2002:a17:902:cec2:b0:2db:7941:9e11 with SMTP id d9443c01a7336-2e842cd431cmr197979565ad.9.1792123809100;
        Thu, 15 Oct 2026 21:10:09 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8ab443sm3815785ad.65.2026.10.15.21.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:10:08 -0700 (PDT)
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
Subject: [PATCH 00/11] ASoC: Address remaining PCM constraint issues
Date: Fri, 16 Oct 2026 11:09:35 +0700
Message-ID: <20261016040946.521195-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_051036_666070_EEB693AA 
X-CRM114-Status: UNSURE (   8.87  )
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

Since v1 has already been applied, this series provides incremental 
changes to address the remaining items from v2:
 - Add comments explaining why .open() and .startup() must return 0 
   on success to prevent the issue from being reintroduced.
 - Add Reviewed-by tags from Vijendar Mukunda and Chancel Liu, 
   and Acked-by tags from Morimoto-san and Cezary.
 - Remove redundant integer constraints already applied 
   by snd_dmaengine_pcm_open().

Link v1: 
https://lore.kernel.org/all/20261008103831.542533-1-phucduc.bui@gmail.com/
Link v2: 
https://lore.kernel.org/all/20261015014324.5569-1-phucduc.bui@gmail.com/

Compile-tested only.

Best regards,
Phuc

bui duc phuc (11):
  ASoC: amd: Explain component open return value handling
  ASoC: apple: Explain DAI startup return value handling
  ASoC: atmel: Explain component open return value handling
  ASoC: codecs: Explain DAI startup return value handling
  ASoC: imx-pcm-rpmsg: Explain component open return value handling
  ASoC: intel: atom: Explain DAI startup return value handling
  ASoC: renesas: msiof: Explain component open return value handling
  ASoC: renesas: msiof: Remove redundant period constraint
  ASoC: renesas: rz-ssi: Explain component open return value handling
  ASoC: renesas: rz-ssi: Remove redundant component open callback
  ASoC: rockchip: Explain DAI link startup return value handling

 sound/soc/amd/acp/acp-platform.c             |  5 +++++
 sound/soc/amd/ps/ps-pdm-dma.c                |  6 ++++++
 sound/soc/amd/ps/ps-sdw-dma.c                |  6 ++++++
 sound/soc/amd/raven/acp3x-pcm-dma.c          |  6 ++++++
 sound/soc/amd/renoir/acp3x-pdm-dma.c         |  6 ++++++
 sound/soc/amd/vangogh/acp5x-pcm-dma.c        |  6 ++++++
 sound/soc/amd/yc/acp6x-pdm-dma.c             |  6 ++++++
 sound/soc/apple/mca.c                        |  5 +++++
 sound/soc/atmel/atmel-pcm-pdc.c              |  5 +++++
 sound/soc/codecs/cs42l42.c                   |  5 +++++
 sound/soc/codecs/nau8325.c                   |  5 +++++
 sound/soc/codecs/nau8540.c                   |  5 +++++
 sound/soc/codecs/nau8821.c                   |  5 +++++
 sound/soc/codecs/nau8824.c                   |  5 +++++
 sound/soc/codecs/nau8825.c                   |  5 +++++
 sound/soc/codecs/wm8580.c                    |  5 +++++
 sound/soc/codecs/wm8782.c                    |  5 +++++
 sound/soc/fsl/imx-pcm-rpmsg.c                |  6 ++++++
 sound/soc/intel/atom/sst-mfld-platform-pcm.c |  5 +++++
 sound/soc/renesas/fsi.c                      |  5 +++++
 sound/soc/renesas/rcar/msiof.c               | 10 ++--------
 sound/soc/renesas/rz-ssi.c                   | 19 +++++--------------
 sound/soc/rockchip/rk3399_gru_sound.c        |  5 +++++
 sound/soc/rockchip/rockchip_max98090.c       |  5 +++++
 24 files changed, 124 insertions(+), 22 deletions(-)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
