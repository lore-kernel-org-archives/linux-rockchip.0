Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFD4DCCA46C
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nlra4PmnBcqtZr4lm61zi6hdsbhE97pXV2/oGjQPD+0=; b=s+bzvALlReF6js
	jCNKOPdbmc8FUHCgxTfSti2xpOS9XUShJFXyNUYks411asFA617w2BuFhNBPVtYMKnbfgZmhPZZs/
	lwowsJPbYxwIhHL3Jv7j++LeIri2964TNFL+S84zGiqS6QOcYo//3maDH3zReG+Em5q89gbjRrjBe
	rOXsixXsOJXmC9nWM1bz8TXyOgrjKahC7AvbmYIyykPxZMF86tfe1XzuWcKrihQ1N78p+ROqzKqIk
	v06nyQAlLen18SB7XsAkfW+5P87NGXKTjBJBEacIjb7LPNPOXwLrkBAaWxVh577LAsc10eqStxpY1
	YWvd8y9hpC3eKgqvb0vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZHp-00000001wlG-1HQw;
	Fri, 16 Oct 2026 04:11:17 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZHm-00000001wj1-0tbE
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:11:15 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2e8f2c3ad6bso26856085ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123873; x=1792728673; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=QXlahNE+Wx5snJLp/MKBjKZg6Q+5VrSpbj2QDx2YWrA=;
        b=aLVUuZv3ncBDWmict70SOTfkeItV6h84jad7O9eArTXQkouj6atWzgfAL31R4TyfyS
         DOJBRwFkN97TIguVnPvy22/2kKuWKvu/s0/82fsq3eoTbhdgvuRu9DVrNgEfBjzijCVc
         vnGtOY8hsRwsKHeLtQkRYE1F+dIvoc+ftO99FVGY+k+kyNrztH5t8M1CLfushF+YrSM4
         ukGF6O+B7rhrqsKYvspHgM/NBnRowCTS72l/Yx0CxitIoGn0awODkdkAW4+VaYdvu3aj
         g3l0SqoUdQCQ3bcnzy3/Vd0vBJo2uhX/wwk1xVkYelv6nM1X513J/J93nLknlasqi/+m
         ptMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123873; x=1792728673;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=QXlahNE+Wx5snJLp/MKBjKZg6Q+5VrSpbj2QDx2YWrA=;
        b=MLONixpzTCMIF5TeHo6Aj2J+cLfXckLOZ9E3HkwGA3LyKqdNJv9R5FR1kDxdQ58RpQ
         p/+2sxcBTqrzczUszjPHqAU3KqdkI33iZSWyLFmyfEHCe/d7GX12ddwDqx6tMFxX7nbb
         vp4gPlBKJdMnt0cGk/8sEyyk8ZB6Lsz5iu3JfQkP6GU+C6MRKnK4ry2slYUrDNl1M0W5
         /MPVA+alxh8U1bhDibU1j5w1kX64rYoDr/NdqnQZSHqDwKMleezlc5RJMypv3MWnUCbR
         p0Ge5JpEUHACM41L7E3RxGfmznIyktV/jAS5QawJx9KcinYqPZYjs1APNZDq/Yyf2vey
         XAPw==
X-Forwarded-Encrypted: i=1; AKwUvBzhdUuZAjGjueG3gLUovw1NwCVfg67t3pWxJwsMBLI74l6IAIizkMr9DY7H1dEOshxTfONguJsjlQP7QIa7xg==@lists.infradead.org
X-Gm-Message-State: AFq9FYIKdFqmKeoqPliNdl+sidH1Vn1kq/ZxTuhc6mI4rk2sVILayc0X
	RJaUpEqCxn5lFex9Dx4rhY074YOg7ZFaT6hLxMrmPe4uphLCEIo66aTL
