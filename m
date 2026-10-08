Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A38FCA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4agelPIpYTpx7q7FfL56uEzXHaxYljJuBIZ1F5rpqeU=; b=iDXASulXURxAVB
	T0Ukh4HXNM/cEE/euHwDHXJiU9zQ7jCjeELYfxsok8LkODFoCT4lTH/8I8axStCIoTcag6C7OBs+l
	zVtgWta9ck1c8cPkYvOqSOOQuN+6KIgQzyb3cAViyWJ3zAagAHPnmXKsZ6jfJKwHt+Kx40CoKWOG3
	Uam+Us/wZL6+WBBnyDcPMzurxP4FEFBVw/9Pi0YU7bd2lomeSPYBpeBG5egTxBZCzNJ8/NdBh87MR
	ywfoqWGxzbnb+Yw7WAPXriEWikgHvfA5ZVDdW8yLPY7gKVMe2QLOQQjqQgsS7k3SI5DxK0S0VnLsn
	aQB/s1899GGtt8+k6zoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElbw-00000004BKP-3xz7;
	Thu, 08 Oct 2026 10:44:28 +0000
Received: from mail-dy1-x132e.google.com ([2607:f8b0:4864:20::132e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElbu-00000004BJ3-3Kse
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:44:28 +0000
Received: by mail-dy1-x132e.google.com with SMTP id 5a478bee46e88-3515f9a5d25so4195043eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456266; x=1792061066; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UuLwPV5SkTfLeBmEQBHF5wyNVMglPos+3a2Ytz5Xtg0=;
        b=q02U+5H6mEofa6PmEbt/MIjs1Z7wn/1Qu6Kvfd2INoDp9gHpUA2Z4ikziWc+Z7Yzo2
         5re6EKwPOWYqa7G+/6PwfRQzznZUneHfTz/6fpAqZb7D/BQxSXgJXzCT4SY27T2iIwW9
         y6NBjuG65Oo6DY+pnB+4ZGRp+3ccfhDOspjqRsKqTec25VJdo+F5nha2xq+rP3XiCK9O
         Ucne8jH6pAHaLtUJuONUIramsH9tluZbtH9Gd8Dkk31zQ4jwd5ET4Aoshm3yUwGpDhKc
         o+4qleaeZh+fJjenXidK46YKFTcyJ6ZYGZCd8gVF2s9vPmds9DlU6dyTkUoudocn9Yk8
         wrXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456266; x=1792061066;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=UuLwPV5SkTfLeBmEQBHF5wyNVMglPos+3a2Ytz5Xtg0=;
        b=Zi9IHBpmKq1AFd+n83ULNVtUvsxIVq+rTqXlauGcr/sDWv01kEg9Hiax6TspjOY2/b
         a4ljTmy7TCAl0MlFbw9VmZqJvp/lIWi+sZ7ObvSKBbBpQ+gLPs9C86Vtmo91Y+OnxfwH
         1CJTtMWmocXbWwhvJe2W5kvJbckGAAmirE2W64+9OLymusO3tkGgRhUt3GLZPJtdjnWz
         bYtwIkfr3xRimTwT4wSctCyLCjA+KHnOCIby7iNkbh12pu12jGBEmY52ChxPuh0VU1Wa
         UmxgGBNqkUASnvcZJXIfmgXVhL6bOLOFNfvjSmgzo7iA73f0RMC+FG9qVHZdyLBzwQrG
         43iA==
X-Forwarded-Encrypted: i=1; AKwUvByxBSYx9rpNrKmaLAih6r8LRoMCmJ8wHjkTR5Tju6/vh/Gi8KjOG6aNU/pc3O1Rany8tIhEljKoxcOLn8j01A==@lists.infradead.org
X-Gm-Message-State: AFuF++mp0J50D4JJ2X50PPGhURzIeq92kjHstpkDxZ5suvSyhyMxsKLe
	dBSjLRgFrpxSZ6PK7/21PqQVnfW9kOlFQAf6vJTedRJKX2PhEAVcEXFp
X-Gm-Gg: AYBFou1Zy/qSjE+DvDkpuFajP2hPRX7uvBw1zTlb3ljWNW3ZaRmZSRBgWvM53cs1Hoi
	QPXAH7sBmBp8W/omIy7Pa5j3/XTquO8AETfIDNRotJlYa6b12CsdIfdiTGemBJ2UCDWEnfqrDrI
	acmvIFdekRYhQNRyc8g0ZeU0pbQexEEhIkWgnknN9MIQED4X9fL2stBLbAxNDbXX3BhvDxFOhAV
	vDwySbAN+k2jvyT+HZV9SRzvCbm5UqYfM4N3WxBjz/Y1G7U0lXqzc2CYNERAQyyNYbzFdQuLlz8
	4W7P8mSsoV3chJOXAST3l1dZXyBLCsGIs1MFf4MvwrCQWCPwGY9wAqqPM/dWPKo7Es+efbGD5Fw
	kABI7/0msKhVs6CtkTFlaftkimPD3IhKFh9j+nczCqfLiIu5Wl0IODHN06oBENT8vde0oVdEHd6
	DgqJmnAyQYSvHvjBwUhP9YS/avaxVDTRr+BThNAK4GCOnmd52+d7XFsHynnEx7rGb6FzBFCRAxW
	VHVF9TSEE0NpOWg3N2Ev9VvhD+yZ14m77mj3L/UcPy6EMyg6Hlp2mw3KHwfcWVJ8UZsxWq9+2k1
	PoRkHfzsQS+Glw==
X-Received: by 2002:a05:7300:d408:b0:34a:e7ba:863c with SMTP id 5a478bee46e88-3515dde5512mr6327305eec.18.1791456265752;
        Thu, 08 Oct 2026 03:44:25 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:44:24 -0700 (PDT)
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
Subject: [PATCH 21/24] ASoC: renesas: msiof: Fix msiof_close() being skipped on rollback
Date: Thu,  8 Oct 2026 17:38:28 +0700
Message-ID: <20261008103831.542533-22-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034426_838678_AD2E43A6 
X-CRM114-Status: GOOD (  11.96  )
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
from msiof_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: c61caec22820 ("ASoC: renesas: add MSIOF sound support")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/renesas/rcar/msiof.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/sound/soc/renesas/rcar/msiof.c b/sound/soc/renesas/rcar/msiof.c
index 128543fc4fc9..9fead9a22cdc 100644
--- a/sound/soc/renesas/rcar/msiof.c
+++ b/sound/soc/renesas/rcar/msiof.c
@@ -427,10 +427,12 @@ static int msiof_open(struct snd_soc_component *component,
 	ret = snd_pcm_hw_constraint_integer(substream->runtime, SNDRV_PCM_HW_PARAM_PERIODS);
 
 open_err_dma:
-	if (ret < 0)
+	if (ret < 0) {
 		dma_release_channel(chan);
+		return ret;
+	}
 
-	return ret;
+	return 0;
 }
 
 static int msiof_close(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
