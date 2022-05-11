Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 503CFC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 11:35:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QveAlHGmcS16EEXZxq9yDa3Wn0+eyQJDOK2OmXigEhg=; b=qq+Fa4fazv4mNO
	Akg30rR1ieMEOSgzF0K5EOdT06frU28fIcZ7ATEkqQPwX5AppuR2QSWTeEZnsvUVrrwRVMHTACxlU
	8o5IeKMjzU7cOnyV+XG7qUYsBomWt14HnV7i+HZW9M+D2gIvkhwqcGc4UmG8H0HRT0BA7LP3m3muq
	YqRpGoTj57MS90uxF+q2jVraMA3GMbjkKp90aUzHg8SD0bKbMgDQDUH6xuNRz2x25O6AOaIAxYsQe
	dzaSJQSphb9OOezX2dRWw9Ip/roqmNMDFXc4iNgKSHdhue71sbQ8I3/KpuqFALHmGdd6ink3EwQBB
	E6l0j/oKiDTzKEO78GkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nokd9-006Wp8-9g; Wed, 11 May 2022 11:35:47 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nokcn-006WZi-UI; Wed, 11 May 2022 11:35:27 +0000
Received: by mail-qk1-x730.google.com with SMTP id a22so2030265qkl.5;
 Wed, 11 May 2022 04:35:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=onb5iDrr9AZU/Apv2XZLPoTcQR9Y3vPO5TDtvXQcOxQ=;
 b=oVqrjx29MINK52QwG0IJPDvlqXIqV1zPBJuiMpjtBXE/hIPoGg2X0+50kTplBxthYH
 D8vgtq7PprMfds50WIs0tN7TVvobuqfjnLIvdWXISuIiqeyE14SDl6KP700a2MzxgN9U
 KmHV6SKRcvfFxc5H0gQFg8kXvtmVCbsfGZAqc8bMksmhSlQaFXrPcvPZBevEYfcwda2m
 jHnGyRIfPk7F7REPHZz6eG3+tIEv+Cpt7/NgiuVGUr8fWtzNw+WwdCOKvKoZ2RXTTMxv
 mLVsvIBTP+s6aq5z94/ajvYjXSudDUOeXLMEHNAvjE26Ie5qRTNfXMVAcxU3Li5u7xdI
 vKbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=onb5iDrr9AZU/Apv2XZLPoTcQR9Y3vPO5TDtvXQcOxQ=;
 b=4bcUEygGqmikkvfCd/45/SjuJEuzfP6NnvWro8EdWTQwuDa5Yq7ih2cLlcnG4g8m4O
 ypiSdE5uo3NdFU+b38jkVYPpbrHtyJO/BBrUrybChCCn7mGYy2hxmzok1VHLdMfKAbAW
 ie/w4aK6CZMq+n/G2LMoT/QVJJWrEZumHfXN/w1bFWLMrMNwjwFcUC6nD/OyQU5sOcJm
 2NenAhNyFAZXTo3FPaUwaP5TSfp1Vv3fPB9+FHnV+uv8KVRMH/tLo/vMwhvwfYV35idY
 Zimaz243IWwRlfdwv5H0iB1E3AWrsqJqw/3Mu3pqlyObklHn1bslwofzHsmdBKqrijNI
 Wsrg==
X-Gm-Message-State: AOAM530TlMsswqUI/S7euwhd1CuXtH+oLRkt5Pu7xaHJpHqG0dSUsPqG
 s6oheQE1VgvR7FE1VZtN8rGnNIz/NE67nw==
X-Google-Smtp-Source: ABdhPJxvEn0z8OWVAW1knWQ+gSB6bMqF0l8ZwTwgkUjNFMazkzowO+pRO9zxox34S+7OYWmauNF4wg==
X-Received: by 2002:a05:620a:2407:b0:6a0:5027:f4d5 with SMTP id
 d7-20020a05620a240700b006a05027f4d5mr16378491qkn.318.1652268922439; 
 Wed, 11 May 2022 04:35:22 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 bw26-20020a05622a099a00b002f39b99f6basm953377qtb.84.2022.05.11.04.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 04:35:22 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Cc: Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v2 2/3] drm/panel: feiyang-fy07024di26a30d: make reset gpio
 optional
Date: Wed, 11 May 2022 07:35:15 -0400
Message-Id: <20220511113517.4172962-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220511113517.4172962-1-pgwipeout@gmail.com>
References: <20220511113517.4172962-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_043525_997450_A87206C0 
X-CRM114-Status: GOOD (  12.59  )
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

Some implementations do not use the reset signal, instead tying it to dvdd.
Make the reset gpio optional to permit this.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c b/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c
index a9cd7135cb51..ee61d60eceae 100644
--- a/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c
+++ b/drivers/gpu/drm/panel/panel-feiyang-fy07024di26a30d.c
@@ -209,7 +209,7 @@ static int feiyang_dsi_probe(struct mipi_dsi_device *dsi)
 		return dev_err_probe(&dsi->dev, PTR_ERR(ctx->avdd),
 				     "Couldn't get avdd regulator\n");
 
-	ctx->reset = devm_gpiod_get(&dsi->dev, "reset", GPIOD_OUT_LOW);
+	ctx->reset = devm_gpiod_get_optional(&dsi->dev, "reset", GPIOD_OUT_LOW);
 	if (IS_ERR(ctx->reset))
 		return dev_err_probe(&dsi->dev, PTR_ERR(ctx->reset),
 				     "Couldn't get our reset GPIO\n");
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
