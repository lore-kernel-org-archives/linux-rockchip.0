Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14192CC6B30
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 01:46:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uefRidfszarXgqbvpljOKnQtaYXWiJCpqFdxlwY9ZjU=; b=MfxYwL7hnKvW/R
	J5UfDSA/uN7/+DG7Jujdflvxd/YdLyNM98EQjjAz5IaRq9cgR336WKHSpxns+MOJ+4HrjHhxqC0Bz
	Hj3fKfP1lFNbwp7bYL1TzCk3uF+Fd2Y2YjTuHa/V+3dqKve7Frcm9jpHDlZja3/mrDAzeLGNVT3ie
	dggci57PgCXyq6GuA9TJtmx6bTqTpgKwAcAMU1fEqN4j654HAvdm44VAQP51cxvB5vMnB/XWkQQ9p
	L87ZYW0UVMjN+GlldFj0BR+tNHWA90ybm8/1/Tgowk953bG+EKlNIS3/Uvm6/iN2OOsTDPJJRe2+F
	uVGiP+Frxv1HjR2KzzAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAYH-0000000Gbdh-08Hh;
	Thu, 15 Oct 2026 01:46:37 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHAY9-0000000GbbZ-26iE
	for linux-rockchip@lists.infradead.org;
	Thu, 15 Oct 2026 01:46:33 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2e95bd1c14cso1947065ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 14 Oct 2026 18:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792028788; x=1792633588; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FVoaE90uxAa4MGE2u5YmtFWHqpvVUok70EqIpA+eTKA=;
        b=shgII2k/r0RTMnOgV/OIC8tlr8Fha0AudORJwW0AiyXYzrXLxJKwnJJUFzbVij4FaG
         TKr63z7dfJu3oT0mC/f/SyeVXuCRKe2CGUxAus/Fhr90deL6/a4bs+Q7ZuYzrNKoeqMb
         /7XzVBrzCrM3qFqyb6ANaOh2FblWAxtepc5LcGo+Hwggc4XaxYPBKzFsN2aB3/Dj7nSh
         xG+zYdEpOvVJ9OtHR0aLF+UN7vLWYeWzRAqZNHU5O4DhXyUH904oWeqJDwS3s3DNvBLH
         6gz+X8ftqeaajFZ/Bsq+6EZNBLt6GOJzWrfO2HCKapLT4hJmywzEpKCmRwBKw6V98KYu
         /hrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792028788; x=1792633588;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=FVoaE90uxAa4MGE2u5YmtFWHqpvVUok70EqIpA+eTKA=;
        b=0GTOuOmBi9RkgU2YDw0C544EI4k18vxGc2k3O+nL2Z2bq5Qu/wf9d+CtFYTOJs9rBm
         ClN7LzwSnIH0f70LkZjL0fFWqXYN/4DTSNwIN32tgoFCaUvH9Uyv635P6pzi47RO3Guy
         76zcyiQaOW2oJIO+ebDSx/ahC+oThM4PTo7U6POhLgfNABUsfuYlPsztP+UK8a4exIzR
         HjULMvJGf2PLMR/ZxiTSdVwPlawPRJ55mRpskI0VzXhZjJ9k4vBzsVkK4DUhLWY5mnVo
         XVsZBF0E6xInfBzc5HvCcoNOl/1OHBLOWHWtQXpfM7NpcZpfkAjSVnIFGxBeOFdrJpwh
         +bzQ==
X-Forwarded-Encrypted: i=1; AKwUvBx780B6msPDpxEljnRBShQPJ0UCJkyyxJ+QeFWK0KbKKZxlPbfT8U+PFOvv5w1PD9+mt/yIz2L4+9MUoGlyrA==@lists.infradead.org
X-Gm-Message-State: AFq9FYI6Hp+Ab2M1ep7xOa4g0pxGsPKkliU1ZToA7/ZboIu8G17im6BY
	CZyMSLhoQzkQAwJWJnH54uvDd4+11Bl+c8bPEB/UtUbaX+Y07+PxbgUW
X-Gm-Gg: AYBFou0jX1cn42MvidZ98OmNAm8H5/DSQ5FUyfi8ZI+tI8PI/43WpholnIx+cNggE0p
	fNrRAJ0M1t2XOuiqGATovrUcrfh2piBJrlFIYIlhvhG4EpUHAmOUdDlwqPxBLQKccOpBato+zx/
	MYung28t+yhU6jQUG5uDlF/osnyxl6ZQKkr0l2+h6320I0XEXUbRIBuKktsEygVrzcqBw/sSBFV
	67OMtECuLOv7ZoXpUK4MP2aQ3qGMGPSQMrbRW+0TFTN6PdgtVhwMQSPShRUQ7MqwmnTj2T51x8p
	vX+7oSy2YEUIjERViYFf/qVEUqF4cBcbp1uYG82f+uiNsEFNFySHZMS62GHdxVPrPto9aYLINxS
	eRjUxBgfmR+mW/atnAWk2b3zRKDyOAlbO84OZHZnegaqYQtzzQCUZcAYgdTxap6Zuneg8BZVd4l
	SRCbsIo+QKfA0ahegrIp0zX/owD40Bn+YuXAh43t5srp6STN6NRGl+wgNTzCkS+sjzzUULCBZlP
	Z7GuenGsUgYpNfIFrVdztFgkELuoJ2Rz/J19yfvoh8IMjfZSYaGf5nkx5FBCqYzfkP6eKnzutar
	+sWxnrcgR/CTAg==
X-Received: by 2002:a17:903:38c8:b0:2e5:e3da:be04 with SMTP id d9443c01a7336-2e84304792emr134212015ad.59.1792028788486;
        Wed, 14 Oct 2026 18:46:28 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2e8422b8cc1sm73202995ad.54.2026.10.14.18.46.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Oct 2026 18:46:27 -0700 (PDT)
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
Subject: [PATCH v2 09/25] ASoC: atmel: atmel-pcm-pdc: Fix atmel_pcm_close() being skipped on rollback
Date: Thu, 15 Oct 2026 08:43:08 +0700
Message-ID: <20261015014324.5569-10-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_184632_753834_1713027D 
X-CRM114-Status: GOOD (  10.85  )
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
from atmel_pcm_open(). ASoC only marks the component as opened
when .open() returns 0, so .close() can be skipped on rollback.

Return 0 explicitly on success.

Fixes: 92dfa6198623 ("ASoC: atmel-pcm: split into two file")
Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/atmel/atmel-pcm-pdc.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/sound/soc/atmel/atmel-pcm-pdc.c b/sound/soc/atmel/atmel-pcm-pdc.c
index 374f93fa6e0b..4cedf2ad934d 100644
--- a/sound/soc/atmel/atmel-pcm-pdc.c
+++ b/sound/soc/atmel/atmel-pcm-pdc.c
@@ -295,6 +295,13 @@ static int atmel_pcm_open(struct snd_soc_component *component,
 	}
 	runtime->private_data = prtd;
 
+	/*
+	 * ASoC only marks the component as opened when .open() returns 0.
+	 * Since snd_pcm_hw_constraint_integer() may return 1, explicitly
+	 * return 0 to ensure .close() is not skipped on rollback.
+	 */
+	return 0;
+
  out:
 	return ret;
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
