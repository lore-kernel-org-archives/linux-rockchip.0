Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CBA2CC6B2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHQOmDcPp1CwvAP18iZx96BFnvI0iRc7aLdrT/i2k/g=; b=0/Ax99wiPTR5/p
	KGOdeKxOSQD7kr8ErY3RpR6YS8etY5CeU+SYocygH5ls4qsRvHd7w83tgqYaAte3o3+JJZkXxdzvN
	MOkCV1s5DtzXGPcBs+7KMTHRc4MbWcxPTl4+rTuxhFwwb40p1SMiiHVY1KstXffQ6GUNPWmZBg3dJ
	UOS/EnuZLMHVDsXssYyZ55+0O/fvrgAbr0nMJdOToA4aR3yGLPLlPxSrXRYB+OWOowLzoD70Pw81u
	bLZoA3Tivg9kN4XT27LUdayNqY4R4ejAdn75dUVl/pS+tsmsGJHhcxwR3bPxIEZTgvFko5HEglHOy
	vq4jRNfS+k7gWYxqd24g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZH2-00000001wRK-0inp;
	Fri, 16 Oct 2026 04:10:28 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZGy-00000001wQE-44Ed
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:10:26 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2dd76b1361dso19750565ad.1
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:10:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123824; x=1792728624; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=LqPJpnpDl1bjZy/2WTSO/k4hLO3gGJGG3iYDq3mgh9U=;
        b=Mt+EyER5Ahxtcgrx2AEg/QqnkkLbv0pwdlnhtGC2/Y3gjbimYN10J+HVexrdj4DVJP
         fEz0QTnvcoZ9wlOjW5Yx2PGhmlBMIR2NkSghn6X+xCgt73WZEefK+1M31AYxH48qbnCt
         afMFpvg6FsTX5dBCxHsbz3KReO9gOZQK17S4cniiAwjMFdvNhr+LAjhBFA3p/FnaWoQA
         Nc3eGmB2TsZxG7AUMRp6PuhdOWKa2BKANFY9xqHgzVDC+B3tSCE0jlYejsq2CIo2lUBE
         /t9n5H606+b//S+WTcR0zf39X3k8s2BXWLzrR41d3N6l04v8BCoDEqZGPczOf/JPTyZP
         55Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123824; x=1792728624;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=LqPJpnpDl1bjZy/2WTSO/k4hLO3gGJGG3iYDq3mgh9U=;
        b=Ur+zN6+U70c3Y6IzIGNCOvSCWGU31+iGVDZIWjQE29EgrlvENfB60o7bvJGn/TFcdh
         vi4IL3hEFK85W8Oy4bhcJPxqK6R4tuWebzn78vyEm54++sZxoa7+L7OyhHS6lXIuPJOw
         rtDcVbPDom+iaJigCKlA5jTBYFoAX+ox+blwaDKghv+3eSvzw6Lbibm45AVyEXjI/RXx
         b8DspD9QYq7fHDw7d5vkeQT6zz3Ki/CeSfnz9vfUZko7+5MO542IckETOEcFMtgAJwQR
         Q8frWtZ/QTjZLg5UVHIkjuOF5TdaqJv8/+ss3bwV66r3bMcHJ3w5IrIpTkUM3t8g1bsJ
         JMRQ==
X-Forwarded-Encrypted: i=1; AKwUvBwptKkuEinMGfaVz5aztnIhLSqTQ/DmgW6oW3VibX3CnoRhkIobwjNXiFzetK4jxu3+1+0Wh3DSPnqWMMd4/g==@lists.infradead.org
X-Gm-Message-State: AFq9FYJ2HV2+IFocQ1O5ZXWsUYux4MBMGeMUZutWraByqXFe0sonVzHv
	qxXWFRLhrbxhWi66ixrK5tDB3waurkE6xWT3/sRWE7CIlb4XyRkIxW/5
X-Gm-Gg: AYBFou15DPz4hCjEVN/4y+HsPdkhuxwibmGGbyPHDlg93jQMC1PA6c67UODSmX7Ause
	q0JIU9iAbyoKYd9X4WJWYnuW46ms373/83K4rU9g1E4XVMK3eZlCpLyGwc5ywoh3DdzoqL5Znkh
	4VaD3uoCBF6VbZjyvxXh2/y6AdU6HVM9VndAwO6F/+JvXSJhnnaHcMngdPjb8czgvpsPY7zviVw
	k3EAGZqYmkyQxfNSmnFfWKTMeJvJf47h1nbJ8Ig+P414AQ4P6z7UPOLG6bLY5mQnAu1VAXg7gj+
	svUG54lOhX53NgJqs7qdp+5bhX0e8mOa61JtSI8zTNACLuLitwmHU7Ui7Rs5CUqO+AwExa4I5Gx
	RCReFmPTLkBgsHy3X6Zyarv4okY1vh/gi4aCVnpTJnZ4P8BvQP32W1OAW7RufB7t98IqpoXGRRz
	cvDuN2gHHF32/A98b9I3H9+3oNXB3/C1vDg4oC1xWtYntkp8yLHwBNZ1wScIp2XShUmVEZ8D+H2
	kbNSM0MVQ7Xao9FLlp6jSxQdcae00TgsSSY+JgitHCP8w7Dv0Edt8XfEJmF54RtnE4MCTsII2Kb
	fa8JZXDUKb7mvw==
