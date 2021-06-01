Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9235C4708F
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 21:44:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 509D9613B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 21:44:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 509D9613B4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MuYruI+S7yeN54RW//mDeHBmjFWlILE/Qsm8H9Q/A+g=; b=0GqFjqL4qXJuKx
	DK1d2z5UUFP4Iqb/Ox/YIDNQydiSaQ7L21LyGlyCWRlA8LJ6TRvdEGEnFPsDni7xDsP/qbbK3kI5j
	BEVTo+QitynKUUk9gJVwQ5GtnPQtVYf354jTw62YPsgFvjmXK8C265CzWU9Gsdu7jHlC0PZM71/WY
	G5YJuv4Y1Ti5ryg56OrbqwRZQxPCkyViDWoXSfrXxHrvEJM9ywOcT2070s0fKUMOVwC7dttJqSlJ7
	+jqn9asELUyF6x1mb6Qnx3fQ8DLDG1Jq/Lm9hX5/osuQAvGJyS1HHmd5a+63zk7LLIJOc9fiJX4dV
	wtaz5w2+7WGqSSOjRf9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loCBh-000wkV-IW; Tue, 01 Jun 2021 21:44:37 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loCBe-000wk4-OZ
 for linux-rockchip@lists.infradead.org; Tue, 01 Jun 2021 21:44:36 +0000
Received: by mail-oi1-x22b.google.com with SMTP id c3so765826oic.8
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Jun 2021 14:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m2jSbDzFQxJVPkX9wWnQHslCI+0Vych+K1kXWHexGRU=;
 b=X+66xa1NeLwDoC6qBRhC7+OLEtu7IpItYVb0NJ4giS9dLIQEujX4cngkZALdCjjY8m
 zO9GaRSMPsYKJ5a1dYcPmynrW77warNWAyvM+QSODLLWpBePh7t8rTR42fLf1FDYJEV4
 wbt0VaSpuwLmNGfB9VYsre/vkJYs32/Zn/yi7Jc8eKcGlDWaniGqnBORwqb9SgKuK7HT
 lYiNYAF82+WhEqqPmO5Z8jTTZ0iaJGmXErWr9AV0bL66WlxMBP5LRzK+QfwFbQTwOqvt
 SNpYPbE90+uLbWAQbqN8fRfVnSt4i78at3085MvWk3wzrrXTkWKrbR9NX9AHHKlFrpkM
 YvaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m2jSbDzFQxJVPkX9wWnQHslCI+0Vych+K1kXWHexGRU=;
 b=b+3djOyX8Cc37IbF/OdrAZ1tOt/EX0j+X5Fz57quLefw4pBVndsvHdFyeEX50di/nc
 p4gL0z1ubZreqrWvCOBcNvXXM6gG7nb2SVb0eFFE2QNF7vDZ10qYdJYfWaPLGiaEWqV1
 eAX4k7xxDZ+W0ExkgbnFtEZZoVdQfMgsnhZbyjGFwEaQCcP+7NOI2BCFFQywvY3vZBQJ
 0JdHh3UUEa//lgAnXeRkbu/x+w+6laB9TwtXeoQlfPD2a5vh5ssZC5g+NbFtP+DtC0Hl
 hUCkSlZ5HsU2BiiBE5TmS7kuoz0owj0zSra9/ubyw9MWjPaDNApmRDyCfMbI5OlESefD
 Vklw==
X-Gm-Message-State: AOAM532Z0wmaJT6X1X4q3jvXnmgf9lLrG+8Wm0+KFMwugLc7fBYDQkXV
 fDZ50HZkTyNkDgSOTt1py/4=
X-Google-Smtp-Source: ABdhPJxM7zmpKF7WbOWcOrlqa4mViYf71xE3SF8omG87A3XfAN89dzaivJY8MDuzP8DEx4e1NlyfkA==
X-Received: by 2002:aca:4d07:: with SMTP id a7mr1487930oib.106.1622583873629; 
 Tue, 01 Jun 2021 14:44:33 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id x14sm3737524oic.3.2021.06.01.14.44.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Jun 2021 14:44:32 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: lee.jones@linaro.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 robh+dt@kernel.org, perex@perex.cz, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 maccraft123mc@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] ASoC: rk817: fix a warning in rk817_probe()
Date: Tue,  1 Jun 2021 16:44:24 -0500
Message-Id: <20210601214424.23432-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_144434_826292_A45B11F9 
X-CRM114-Status: GOOD (  11.09  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The return value of snd_soc_component_write() is stored but not
evaluated and this results in a warning when W=1 is set. Stop storing
the return value to be consistent with all other calls of
snd_soc_component_write() and to remove the warning.

Fixes: 0d6a04da9b25 ("ASoC: Add Rockchip rk817 audio CODEC support")

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 sound/soc/codecs/rk817_codec.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/sound/soc/codecs/rk817_codec.c b/sound/soc/codecs/rk817_codec.c
index 17e672b85ee5..fd3a5ba034a9 100644
--- a/sound/soc/codecs/rk817_codec.c
+++ b/sound/soc/codecs/rk817_codec.c
@@ -415,12 +415,11 @@ static int rk817_probe(struct snd_soc_component *component)
 {
 	struct rk817_codec_priv *rk817 = snd_soc_component_get_drvdata(component);
 	struct rk808 *rk808 = dev_get_drvdata(component->dev->parent);
-	int ret;
 
 	snd_soc_component_init_regmap(component, rk808->regmap);
 	rk817->component = component;
 
-	ret = snd_soc_component_write(component, RK817_CODEC_DTOP_LPT_SRST, 0x40);
+	snd_soc_component_write(component, RK817_CODEC_DTOP_LPT_SRST, 0x40);
 
 	rk817_init(component);
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
