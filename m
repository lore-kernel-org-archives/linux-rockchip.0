Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A159AC46CCD
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Dec 2023 16:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9u9N5AsP0DhJVPvEPGXILT/PZf2D1LxuhA23sVtvGmU=; b=Mhl55zzoG8FZB3
	lBg/IdgVRXZzSTkKBaB/Zav/cnLhTT1LfHe7so3GtGPm42n0/U9BK/+y2lj7NRxx4nXJ9GEzUYufR
	ewDGm1SFZnWFVobVg8yuytcLmUq17MP6MLYXplym2rSYP5lc8xNjWMMFLIAgmpzYgYsMP8qVUQ7cC
	5w9NiAQiiSVrtxcOGQnpIZg5CIQbHtp1p7HKGQs8jhBb37yQznOYj4ledwXK6+LJanih2Zrh/FSlo
	mssiIHYof4AXKrQ8Sun38q5nBpXdYeoXyj1wBIVC3zqJ+hRaZTCgYOX+MpL2eje+ZUeksm+PSeUvV
	vetPbEnb2F5szjnxsS2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXWX-006L1c-0r;
	Sat, 16 Dec 2023 16:28:21 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEXVX-006JwA-1y;
	Sat, 16 Dec 2023 16:27:20 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a1ca24776c3so523898666b.0;
        Sat, 16 Dec 2023 08:27:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702744038; x=1703348838; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uYVqczyH7NXnPG1SGiVfMuDstNC9AVi+qa/g94ih5J4=;
        b=iK7mwAbQoFjYSxl8GWpa/xqeyJbvyNhTkIZexxE95zbc4ZHiowX//yF5j8rYVFWZOw
         T7fbH5ve4rlS8z53AWx8oJeCXct+lknWbG28RFQPwOcfSnDOoArLuG8YM4b7itW7Zs+s
         7sTyf2QYPD0YbxQ58slj/3GzNxWH5OMOLhAmO/CZ69AIzen8d4s/XzWacbF+FnhjwLRG
         ZicrPt0DGfLjmLSFjAaFvTya6C9H/tKwq6wMGBMi3vg8MrBUlTaWxDtELYyAilk+fM/t
         hX1OPkXSKpjsd6HLyid/DC09rJBv0nHrvkyxgaKQzXTguZp/s3D55TvhqN47OLPjt9nl
         2X4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702744038; x=1703348838;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uYVqczyH7NXnPG1SGiVfMuDstNC9AVi+qa/g94ih5J4=;
        b=NFwJ39/q+2oV2t2FlEuu0KJJOmowBQ6G5hKzgrnB6T01Nv2Bin2hlym22VCr/6Ouaa
         cMDjAECVVPWlcr+yu4i6/uPHrmn8rRMhfZCNjDNImDX12JHnjjk0XaZpEOgQw5PBu+HD
         tylJyDlQmAKu+xdAfiS5wKoNyYMG9GZ1WS4t3ro6CT1PuqayWcavTHlpmbjv1fetIPwf
         1xWFxe3eLbbHtCBYTR5/vdW5tw/ATi7n7gcR/5/I/SeAGd6oFtN5q5+sdD96GHLF1afX
         0TOrc3FVlyAOsJ0vdHX/aYtBek9loGxAAS5QqGUh/F3WsdqU9vEqz1xPBnKP5CAasLIa
         Hs9g==
X-Gm-Message-State: AOJu0YxQGBtRNfBjkvD5Rnvoot9IKAs5xXoCcQ9e0ypi0jsfaBLdyPj2
	URSJNxV6TGLyUJkPpFJaVw==
X-Google-Smtp-Source: AGHT+IFQguCjqhAt5YMtNc7JRxmN3MqTnMpRgT1krDRhGkQTlTpXIYTPCKozsi5nGRJMmdtgCFPTcg==
X-Received: by 2002:a17:907:12d6:b0:a23:3828:573c with SMTP id vp22-20020a17090712d600b00a233828573cmr157926ejb.3.1702744038296;
        Sat, 16 Dec 2023 08:27:18 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:e807:d345:6f47:1db9])
        by smtp.gmail.com with ESMTPSA id st10-20020a170907c08a00b00a1cd0794696sm11990362ejc.53.2023.12.16.08.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Dec 2023 08:27:18 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andyshrk@163.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 17/27] drm/rockchip: inno_hdmi: Remove useless include
Date: Sat, 16 Dec 2023 17:26:28 +0100
Message-ID: <20231216162639.125215-18-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231216162639.125215-1-knaerzche@gmail.com>
References: <20231216162639.125215-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231216_082719_683367_34602CF5 
X-CRM114-Status: UNSURE (   9.64  )
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

The inclusion syscon.h isn't used anywhere. Remove it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes in v2:
 - new patch

 drivers/gpu/drm/rockchip/inno_hdmi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index d9eb8cdc0148..62c7e2275246 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -10,7 +10,6 @@
 #include <linux/delay.h>
 #include <linux/err.h>
 #include <linux/hdmi.h>
-#include <linux/mfd/syscon.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
