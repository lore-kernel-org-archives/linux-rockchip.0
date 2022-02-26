Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF0BFC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9Uv1TZIcI42EdMQEIhBCHY2Ol23AYhXP6JFNMzA6Ic=; b=BaI0DK+gD6cA1E
	mgLjYdKLpezeDXvkPt5iqvzjqogWn6uKfZpzAHfnjohbTSmzrnUNzRG60Rt/kxlbmiPkNDDDdC4lw
	wSxk6fWatEdFmbCt6s3Ma1DnnfxbcSkbUvtENhg7++MCvo4KRglqQ6KJbgcWesS0cOzKlbYqxdYZK
	oEwSIpNtA+FB9uSOPSOin824tRAomGz22MzImkx3XOtF49KWa6w8j+87/+hf2H3CSHoZbyGsWfvEI
	DsMAlkaTOTZCG1W0zIYO66WTQFKeUMEMqDiFdeWeec59+JoBZOA4kJbWhse+jxs1LP3nEW+0p3vr3
	sNK4FkEMdZGLk2+ExOFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO21E-008NHU-4U; Sat, 26 Feb 2022 18:42:12 +0000
Received: from mail-qv1-xf31.google.com ([2607:f8b0:4864:20::f31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO20y-008N7h-Mn; Sat, 26 Feb 2022 18:41:58 +0000
Received: by mail-qv1-xf31.google.com with SMTP id j5so9247354qvs.13;
 Sat, 26 Feb 2022 10:41:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RL6lgc9JQzCOWChXKBrpjhVjZkUp1FLcriOwSbYz2iE=;
 b=b8h2md1WmQjX7RhaC4BQiXX7tOqaDV3OwgQyAUEJr2b42o69PSbDY21E7A8rmT818U
 nPEoYJ6O4Of79/TnzbBDSiRGLY9kV8Ctr/Q0VBW09QYWbGP+BX0GOhZwXgLzuqYRM2M1
 fKG0ANecenEjmkV4kD9G+o1PfoUOG61SbaWWk9wB8eLC+U1ZdMbT0a2P2kf00GJ22q+l
 KOuAGo0zPeR6EfzmpgLUi1pRpKUWrLxXr31FutLGGMcC6ajXiMDavkIG6hvkA7u+Qd2x
 CC/9UMko58HF6N/FVmMDGNWAn1GlldmJC0/Eiuyt1rexsVW7/FhmD0UizILrIbtXlFQZ
 dYDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RL6lgc9JQzCOWChXKBrpjhVjZkUp1FLcriOwSbYz2iE=;
 b=kTudFzZY0sviDRQeMuVbyPOTBxmV1I8Byv6JUOfRqiw/YVeNhxW37NXNzx+RrJreGD
 f/YZlvIoKk5xBWUjSC4H/YcHxeJGWSRrgYY9Czrapa1o3uFL5/MHEp2wpLpe2smkMykh
 5+YLuWIUnwSCRSJjmVkaGPU5Ga0ZtRGVVBxulNysAXMqTg5n4lGvvKkKThnxmQ0Iz15X
 CJOIVEKhnj3DQtI+cbV6aB8RGzLX1i8L5M0iF2JsbU9eTTlu693qS5IL027QkFeYeSle
 47iCyDKHvQDi1JRBNbd9AkNumusjVplF/c/uyFTZtgp6SPS3eimyYHiN3XZenrHf39k4
 G0SA==
X-Gm-Message-State: AOAM531meVEOcNRORig/gzrG78m3IIG053FadZB0Os6A+4sgXreX7idR
 dcHw00YkRKX9KUopAwcx/Kc=
X-Google-Smtp-Source: ABdhPJy65A+/b7Lw1aZW6kWg9TL5CgvA5j41RS8nNYZCyADkvvYkoO/EsYCgDT1NG7Tj0FMyseujZA==
X-Received: by 2002:a05:6214:76b:b0:432:f424:4ea2 with SMTP id
 f11-20020a056214076b00b00432f4244ea2mr1533960qvz.121.1645900915655; 
 Sat, 26 Feb 2022 10:41:55 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 p68-20020a378d47000000b006491d2d1450sm2891983qkd.10.2022.02.26.10.41.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Feb 2022 10:41:55 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Vinod Koul <vkoul@kernel.org>, Johan Jonker <jbx6244@gmail.com>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh@kernel.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 01/11] dt-bindings: soc: grf: fix rk3568 usb definitions
Date: Sat, 26 Feb 2022 13:41:37 -0500
Message-Id: <20220226184147.769964-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226184147.769964-1-pgwipeout@gmail.com>
References: <20220226184147.769964-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_104156_762483_D856BABF 
X-CRM114-Status: GOOD (  10.97  )
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

The rockchip,rk3568-pipe-grf and rockchip,rk3568-pipe-phy-grf
compatibles were incorrectly assigned to the syscon, simple-mfd
enumeration, vice only the syscon enumeration.
This leads a dtbs_check failure.

Move these to the syscon enumeration.

Fixes: b3df807e1fb0 ("dt-bindings: soc: grf: add naneng combo phy register compatible")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 072318fcd57b..5079e9d24af6 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,8 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3568-pipe-grf
+              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
               - rockchip,rv1108-usbgrf
           - const: syscon
@@ -39,8 +41,6 @@ properties:
               - rockchip,rk3399-grf
               - rockchip,rk3399-pmugrf
               - rockchip,rk3568-grf
-              - rockchip,rk3568-pipe-grf
-              - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-pmugrf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