X-Gm-Gg: AYBFou0lrvslcrz5IbyIB71mYszW0b9LKHq9qCqXRSiIgyJG10j3a6xxRJM49uID8R2
	m0O+gK2bKUjgFOkC9zogpZ5+kf2xctmnYfh/r3srAP1lmFPum2SvIn7e+1UpkDtpJBxY15jVNHB
	y9hw2TQQNmTNbBl6EwVSEUxmpAjCjZRq9xStrOVkfEfNPbFYpjKOTpHo8rYCGXaAdvTlmRUF+lX
	6kYkhx7RV+UL2O1lN5Z5SroHFSH3KNzOCy8sYSHCFs2YWnE72778y/OwBF9nWXAnx2fbsWht5VQ
	bclAb9w7ha06ZZ2yK1M0WWTQhSugUlCINp6n1V8/DNh/s5WjlHrMhlFHFZ8R8SsmkOCmbJgYJIb
	J75a52sSCjpJ22vInqAXeN6UoUrMosEVStXoTkP7pNbk7zXedEzoRBxuSXE+2facxxeiq8sheVS
	vsh1RHP4pD6T/kVk89JsOqlS10y4nrKB5jDIP/NVubs0mBOvlRfbt287IXDXbl6QiYajviy4tql
	hCNBgs2rQC1NlthhgoUJy8F7SUdUSUWpJFZy3ZL1b0s4RhJYOOxCNZSiVm7ZLRgILU+MyGQ+XOs
	C8cMYn78Fw/42w==
X-Received: by 2002:a17:903:19cf:b0:2dd:c100:4b76 with SMTP id d9443c01a7336-2e842ce7c78mr210820935ad.45.1792123873102;
        Thu, 15 Oct 2026 21:11:13 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8ab443sm3815785ad.65.2026.10.15.21.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:11:12 -0700 (PDT)
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
Subject: [PATCH 05/11] ASoC: imx-pcm-rpmsg: Explain component open return value handling
Date: Fri, 16 Oct 2026 11:09:40 +0700
Message-ID: <20261016040946.521195-6-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261016040946.521195-1-phucduc.bui@gmail.com>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_211114_256771_B838E5B8 
X-CRM114-Status: UNSURE (   8.82  )
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
Cc: imx@lists.linux.dev, wangdicheng <wangdicheng@kylinos.cn>, Kees Cook <kees@kernel.org>, Sang-Heon Jeon <ekffu200098@gmail.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>, Bo Shen <voice.shen@atmel.com>, Neo Chang <YLCHANG2@nuvoton.com>, linux-rockchip@lists.infradead.org, bui duc phuc <phucduc.bui@gmail.com>, Chris Bainbridge <chris.bainbridge@gmail.com>, Charles Keepax <ckeepax@opensource.cirrus.com>, linux-sound@vger.kernel.org, u.kleine-koenig@baylibre.com, Zain Aboobacker <zainaboobacker33@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>, Md Shofiqul Islam <shofiqtest@gmail.com>, linux-arm-kernel@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, patches@opensource.cirrus.com, Linus Walleij <linusw@kernel.org>, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, asahi@lists.linux.dev, Chancel Liu <chancel.liu@gmail.com>, Hemanth Selam <hemanth.selam@gmail.com>, linuxppc-dev@lists.ozlabs.org, Syed Saba Kareem <syed.sabakareem@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: bui duc phuc <phucduc.bui@gmail.com>

Add a comment explaining why .open() must return 0 on success
to ensure proper rollback handling and prevent future changes
from reintroducing the issue.

Reviewed-by: Chancel Liu <chancel.liu@gmail.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/fsl/imx-pcm-rpmsg.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/sound/soc/fsl/imx-pcm-rpmsg.c b/sound/soc/fsl/imx-pcm-rpmsg.c
index 30e75fee5175..85b7c929a28a 100644
--- a/sound/soc/fsl/imx-pcm-rpmsg.c
+++ b/sound/soc/fsl/imx-pcm-rpmsg.c
@@ -269,6 +269,12 @@ static int imx_rpmsg_pcm_open(struct snd_soc_component *component,
 	info->stream_timer[substream->stream].substream = substream;
 	timer_setup(&info->stream_timer[substream->stream].timer,
 		    imx_rpmsg_timer_callback, 0);
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
 	return 0;
 }
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
