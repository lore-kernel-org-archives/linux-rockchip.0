Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C748CC6B33
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:49:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TOcMcbOP8Ruz40HVm8hKI3eon5uAkkzDLVeHnoW2fs=; b=y+XmRrxxMovQg1
	rZKZjt7s9Ee8mylAwjmG18oOgH0x1mz7sunc4BP64k5a7+okwBzyylU7GzfylPKSYhWSqUgrYHQgg
	XujLD0bEFFo5An0ALgUgqnd0IuW1OtRHlnVHEdjALKrYz09cQxjN4zWDGysFCMbeN3574rzRfXjOh
	2Lr1cXObliudQhWJ1iLgq/80o3xXo/XqQbKM3kiURE4qTJvFFOB4aGmX1KbsYPv0ulc7KhBYa3Ecs
	ZnRDVbaJAzMfWfU+7lhGyyJuyJQOcvUp2s408L/KWtkn2QAxShaYdPbOuZyY8H4LAKZjmfvmixEiG
	d2Yot0HSGF0Gni5Rmddw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAb0-0000000GcOP-2GWE;
	Thu, 15 Oct 2026 01:49:26 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAay-0000000GcNc-3ojU
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:49:26 +0000
Received: by mail-pl1-x632.google.com with SMTP id d9443c01a7336-2e60f9af6e6so12939465ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:49:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028964; x=1792633764; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uRhw/DGZE60v7F2bKWHVZMO73GmaBC+Vm8KSgOideNk=;
        b=qPOVUH0dWKgSG1+sdHt4DGXknIB2r5M+kMFN/XB0udXIsAmhH3rTTUeyttPGpQcLKr
         5ki+dZMuTQ8BV4+i9FSG26pZXQBaoNAOFPdtxFn7okjLQomhBp41WW19cH6hlwc/Wqw6
         OKaw3QBSYB2Zey8OaOCG8ThyyQKj09xxtA4iqNIJuIsbmewkW89qyWWBBQ3uZN4yBT3X
         CUbrz7TnOatS4uoXHvveiWj6b6SV+avVfEjehPT4crR92NjrkZRbsmL/uM78f+7Tdou2
         Cm4lbyxWWMxDXo31DRJ4J1yWWoBLgq0rqkep+3XpK0iE2ABdjCQ/U5RUHSTX8i2XJKMF
         7pBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028964; x=1792633764;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uRhw/DGZE60v7F2bKWHVZMO73GmaBC+Vm8KSgOideNk=;
        b=RLdYIs5hlUj5ppWiDXIGZmiKDI+w+i1rM1KJ102qorbeisqhXSeS1EiCa5Y46jG77u
         IOTYST4ocvQ+r8cOzk3GiDelURkdoQBmRQ+bExAi1V7cbKdG3wHWcs9RwU1sZEYZdlKP
         3wPSIpMrVTza7IVy379ellurU/awdsIaPw2t3PABeTS38WP7zfqqjFw5xfEv+Xhi6kGF
         6JJE7bbVgm4KBKBjHsDERPVDV4F89rUBvVxkxLqDTZo8Y/9MCJfUXjObxrPD7N2lx3pJ
         94xSaHW4m91b87UJ7aO22GuTIm+HLndN4qZYQG3RbGeSuA+t2usAnj11AaczLUGuhwJd
         1Epg==
X-Forwarded-Encrypted: i=1; AKwUvBxktOiknhoMTZ8KvrkuXWEzN2HI4wPGoMMBh9MBmSTh7OWwMIDSw1B7PCyRjjphb2xKaq2cw7Juz5+osEIc0g==@lists.infradead.org
X-Gm-Message-State: AFq9FYKthfnkgjQoncmTeMeEt8+d6LvkRYbgIHDD/+cUbFrluriLQhhf
	JkdIvYrlcUuZ6Nqs71ZUjxS7n3nsKQCC1ysCU53w95W4X5DHq1TlNiqp
X-Gm-Gg: AYBFou3M4jVGLjpAX4mRNMLsZ4RBnhLvX+dCcfQ4WrtkT5gB5Fcf4m9ygUo1SywcBaM
	T11TCjIPhyDt7dYny7lXXs61OLQ/fraANl7QJno3vJT/ujPBF4CDF9fgDnhUUpql/08hhkUJM69
	cIQthidAtrOKTrLsjq2PmswfWD5cBegHzpMXJ0aeUEtQcwvmMNwDJAudleJGLXP8nyqK5XrrJuC
	CnU3+g+KozOxueCgWpb0oB7962CFdUrnB+0wKLWinwHVX7poA//vxskRdcfm+AJUY01MjVzc0Wq
	Y3NaqLI1YQKaRkqJfjy2CkRIkq3RD2SsSGx8N/Jaktt9bKCgVRVG4s0ImC+8+7+IaVPQeH7Hyuu
	QhBFYS4b9/ooRBRrPh7e8XNXPS753Yv5dGgOAB2Tsd0WkksAFLKkeLxJWcxtZN/b7syacADotei
	MHf7MMEolB7HNTIS8N7bIgW6eyonkJt9c+bARUEsPEAr/IVexmIMrbbYGm7Ood+uD0ifMr6w9DN
	TpXQF+7WdToZrGryUeTJKSqYk2Y8z5ANRXBlS9cW0u5LRINvlsAmR9VfHKMcUWiFzpjUMiSKQjB
	kgutyOZA7b9h1g==
X-Received: by 2002:a17:902:e548:b0:2e5:54c6:e5a2 with SMTP id d9443c01a7336-2e842820581mr176747665ad.6.1792028964152;
        Wed, 14 Oct 2026 18:49:24 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.49.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:49:22 -0700 (PDT)
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
Subject: [PATCH v2 19/25] ASoC: intel: atom: Fix .shutdown() being skipped on rollback
Date: Thu, 15 Oct 2026 08:43:18 +0700
Message-ID: <20261015014324.5569-20-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184924_953943_1348A2AF 
X-CRM114-Status: GOOD (  12.04  )
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
from sst_media_open(). ASoC only marks the DAI as started when
.startup() returns 0, so .shutdown() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 4889a8a73f65 ("ASoC: intel: atom: Use __free(kfree) for stream pointer")
Fixes: 6cc0f4e63994 ("ASoC: Intel: mfld_pcm: move stream handling to dai_ops")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/intel/atom/sst-mfld-platform-pcm.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/sound/soc/intel/atom/sst-mfld-platform-pcm.c b/sound/soc/intel/atom/sst-mfld-platform-pcm.c
index a4c8cbfba096..58681e007abf 100644
--- a/sound/soc/intel/atom/sst-mfld-platform-pcm.c
+++ b/sound/soc/intel/atom/sst-mfld-platform-pcm.c
@@ -341,7 +341,12 @@ static int sst_media_open(struct snd_pcm_substream *substream,
 
 	stream = NULL;
 
-	return ret_val;
+	/*
+	 * ASoC only marks the DAI as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .shutdown() is not skipped on rollback.
+	 */
+	return 0;
 }
 
 static void sst_media_close(struct snd_pcm_substream *substream,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
