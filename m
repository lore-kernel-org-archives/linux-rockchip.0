Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CC23CC6B2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Oct 2026 04:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EXt964suxswy6wzMQBP5aiIXnbTxXqH1KlCxWJPQofE=; b=1AJ2AZ/1EwdM39
	5JDe2laxZMxnIClhmt0kNIRh4bSmeeWgO53CaLQku7FFMhcISxInK4jF4ySMlQ7YfnlrRs7fqsCM3
	hqbZkU73dWT7iERathKrS5qNip/0ZBzc02jlVMTbTUkBIhhlfobdiD5J0F/QtPzjefz4DILNGpfkA
	K/HWEQHAw+iYl4BFlopBsZZzgq5RDoF7+f5lUBUgU8O92WBK/YB/0GibmCgf5ZrfJKnaI4UBo6t+9
	EyCy8LX2vRcFaYeNOeNLUFybTwzwqGaYw2nN4281OBGvF3RyhdirR0B2r7w6gakR8usEAeym8WDSs
	p0rL9HgDwBP41l5GwuQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZ89-00000001vjs-3NRH;
	Fri, 16 Oct 2026 04:01:17 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHZ87-00000001vjJ-3Efy
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Oct 2026 04:01:16 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-cd3310348d2so315225a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 15 Oct 2026 21:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792123274; x=1792728074; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5Qhe5E4dgThyJhSYyDtuQ9hNBBoGOWOTPXhOMe7iZzE=;
        b=DS3dtelZPe21xaa38tKFF6++oO9Dl5RVmXDSqEDLjVhrr6Zldp6abD6nEdRcKRmhQJ
         jZdAX4jTUTlZh7jvYdZ4/eND87XQJJYGfdHDvBhaG0LcTl4ud2SKowf19X52qSQvm2EY
         LeQnn+tW9cq9a+Gb1dLI2evE/GgCnQAIIXMHm4kksjd+VVPnE6VEht3cH34RR8Q6sdB4
         XV4Bo6156mrlwuxvNXztrLZXsSFITHFcc50iVhh9WdbwNkqISv1bp870Yg2vZYp8ZkHa
         2dfg969xSbxXFY7CQWLgWK0/EfCzrZRaNEPH516FpZ9rCyJz8YqnXt4iyAI4MRWPa+d/
         EiZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792123274; x=1792728074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=5Qhe5E4dgThyJhSYyDtuQ9hNBBoGOWOTPXhOMe7iZzE=;
        b=Kki/lYfBPQwWpOQSXwNVYA4vs/NBodZa3h/E2tbXjOv1xaDciYFtJkzYT5CredSN+l
         v9z4uG9mih592yXSrzWVMH7Qh1C0giHs+GOVkTaua+HcmuBxcBGaFivN97VJo/vJm7l2
         nCz7kxQky8VLyN5QdgRZnEq97XCz601LmPJ2q0LLma8xCfqPyk41zbI3EbVSZfi/RTx6
         Cgx7xqZfKoUEvtZIvFMh+9GbdIj59/296PFcIKi0Ue77IZIiy+Pe15dD9jjtTyosgXGh
         nsKzSmUKYVQGc9boXh7mxOJ+bP7YK273HNyLPmzWIBMQ0koS8TO8qvMv3sUeNa0BiU6E
         Gbgg==
X-Forwarded-Encrypted: i=1; AKwUvBwavAE2cqSQ1sonO5fUoFQS+w3KHbwwYM0JmTbqPnu+lJ9rbrfsIuS92AG/vegnb2d8pLV+5PsFuTMXCOZpxg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJg+kHc/UQ0yl0WVF6c/RNd166uLXKiOZJO6uIfBnWD3jE18qrs
	rmdU/djPUrpFAh1kxXf5AznO3FsDf+2ilWD+PkUHm9iHz0DZ6iWTHTJp
