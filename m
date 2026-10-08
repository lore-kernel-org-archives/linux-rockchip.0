Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D27DECA600B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ILEzmfRxiYUR05HV6F+NWpSPtpThkg+ZHQl+yD6JjI=; b=vAYFLO+NC/DFRz
	c9lJrtZcy07D7PSl9g+6I2h26db3gUN4o/EoOSIr/qaBUFnZ2pgYIod5I7yGn5no0gXult3xfJc5O
	qWlY08qPlFlhlwBKDD9MaYmR54EMhYQwD14nWO5qmmQ3uc9xFoWuRibWHEGjCnJ6jDHnzinrDKY/V
	xoiw03MOhF2sHsQ8wu9D+imGk1Y6lSW87hRTncW3T6C69W0fhrvD+elNClYAZi9R9fw5jU+r3sI5V
	RYcLOTMa79l2fjrk/JYQdYNm6R/S3b1Lsgshm/w6sCgynvYRdJim2j19ai3N3dD2YQHuAGv+oI5vm
	/QrhBKbFcAtr0/swbmCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElXY-000000049Ti-22jv;
	Thu, 08 Oct 2026 10:39:56 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElXV-000000049SU-0xfT
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:39:54 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-30b6dad2382so6456322eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791455992; x=1792060792; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mFcTZ+kGWiuWqdZS5yC9jJRo6WNRtV/WgwZSDkO0NF0=;
        b=gMs0jIm38OniOtpghfizjTdF/kXrHotu7WMkWoYO34cqxnaB/46TwPFOSMYfy/dnwE
         PeokeGk9OaD4fpvgcuwzwiGeiexK6CHuD/XBgxy8VYnBdSVSgXoZbIDUGHZOGsrM43sk
         4/osijwb9xnBQK2Wk7o7fo4Fv/QqPOPHQlk2AJKRBJ36sssiJvvzJknCXXluHlZPpuvk
         oKL3xRm8qaKIo9Nf2iq+lPIVrvSUc1A0jiuJpn2/x9d+85iuVPzLd85zN3PjXK8+egYh
         jrGLlMteRg1NbyZGsQ1NmkKoLHcPQnr6Y3/4PsMDCPG8kvQupc9wuImCNovxRoUqRZeh
         4x2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791455992; x=1792060792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=mFcTZ+kGWiuWqdZS5yC9jJRo6WNRtV/WgwZSDkO0NF0=;
        b=L+XPg/1vkghzEBivZzPiVfrvaUGTX8a2MpsazbGOqSxpg1Vuvzvt3VBRtnWS9oM39s
         ijeGUIcpmUHhDB7mfUCYHNUvS127KBBwkYjp0DTIW9nCpO5KlMh7PqydGRvKmVWBGQZi
         TNlE/CIntg9c/RsskwxAuPf7yttQIsFedF6vY0E3ULDS9ZkNyCoVKi/wsrPsJSvCAWjY
         1xbEGBkrWHuXvS6IoK3kNQ7Se399kkf2G7IDhROYaDOjyizUNVbjdR9c76cNQesMbKli
         XybWgNypIcvZlq3ixlWdby+XR+0QYXG974vnW41iEwXqRIJGY+DZ9tbsJHfHAL0WObDX
         /4ew==
X-Forwarded-Encrypted: i=1; AKwUvByptTQx2ViaKfagDR8KmF0uEZL/zV7EpjyEWCyu93Xc8/uhcXki7/kBKX6XVkiHOeZYaC4wjFK9JdRa+YR9IA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKu+rvs1Ohx0Mf8Cco8XsODWrmPqzIKucNqLiOSLcL51rlMtGSg
	r948EHUYWcy+fhOjX3WLGL4tCFR2rw9ho43rvsatPeJEmTUnsT4edfy9
X-Gm-Gg: AYBFou1Q7M/wEeREtHGFU1Bp5+su+FAILTMN9F6OI6DtMkxKU2Or6DDuxdmGBqOIBIA
	y9nLn5w716qrhU4cTfhpFd+zSOMtIUZnucKBfpRXRxVsxN9o4MlZb3nwvbfLnJo3AvnudgcVx9Q
	QP3yc7BlJWeFQ5yhe5rauhSNBEDF3RaSKEc6eIjBiQLYrhcCynuroPlWzMb/z0JAFmh3RbWrAhR
	NhpyqChQBf9qMHsTQgHQZ4ZcuGhEoC+FuEN31rN5v/rhi+0cjfq5dzRVd+wQ6aS1eOkDgsVP6km
	MtOff/XEz64NdeRXTu/rX5g8t8/xzRZlGxAnWW5lSqLB8EP4e1oBZZY5s5CXtigPJjgmwfVkWAd
	F/hWUNyhVY/3gaso7fxUa3gsDC2wqYcpXQoPvp00OjvbPhoQeqGVwoa74qBq8+K8le+Xqqqcs29
	2t3mP/o6NVfUd/gMkSiht9hZ5wToqvAM5MOy7Dw2cmVmaiB7bNMObCi5utuD1LEaMvoBb3LrwTt
	+/EAMZn1LWRPCTn8OFLXevx3SRUZ8NLd0+GPRg9xm4ahmmA6mFhWfavj3M/pzMZ3H7XSGZ+Y8UJ
	kGH5UeXjEQB0huQ=
X-Received: by 2002:a05:7301:3d0e:b0:351:5112:ec4b with SMTP id 5a478bee46e88-3515da5dc10mr5687961eec.2.1791455992008;
        Thu, 08 Oct 2026 03:39:52 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:39:51 -0700 (PDT)
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
Subject: [PATCH 03/24] ASoC: amd: ps: Fix acp63_sdw_dma_close() being skipped on rollback
Date: Thu,  8 Oct 2026 17:38:10 +0700
Message-ID: <20261008103831.542533-4-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_033953_278344_61E8A166 
X-CRM114-Status: GOOD (  11.89  )
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
from acp63_sdw_dma_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: f722917350ee ("ASoC: amd: ps: add SoundWire dma driver dma ops")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/ps/ps-sdw-dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/amd/ps/ps-sdw-dma.c b/sound/soc/amd/ps/ps-sdw-dma.c
index f27ebbd21379..553fe11a2e50 100644
--- a/sound/soc/amd/ps/ps-sdw-dma.c
+++ b/sound/soc/amd/ps/ps-sdw-dma.c
@@ -337,7 +337,7 @@ static int acp63_sdw_dma_open(struct snd_soc_component *component,
 	stream->stream_id = cpu_dai->id;
 	stream->instance = amd_manager->instance;
 	runtime->private_data = stream;
-	return ret;
+	return 0;
 }
 
 static int acp63_sdw_dma_hw_params(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
