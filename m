Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F8D6C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 14:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mHGbsjxXLiGIwFKVt5/aSOkyW7kZRelRcD+Im2xXmk=; b=CJNziu5J5BpfzW
	/rSur66Ae0qncCrHbx+D8PtZU3pJEmEt2Rf+UkI7ISD5cCkyEF8kE+B2QOu0zgjZa1AJwBGA7gEGs
	i7WfnZzJ2SJ4SgoKTSdfabEPtxePsBHvDZt1yWkjeEaZZ6PvLeJvNYQPK8A3ofWy44LH3OpRVh2ts
	Wo6uG0F7N6FJKERUsHZv+FVczKTnQTF08D8EgdAvU72nWkh3O20HDrUjP145QmM7FLQ3FM5uEa8SX
	zfAJxH5QI8+Lecn3qodsTYGpTHPokq6pTGIZXFQRjPU7deGXhgpmQAZINafuF+7J/M0xerBDnYcUX
	90P7Ffh7+fg9tgLue7lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOge9-00ClLm-Qk; Mon, 28 Feb 2022 14:05:05 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOgWZ-00Ciho-0u; Mon, 28 Feb 2022 13:57:17 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id c14so7700199qvk.10;
 Mon, 28 Feb 2022 05:57:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gwYHMhbRHXQxrol3Z4onOOebIeXrEkEaF8cW1M7ix2U=;
 b=DhunHPDFR2V3Hox2LdEShrwB0I3eShU0H4fvqIdK+bMIwAsCFDMmDxrEpkJkykMeV0
 f/P3nuUDuCob8St13oVJktiQ2Ww69QXeBxbSKxX3PPJjfSNxKYx9fljBCgNv89PIeS7b
 ILdszhgU8EBRvQGJln1QI8D6D698gEXGA3y9SvUdzFUqGQPuntRmm4YPoDyB6qyep1K5
 H8nb6oaxe0tWG6CE2PPG8FtfYVVOBXH9iAVatcmO1D7rGTKRa3zJ7RYZZ+u/wiDx99c8
 t4kiYnRutathdQFMfvCpkXzi29kKntBXXYiT5TDCR4aaUiUdcKy0zsewS0Py0t98X0Mo
 f9+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gwYHMhbRHXQxrol3Z4onOOebIeXrEkEaF8cW1M7ix2U=;
 b=6Dq+6amgW/MDGzoT92EoIJrOUoRzH5IwjFZhTAZD3MKpR619KjBN70D+zFJAoyP5hc
 dll5UDaw4grbvPMgvTulYlB3rf1diL5hMLtnHV0LHmARGEWUYHlPO2wJmPq9gEvuiMgg
 erbu+M32wtabKM060QrPw5HK79lMBrYkAeCZok6Arw5iPinVofEnusZXU2JaIaNgTLwx
 7+nwNuXTQtOqryhOzgpDSWJWLbxA5HtcZ6IbjKZayOYIiTPu9/H7iFcMIt4HTWlGebE1
 7xeBTGPVVRVb5yr4TOlTFqYccy/BIPLXHqftOsHVWj96pkW7VTJUkPaCpEmiUZ8TOP4J
 7KZg==
X-Gm-Message-State: AOAM532vkyvk7Sv58py99DFvSftaYaq1NwGW6S5QmOQwuHGojR6yvxeG
 GbigNzck43UoB3zPU2V9EHY=
X-Google-Smtp-Source: ABdhPJxkrLbQyS3Zcpt3zgmIhbkWINWdUv5D/WJEcUEfNDhC6TXSahGBuov5CQ56hIdXTZYp9U8VaA==
X-Received: by 2002:ad4:5aaf:0:b0:432:ec0a:f90c with SMTP id
 u15-20020ad45aaf000000b00432ec0af90cmr6051866qvg.27.1646056629455; 
 Mon, 28 Feb 2022 05:57:09 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 b8-20020a05620a088800b00648bfd00a41sm4932244qka.80.2022.02.28.05.57.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 05:57:09 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/8] dt-bindings: soc: grf: add rk3566-pipe-grf compatible
Date: Mon, 28 Feb 2022 08:56:53 -0500
Message-Id: <20220228135700.1089526-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228135700.1089526-1-pgwipeout@gmail.com>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_055715_109245_59909005 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
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