X-Gm-Gg: AYBFou39tqRgvAM2fCyBNwIh1D21GBarL3MF/Apt51Z/sOw/699E41fLhOSnmbuaC9G
	xuPr+w8J1OuY+SPQuE7LJIwBnh9ZWkyHEsCEMcIgYDNCoUgl1M0A684f+AVL7mS4PE01yt7rbE5
	jGXJhAn2fW/S3Y5Vx31IGkjJMi38giYCVbc5CJLI9qx1kwpgexep2AoSOho+jM8kRtIcZT3RdLF
	IjiVOPfmqOvfMGNXuHSG/nwHbgmOmHWxzoeKaqZUPY3sVURZrrYpCh0q7EfgtuvxVcAMh5RZr5S
	BY/I/ipar83McNqIZ1kTZ03fjVKt0iKiYvhl0gtSHr5HjIZFumvvtWH1NN4Ydomb8ToZg2bUwxh
	WT/y/A0BuMmfPF0bPRshStQ2qt8Om3Rq2NQEMOWN3qCZ/F1zR4aO/tTzcR+JR6nH1GoM9xIrWkz
	qTB72tjpDruXINDqqS2EE1FP+/VsJap0GTCLKxhhs+nmET0v/ADFgwbj4/7shdRj/WSkISrkFl4
	E4G9wElymirNeFKRMUcQJoxFT1xjhIqc+OSB0Yz7oNzX5XJxD+kQVnPekM69Gp2qvwU8pUGuGN5
	DWVfDLj66GtmECw=
X-Received: by 2002:a17:90b:39a4:b0:3ac:b764:8521 with SMTP id 98e67ed59e1d1-3acbb9255ccmr1718768a91.38.1792123274359;
        Thu, 15 Oct 2026 21:01:14 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3acc4872861sm2304450a91.7.2026.10.15.21.01.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2026 21:01:13 -0700 (PDT)
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
Subject: [PATCH v2 25/25] ASoC: rockchip: rockchip_max98090: Mark the link as started on success
Date: Fri, 16 Oct 2026 11:00:48 +0700
Message-ID: <20261016040048.506531-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20261015014324.5569-1-phucduc.bui@gmail.com>
References: <20261015014324.5569-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_210115_817966_D976B887 
X-CRM114-Status: GOOD (  14.58  )
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

snd_pcm_hw_constraint_minmax() may return 1, which is then returned
from rk_aif1_startup(). ASoC only marks the DAI link as started
when .startup() returns 0.

This currently has no functional impact, as there is no .shutdown()
callback in the relevant snd_soc_ops. Still, return 0 explicitly on
success to match what ASoC expects and ensure the DAI link is correctly
marked as started.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_max98090.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_max98090.c b/sound/soc/rockchip/rockchip_max98090.c
index 426506a8e18e..de392b420ebd 100644
--- a/sound/soc/rockchip/rockchip_max98090.c
+++ b/sound/soc/rockchip/rockchip_max98090.c
@@ -191,12 +191,23 @@ static int rk_aif1_hw_params(struct snd_pcm_substream *substream,
 
 static int rk_aif1_startup(struct snd_pcm_substream *substream)
 {
+	int ret;
 	/*
 	 * Set period size to 240 because pl330 has issue
 	 * dealing with larger period in stress testing.
 	 */
-	return snd_pcm_hw_constraint_minmax(substream->runtime,
-			SNDRV_PCM_HW_PARAM_PERIOD_SIZE, 240, 240);
+	ret = snd_pcm_hw_constraint_minmax(substream->runtime,
+					   SNDRV_PCM_HW_PARAM_PERIOD_SIZE,
+					   240, 240);
+	if (ret < 0)
+		return ret;
+
+	/*
+	 * ASoC only marks the DAI link as started when .startup() returns 0.
+	 * Since snd_pcm_hw_constraint_minmax() may return 1, explicitly
+	 * return 0 to ensure the DAI link is correctly marked as started.
+	 */
+	return 0;
 }
 
 static const struct snd_soc_ops rk_aif1_ops = {
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
