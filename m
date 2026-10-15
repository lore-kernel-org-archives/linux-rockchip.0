Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41F74CC6B2D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0hbY62qvGRLvFF05Dnt+gBlwCZVLup5HBwvTC0+Y71Q=; b=kZQ6G58msFwBAP
	LQLFsvQQib2AJz2WsE8I7ZmHRm7nX5ds7ZLhOiY84SIZtA/aeZLlhGDw7e4+aHSCHVq0wsXIcEgt1
	UkZuV0nn9sfKcYPAigrq36Zx58Ts0Memo4PDrugtpt+Ya/l9yBii+hKSpFhxCA8UFFET1qHmQSAji
	r3HidyqUVB35k1EmU/iB/pyrPnDpgtXaiG6n/11ikw/Dl2WRqfOpYq9yvrXLefsg0H51OqxJZGOvL
	IBAXMLzGdnhuHdV/DlKyt8QCEecLlWlJV1DWRfb4LknaJVwz3OoyDsrle243x2lt1oG/uFPbsHfZ8
	WeovDGsQbI3LKcj4+TvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAWq-0000000GbAh-0F3z;
	Thu, 15 Oct 2026 01:45:08 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAWn-0000000Gb9D-2Qwi
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:45:07 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2e82462a3f1so9141345ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028705; x=1792633505; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=tHQEAftjxeSOQpgNapgwf4pKKw/+LL69dyB2CtXEGKE=;
        b=KU/FGG9OLqI36y0XqfvX6lJPKhbF1lnR+7LX6d5drbhIgpfZFzy40fZNfvNGGtKqei
         xY1Kq42FF6FwvhWJCuTwrkmr2HwOExfjvWSYr8UmblQMFeP4MAhM41tJeePq4i6UZguh
         1y7B1BrLQbbmjcIwSnbJQMGjHjL6GX8V53cOdSSeh6ehPNYcL+DcMlbfikJD+eWVGUYJ
         J56s/7EyH1mBGU/A8hZuzXYxQ/1A1RYLruoFL7w91gx/dKNEj5U2vCvGaCFiYXrZFUbD
         QIUXYZ175gvzkq/daI+o9SJ7b/+eyIAKP8s9b/QIlokG+HqpKfY7RuywgnDNylS/YSXd
         BmxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028705; x=1792633505;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=tHQEAftjxeSOQpgNapgwf4pKKw/+LL69dyB2CtXEGKE=;
        b=Dh7qkopef2J5VmAHAD9GUGL81K3IseCWgVT2jJdBsHl1hRc8SAR0fJHgbyg01R1F/8
         Mx4oFmaylUTw0glFUV4/0qaNmw7fSuclNgicmZQzij1XDzax1eHBp+NuMMleXkMqSEGe
         vjTiKUxjWRkTYu899oAyeA7VUNlhMNIxCwy3X9ntxfR2DxsiNAFZWnZOrAhgF0FrdeXI
         sRGA0WISkCbYwoT7yL9wCeAL32Yfpa7Vidm9aRFQGGCLQfLzGVyPQXaj2fLaATAhuL8+
         C84jujk6/EMINEIhI6lhLrOBHTLU0FRVFT3f1+K80ow9KtU9z9IrPo5mTSWPhCqJjZNE
         t9TQ==
X-Forwarded-Encrypted: i=1; AKwUvBz6FIVeXm/elPsSchPIsuDScSuSl6WZScMVYLMYZv/AqY9KhLhr8l1vGDoKzIJgdj26qFTutL1xAGz/fAeSKw==@lists.infradead.org
X-Gm-Message-State: AFq9FYIKy4Wa45xpXFuyuthQaf1uI9THclargwPEPKXyRHHzgVCBNlQt
	lzcwzwIuUPhbhz0S/jQidpiIO8L6kP/c6wQYL8eaQPaqqWC5IwR1qqjd
X-Gm-Gg: AYBFou2OuOitfqJMz/BoZGD/mlD4fH4ZbrCh48yJjSnnGTwylmjNRobBF3TmFRZ3wxH
	fYF4pzPTlpHRAHOIng1j+PUHdIy0u5Pf42usxDpKwkRjvt0bLefciVUs0WaO0/KFrIV1WHmyt0s
	yajQYxUmTTVNJ2PGJajs/9nTf4bSHMlRA0MFEnDd6of4zYPdmqziE98KFMv3TnBM/SqzxfMqLUl
	8xpvpAihLjDQlGO/PSHUY09ksFq9addFF6J6SG+YOpa8IWmyq8Mr1cyV7ls4U3IKEpalPKjFAI3
	q7uOhh89eCh648truuU4peq5ei9P8e+lsLdtiiapRB26JZynRy25jZnaebdbHc6ke1DUhpWC1FJ
	m4U2z0xe842V/Ozce/LEmnFKQEphr2P/lvF/fQXSOeXiduxsK7vzba7F/FGOYX/WBN/i/3T09Xp
	DWGFEpbEPB/UO14RXnKO243cR6UwaWnEa4UWmYZV5C2lU3uTpfjEeGwi+Anb5b5yb/7X0DCwy9w
	x8zTC+4GgSVzSyJWutpo5I2qzX0xbX4rAHdJBQGGxl9MjnEfSxQaNxCn3RVrnXWZKeIQSJ7IAEo
	SvPIt6k8ZiQA5A==
X-Received: by 2002:a17:903:110e:b0:2e9:2a1a:8b69 with SMTP id d9443c01a7336-2e92a1a8ba7mr50722885ad.55.1792028704623;
        Wed, 14 Oct 2026 18:45:04 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:45:03 -0700 (PDT)
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
Subject: [PATCH v2 03/25] ASoC: amd: ps: Fix acp63_sdw_dma_close() being skipped on rollback
Date: Thu, 15 Oct 2026 08:43:02 +0700
Message-ID: <20261015014324.5569-4-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184505_630726_D09D0648 
X-CRM114-Status: GOOD (  11.85  )
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

snd_pcm_hw_constraint_integer() may return 1, which is then returned
from acp63_sdw_dma_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: f722917350ee ("ASoC: amd: ps: add SoundWire dma driver dma ops")
Reviewed-by: Vijendar Mukunda <Vijendar.Mukunda@amd.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/ps/ps-sdw-dma.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/sound/soc/amd/ps/ps-sdw-dma.c b/sound/soc/amd/ps/ps-sdw-dma.c
index f27ebbd21379..c2640985f54c 100644
--- a/sound/soc/amd/ps/ps-sdw-dma.c
+++ b/sound/soc/amd/ps/ps-sdw-dma.c
@@ -337,7 +337,13 @@ static int acp63_sdw_dma_open(struct snd_soc_component *component,
 	stream->stream_id = cpu_dai->id;
 	stream->instance = amd_manager->instance;
 	runtime->private_data = stream;
-	return ret;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
+	return 0;
 }
 
 static int acp63_sdw_dma_hw_params(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