X-Received: by 2002:a17:902:d4c8:b0:2e9:970c:2c5 with SMTP id d9443c01a7336-2e9970c073cmr381995ad.39.1792123823874;
        Thu, 15 Oct 2026 21:10:23 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e97e8ab443sm3815785ad.65.2026.10.15.21.10.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:10:23 -0700 (PDT)
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
Subject: [PATCH 01/11] ASoC: amd: Explain component open return value handling
Date: Fri, 16 Oct 2026 11:09:36 +0700
Message-ID: <20261016040946.521195-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261016040946.521195-1-phucduc.bui@gmail.com>
References: <20261016040946.521195-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_211025_019481_BA74304C 
X-CRM114-Status: UNSURE (   9.43  )
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

Add comments explaining why the .open() callbacks must return 0
on success to ensure proper rollback handling and prevent future
changes from reintroducing the issue.

Reviewed-by: Vijendar Mukunda <Vijendar.Mukunda@amd.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/acp/acp-platform.c      | 5 +++++
 sound/soc/amd/ps/ps-pdm-dma.c         | 6 ++++++
 sound/soc/amd/ps/ps-sdw-dma.c         | 6 ++++++
 sound/soc/amd/raven/acp3x-pcm-dma.c   | 6 ++++++
 sound/soc/amd/renoir/acp3x-pdm-dma.c  | 6 ++++++
 sound/soc/amd/vangogh/acp5x-pcm-dma.c | 6 ++++++
 sound/soc/amd/yc/acp6x-pdm-dma.c      | 6 ++++++
 7 files changed, 41 insertions(+)

diff --git a/sound/soc/amd/acp/acp-platform.c b/sound/soc/amd/acp/acp-platform.c
index ba6dfe8fb6b7..f2c8853775ad 100644
--- a/sound/soc/amd/acp/acp-platform.c
+++ b/sound/soc/amd/acp/acp-platform.c
@@ -248,6 +248,11 @@ static int acp_dma_open(struct snd_soc_component *component, struct snd_pcm_subs
 	list_add_tail(&stream->list, &chip->stream_list);
 	spin_unlock_irq(&chip->acp_lock);
 
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/amd/ps/ps-pdm-dma.c b/sound/soc/amd/ps/ps-pdm-dma.c
index 28e0686e9373..12c341e89bce 100644
--- a/sound/soc/amd/ps/ps-pdm-dma.c
+++ b/sound/soc/amd/ps/ps-pdm-dma.c
@@ -211,6 +211,12 @@ static int acp63_pdm_dma_open(struct snd_soc_component *component,
 
 	pdm_data->acp63_base = adata->acp63_base;
 	runtime->private_data = pdm_data;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/amd/ps/ps-sdw-dma.c b/sound/soc/amd/ps/ps-sdw-dma.c
index 553fe11a2e50..c2640985f54c 100644
--- a/sound/soc/amd/ps/ps-sdw-dma.c
+++ b/sound/soc/amd/ps/ps-sdw-dma.c
@@ -337,6 +337,12 @@ static int acp63_sdw_dma_open(struct snd_soc_component *component,
 	stream->stream_id = cpu_dai->id;
 	stream->instance = amd_manager->instance;
 	runtime->private_data = stream;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/amd/raven/acp3x-pcm-dma.c b/sound/soc/amd/raven/acp3x-pcm-dma.c
index 072f3dc35d40..765057499021 100644
--- a/sound/soc/amd/raven/acp3x-pcm-dma.c
+++ b/sound/soc/amd/raven/acp3x-pcm-dma.c
@@ -237,6 +237,12 @@ static int acp3x_dma_open(struct snd_soc_component *component,
 
 	i2s_data->acp3x_base = adata->acp3x_base;
 	runtime->private_data = i2s_data;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/amd/renoir/acp3x-pdm-dma.c b/sound/soc/amd/renoir/acp3x-pdm-dma.c
index c0481a9ba858..89dc60849c06 100644
--- a/sound/soc/amd/renoir/acp3x-pdm-dma.c
+++ b/sound/soc/amd/renoir/acp3x-pdm-dma.c
@@ -233,6 +233,12 @@ static int acp_pdm_dma_open(struct snd_soc_component *component,
 
 	pdm_data->acp_base = adata->acp_base;
 	runtime->private_data = pdm_data;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/amd/vangogh/acp5x-pcm-dma.c b/sound/soc/amd/vangogh/acp5x-pcm-dma.c
index 33d59d992ee0..72050fa2de80 100644
--- a/sound/soc/amd/vangogh/acp5x-pcm-dma.c
+++ b/sound/soc/amd/vangogh/acp5x-pcm-dma.c
@@ -231,6 +231,12 @@ static int acp5x_dma_open(struct snd_soc_component *component,
 	}
 	i2s_data->acp5x_base = adata->acp5x_base;
 	runtime->private_data = i2s_data;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
 	return 0;
 }
 
diff --git a/sound/soc/amd/yc/acp6x-pdm-dma.c b/sound/soc/amd/yc/acp6x-pdm-dma.c
index afa9f66533e3..cba2509faaa1 100644
--- a/sound/soc/amd/yc/acp6x-pdm-dma.c
+++ b/sound/soc/amd/yc/acp6x-pdm-dma.c
@@ -209,6 +209,12 @@ static int acp6x_pdm_dma_open(struct snd_soc_component *component,
 
 	pdm_data->acp6x_base = adata->acp6x_base;
 	runtime->private_data = pdm_data;
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
