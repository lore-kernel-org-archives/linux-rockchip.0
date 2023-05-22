Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 727A8C7EE23
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 May 2023 15:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DbdGXQUsDK57sI7Y9LZBemn/tgEz6j3SY+W9JUgnhfo=; b=e4HXVBpXXSYu9V
	d/pHb4dLMb1alF9atcRd+a0h9aylfacVC6+tVxmCoI83zfxZbo5PH7zmNYSx+674PpF89Cyi5LcD8
	sKZQ28j1/7fTt5TJt/n4ufqIYmLDvKJXmCoZT3RmxyYYiS/9S7oYZRNQMPV8rqPyPVKV+SGG0x0dj
	Pk7M/OoZodfO7gbwEXuOA6sjRFoeKRLcbWaLYNVilpqDUYTEViS5WHEYoiYkOuB6F7moS7aQEX/I7
	qgSWrvFu7PAgGooDxAzasqgtUkFoT7FhRYUW2A8Y/tssUDzKsZd9Zu0aljHpjPZYqWVF7AeSI26OY
	PZDJiKZzBcnJfKMlw22w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q17pH-0076Ee-0K;
	Mon, 22 May 2023 15:51:59 +0000
Received: from mail-io1-xd30.google.com ([2607:f8b0:4864:20::d30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q17pD-0076D3-03;
	Mon, 22 May 2023 15:51:56 +0000
Received: by mail-io1-xd30.google.com with SMTP id ca18e2360f4ac-76c67634c24so68955139f.0;
        Mon, 22 May 2023 08:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684770712; x=1687362712;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BqOE5x2+ni1n15spyoB1Lf2HOj8Vrz/keawyBSdQh6Q=;
        b=FeDPVWKX1y/A+/QN/GgyITdBkWKhzQmBXtOAeveM9fakQRw+0yCSiYgtoP3FdEHP/A
         OQpw7FZ2D2R7+5M7D+epBC9QXCtZWDUbXwtAa3HDGSK3FX9KobZHcA0ewL2ThRfwrJtL
         NeJkQ4kdJ1zHLLgH4Ai2bulcF5EyuHLk7wan0cKr3v+JIQa1veewHE/Yq9LpCND12YUt
         3i6UpQIY/gh9EmgYuvIROAW9HaYXBKsbshfCoL1aFxneOx+qtzwUYmcxvHJNCtXWGav8
         53CtWiKN6P4giZYGPfQuhz7zps1qF3XLoGMEc2VQ5ZdAPXyY4cXv73X5kYAMJcF9evxi
         Mqsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684770712; x=1687362712;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BqOE5x2+ni1n15spyoB1Lf2HOj8Vrz/keawyBSdQh6Q=;
        b=DzjBK3QANeGelhNdD3VpYba6ANZBQRax8bWwWqo7d4WPEaLrvCywKoc1GIa65EIe5Y
         AEe3+HWAqCP/Y61WqCQkV5JQrJJiogKzWM2AN17va9j+an6VlG8WxnItGzhMmZF9Oscu
         TzfZ15Iahn35MkkUPvSpwDp8uXa91H6LaOHQd/sfwjJajMg+GKW1dUJTC1v/AOa6OJrq
         0ULMaizigYpdxcjMaUmLWWrU9aBC77+IFipdtg3LsVkkJkYaDPi73gjhB/Br56q+3DaR
         MzUfO9g0PEovgjw8oZcxa7lnMcYWA3wts/OVYgUjx2j9u9BGkH3WP02yjIlcK2hah9n9
         yRMw==
X-Gm-Message-State: AC+VfDx4kVCQYB7Hr6BIs0fsUX8XwIPMZScUTOj9LO43nCVq8qOiZx7Y
	4NUboDzvUcSpjV3ypVahu3E=
X-Google-Smtp-Source: ACHHUZ7g1TMkvP1QL7x3isKwGwC18gojdks6P7npooE82OjMS3tbyVL8pfNYyS+woUW674ZPdO+mUw==
X-Received: by 2002:a5e:8912:0:b0:76c:8cbe:c8fc with SMTP id k18-20020a5e8912000000b0076c8cbec8fcmr7928967ioj.3.1684770712392;
        Mon, 22 May 2023 08:51:52 -0700 (PDT)
Received: from azeems-kspp.c.googlers.com.com (54.70.188.35.bc.googleusercontent.com. [35.188.70.54])
        by smtp.gmail.com with ESMTPSA id n15-20020a056602220f00b0076c6f5b8db5sm2083125ion.16.2023.05.22.08.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 08:51:51 -0700 (PDT)
From: Azeem Shaikh <azeemshaikh38@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-hardening@vger.kernel.org,
	Azeem Shaikh <azeemshaikh38@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] drm/rockchip: Replace all non-returning strlcpy with strscpy
Date: Mon, 22 May 2023 15:51:49 +0000
Message-ID: <20230522155149.2336620-1-azeemshaikh38@gmail.com>
X-Mailer: git-send-email 2.40.1.698.g37aff9b760-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_085155_074871_42A6CDD4 
X-CRM114-Status: GOOD (  11.01  )
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

strlcpy() reads the entire source buffer first.
This read may exceed the destination size limit.
This is both inefficient and can lead to linear read
overflows if a source string is not NUL-terminated [1].
In an effort to remove strlcpy() completely [2], replace
strlcpy() here with strscpy().
No return values were used, so direct replacement is safe.

[1] https://www.kernel.org/doc/html/latest/process/deprecated.html#strlcpy
[2] https://github.com/KSPP/linux/issues/89

Signed-off-by: Azeem Shaikh <azeemshaikh38@gmail.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c   |    2 +-
 drivers/gpu/drm/rockchip/rk3066_hdmi.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index f51774866f41..9afb889963c1 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -797,7 +797,7 @@ static struct i2c_adapter *inno_hdmi_i2c_adapter(struct inno_hdmi *hdmi)
 	adap->dev.parent = hdmi->dev;
 	adap->dev.of_node = hdmi->dev->of_node;
 	adap->algo = &inno_hdmi_algorithm;
-	strlcpy(adap->name, "Inno HDMI", sizeof(adap->name));
+	strscpy(adap->name, "Inno HDMI", sizeof(adap->name));
 	i2c_set_adapdata(adap, hdmi);
 
 	ret = i2c_add_adapter(adap);
diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index 90145ad96984..b5d042ee052f 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -730,7 +730,7 @@ static struct i2c_adapter *rk3066_hdmi_i2c_adapter(struct rk3066_hdmi *hdmi)
 	adap->dev.parent = hdmi->dev;
 	adap->dev.of_node = hdmi->dev->of_node;
 	adap->algo = &rk3066_hdmi_algorithm;
-	strlcpy(adap->name, "RK3066 HDMI", sizeof(adap->name));
+	strscpy(adap->name, "RK3066 HDMI", sizeof(adap->name));
 	i2c_set_adapdata(adap, hdmi);
 
 	ret = i2c_add_adapter(adap);


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
