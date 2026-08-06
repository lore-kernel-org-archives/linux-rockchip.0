Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 842A4C55ABF
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 05:22:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P/5NMvtsppVbu7kd06mAfyaNK5rCmjAc7QK/KFWD7TM=; b=KQvW3I0AXGaPC1
	EsF2mUCuk0r7uhgPsQCp35lxuRIqwWp6vTu+tHrbTrDlcakWcOmTzNMxawUcwGkc+7kxrL9cquHgp
	50SW81Vyz89EcNtijq3/cvzHvTZAqZTz4ZVUzr4408wjIUu5vgd/qIZVaQsE9gcQykmuppvtchAdH
	m7NdQgk9AFtzhhfxhBummRJQ0bfJDmqeYfFLT9tYktVFkIT1YCUDz6K+kJbh0y2aVDIP75xRXPbFL
	ui02tUOWYpqFjCCZhlt6Pgraub4W2PTq9/QYfA8xcTHDzKnXXup3CLVkc9yZhxcUXSqiGNX6XVSqB
	LPuOmhTM+9iVwSprwnZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqZ1-00000004xUX-3sz9;
	Thu, 06 Aug 2026 05:22:43 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrqYz-00000004xRH-0FQM
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 05:22:42 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-84830c774a0so1875192b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 22:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785993760; x=1786598560; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YJadDqh/AXReHASvk+eJve0FUluChS8L4Z4vpvFJSCs=;
        b=SQ78KBmgrGa5ICusVoSUEDKXTlKS+jkFjDyp91865hPOv8m8t/fOxYFIAytHXtkO3I
         fjmocy+ZXvtTixgk1aS++9R1LYwb4JbIRlu5t/ai1IkXFKhQyIRnQj1YEJhoRyQowiyp
         P34+++fymsddsk62/qtIztC/Oo1jujlFIZRoq1WS+3svTCtRti878//UfUYU2dZVBdMJ
         fc0nUzTORR/1oh/1027/DJiqX66acyXns3dRU7vWCBxnnr+uD6a+CA6dwERVTJwFAMLo
         pP+SvJ39DcOt9FpJoz++YRdHZnTxS3eg3HfzaTswnpGKDAQ40RMP3c1E+TXmPRImYI0h
         6TgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785993760; x=1786598560;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YJadDqh/AXReHASvk+eJve0FUluChS8L4Z4vpvFJSCs=;
        b=jaVc1meS//yiGFgyCbuG21uborYmfiNRxoT58jAWhP3WpCGkLPERVzd6rpwZmwkDvB
         Zne+mIh8gE+2Z6Gr/tWAwc4ywZtls4zqSLZBG6w1hZTMZgmskxCp2k3tW9OYqhFQYoJG
         tHTRwLpN+9luFdLVEQRrV4UIMCwXHiZxiKEfddvuEm0adCfdMxWzPu4wF9pZNK1CVO6L
         L8TZoR+P/E32KSWEg6BZve1o3am9Qxsfm2bFtN8A7G0clM2UY+sMdPs7Rkjux5jYZ7fN
         EM2pkq3DXZ7EXmOZMHkmKC3S723ngMRGfkhvM+idSOPNANmzWnhxpGaFByQ8dXfT9E0J
         fPVw==
X-Forwarded-Encrypted: i=1; AHgh+RrtVGkIpo/D+bTJ5q19V/BFbv7Ie/Z4hCa7OdxDD1sxdxUK1fz2q/fkbBT/GPMcDlbVaHOPbCQwBaLv15+P3A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxpe/o1rf7NQOVLyyUKKPL/rjsIDbGe0arclJx6JUjxqTYZjF/t
	t69iKwjQLU9m5F5Usio0a0wrSppIXHpM0vcsn4KKA3gKEpnda92OQHLajUBxTw==
X-Gm-Gg: AR+sD10sVduM00+Z2iE75N2lXUoo3wrH0rJhSZZV9DfkDxCaQuWgTeOGxjIEKvkRvj4
	0fhhMzpg/cnK8yo/k4O02E9v3DA2jSk5oUryj8DSxcOKhGWFGHQFwY1JJ46La6vLs8ZG7TTR6f5
	dv6o/0h25IhFfgKQ+JUUbuA+zS0djlhfPXmtDcThvamdvVjX+4m6JxvJGdduy4tWWtT3+lkFE7/
	MjjJjvglVx6k5dspqthM8x5xL6Fxui13Tz/xcfK446Z/qLlAA0ebUy3rzSx1A0F3DH6zZNtD4/n
	tEUmbbzqbgXgLgM40RIStkWmXHJe3ueoOtQGV+Q3JVdVFAXX+jHwS+NfLcN1cYS9eKfvOsMmGqA
	YSiQkNHPaBgs3mRRBtCTLy2rFbVvA0zjHvFfYJc5HdkQ7VY12e7S+44WMY7qaodt/pkAoUtZr18
	qJLafl93nwxnInCbOjRKK+rdBnKf+iWCronS9I/HOhVvvfgomYgGP0O1o7SUbXfoIh8xaG59UFk
	3hMcrc4+nGLomOexGmvTqMUETe+KhLnxe+2FHmWQZGqkmyKQteyrRy/Q1CRDmcq078755VcD/2i
	wEoI
X-Received: by 2002:a05:6a00:1250:b0:847:97a4:d6b3 with SMTP id d2e1a72fcca58-84f2e05124dmr12546494b3a.16.1785993760355;
        Wed, 05 Aug 2026 22:22:40 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84f45bc9cffsm554279b3a.59.2026.08.05.22.22.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2026 22:22:40 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Mark Brown <broonie@kernel.org>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 07/14] ASoC: rockchip: i2s-tdm: Drop redundant probe error messages
Date: Thu,  6 Aug 2026 12:21:29 +0700
Message-ID: <20260806052136.21034-8-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260806052136.21034-1-phucduc.bui@gmail.com>
References: <20260806052136.21034-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_222241_126310_99285E5A 
X-CRM114-Status: GOOD (  11.44  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: bui duc phuc <phucduc.bui@gmail.com>

Remove the probe error messages to avoid duplicate error reporting,
since the error is already reported by the called functions.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_i2s_tdm.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_i2s_tdm.c b/sound/soc/rockchip/rockchip_i2s_tdm.c
index c9ad769a4072..5ef7f109706d 100644
--- a/sound/soc/rockchip/rockchip_i2s_tdm.c
+++ b/sound/soc/rockchip/rockchip_i2s_tdm.c
@@ -1361,17 +1361,12 @@ static int rockchip_i2s_tdm_probe(struct platform_device *pdev)
 	ret = devm_snd_soc_register_component(&pdev->dev,
 					      &rockchip_i2s_tdm_component,
 					      i2s_tdm->dai, 1);
-
-	if (ret) {
-		dev_err(&pdev->dev, "Could not register DAI\n");
+	if (ret)
 		goto err_suspend;
-	}
 
 	ret = devm_snd_dmaengine_pcm_register(&pdev->dev, NULL, 0);
-	if (ret) {
-		dev_err(&pdev->dev, "Could not register PCM\n");
+	if (ret)
 		goto err_suspend;
-	}
 
 	return 0;
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
