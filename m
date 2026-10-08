Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B94B4CA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bg9yJgDq5kOuDjadTdiRfix6geH67FnxuuN4dCD+9Tc=; b=YYZd0p4+2YZ4ul
	AiHm/neu6TNjDC0qX0OAZiyjGliVl6wTOcIgeFCIouOLWUmJ3eIP0DQqttnXhC6CN3tCvlTT+HoRm
	bh82wTJdy/I7AV2o62xfd6pXOovZzLqdfht60i6wec9yZYTNwHFKlWuW8U8qqUoUFIlL58d7T3Qqq
	B8ICOyYq0W1L0GTYpGQ1iEHZ+3sA9iSSMf7JLrPu6tZeRZ6nNqoDyDkhtcaGDHiwS4OD0YnD8YjCB
	wHsK+bJNvBSbrvVi5E1UVF7t2M4/RnmhWRKo7QHiBVtsnefQ1DYss9Pd1xmKi2HrnCqEDbfnA5ODP
	87TrLCRg5j85hI3CCXUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElYT-000000049nN-2Vwm;
	Thu, 08 Oct 2026 10:40:53 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElYR-000000049mU-3npv
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:40:53 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-35120d43ecaso7720253eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:40:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456051; x=1792060851; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=A3hFCOdGFcpARJPE61Pz7wx4lXLyiEMweFG5G2TuDs0=;
        b=FuHsv3EGXUd22g0plp7KlKVqoJAPwFJm6nA/4wW32vEYBG3pNcyawNfq5hjl1LyXr8
         Ne3CAksln9SAwbIzyusWx2dCDihFe9kmnVKaALFhFk8rNfICUZVL6XJKr60Q+9if/dSq
         J6uJWGnYGadR9oXRLkAygKwEBqjdyhL5mDpIFzaOmW81tVYOgQ7jDyRTMaWhF25VXHM+
         XYENFq7aPhQ9xx8UGdhS+KlTs8yR5i+vhMLCBZlKygY/DbMKTdH26enGhZIL6rgn6fa8
         HVLZiyXadlxsoVieD/fyXYjhXqGxx+8yCDEFkxrIdj7p5fL2K3imqKO6SIZef+MJyRTU
         SK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456051; x=1792060851;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=A3hFCOdGFcpARJPE61Pz7wx4lXLyiEMweFG5G2TuDs0=;
        b=ZpB+MDlQdUX2FIqlzNQfVzPvP59/uT1+8lDzYYq1ap7byf/Hh9XC5E70uZ/HhU/Zez
         UKOAI0BTx0hXgqbRBtW4jplBFWeiGCeuNI7RnVQFT4mN6b0mhjGJgiZBrHIB9rs+XBJb
         H44hK0/nNYeSMoRLBKDajUB0h97dTPfDLFWjwJTHtFeaZxA/30FniX2MRo2UdTJ+MSzP
         79WZm08LzoqPEjSrB1lwYZdRel3pQqP7hsFC53amnllZ5lYPeS/rA4OjD8lFJuBq7bVJ
         I1vnapPyvra4SCPzfzGSwy1h3aCP15xyESO2A6zTZpkFtRGfQvcSu1wRFnMUrmOtoRyG
         Reag==
X-Forwarded-Encrypted: i=1; AKwUvBw4LrdEdgimnj8NojuYLxSdt3F7rWJro8VGmH9eDd/oJaTTVpBO4DFdQIlV2Lm5YHdgK5uZvsD0vCpQ9pQ/lw==@lists.infradead.org
X-Gm-Message-State: AFuF++nVPrzWYacR8T8MryhhqG0EPZJsgsDDQmTFAh+PKW9DPEwREUCQ
	vJw9Ga1RhHtLbDtftJ073IF6CIDlQlf8rfSDp6Tqv2t0cwTQMcDRKqk9
X-Gm-Gg: AYBFou1OIXLb7zyrCjf1jSZ5qKpKXDEamezaHxE6qHGZWaSBJ8dppj8t+w2E1Bt9FhV
	FAE7lpUbkud2g+L0DkbqRsF7xpNk4OFX4dSEkPZRdA9kS9jZ2Vz99s/0Gh47233M+ZP1+lHC0ob
	s5sb07pngDrTv3c6mNNStXquygvDdgulSLKeCt+Pi9asmDrhXNqR98fJYKGv5fbCUSckkKS5ZE+
	es7VYih+CXbPcoXWVrhNqhQT5zjsssmL3GcrlhbD3LmDgkbV4vS9QBkkhCSiwttFdxoGQGXYZng
	JwRQaCyFTETFtQU9hG7JoNDA1JLUfESMljYdNLMS8xmu9ZykFl7GnlebcHZzBVU7lGHI8kFelZ0
	+h2ec2LQWNiIcPklCtL/dfcv0HOF8OtSzEa8t3WQp1OG8S+Coepv1VzjMWwbaBWJcMFFO6632uE
	BEgMTLwUF4dQPK7+iQ9FRcHpPmjtjP3rfKMERnHGBhQXUSoxXDw25JxVXh/ToZ0zTMeFP7Pdfnr
	0Z6nTUepQTvPjOmMZQlLl4L5Wv/wQkScApEr5szIZuNN5PGf/YkYIBWAIJ+VwcZb7fFqFxw5If0
	pwxnOTLRSrUxJTsUH6x67pmI
X-Received: by 2002:a05:693c:41d2:10b0:351:62fe:62 with SMTP id 5a478bee46e88-35162fe0200mr5293677eec.19.1791456050997;
        Thu, 08 Oct 2026 03:40:50 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:40:49 -0700 (PDT)
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
Subject: [PATCH 07/24] ASoC: amd: yc: Fix acp6x_pdm_dma_close() being skipped on rollback
Date: Thu,  8 Oct 2026 17:38:14 +0700
Message-ID: <20261008103831.542533-8-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034051_952020_356235BD 
X-CRM114-Status: GOOD (  11.99  )
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

snd_pcm_hw_constraint_integer() may return 1, which is then returned
from acp6x_pdm_dma_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: ceb4fcc13ae5 ("ASoC: amd: add acp6x pdm driver dma ops")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/yc/acp6x-pdm-dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/amd/yc/acp6x-pdm-dma.c b/sound/soc/amd/yc/acp6x-pdm-dma.c
index 40c4d833f4ed..afa9f66533e3 100644
--- a/sound/soc/amd/yc/acp6x-pdm-dma.c
+++ b/sound/soc/amd/yc/acp6x-pdm-dma.c
@@ -209,7 +209,7 @@ static int acp6x_pdm_dma_open(struct snd_soc_component *component,
 
 	pdm_data->acp6x_base = adata->acp6x_base;
 	runtime->private_data = pdm_data;
-	return ret;
+	return 0;
 }
 
 static int acp6x_pdm_dma_hw_params(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
