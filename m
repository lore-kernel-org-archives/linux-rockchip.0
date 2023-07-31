Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06B8CC001DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Jul 2023 11:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QAdlfTy0vdhEvOksb6jxfy9YFOhKILOJ0e5wq/AzlPU=; b=0nEfylnlr6i8e7
	zPxFHEuoyeaDsNTDNQV7c2QSyjpfkaD6X015tkim7WnxCouEa5RIJcAIIsrZEE8SIQddH3fwr7xE1
	wfQv7drW33qwmN0Y6x52aJW8Xm++pbP4Urd4ByTCcL/51mO3P1Jgk+8/QGsWw9nUvVsU6q+GXE6Bs
	YiY8VxEbEtVTyV4XQTKM31iopJe5AkCE0bIIp+828ZqjOxuGwzrIuOd8o9PA8FJY3pGO4bag3qXHI
	WNfKV3sxy9le8n0gg0XtwokqW10y27CrCVuf/xQOJZK6va2+kuCXDZFDu+088+FxKQxW4T4ihpQ1j
	DgF0RRcA9h5Na3YwjDOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdy-00FEQj-1v;
	Mon, 31 Jul 2023 11:00:54 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQQdt-00FELu-2R
	for linux-rockchip@lists.infradead.org;
	Mon, 31 Jul 2023 11:00:51 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-1b9cdef8619so26473845ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 31 Jul 2023 04:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690801249; x=1691406049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H0WMB/rKA9SZTAI1IQRgHdLwr9J9XpTfTTdRysuLNm8=;
        b=B5wiNiUNBpQ5/cm40/5mR4Euud/LcpM2S1MDoIhxXQh4qa0LaT3RnuFzQxcKYIZVtK
         OIYrOjJcN4e2IcQt/rEdX/G/Qac+0oT/hHO/kJHGblNusnkn0KMYmETjY13t9ygONCag
         iiL1zd6KVsTRyjR3NfxaHbbXPNoB8l30xTG/wfcYEXg9FvCL4jKVTl/K14hA7SXaCXEI
         pHPARmy76/91ptYMjZmOiB7aIoiRY6w+0AFbtQCD1+FL59+47pX9+JpD7p3We8E4rLO4
         zqBW+mogigC1d1nu+LhrHDWribUeFW02vbxg41RqM3hWGkjZFiIAcGPdu55womGQX6KM
         qd3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690801249; x=1691406049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H0WMB/rKA9SZTAI1IQRgHdLwr9J9XpTfTTdRysuLNm8=;
        b=JCyyUqNUse0DR6WhlB9id+nCx4Dn5x9/yedl2il14nARwU60klMa0bQROM7vFNtZTv
         tihld1xQMTwQ2fE0WCqKJSNve+tluYK/0lGeQ+8nposi1CunxYki8/TaCjPpGWSIr02P
         tDSZCMG15R+fNvjvOBGsicuz/S8AG08+jSrd1zVc8oy66tu0DE+UYxBw7wfmz+PJcJcL
         Nav6bMi5wQGRaf/vWk/CzaYwObrHEnZ88O3Ttj0kOntIcrBlHZzw3KD+7xQ6fsR2GHyr
         odOm/EPDAVI5jS5iGOyDi7+IGEcGBnqzCUAkdMNPZayemIijQIcdR0JdOHWZl+BxM0nt
         NnFA==
X-Gm-Message-State: ABy/qLYvi/LEywrxaIXt9gAB0xYERA//Dja/Fa/tKRsR2CQQ12bT/fAt
	VA9umoQ7luGbcfvCvWPMmW3lNg==
X-Google-Smtp-Source: APBJJlEL6GyYYARcEpmECY3j7mHuoZbCzpcyxxbV86ML15IxgqlhlJDvc/OuaitgyiGInsT10WH8eQ==
X-Received: by 2002:a17:902:a40d:b0:1bb:20ee:e29e with SMTP id p13-20020a170902a40d00b001bb20eee29emr8855585plq.1.1690801249350;
        Mon, 31 Jul 2023 04:00:49 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id t14-20020a1709028c8e00b001b1a2c14a4asm8281096plo.38.2023.07.31.04.00.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 04:00:48 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Jagan Teki <jagan@edgeble.ai>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 07/14] dt-bindings: display: rockchip-dw-mipi-dsi: Document rv1126 DSI
Date: Mon, 31 Jul 2023 16:30:05 +0530
Message-Id: <20230731110012.2913742-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731110012.2913742-1-jagan@edgeble.ai>
References: <20230731110012.2913742-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230731_040049_817329_D2279B5A 
X-CRM114-Status: GOOD (  10.36  )
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

Document the MIPI DSI for Rockchip RV1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Cc: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Sandy Huang <hjc@rock-chips.com>
Cc: David Airlie <airlied@gmail.com>
Cc: Daniel Vetter <daniel@ffwll.ch>

 .../bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
index 8e8a40879140..ccf79e738fa1 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml
@@ -18,6 +18,7 @@ properties:
           - rockchip,rk3288-mipi-dsi
           - rockchip,rk3399-mipi-dsi
           - rockchip,rk3568-mipi-dsi
+          - rockchip,rv1126-mipi-dsi
       - const: snps,dw-mipi-dsi
 
   interrupts:
@@ -77,6 +78,7 @@ allOf:
             enum:
               - rockchip,px30-mipi-dsi
               - rockchip,rk3568-mipi-dsi
+              - rockchip,rv1126-mipi-dsi
 
     then:
       properties:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
