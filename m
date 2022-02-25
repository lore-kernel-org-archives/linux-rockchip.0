Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA8E8C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 14:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mHGbsjxXLiGIwFKVt5/aSOkyW7kZRelRcD+Im2xXmk=; b=O8EyVknFkWQt1H
	8iETivP9IWjHlKjX+v083kRp3S8GZrpIbhKGQOgL0TSyG0IcojGYyow0JVvalsMmDv9hj4tHC4HRH
	sbuM1QwnEY3CEOGr4RuUiJ9a4ZjYHO4VN0GB0KkHjS5Xcv93RncgU8a0cbi7iMU9LDrVeWDdjF8d9
	gUrbH+SjX+yAEcK3cYzqvDJpS6g5HvwoV/EEafg+IgGZwXaxt2nwcrpcMbzjFNU+NvAYB1keToMkS
	ytELhmQzJBC5sjyd3oM2BvMRvoA7iAbL7rl3YnOCuii7HrYJS/dpYUnoX+k8YILoaqjJ3zgA2y6N/
	+nzlJdodtJYLx0HxpO9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNbzz-005TvN-E4; Fri, 25 Feb 2022 14:55:11 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbzS-005Th7-Gt; Fri, 25 Feb 2022 14:54:42 +0000
Received: by mail-qk1-x733.google.com with SMTP id b13so4624050qkj.12;
 Fri, 25 Feb 2022 06:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gwYHMhbRHXQxrol3Z4onOOebIeXrEkEaF8cW1M7ix2U=;
 b=ZER9dqeve3GLpay7/CeKXOHvRdxd93sDJdphtL21FC+B6K6WJp6rNACTQcU+GbsI4t
 psKHa0gSnah0AxamhlomcPSyWhXvgNBJx5Ov2n0gZ0EQJccwuAg8aBiaQCDEqTS2TYu1
 8xJzWTDSlPaHtP1pAm/m83wknHob1hbJMDrX0NdHofMSn1GKsJ0IbiOXr4DXfBFv4WpQ
 0syJTQljhm8Lt6E4cfR8d9sGYmO76mbLi98cYOLSc4htvG19pBm/3JEJC9u8w9jRk0r0
 SqwpvisiVAWYdkiKq3fZz6cg/rdtG0NYGlQVKpNTz94HjV6oVcJ6GjJGDkRj8iuadVJh
 QBhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gwYHMhbRHXQxrol3Z4onOOebIeXrEkEaF8cW1M7ix2U=;
 b=SojjMKuZDbOzKJDbmE/XPweOwuGF8XvJNLUmQSud4WmQA7zGHYQBTEOrimfQbJf3xW
 lpE+zCgAJNRdJAM/XrNtJZx380mziEUaqHnMzy1GUIH7ieqYlct7GTVRHdzFHshKkJBa
 3yICyZeEyzEPG/NgBPjUzm+XUa62tvupgz7w0bz2517jTxQe0xLR+XXw5KkipJXVh5Sn
 CIDWhfJzV9Upi8femp7709DKh1aNzO2cF0i327lh7g2jujWZSLDmHABDYG4Dn6/MW9zT
 lOh/VYItmVZFF721wX0igMsHhx4c4T+NfNkZxbYZ6+8a33nvOsI5u25fTcvFXUm120or
 ScoQ==
X-Gm-Message-State: AOAM533/wx2X8ChkgEvYLHGyQEm4qVJLD/Dc3itDrWxxKdDOBKW+w8Ac
 3QcSV9HeqAsxFar7TwmqapE=
X-Google-Smtp-Source: ABdhPJwee8UY1BnbzYFvaxa8NG4VwTthJ6UyhjOsZwLH2qycERTg1bJl7POhSx3GuOb0jru6PA+/jw==
X-Received: by 2002:ae9:e114:0:b0:609:b256:ee5 with SMTP id
 g20-20020ae9e114000000b00609b2560ee5mr5028795qkm.93.1645800876714; 
 Fri, 25 Feb 2022 06:54:36 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 d202-20020a3768d3000000b005f18706845dsm1318292qkc.73.2022.02.25.06.54.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Feb 2022 06:54:36 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/8] dt-bindings: soc: grf: add rk3566-pipe-grf compatible
Date: Fri, 25 Feb 2022 09:54:24 -0500
Message-Id: <20220225145432.422130-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220225145432.422130-1-pgwipeout@gmail.com>
References: <20220225145432.422130-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_065438_612087_55BDF5A4 
X-CRM114-Status: GOOD (  10.22  )
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

The rk3566 requires special handling for the dwc3-otg clock in order for
the port to function correctly.
Add a binding for the rk3566-pipe-grf so we can handle setup with the
grf driver.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 5079e9d24af6..75a2b8bb25fb 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3566-pipe-grf
               - rockchip,rk3568-pipe-grf
               - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
