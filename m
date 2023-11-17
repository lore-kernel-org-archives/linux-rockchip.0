Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 111F2C5ACB3
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 20:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tOcPzfYWu8OyGtbQY+bd/qwQw2ukKrABpjGWbG5Fitc=; b=LftHFUy98CZK+z
	D3xemYcLOgUdpdJpL6x1rTLrP7P5sYRF8y/AJlcBkw6IjfgTCPK6G3B0sLGL0eBU7FvJ7gv2aFPRI
	6vM9+F/xlLKXa7NLvAusahiZxvAgwts8gH59XhZMSPYalKR/fNMMiaJ5CvKv+JsLF2vzx98pTsCui
	bnTyzXM4ROyQQPoW6vZs7Yl7aHWGIMToiOTU8uX3nucy/EdJCuXkNb+LLBuVMOUgoh+RuIDeGnXHi
	8yrMkGVd7ZKaE346BkJyfgQuU3vE/x+vH4d0Zg5dZByzMkZuZa0qJl6/HdCFMwF8jwb7yzkCYgjMu
	6UHn/hyFLHLqHfDGaMsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PS-007Elq-1T;
	Fri, 17 Nov 2023 20:25:50 +0000
Received: from mail-oa1-x36.google.com ([2001:4860:4864:20::36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PN-007Eil-1K
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 20:25:48 +0000
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-1e9c9d181d6so1333234fac.0
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Nov 2023 12:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252742; x=1700857542; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8YEgY9ZT7EiPnB9BBj7vVf8RmyWGZIlUy6iEpY8nmGA=;
        b=gWTfmjIjdj9a/WYXqhA4NH5iPtRPpfcFyCrN5EC6yYTgkChFKlto7DUbywuQcWFR+w
         oeVPbHszDDkpUkTHLFWp9l/Pi4GQvFdikHP1j3wL5KyQNrbrWMbYR6IAlaXHb4CJ1xq2
         Cu4Qa+AW0WNMw+56/U9bIMS8fTTfKlKBHLJEfFykxXJYFVv6CP35qiypxmou4Cks/h7F
         tIQIiD2Hj785lfF19DE2VCkQsdD79xwIr8kNe34uDhXaQlNLFOOFZ+vLNAdm6bPZLcXC
         m10bg0SEww4g1nZzeQKs3Hhm5MTRm5OaQCob/ElWh7tbOz0fxpaIInXvK4C9H6kFdFRB
         Yd5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252742; x=1700857542;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8YEgY9ZT7EiPnB9BBj7vVf8RmyWGZIlUy6iEpY8nmGA=;
        b=wMhEwd4ZnMFbaatkGkOiNjzvBoyYzEwLdrFEG2O4CavFsSKwWdrEPKeIPjBnXoDAOC
         zGdX5Z5OGxeVowoa8UXUZV+mX8ON4VkxNevWWawTf4r/gEAkCeWGGc/Os2AH+FEP2p6g
         XgIMzU3o6zPsF0uWLYqpheE7dZUif+R25+/dCNELuhb9azLVCImAuchT5/hKERdghgDI
         OzstPAmYXGZyK3An0fY3ExnuuBkEabmG9c+9KO/UdOzDXzkhALMlgDlrWx3cBioWyxpn
         YoI4fLmJFkC+/gJZq3zxFLlll4xW4k2GegC/1pz7kM34vTUJ0WUNQ6Q+fRpC1k383Qnq
         OLRg==
X-Gm-Message-State: AOJu0YzfVuQo8XCg096vn/hAXFOyu4VZGDL5SAzI0SDiTImeK7MIywkZ
	qH010IQBMHn4MlpO1HN3ja0HDEebcjc=
X-Google-Smtp-Source: AGHT+IFjVKENFjedAKB0p8uRVXHf+/TVB7NzTGb0+zWfV0zF0I1hQzrNkznJ2oiwFcLijAaN87J0IQ==
X-Received: by 2002:a05:6870:9a8d:b0:1ea:3e52:b66e with SMTP id hp13-20020a0568709a8d00b001ea3e52b66emr325407oab.41.1700252742284;
        Fri, 17 Nov 2023 12:25:42 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:42 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>
Subject: [PATCH V4 2/6] drm/panel: nv3051d: Hold panel in reset for unprepare
Date: Fri, 17 Nov 2023 14:25:32 -0600
Message-Id: <20231117202536.1387815-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_122545_447759_92456B06 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
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

From: Chris Morgan <macromorgan@hotmail.com>

Improve the panel's ability to restore from suspend by holding the
panel in suspend after unprepare.

Fixes: b1d39f0f4264 ("drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel")
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
---
 drivers/gpu/drm/panel/panel-newvision-nv3051d.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
index 79de6c886292..c44c6945662f 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
@@ -261,6 +261,8 @@ static int panel_nv3051d_unprepare(struct drm_panel *panel)
 
 	usleep_range(10000, 15000);
 
+	gpiod_set_value_cansleep(ctx->reset_gpio, 1);
+
 	regulator_disable(ctx->vdd);
 
 	return 0;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
