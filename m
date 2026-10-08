Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2B46CA600B
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 10:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qfXI+QKPz7lX+lNkhzN1gdo4mUoPUO22zuXcSqQxwtg=; b=xvPlEGU1y5LLj1
	ucPUY6jNVTH4SKyvPdxssqLu9TRX7/BFD4p8/J8Ui35w9fSlAR426aTREwsq69qIU4+Cct2D2hfWD
	CiSyaEBhWMSqfbso+JgPmluTJRN5QMJchBQO+sUYrMtA+h9hOK/bmdYo0Yzej6kVRCRyD7pFAEb2T
	/qSeYidT1ceIFEdsO/SG0MxjjlIRvqLn+yWbjAy9aGObJ0F0tdwcaKc3yNH+nHAFU2A4lDx+S4WXZ
	DY5i8KpGHRaKf/9rVVVAhmy1358U9v+JpIKt8PN9e7ZGcLW0azDqYWkuHmqLig7S1H8frxu/G5YKJ
	0h5QuqM3hzlzmU6DtnDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElXm-000000049Yv-2yxY;
	Thu, 08 Oct 2026 10:40:10 +0000
Received: from mail-dy1-x1335.google.com ([2607:f8b0:4864:20::1335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xElXk-000000049Xo-2O6Y
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 10:40:09 +0000
Received: by mail-dy1-x1335.google.com with SMTP id 5a478bee46e88-35154cb9de2so4039648eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 03:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791456008; x=1792060808; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=l9nxhJUopT9Lxb0IcO/P1HkSQbbENhmHQ1cr6x4IK+g=;
        b=HZ4jbwIGdTIkeJNNF922tgCGcwwIR/Fc8PwHgED5Il5VxEQrwMjAacDL5hQ9uTZvy+
         OqvGfISOqAQ9ruob/6rRvcgTODv2lsYrg++DvWBHhP6fCRPWYcl9qCBti4m6999FTb4Q
         rSfjKbBgF0R385xMLK4579wz3twDtZhB/ZGrS2U3s5sRRFydRfxyn/zxk6bDYvYiDJ2V
         24i40uKZyoegC/LWZxj+MxnNRBdoZ3kN2tI9cSa8nLGuKBonaMS8gIyyomh4gKbSy/JZ
         WFyy1bHxtmYD8mB4heF6ptKShwTLKLFfEHh+feduf+gG80jsITyKTkIec7KdmjYQVbdP
         Dhbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791456008; x=1792060808;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=l9nxhJUopT9Lxb0IcO/P1HkSQbbENhmHQ1cr6x4IK+g=;
        b=pMpbjGDr3pw3pOCsjF0sj3gUBpUuTEhD1yz4yYXI9dqC8MLId+L8GY3yj8l/tJh9QX
         rRw25tBRYmCr/fvDdPsLF/bNVT218WmEwInLAFR5O5xlLX8LX+jC0FL+xFt/22cdUMiA
         okI28PzQmTX6Deps9TdgTLoQyRqUftYKCAyB6f0LWufRK9t+PUunGMoL61J30V/E6Ida
         bfeZwgGL55wMQgkybxGVHopm/BLeLDV+Mmbk7FV+ETELsH4cmzkbh4vy7WUzT7P5dfoq
         UBVV183EJz54VJyQvUcW24l+7zWog3AgCBuWrllEAVgKo39zG2eLTWgPPT0jx+00eezQ
         xY8Q==
X-Forwarded-Encrypted: i=1; AKwUvBw3tnqXSvAj8MquxXZnVI8a6WWwBwVlZpzvVsmqGwIyPekZVt/jAoLNVponYebHC8BDvNRFhGXjqzSXFM6GsA==@lists.infradead.org
X-Gm-Message-State: AFq9FYLRC4EnfS1Jv1n4v0Fi72yEYjgnYdiRg+8tbx+WCik0kHnH6XbF
	q5TpeOZFCq26Sm5zgcpwxSRsgdluoScdHVaTNvPqAbLu7JFhgtJj+Qwu
X-Gm-Gg: AYBFou1TGrTbpvcVzAo0xzjDMU1Mc6YGjNAipznadj+5N+PogFK9HT36pf68lJik9Ml
	L1LlrsVwjODPNtTdkXa1VQhfRQKhP04ON9OB5Tgrm+YKR/WSGebJKASKHH88JEP7HKmbc2gLR6G
	gymezCQG+TU1QWxWHV8qjI+6xXzbBb8QHn27oHFj0gSUe4HzLzfMuDty0DRVMklXDVyGIjeqcq3
	r1ScJl+42tNkQvzVqOF+KT4CqVVQMp1oufni/3iDPYuFHUyBcwWSc3GSaz504rJuP5YcOIV3Som
	lGlzMDvpgz7EKIurNNqZUhPKAt9DDO5fn/wgBu1YB3HqxNhdYlksQdkbt/lX19IrmXFwZRtoNzl
	sDnSL/PGpkvt/OqE215B/fFQYjzdYEGs9VF5K/IO7D1TWcKb5ZktwWekO+1dBR07U4QuPkj4Exy
	kKuhfeTSk9a+ZsmFrwOsleN9Mn7FGssMY4uFUfdCvVy8/HGn65NWHu7EcytWDqURhhmE25Nq2vF
	cJhpKBksjoJtTmQuY7kCA61QQgn7w0NApsfUaYptA/agDeramsLZUygWeIKBBgAGDwkmVeYGZfJ
	4acJthHRssHN8A==
X-Received: by 2002:a05:7301:1e84:b0:350:89a8:5598 with SMTP id 5a478bee46e88-3515ddb2b12mr7233126eec.9.1791456007627;
        Thu, 08 Oct 2026 03:40:07 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3517810b895sm7496369eec.17.2026.10.08.03.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Oct 2026 03:40:05 -0700 (PDT)
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
Subject: [PATCH 04/24] ASoC: amd: raven: Fix acp3x_dma_close() being skipped on rollback
Date: Thu,  8 Oct 2026 17:38:11 +0700
Message-ID: <20261008103831.542533-5-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261008103831.542533-1-phucduc.bui@gmail.com>
References: <20261008103831.542533-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_034008_616733_EE3CD0E1 
X-CRM114-Status: GOOD (  12.03  )
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
from acp3x_dma_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 703a6e22888b ("ASoC: amd: Enabling I2S instance in DMA and DAI")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/amd/raven/acp3x-pcm-dma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/amd/raven/acp3x-pcm-dma.c b/sound/soc/amd/raven/acp3x-pcm-dma.c
index 37ea5c572eb9..072f3dc35d40 100644
--- a/sound/soc/amd/raven/acp3x-pcm-dma.c
+++ b/sound/soc/amd/raven/acp3x-pcm-dma.c
@@ -237,7 +237,7 @@ static int acp3x_dma_open(struct snd_soc_component *component,
 
 	i2s_data->acp3x_base = adata->acp3x_base;
 	runtime->private_data = i2s_data;
-	return ret;
+	return 0;
 }
 
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
