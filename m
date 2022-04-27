Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C92CC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Apr 2022 17:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/3UDW+bunejEd4f5iYRLzZ3wDye9tKjaKivBbJrFHiI=; b=AS7ImCiKNf7qZ7
	M79coitdnJSxf/kzdlAydpuWPHzHiZ/kCq2ph9aSwZVpKEWJghCsMRpFFPM3Woj8LHTJ1CriyQvJV
	lCZ6sSwptQWe0L8huEhZULD1g/dMdwYx+LkqeuhHHYa7LfjIUkTt1Yvw2EjRVmgTP6aWxQGM6FUCy
	AK5tYzmDswQKp8zmOb1R2ng1MkqqBXzXoSdZEMkw4PmcV5lHcb+P4LZ8LzQvHBKuneDR7N0jamFNe
	7qhn4tjsOCrGYef099kVXsUN5tEZp8HVSJGaqdUkGKpTfdvogA8Ox1WfgqI/nTwrF/DljfRFzRqPY
	2guUf2SVosNqBiQrwDYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njlWc-002gsF-VT; Wed, 27 Apr 2022 17:32:27 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njlPT-002e42-6F
 for linux-rockchip@lists.infradead.org; Wed, 27 Apr 2022 17:25:04 +0000
Received: by mail-ej1-x62e.google.com with SMTP id l7so4808094ejn.2
 for <linux-rockchip@lists.infradead.org>; Wed, 27 Apr 2022 10:24:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P52XUlnvWCDbdpSO0eow56ta8BYIoktLvffWsEefpbg=;
 b=EYyIJudDhVOE7nkfQP1R77baA7wbkc6ve+j0cW06+oPnAeLrfHkIPvjhM8VSs9RP54
 WUrZl2qV8Hp9WrdgrHudUuNOmQAsSwugxTKF0zdZhb98lU01+kJ0uTZZHDnfHo23KF8f
 7vJtUWbeJBZ48O+Rcz70/expiyA/HgPVGjOqzUyb1HzVmRkKPtKel1pAC8TrwJeDHSMa
 FR7WouWdsXS4BTgy5cayvj6E92lge1vx0YVkzM6lujQbbz75L2BvdPJnKRJVjEZyZTx5
 j8y1AT6+O7co6I6cll+Za0mbqMSTkEYbhG2ewGuphRI4UjAVKzM2+G71/z2L2pwD7pCt
 Lhrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=P52XUlnvWCDbdpSO0eow56ta8BYIoktLvffWsEefpbg=;
 b=6IR1CVPLeW/8ZEgMAK7QNiPwsin7htgFYvUknyVZV5eE1fs1AaPGE8ISmJz48el/YV
 Gaqz6+iqPP14JvlQhgOiL+J8wvXouSPe/lWI0xlsCuZ0gzoL6qsstm+dGnW8sM2P1rdq
 ReltE9042+3H04+MZ6hMEnNC0KXK9A352zXNLCISXJQFkHHBCcBw0Xoi3vWiQqntSHps
 ZiBaNwIZr2xxwG7MIZTr8dfIOJ1zHGPPxW68Rdas7Bhp/EKsjqz7EBeqXMw4SV6j6vg0
 5gFxzvEZE1KIEw6Fo97v4QAa1qTW/izuNE5Riusa4prX6CMF8uBMpy3YH/iCvNzozxK9
 YgfA==
X-Gm-Message-State: AOAM5337w76uAS2hv32ugpKNP4fpoxn4TSnpk1jCBbNB1eBjMgkac1D3
 EjYIcMdMXX5p5YjOcACxDXQ=
X-Google-Smtp-Source: ABdhPJwtWnz45yI608lXspTGLXjHmcLI45v3raOCKlRDG2j3PHMzL3wk9KyjzWEraDNpDJY3BuR5sg==
X-Received: by 2002:a17:907:97c9:b0:6db:ab53:1fdf with SMTP id
 js9-20020a17090797c900b006dbab531fdfmr27725391ejc.406.1651080298559; 
 Wed, 27 Apr 2022 10:24:58 -0700 (PDT)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 z2-20020a05640235c200b00425fff78dbbsm3328443edc.49.2022.04.27.10.24.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Apr 2022 10:24:57 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: rk3328: fix disabling mclk on pclk probe failure
Date: Wed, 27 Apr 2022 19:23:11 +0200
Message-Id: <20220427172310.138638-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_102503_281128_B9C466CF 
X-CRM114-Status: GOOD (  13.18  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

If preparing/enabling the pclk fails, the probe function should
unprepare and disable the previously prepared and enabled mclk,
which it doesn't do. This commit rectifies this.

Fixes: c32759035ad2 ("ASoC: rockchip: support ACODEC for rk3328")
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 sound/soc/codecs/rk3328_codec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/rk3328_codec.c b/sound/soc/codecs/rk3328_codec.c
index 758d439e8c7a..86b679cf7aef 100644
--- a/sound/soc/codecs/rk3328_codec.c
+++ b/sound/soc/codecs/rk3328_codec.c
@@ -481,7 +481,7 @@ static int rk3328_platform_probe(struct platform_device *pdev)
 	ret = clk_prepare_enable(rk3328->pclk);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "failed to enable acodec pclk\n");
-		return ret;
+		goto err_unprepare_mclk;
 	}
 
 	base = devm_platform_ioremap_resource(pdev, 0);
-- 
2.36.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
