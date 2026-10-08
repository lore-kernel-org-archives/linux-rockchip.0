Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38616CA600B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hu6KqHPayZnLQDv0k/k13MdK+7YBAM32cj10o2TuZaY=; b=GM6YGLJfyAmuPH
	VA+q6yr3Bu0glhvZaUABNnA2yzIE9R9MPNffHkFuAMz0yxgkHMZjb/5CmDVmkgomrydmFMvFvPzS5
	X7ePFwT/xLwvPTqFRpDqSOQljY/LJn0mLp/4O0pZscl0R4nKXezG3Q2TL0h8/QiybrbuSqCYFuc1Z
	5+9luR/pfHA418j2MWCaikVjrUGO+ED6cSx7B8zRYVWGkvAi1IyXl8iEwHCmgiNnnpf1VGN8bC+Ta
	pBlsNYPRnJAmDWRYty3IdQ9kdHR7T7JIaxY0Lue78lU2IF7gALoa5fHBygpYAtSNZD28E447a/6bI
	hyjuSEihzx3jtMMuXTrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElbA-00000004B13-0eet;
	Thu, 08 Oct 2026 10:43:40 +0000
Received: from mail-dy1-x1332.google.com ([2607:f8b0:4864:20::1332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElb7-00000004Az9-0lHJ
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:43:38 +0000
Received: by mail-dy1-x1332.google.com with SMTP id 5a478bee46e88-3282db206d3so798674eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456216; x=1792061016; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NfWx2qRDgtNnVPrZV6mmc0DG+YGHGqR8DbBEhiLgtRc=;
        b=s1//C1zdLdEGB7sKM2yiNjTeiqIQ2Xt4OpamyhI0fN5f+uCUvIu4kXeLLbWtCvwIzB
         OgQVyi7JL2xQsTshLmoKrMUvlzuM+JCenFifYfOJNWMdKtENqomcvQ7XamcmwfiilI2z
         JV/y9NUC+cdGRSF9gkKmw7gPUlFC0/0MuyHhsNXtIXpAy8cHVAIhyT89s3dLmsreDqe6
         OL+K8fNPRwMGRNmo2111j0VlUMD9+yrNrN+WrJTk8qlCisP/q+V8Bz9CP1ck6ZXJooKe
         2SnzKAh2J//oPomuUZfsmJZqRJYcl2tOmARaWQpfi0d7IzIPSz5CsH0setd5Lje8TiFr
         By6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456216; x=1792061016;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=NfWx2qRDgtNnVPrZV6mmc0DG+YGHGqR8DbBEhiLgtRc=;
        b=KNg7dfVQyHV7XfGdB35rb2tR4mZyz6/VuA5mHMxvpa0ccln5pQSg2suqL7uUhjg3/E
         JbNSuVuQ15J8tmmegsWVA4dd95Vjdt2fARMkJzkfyCzdzidFDFQYae/yIZiqZl3bXTgv
         I1UVH6+YUd3WeokOOANZipeIrwg/nMGs6xADlwT7FaT88ieHrrRIgZuHp9e+uB5Pp9hD
         GMZPzWtACrySpV6gBjx0HhesflSZ3Ct7jf0dpbuxlP7fMheNmBzdX5eA5FoacZX5GXig
         vXMdkH2XbYZn0QHi2gK0m4+gr1QPWahh2tk7I6Wdjmzpc0bTfA/RJT5SfS2JyJTBety2
         NHug==
X-Forwarded-Encrypted: i=1; AKwUvBy5gN2fVXoTN3Lr+ZOA4hoL4DDpzEbiWlDFfayRKVRNWlzS4HGY3xb85zXU+GYmUA/mqcxdKWWuBdEbfB4Ipg==@lists.infradead.org
X-Gm-Message-State: AFuF++krxVAdizasMDsPrEDqGVQ9AlPNWZRifnlRgBUAgA4Djm/e8A1o
	8SKGlItEf33gXpc3HKl3CO3iW4CwcaDX55mNiQfh+pkbzz4OUS5Jtu3K
X-Gm-Gg: AYBFou31SY2TWCS/QTVCnayFZBTG9Vcq07hFsJqM/kyoRA/GkYQAvxAb4ID2lT6eHud
	RjAbgeyCOqfGUnP8vTy0Cl2EQFxa/5C5d9C7EanS4nlNoZqRT2DT455G8svN/Op+7kwjjECJWS/
	Mqouo0HpiltbJm5LcIUPhrQhYcWPj08KD62N9+5U9NopIFNX27tE/ZCGxDHO6tDgH7CMoRO/mcX
	9hjz4t/Lwtv8vT+KCm9Ga/t54gVp6anD2sZELA3BRdWYqVMtyRPZv3mGvKZmefe6SAlT/K7rs2R
	2aXANhjYag3pHFCzRr9gE0Z8nYkH9vNoh5DtppCRvoywWseD2oft+dcDZNowMTIxAIrvlB6aLxD
	QStn6YbzItXYxs+rW67f1Hgc/iynQ+bYNMreZ8+/lCmyzZM/RlhMr9b/gAy7YBzyNMH4M3KVPqy
	TU/Ya4MpSj4xWkTt83DLDjZPREHUb9f1aj8OtfRJne/uzfHhg7KlBMpimdNB6IweMIVFmzNas+p
	pdcLtqJRVL2/2w9Kb36b5MmLnbzkvQYomMj3yK//uK+PtKBJogMdu98Kd1FwE3GiPT4vOk+xqJ7
	TpN5NrLPW72MTD5Lxa45utRh
X-Received: by 2002:a05:693c:2402:b0:34c:e77c:f92d with SMTP id 5a478bee46e88-3515de8cbfemr6349033eec.33.1791456216244;
        Thu, 08 Oct 2026 03:43:36 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.43.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:43:35 -0700 (PDT)
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
Subject: [PATCH 18/24] ASoC: imx-pcm-rpmsg: Fix imx_rpmsg_pcm_close() being skipped on rollback
Date: Thu,  8 Oct 2026 17:38:25 +0700
Message-ID: <20261008103831.542533-19-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034337_224673_26408F69 
X-CRM114-Status: GOOD (  12.05  )
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
from imx_rpmsg_pcm_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 3c00eceb2a53 ("ASoC: imx-pcm-rpmsg: Add platform driver for audio base on rpmsg")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/fsl/imx-pcm-rpmsg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/fsl/imx-pcm-rpmsg.c b/sound/soc/fsl/imx-pcm-rpmsg.c
index 7086fb7fc1eb..30e75fee5175 100644
--- a/sound/soc/fsl/imx-pcm-rpmsg.c
+++ b/sound/soc/fsl/imx-pcm-rpmsg.c
@@ -269,7 +269,7 @@ static int imx_rpmsg_pcm_open(struct snd_soc_component *component,
 	info->stream_timer[substream->stream].substream = substream;
 	timer_setup(&info->stream_timer[substream->stream].timer,
 		    imx_rpmsg_timer_callback, 0);
-	return ret;
+	return 0;
 }
 
 static int imx_rpmsg_pcm_close(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
