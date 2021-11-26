Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A82AFC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 15:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAolypsTBWo686Zqhc7vdCAwJT3gYXOopoheoutZMHo=; b=0F9j2IXxDLvsbC
	bI3T8XYf5jmA2LYaDGC4yyoBL4fKg1H+v8zcpBwfOYRwGlUZTsR5xFFZFTxJuA0bMnEb6LtHmdxHy
	8Wb57AjrHrAlaKvPQ84bhTQXpIJW4uRd6MTdPDY5hsVGHZ0hr6AGOaMi/xSLuOBT9UqD7GXfEpnbO
	V2iYFVr9KJ5A8ooaN4kxlGAXIGBL81c4tJ9XywBjs0Ghgl9uGKG5hwm50kBGFY5WgjHDpdIE2Z0hM
	huLqdONjZiuOw2HC7y0fmu+HkOX1nPX3qK723lRXY52IlFDGjNT2HUl8JKn9YWZsMFUkxOM5E6wqN
	N4vs0k5DJjnQzg8RSQvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqdOk-00AyzF-NB; Fri, 26 Nov 2021 15:44:26 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqdON-00Ayrl-33; Fri, 26 Nov 2021 15:44:04 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 133so8528470wme.0;
 Fri, 26 Nov 2021 07:44:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vwik1mNyYOqHPapDPau3aXiBOWO/s+qGHcQQOuPlOlo=;
 b=lNhEXTCpWNUM0kA/YZetRxWEfoskR9epcAPlrhHy7Eg3wdHRlO9mdyGvSioewMfzov
 KeWFt8hposfcdrE6uHBbN9I1jebhbGRQnga2AdcLnMtwyuPjft4DjR+33ko0Xokw35kA
 N/zAuWvtmOEZpjQcgD6cl828sSjwvlobLf1wztIeWVc4n5xDlQW7elcMzoxyIayVwHJz
 FF8iJ0nFrBPpqDhwYKD6qB7KT+gOCwkcp2D28m2cCAWM40GxNKfVvvWNo9XQ7wiP1Urn
 w4gwy58tq3ORYpoEAYsniInGT9fE7XbEsfsP/yeqdTb9Au2tPlIU4gyPLNAddMpyQ7Ib
 zF0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vwik1mNyYOqHPapDPau3aXiBOWO/s+qGHcQQOuPlOlo=;
 b=eqtSVuBmONkdSBFdtjZ67MppPWgyOtu8qnDpKw62+igY9GtoeCHQfcrPJ6VZ944eu9
 4vhsGKEGTCqAZ3dvt96rQEqANcyft8oy3FCzZHmTmU142gsJRD7ltWlEESj+A/hSMcdk
 7d+8Xm1ZR5UOJfcp9FFUNdFbKDKkPqC4qgVAYKXS86JHP9uZr/kd6e3BYsh2F+QOEwnw
 ay8qlYRY+a+Ts7elm4+fEzGUm2HwccZFHo4sKMhYRfYC5MmkrO9XVpGBUKzDotQvNkJ3
 rX7qfZEebfShmKE7yi23OdW/QcHMZdpVIRAQK+6Ro4GT1YqISyE3nywDBzER4a45NF7R
 dY5A==
X-Gm-Message-State: AOAM533lTRJpccf4wGuX29/2+CSAl5KDVsuN2Yz6pebap+TdCVvpR9C1
 iOC3H4phS3UCA1sDba+/CUg=
X-Google-Smtp-Source: ABdhPJyna8G70WLf5w5vpFT9RgXoRgiwSletYSWvInDUnf9igjG7bcUOLu7KFSJe6TJVbtLbitzkVg==
X-Received: by 2002:a1c:1b15:: with SMTP id b21mr16095117wmb.174.1637941441249; 
 Fri, 26 Nov 2021 07:44:01 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id p13sm11372400wmi.0.2021.11.26.07.44.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 07:44:00 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: spi: spi-rockchip: Add rk3568-spi compatible
Date: Fri, 26 Nov 2021 16:43:42 +0100
Message-Id: <20211126154344.724316-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
References: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_074403_156797_6896F993 
X-CRM114-Status: GOOD (  10.09  )
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

This adds a compatible string for the SPI controller found on
the RK3566 and RK3568 SoCs.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 Documentation/devicetree/bindings/spi/spi-rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
index 7f987e79337c..52a78a2e362e 100644
--- a/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
+++ b/Documentation/devicetree/bindings/spi/spi-rockchip.yaml
@@ -33,6 +33,7 @@ properties:
               - rockchip,rk3328-spi
               - rockchip,rk3368-spi
               - rockchip,rk3399-spi
+              - rockchip,rk3568-spi
               - rockchip,rv1126-spi
           - const: rockchip,rk3066-spi
 
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
