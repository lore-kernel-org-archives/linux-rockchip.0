Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65606C46CD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 17:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dydg/f93CaAIpeK9CZCvlnaPNDKwNONLjhZY+IhQC7Q=; b=kQct2dPPsrvXTR
	FpUgd2F6PpEkVBfPobXqHA3izT1qjIIfn4TgG9ZaPT6a1xdJ8EmMh6aDFmy82CCd4eB6Jyr1gVXT7
	+dGVp5PFByQOJe81EITDzK/a1Pno9ai3JirVHWGfaivwq5tBEJJnMEQNY8B34ncCwAF2Ktmlx8DQU
	VJgK06vtKyN/+7VC0q0M2p5wmDkobtZc9JGiMBpBx6JYUHVuo2ya01Hyxoik+H3OjedsK0192EEPk
	9CGJzof7/KXwL/U/wpCI51iV5pyZO3Tsm2Zpj6m3DBLf6m1yKJkG042yDSEVVp0dDKjwmNDEQYLjj
	TcWGdXKL+KC2TChX286w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjZS-006Y9x-0H;
	Fri, 22 Dec 2023 17:44:26 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGjXf-006WRF-1o;
	Fri, 22 Dec 2023 17:42:37 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3368ae75082so1045095f8f.1;
        Fri, 22 Dec 2023 09:42:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703266954; x=1703871754; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fVOgOlLPAvEr0sLISb9E6/KYZz//LU2ejxtiVGPulEQ=;
        b=FBqP7emvlcGilzMNgsUX4fZt4liowegwr9dytPuZmciPwqLlEXg8g7tqt4LkesWaXJ
         jMi+3pcRAQZde+3y4OJ18qyHrua+5ojf3SbUjfyJQvioYSJP0aUnGgKOCiKsgBVQy1Ln
         FhhGTeZb2D0PFA12OrkPfH6UgfBcQYwj8c9j/Y2GHKf6q7FkCXXkJKTKZ3OMjpTKe4Dw
         o33yIkDUMZtCliNbvjVGeHL7CZIivQweJ9oyNwiFEHqT18r9y1wvXT1ifaHAQzoBs+oI
         KrzAzFmONqMwl7x3dUWWYisb+N93EIp14YNsLYalbOy8I3h3R27v8+N4eHRwWvySUE6l
         Q/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703266954; x=1703871754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fVOgOlLPAvEr0sLISb9E6/KYZz//LU2ejxtiVGPulEQ=;
        b=Fltv8bhuFZpT0OZkA1KCTKRuF7cSkAMKYGQqlUmgruhAfR46CoTYoGIzIHqX6ff4LQ
         pqleiaQMXkhNmyHA/vJL/3dHHPiP/olcGxn4m/jCOMoEHD15M6x9df4l80JABAMu2/PB
         bMnxjZtD2d5NUoVjTOD4xlnbXrFJdwsKpPeZgCbQ9Wx3Vb40PGwXah0HekxY2ipV6DwZ
         cV86uVPuzB48wMAk/5w6puk4c2eyXuk54u8wYG/m4oXOWR4q1k+bE+eZYuksdxjSMEZ0
         aCdGckMkrfJs2HOC48rBotzk4MyDfuOUFV6a4iclSMSdj/MOkcnZli4ikGFD/Dj0BNqh
         TPMw==
X-Gm-Message-State: AOJu0Yy3dJaOiy8/O/dZzwFAW7o4zwxyVAKyAnNLjazcOjuDc/AdTy0o
	JEqxeM+r/0+DUlHiEbf9HA==
X-Google-Smtp-Source: AGHT+IG0VO/bIXEiwSNnQQTPGjLRg14lP+2fe564PcKz/X7g3SD2+YUJXu7x0ci0ig2sXjCTtOJ87A==
X-Received: by 2002:adf:f74a:0:b0:336:8030:214d with SMTP id z10-20020adff74a000000b003368030214dmr748542wrp.19.1703266954331;
        Fri, 22 Dec 2023 09:42:34 -0800 (PST)
Received: from U4.lan ([2a02:810b:f40:4300:f3ae:2788:7e03:f44])
        by smtp.gmail.com with ESMTPSA id w10-20020adfec4a000000b00336670abdcasm4777116wrn.40.2023.12.22.09.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 09:42:34 -0800 (PST)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v4 17/29] drm/rockchip: inno_hdmi: Drop irq struct member
Date: Fri, 22 Dec 2023 18:42:08 +0100
Message-ID: <20231222174220.55249-18-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231222174220.55249-1-knaerzche@gmail.com>
References: <20231222174220.55249-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_094235_603512_90E939BF 
X-CRM114-Status: GOOD (  10.07  )
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

The struct member irq isn't used anywhere. Drop it.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
Reviewed-by: Maxime Ripard <mripard@kernel.org>
---
changes in v2:
 - new patch

changes in v3:
 - collect RB

changes in v4:
 - none

 drivers/gpu/drm/rockchip/inno_hdmi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 51c1a69dfcc0..138cd4287dea 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -45,7 +45,6 @@ struct inno_hdmi_i2c {
 struct inno_hdmi {
 	struct device *dev;
 
-	int irq;
 	struct clk *pclk;
 	void __iomem *regs;
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
