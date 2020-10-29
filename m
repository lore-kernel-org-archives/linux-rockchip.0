Return-Path: <SRS0=CN2P=EE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40003C2D0A3
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 07:43:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9DA30214DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2020 07:43:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="xDjjttmh";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TW8C3K8Z"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9DA30214DB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZN88s/kKhhW9UAmR4t/tT4RnStZHxioy0U1+f7ydzw4=; b=xDjjttmhOfOTvR4mPkZNv6hBd
	jZxI8oBsrmnQs7VfOQbuesd3ko4ssJUmsHCuduSVGlShY5MHQed/4rd0zErDz38WzTUs0qeYz8Jeo
	9NSG2hSzKEAE/rpe8FpwRnOQnRB/tkmsRgmOq/4Aowym9jlTFq2dfvJRQVcrWUDYBz/4sOxQF83XJ
	d4OMqzzclWByOsaLHT/Y1Nx3/lZizvm9/P7Ud5wpZayv+IxkWM+v2vwwYntJDaKJ8Sj9P8s0hXDZq
	CQHPHRmuRp3b9KNY+OTmprr8+tTpqxmIbKu20EDnonCFqjdLe2uSAbpPCdlxaTSysJA1TQXLtFP8k
	dJTpykDqg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kY2b7-0007D1-7A; Thu, 29 Oct 2020 07:43:49 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kY2b3-0007C7-CV; Thu, 29 Oct 2020 07:43:46 +0000
Received: by mail-pf1-x441.google.com with SMTP id x13so1633331pfa.9;
 Thu, 29 Oct 2020 00:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bmwHyHUIe/uWSPHK3YvMcr+QNlICBVXmu7Dmq71Pi0M=;
 b=TW8C3K8ZXzrnZ/kDBmjrdImT1Eh0azgxxqO8H4AGCR1kRROB0CStWcbr6WtfqSABhy
 kXCczW2+hlMauiG/YErbKtsw2wdcj5jzplWFyl7Xpe90BQ7TPzpYJJm11fAEGCBVgQvh
 RYegV/nuBaTdc55uXOQJETTYXuWFacSw6LZhiek/ePJ881lATgHSeSob9TowpLuX/OPq
 U7gVEy/pznph5meEOt8okdP06Oe6K03C1LI8VkSWDJ8kP2hJ9a4AH/M9sSmNV2XvFMga
 2N2PW80BUq2R3aXQi2z6ZKzxxUTMzexnuru3+jnEVGgT+x4ZzwclB5Vv5765mfWOkhXp
 0X5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bmwHyHUIe/uWSPHK3YvMcr+QNlICBVXmu7Dmq71Pi0M=;
 b=mtcOanlg81+dUav10BLpjGuGYS8SB1Q0IMopuMpxBxhRqE4/0/6JYIPM2GZbe1onN4
 gtc8sXAa9VVQhF77Bwrudgjski2rRtI2tRZMUQkMHZiFH2z6gr4Yjj1p0opPjR1CST97
 pIr6g/ljlfh3sgTGOSWGJ1xcUawh5fgMYI5YIZNq5hxnCbwFEJqTVVnJ4Y7I8GQjHl8Q
 cwE1+LLZcGfVhvxJ08SUhROfpTUUarakcbX9nmzBcwNjOSjRRwsLA15hr2LGCkSTnLSw
 GmFo+jds/Ua9ewwJ2d7XqKm12VH/7opOgotdo/JtTK+JfD/xm8E+v2df9WhvLWC2qFC3
 BsHw==
X-Gm-Message-State: AOAM532lnTH0ZW+k2D0zYKzJApCa5ZTmACXTNmiVGAEdSF+uynU+HeT7
 Ahufv2YIb+gteDvLNeO0E2c=
X-Google-Smtp-Source: ABdhPJy0skDQDIihaScK9yxAZVkcjC9QRMMPRrKoqNU1oPRXmYHp15+NFjKFrr9TjeWjwlnY8B2wVQ==
X-Received: by 2002:a62:8f4d:0:b029:163:d24d:e0ae with SMTP id
 n74-20020a628f4d0000b0290163d24de0aemr2904319pfd.49.1603957423589; 
 Thu, 29 Oct 2020 00:43:43 -0700 (PDT)
Received: from localhost ([2409:8a28:3c42:6840:9efc:e8ff:fef2:1cdc])
 by smtp.gmail.com with ESMTPSA id z10sm1837779pff.218.2020.10.29.00.43.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Oct 2020 00:43:43 -0700 (PDT)
From: Coiby Xu <coiby.xu@gmail.com>
To: Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>
Subject: [PATCH 04/25] ASoC: rockchip: remove unnecessary CONFIG_PM_SLEEP
Date: Thu, 29 Oct 2020 15:42:40 +0800
Message-Id: <20201029074301.226644-4-coiby.xu@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201029074301.226644-1-coiby.xu@gmail.com>
References: <20201029074301.226644-1-coiby.xu@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201029_034345_467947_B5627F74 
X-CRM114-Status: GOOD (  11.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, Heiko Stuebner <heiko@sntech.de>,
 Liam Girdwood <lgirdwood@gmail.com>, open list <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SET_SYSTEM_SLEEP_PM_OPS has already took good care of CONFIG_PM_CONFIG.

Signed-off-by: Coiby Xu <coiby.xu@gmail.com>
---
 sound/soc/rockchip/rockchip_pdm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index 5adb293d0435..f3c19310aeeb 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -574,7 +574,6 @@ static int rockchip_pdm_remove(struct platform_device *pdev)
 	return 0;
 }
 
-#ifdef CONFIG_PM_SLEEP
 static int rockchip_pdm_suspend(struct device *dev)
 {
 	struct rk_pdm_dev *pdm = dev_get_drvdata(dev);
@@ -601,7 +600,6 @@ static int rockchip_pdm_resume(struct device *dev)
 
 	return ret;
 }
-#endif
 
 static const struct dev_pm_ops rockchip_pdm_pm_ops = {
 	SET_RUNTIME_PM_OPS(rockchip_pdm_runtime_suspend,
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
