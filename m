Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C5C3C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Nov 2021 14:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=huekvdzzMVdl8boALAoK9af3uaLHettwJyYh7Nl5p2A=; b=ufqgeFWYs2MPz5
	6JL7qWsPVCMf3m5lwKaJtBM2dW47TEL5U7ZXPM3ZQDOcGWL7YxAAuPBlIfc7Npn/vU6gcrCbg/vSA
	o4Er5VP6xErvzG0v+LP4f9pOs2zpmzWXzC8h+JVf0XJtPpUCeJ4JlnsFe6TsAwFLtqtucikYsz5I1
	3NkaP5wA3AkwRC2XBiVVD0uEXDUmhflEIctYCcdYV473F35wCtC4Y4Q+imCSKh5Ag0gzIntZVQduk
	8kwkWLDhcuZ1DAhHI/i7Wo7fBlJ9YTWKraCIy0xRzg631BxDgqOrsGHsHmJi5XyafhZcElKk9VKU1
	qU1aVyRhljkFrdV4LH9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqyYZ-00DmXs-0r; Sat, 27 Nov 2021 14:19:59 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqyYL-00DmTr-JJ; Sat, 27 Nov 2021 14:19:46 +0000
Received: by mail-wr1-x431.google.com with SMTP id s13so25255582wrb.3;
 Sat, 27 Nov 2021 06:19:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rs1vltk9uRLtJlv1JN67bIfY9H+/oNUCoFzx5XImALc=;
 b=lusi+qSAJybLG5GOHY9d+VZ66Uvb6zLa8539YNULtqXWBSuk5WXXPn3BsUdtZZGuT3
 0CfE4T2V9zzPfDXaWMF4xzwx2vkdfajS86MxTBFBwE5Xs6X8Jx6qFsIjmNa1GUXKBK0s
 gf4OJNhAI+zdZTKYN6oFIjbF9cqQc/oWqOwFZD9FvScBIZzgol0/bTaXy3I+m/htt+a4
 R8qo2Ibs2xJOHaUmRmQQD3KLOquDhEEFXmrvaKfJ9K1tDQgVktlLOm5Nn1J+aFntgp32
 6EsPcp/2/ZPKTzb7yxdJ5zoilFsU39c21Qpn8zqu5cl5yrVxptaWQ+FxpFiakUxaCFa+
 aR9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rs1vltk9uRLtJlv1JN67bIfY9H+/oNUCoFzx5XImALc=;
 b=a/vFaaaAJutYphOJKX1Mjm2I2EHRRg/SZrblR4HATnLhSeIJeTYvJ6BwZl+tFIOgWd
 qUsAF9XkPJgVAg9ixnz7L+2Ou+zTTDck3EWrkS5LB/s1owEV/Ks3tGDxKxe2JVefFCiH
 0HpSgQT4/0IHBhsa75qZTSvGiMKrW15jpMXxgw7Qwml5uYD/Degxwgb1E8u4C+CSgoRv
 XXj+javq4/6SrCnQtO5+e9lTiXQHM09DcpC63hdHjhZpLxAgJgpM9bZK4njUDoqnq5qP
 JirNZyYwZA270Mp69QIz2zX4iY3wx4Vxa7XEZvu58YogQfm6GOhZbp+ELdO9r7fMKCDk
 jToQ==
X-Gm-Message-State: AOAM533WHr1MHw2VPtpYJpDSw4th04pZvg24xbJJ8bxXumi3yZsOTL+W
 X8G1qouLNK5mJi0GnXN4ASWtlGXw3R8=
X-Google-Smtp-Source: ABdhPJwGX9REL4Zzk45kInjHUw2v717C7ACm/3cCxTw+9Wo5pJuqqqvZ48rpjvcXVRD0pQUq2QotKw==
X-Received: by 2002:a5d:5151:: with SMTP id u17mr21582797wrt.126.1638022784121; 
 Sat, 27 Nov 2021 06:19:44 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id o1sm8509839wrn.63.2021.11.27.06.19.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Nov 2021 06:19:43 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 linux-spi@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/3] dt-bindings: spi: spi-rockchip: Add rk3568-spi
 compatible
Date: Sat, 27 Nov 2021 15:19:07 +0100
Message-Id: <20211127141910.12649-2-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
References: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211127_061945_661806_E24C2264 
X-CRM114-Status: GOOD (  10.05  )
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
