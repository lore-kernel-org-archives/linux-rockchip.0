Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 959CFC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Nov 2021 15:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/hhxvzP7E23azfUe9X3eBEnWZTo0t3rw8OOHVyX1udk=; b=vq9L36YqnJ+ZUj
	nIMQYIqS493c3hZaFFL7FSnSILmLC1oKpDEmtytsRxeGIbWXDF9LEitjmMrYoDFf5FQdsXIb2jTo5
	Gf7m+gq0d4nh9Ac6LP4gAq6UD0d24hbLXZoMmTdSD7++jJJa9IA1uzwarmuN4KZYCCdayZnKEjk9O
	AzL8lULKWrs8lDSDE8DePaGmlTAuj+UVQk/rV9yI4KXlASxfZRlicHC8C6gVp5L+by0LTJwqZEp89
	mxx7JEDOmNTI4gtOm+TTukcwTlHe7+KvL1Okz5HHK0YGshH6/XiTK2TXRhD6kQmnUQOqyJAvymKx6
	h/16oTtxyjPKlHbZtpJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mooPt-00DpKT-0u; Sun, 21 Nov 2021 15:06:05 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mooPq-00DpJ6-7j
 for linux-rockchip@lists.infradead.org; Sun, 21 Nov 2021 15:06:03 +0000
Received: by mail-wr1-x42c.google.com with SMTP id d24so27814143wra.0
 for <linux-rockchip@lists.infradead.org>; Sun, 21 Nov 2021 07:05:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WhMbJUwa3m/sRiL1gTb1ydr+MolnUwJkremam+jJja4=;
 b=ky9HhfB4zPRUT2MnXbKup+kEwCKXxsvGrrygGL4zkh5UidAS7NSi0OJY8yc/fVZsWW
 Zk1UjB2WGE/Sfuvt/Cte2OD3KqKhaUnUGrMU+zRfMGK++0FlWdN1FIdsYMEhW4N45qe7
 6nELj29FMrBwYQ0k8NmWh2WNL5lcKkGtm+sYxwGr9IMvwN5ou8sbmbGBcXZB6hpwlyFA
 AugIqDuEJSlUGEsT+rS5Ds4qaLScsWuSLc/WtuCCc9KKeQ+87W9tWmsVWlqIm7rmug/D
 /DcgZrhA/Sg70KaS7KxzAqc1HdIN0Vsyy4bGl5djCtmJ+agJR5xHxuxhM1Z2IFetzh/F
 mOlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WhMbJUwa3m/sRiL1gTb1ydr+MolnUwJkremam+jJja4=;
 b=3hlXk3E4wiG0K1EFbeDWmU+uiUZkW7tBMfjH0mIaIXx9GPg5KPBy0PnxnWVnmp2PGH
 WbporsQC09G3lvv46XA2kzZEendaVSnQG5UGDWcruWUTITTXjsVyuzyprBIZlGjzdxLz
 wLJjX8yBivj4wZvBZ25xixnZALgl9pejAmIvwFjLzKWM0TlTJKs1DRo7+5l7ZCYAJry5
 JWCPIwqXC/U2cv6E6lkSMCA3tTfPZTrKcxZItHhbPzlvjqelZBehApNsOdEMUbMm2mcQ
 t/jnfjRRFzkDFLhCw9/lqMutL4PgGKWcxMG8oFx6WCKVIfyoA2LSP2Kp+MEWHDS0HF5O
 MNtA==
X-Gm-Message-State: AOAM531Vpb1fxCK4LpiS+Ae2+a1sYe2YP5k9bgSADbRS4KMq0yXJpwid
 bqaHyc6blL+X/l5W2L7ay5I=
X-Google-Smtp-Source: ABdhPJxsC+4TTcof9z/OHJG/6NWbE6UbhfEGg7Yh4W72/NKnNh67brFJFmEc0qg3V4uOuLuyJqjZdw==
X-Received: by 2002:a5d:648f:: with SMTP id o15mr27742341wri.381.1637507157762; 
 Sun, 21 Nov 2021 07:05:57 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id j19sm6037448wra.5.2021.11.21.07.05.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 21 Nov 2021 07:05:57 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Chris Morgan <macromorgan@hotmail.com>, Lee Jones <lee.jones@linaro.org>,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-rockchip@lists.infradead.org
Subject: [PATCH] ASoC: rk817: Add module alias for rk817-codec
Date: Sun, 21 Nov 2021 16:05:20 +0100
Message-Id: <20211121150521.159543-1-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211121_070602_300592_A244038A 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
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

Without a module alias, autoloading the driver does not occurr
when it is built as a module.

By adding a module alias, the driver now probes fine automatically
and therefore analog audio output works as it should.

Fixes: 0d6a04da9b25 ("ASoC: Add Rockchip rk817 audio CODEC support")
Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 sound/soc/codecs/rk817_codec.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/sound/soc/codecs/rk817_codec.c b/sound/soc/codecs/rk817_codec.c
index 943d7d933e81..03f24edfe4f6 100644
--- a/sound/soc/codecs/rk817_codec.c
+++ b/sound/soc/codecs/rk817_codec.c
@@ -539,3 +539,4 @@ module_platform_driver(rk817_codec_driver);
 MODULE_DESCRIPTION("ASoC RK817 codec driver");
 MODULE_AUTHOR("binyuan <kevan.lan@rock-chips.com>");
 MODULE_LICENSE("GPL v2");
+MODULE_ALIAS("platform:rk817-codec");
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
