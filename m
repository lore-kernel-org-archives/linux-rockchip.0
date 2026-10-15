Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32E01CC6B2D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVSYiae/vRcvOES/uAXtOV6WNC9Xuw/i4nSdh5uQ9c4=; b=jrgOpOBOOCcWmV
	0/UthaLFriTmNSowX6DwgDBHC3TnDlnF6WRISEE3DfSFJbs7obzdEyHVq2dvJGwYyQrK3LvVI26FI
	/JMDh2jEAxI8r62sY68Fe3Smpnskrqb7YoKTOGcWN/OSt4qU0MDanMvsR4TgG4L+CgQZX5Y8t1inl
	4uWEv3ALxIeuiLF2KjYJ066MIHAAkfTXPZKT5SwSUKPh1NtwCHE3F7MlJszgLqgsA/UIohIdf8drc
	AWZAiM81gWwzLVMlVOA0kYB0q6MDClQfy23YxSAyhy/wGd7Lzi2ANoQ/ClxXsH8x0Zq7Uc0FL/8gU
	vW4vDaN8n4kR6UQTdM0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAWd-0000000Gb5p-3zzp;
	Thu, 15 Oct 2026 01:44:55 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAWZ-0000000Gb4d-1tWb
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:44:54 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-2e7e742a2c7so32161735ad.0
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028690; x=1792633490; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YmTMAPFx5up6qhPC8f6eIWZ+fqRc0pF4DtGB7TtfWew=;
        b=mbPbCNHb2Nu1Sjtt8zc0ttZ3fiRSNL+Wsngs3d1n4GvG5X1Xd6R0BHEp+/eXyndMZD
         JeN6uL56E7jVAIsrvw5dYlmvPAxlQBjJgtL1cSRD48TopLS4gtnzPsxQEqDzxf7uq/RX
         jYyRppum0GKMQPeexLY9YyTQMtNuTCZfQUaX05T+BiskBwDGqgB+P71IROl/NmFePlfg
         WB5TS11lF2g+eB0EuIlk1bOdijRvkeDjDFMSBeCxu06u3LFxBMyJyPO2ro8LXJim/DIc
         O/IAbwwMG5DhbGOEb4MTZsIBjEx6UMFmwjeiLVHmXA0fr1L+ORqOVVnbDX7PJ69x53HQ
         eZzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028690; x=1792633490;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YmTMAPFx5up6qhPC8f6eIWZ+fqRc0pF4DtGB7TtfWew=;
        b=M1QCjM9Ly63vIc1DBOjRFyUyhtKF824QonCcNO1QOMRvjnYVy8+P6XaYJgooeYHlIb
         Gjqqun497O3ROMUktOHPJTsoD/88uLHknj4QwU2ZDU8k15JSmqZt/9bPQGwGudCkDhZc
         wGdA7lBdNM1ZIMPcy3Nxs4xynJ5UrvMPZfHRl1k7uzII7Osvj/v2fNzAUyVe0rvP/5EA
         LcNimp5s473MLYnhDLmZm/G5DHIhv35E/8faEEzMVcgk8bE5mFBLYZs3R0JcTT1EPmWW
         puxZUEouL6V1pzNeM8RxZJe+GCImxMQhcKSv4QBuN347ZB0NVGsmSON+9SPTPufQcQnl
         BBQQ==
X-Forwarded-Encrypted: i=1; AKwUvBz0g8GOWm0lR8ey8uGAdFJu4+iDVXpUL+eXHTZ6SNA3HvJC/na+xPwQfKizf+zc6UbyN+0SIRIfFKhidkGCEQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYKuJO7YiX9LEdoL7uysZFrAGO51U1jJ+Mpxj0Z4DT77CjX4v3oH
	nRgO8ubu0EGOIPL9nUCinTxalWIsBvo0XjewQGBN5/C6dYzmpvwsmoWW
X-Gm-Gg: AYBFou2vpc2tKTXkFao3ouk6FUZKySdYnDAnSQxHGg6hfjbMe5fTALuNJV08njIBmDn
	oWqBAq3r+ZmIbu9cgUFB0vLSDiLD37593VSEukvy6LYQaKenX0PIWztn8biFJX4vAeWrxDXFEi0
	bOcSeWdfmynOIi9Xr4rPdZdxe7m5Nlob5TunDpAieWOIW5HS32EEFD1DIjVuISYt4BRiHTfLH7r
	B2xDeGh841FwEKtf78ya0ig3t4HWtLGs7QotQ7E7nO1VwBzIi7/Vra3Jke6q+qX6VFic9ZIPe6U
	sNpxKL74+qYIZFwy9vwHkGW56F8VNeM/7EJJwVUK4iBXp0fBt1mIBBnqWUfjZ68trNaQ0MM15X9
	EB8l3TF/h1xcBuAyQHPNKBdHuP7+oi7Ve3GHgECTNT6bgvWCXgUhJ2RfmsLpf1evcslC5zIBQ0o
	XSQF4XRvGLkUHga2Nx58BA4/CA4I+aMJb0GW2FFmQ62nIF0Ji0Dxxuj6iYgBxuJIBx8H0iXNZq9
	3LSAd0t2xRw4h0fnajgB9pEcrT6SFd8vD+8T5tnWtQ2+/uZFHEh6fH5yUHjMWp6NRCtWExuFsNM
	mtEyiJLPWwK/9A==
X-Received: by 2002:a17:903:3295:b0:2e8:dd9c:99e0 with SMTP id d9443c01a7336-2e8dd9ca60cmr47644535ad.40.1792028690053;
        Wed, 14 Oct 2026 18:44:50 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:44:49 -0700 (PDT)
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
Subject: [PATCH v2 02/25] ASoC: amd: ps: Fix acp63_pdm_dma_close() being skipped on rollback
Date: Thu, 15 Oct 2026 08:43:01 +0700
Message-ID: <20261015014324.5569-3-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184453_461839_F3A2E7CA 
X-CRM114-Status: GOOD (  11.94  )
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
from acp63_pdm_dma_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 5137305662ef ("ASoC: amd: add acp6.2 pdm driver dma ops")
Reviewed-by: Vijendar Mukunda <Vijendar.Mukunda@amd.com>
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/ps/ps-pdm-dma.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/sound/soc/amd/ps/ps-pdm-dma.c b/sound/soc/amd/ps/ps-pdm-dma.c
index 04c014349347..12c341e89bce 100644
--- a/sound/soc/amd/ps/ps-pdm-dma.c
+++ b/sound/soc/amd/ps/ps-pdm-dma.c
@@ -211,7 +211,13 @@ static int acp63_pdm_dma_open(struct snd_soc_component *component,
 
 	pdm_data->acp63_base = adata->acp63_base;
 	runtime->private_data = pdm_data;
-	return ret;
+
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
+	return 0;
 }
 
 static int acp63_pdm_dma_hw_params(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
