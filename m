Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABE24CA6007
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:40:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuTVisaOA5ef8J5bXER3o/wyGfkR77ab/JSUt8RplxQ=; b=r+r13OojmshKVJ
	QwV7fy8qj0JuqGDIcfJiNkyRv5iQuIxhvw4aGkp/L1/xdyqEcaAaU7KAcBUVfspFLXDutiKKhu3vE
	w2TyLCJeKbUILWGuXd9BcCl/UOJP+DX5l9kvU0DR24A1MjZTp4xQPHQHZ8gnSKfYFLNJk6VAHRcll
	nGrn+qhu5mHnYH2Rz3U2OMNxMiKWpuWmdVXIDu8FJ5uwd6ThAQ79XTrG0KBaEuwJBt1WlrFHhmdTG
	+QUF1djVTgpqhjbwp9NsPka0FR/Y3hdcmRsideeTconlJJxvBs4KPYh9Hb0TBCg+lItyQLguK/WnS
	kzpzFFXLZ8swZJO+raRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElYG-000000049j4-1o2r;
	Thu, 08 Oct 2026 10:40:40 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElYD-000000049hf-27bl
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:40:38 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-34bb8b31647so7925702eec.0
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:40:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456036; x=1792060836; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DCoq+QQx3kZdKIK7QgXRpmYJ03Qsfh2Iq2ERtZh+EYs=;
        b=RlDwihUZdkDhV5W1a3uoxtosLuCmMlYX4NCMUipgHhjGGk8rBatAhokodD/NVEySCu
         Z/kNh1tjqcuMXqLWBaXqoDiGW0YB28PkXxD5gXLdmkPi8CAWmRnXlAt1BYYbkYOF5xvF
         5oeJxiAMYur5yZEWoG6pb7h+nACO7Vw9Ac/GMDoy9JiwOn+5MinYi0RwAu+rZioIw+D9
         udxO5OjlcizDsfReb8DC4UaAx4G7B+rqIEpWtHUA3MWuX12Qh1/OzSsmS15Yd8brSH2J
         JriZd8mTK/O0Cdiu5NtwfiRxZD/zjsgH1zGu5/MFtoRGlpod7vBGm6D+BmTPxYCwnV/7
         4DdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456036; x=1792060836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=DCoq+QQx3kZdKIK7QgXRpmYJ03Qsfh2Iq2ERtZh+EYs=;
        b=W3uk1oEaLyz6Pv/eZlWPHM1RDyx9fXLr+mZNQZKCqbYawom2gwg5PKlaz6EHg0EAth
         3KSgWi4NQDuld/5JE12aNT4V5dFIrn9z2UNOXCrYDiLZFSEMFH5lG4m8POVakwGyXdnv
         xOL/B2VoTPxLizOdUL2A3ksh+HdDuq39Lyqqo5F0IHz2L6FEYM/XFmCvWcYZSYB+kyFO
         2SfvwHBEz4J3S1m1w9e4UF8IpG+LiI17TtTSCtarBYPIEPE3+0NXW1yOHqaAOW7qZkME
         EPzAuHTstoRU8gcP+wFkhIVZKaBObni1XHjsoFDwrfOEvT+iCyPQsI9WzEl18ec4GWq6
         d3jQ==
X-Forwarded-Encrypted: i=1; AKwUvBzEOaEVfWirMKQOG3RekQHYWmOuwpbYvCWhZZ4i+QypwYZGHMGXIWOtOsd308Hkdjz556lAuxI/9zhfLdXRzQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYLsHTui5vArAnZ1FaUb1S/Nurl/+X7FohX3OLGXnVGz7w9lqBXr
	S0B5QRIau2jhheU7x9hjSR+kgKuL/cjv/DIisfuhKUY+gKQrda+dRU0J
X-Gm-Gg: AYBFou1sOr4w2ryWg0kj7aq8c1jjIpRPlJboztsBuKiahrWg1bn+Ybxmzv2lTmjBing
	F9k7S/qChsEjSm1uSZNjHUHBA+MycjZrGPaNCkekZYxFlGwoLZT1LNyIlxJ4X3gNa4NJ7SaYIFX
	/kd7AmLCdYqGqukuAS/uoreiq5kg5xFnJ3MPnXgHBBJzC1sXIPmv2jp4+2kBLGkqeY6Jfnd0eHU
	aL5zErbOUDAFvDnRMhQnpBrxWDyICfP2k5+xJSRIIgF52T3WyA+R+KAsw5u9vZpcclhzZ5ylOge
	uHsAGKjpkeOaV1959MggrXmpp1JtPXP/wARR3vzAzVyzPwBC+90HlvnwAhpAWrIvwRz24TG50zw
	e6HbBPlzG+yF76Rm5KqDEEFm0cQpU8GU1Y+0WqbPUVsOfbKpi59H4u5erfR2IDXPXjWUnWgYHRe
	5Q8Z4FtlEuqjoQmZEfogoAuDh0Bvq7UER57jZSBbVR6hPNL8zYp/lOM26dFj+k9l1i+m8t1Yoir
	QsF8/Us2AzsHuljUSc7d4rID/6eWw/3Q38a91BnhjB++H/Wze2hW2SYseQHvO03Wl20ydM5tW/U
	uMH/xeCs0s/JKb5l00iOzVFg
X-Received: by 2002:a05:7300:b088:b0:34c:b75a:ac1e with SMTP id 5a478bee46e88-3515df70a46mr6358739eec.33.1791456036268;
        Thu, 08 Oct 2026 03:40:36 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:40:35 -0700 (PDT)
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
Subject: [PATCH 06/24] ASoC: amd: vangogh: Fix acp5x_dma_close() being skipped on rollback
Date: Thu,  8 Oct 2026 17:38:13 +0700
Message-ID: <20261008103831.542533-7-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034037_579492_6ADFD8B0 
X-CRM114-Status: GOOD (  11.98  )
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
from acp5x_dma_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: cab396d8b22c ("ASoC: amd: add ACP5x pcm dma driver ops")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/vangogh/acp5x-pcm-dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/amd/vangogh/acp5x-pcm-dma.c b/sound/soc/amd/vangogh/acp5x-pcm-dma.c
index 831e30e9b042..33d59d992ee0 100644
--- a/sound/soc/amd/vangogh/acp5x-pcm-dma.c
+++ b/sound/soc/amd/vangogh/acp5x-pcm-dma.c
@@ -231,7 +231,7 @@ static int acp5x_dma_open(struct snd_soc_component *component,
 	}
 	i2s_data->acp5x_base = adata->acp5x_base;
 	runtime->private_data = i2s_data;
-	return ret;
+	return 0;
 }
 
 static int acp5x_dma_hw_params(struct snd_soc_component *component,
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
