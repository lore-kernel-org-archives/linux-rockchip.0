Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F381CC6B2D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWvAZ5T34zEEWXC/eTPzR6cCUEEDoeBV89U4jJlW5W8=; b=YZDtcDXkchpn8r
	z4jQ3pGbYBk6HC2wPVZ0/AnQh79ABOABiO4D/6w5kGftDFejrll0aZdNF7WSbTRPTJAjjm0PPEofd
	Tn6zG/DJP0p7RvcqKco9/G/C/JbFq0aBTCqhU+qUnVSHv9pvCHhOi5YmTRy2eQh9QtF85Wxk825Hx
	FFZ1WuKC/saM25L1aJkHqBJfwzGBl74ntctlov3X5zrQjFHh5VCKiIJv9uGhqn/buEXfbnRVUU6pQ
	/uYznXVHyDgdCHuHAAdA/6PEVpAsd+i6/0XqPrtw5cNIE9ECadWZih087xU95Ev3Vj7cPt4Dj9Kti
	maaQZiAqgL9EsOTOrgkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAbU-0000000GcXQ-0rri;
	Thu, 15 Oct 2026 01:49:56 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAbS-0000000GcWW-0Qqq
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:49:55 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2e5378b281aso26430755ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:49:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028993; x=1792633793; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=X8N5wvVyB4OZfrBnjP1FYFZJGH9J4CpZz0KjhM2upoM=;
        b=gMgT86iLmc5xSkNBB70JuMvB4i09s2RID2CLUg4J6lbif0b5Wjui7MPnvdpMg63QAe
         SH6yQ/kP39Jz6u2tbge4BdSA/XEaW4pfnyENOOr8CkJJ9itGw6yXkKarICrlJITD1nK/
         b+3ThhauyI3qMeDDT39CwA6p0rMJfypzD6rY1nyDgSwGN3/SaxqXcDia/9UfUj/RMWZH
         +1DwmSwUlmqFvJLWeaf1YaLnTLOaHei4lD97DoSW5Cfbeod6DJU3wsX2Ln1uQz2H2VtF
         DVM9DFcuV4XjEyhCZwjLJN+bYp20U/CabUuJm63o91xbWQSYhOLXCMEMEdBwMJ1uwBCm
         fL6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028993; x=1792633793;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=X8N5wvVyB4OZfrBnjP1FYFZJGH9J4CpZz0KjhM2upoM=;
        b=tHBzh8jOp1EZ3V3zwF2aDFU++da8+NFluCp9KJMHJQXKBcpBNvWHhYEN+olBhkDHBB
         X2UL0x3e5RhJJ+a8KWiPRQ5ImvLMrDM2C5Hf/F0I3BlHGDVuWZP8gA5m+oKPLfvurG2Y
         xr65XG8tPutSnH0GGJKj74icX2t40auGYcTMb6f8XGlWGUC2ZE6etsv9XpYVrjcJAtx/
         ZxV/Z31OS2Qbg8/D2EWgHm0Q8NsjK4nIKsRJNxPt2dTUkdurd/LO4MAziuM1nNQdfSXx
         YOafsRjDERfdUpiA0t/ArFuuslDi5q8ncMx1Qtj/MXCsQipAVCix0ITUq+PZ9+Ljz9Q1
         Fh6g==
X-Forwarded-Encrypted: i=1; AKwUvBxrlgeFT6syZ8u+tImY7Ub4GXmSJujA78hTPrLmpROdiUS007aAXNkRo8NC9cBxMkv/tkfPbvmzHlVlcTV7nw==@lists.infradead.org
X-Gm-Message-State: AFq9FYKrBUrtq1iNMGKxznOs7mthMxsW6Y0vXoOE4JT9HC1dOWnmSlen
	VRRMts2pJcCWU6GkZEL8gaq8iDQVQqIbrl6NMWcKWu9qUfZ6q6vND6eL
X-Gm-Gg: AYBFou1zRvreA0uBPqhE1baIZLAzKVsFekKY7OJaUrmkW8PctYWAhaTSWwLY1O5CF2l
	mqiRgV2jCWNq9Wp7z8n3KcfiRaDw6jt1e33YoWTklONGupQqSXGtOav7G6qM3NnMRSoJ5gD8aUJ
	3RfqyvsNbWqW2hJR23edk/1y1U39//F+VoQo6nQVBxnaQHGWsdcTzM+C5D5cw0WdjsDd47ZrSxg
	YmBaUxUUdGclucZVEgtDOzEOGcsRs0qBuxhzFnHcj2EWETTrDAfcix7rY/L4/LZieCdhEgWSOnh
	x74y+OBytQrRALlR4TeAZQMZSHUl+mOYatZHdsvt/VtIsN7SfGya5tugJJPXFY+93kzd8JzoZKK
	RCQMv5NeHH641RaEeyCH/jhQ0SbvgSiZUQnkvQD3uHIceSc7XdKyaAJH0+6VauivJ9TKQiZEgbw
	WXdIk8yKDAFKFiHyO1fTe5722/Egy+I0q8GBo6AvXtGDhgrgfQhMcqR9rLPkOtbtX/mfTZK/8St
	3M4NbrhYPcBSBXdkkOuFEPSFuZwFnckU0WmSJ0iep8lAXc2sQC+P9lWCLp3PsnH0YLZhwyHoNch
	ZJhH+STmVjVHlA==
X-Received: by 2002:a17:902:ef4f:b0:2e5:c563:c0dc with SMTP id d9443c01a7336-2e842cdb0f8mr158108285ad.42.1792028993312;
        Wed, 14 Oct 2026 18:49:53 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.49.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:49:52 -0700 (PDT)
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
Subject: [PATCH v2 21/25] ASoC: renesas: msiof: Remove redundant period constraint
Date: Thu, 15 Oct 2026 08:43:20 +0700
Message-ID: <20261015014324.5569-22-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184954_177862_CCE4C5F0 
X-CRM114-Status: GOOD (  12.14  )
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

snd_pcm_hw_constraint_integer() is already called by
snd_dmaengine_pcm_open(). Calling it again in msiof_open() is
unnecessary, as the constraint is already applied and the second
call returns 0.

Remove the redundant constraint call.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

Changes in v2: 
 - Remove redundant integer constraints already applied by 
   snd_dmaengine_pcm_open().

 sound/soc/renesas/rcar/msiof.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/sound/soc/renesas/rcar/msiof.c b/sound/soc/renesas/rcar/msiof.c
index 128543fc4fc9..11a6f22ec0ad 100644
--- a/sound/soc/renesas/rcar/msiof.c
+++ b/sound/soc/renesas/rcar/msiof.c
@@ -419,18 +419,14 @@ static int msiof_open(struct snd_soc_component *component,
 		return PTR_ERR(chan);
 
 	ret = snd_dmaengine_pcm_open(substream, chan);
-	if (ret < 0)
-		goto open_err_dma;
-
-	snd_soc_set_runtime_hwparams(substream, &msiof_pcm_hardware);
-
-	ret = snd_pcm_hw_constraint_integer(substream->runtime, SNDRV_PCM_HW_PARAM_PERIODS);
-
-open_err_dma:
-	if (ret < 0)
+	if (ret < 0) {
 		dma_release_channel(chan);
+		return ret;
+	}
 
-	return ret;
+	snd_soc_set_runtime_hwparams(substream, &msiof_pcm_hardware);
+
+	return 0;
 }
 
 static int msiof_close(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
