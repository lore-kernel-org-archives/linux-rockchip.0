Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8F7DC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Feb 2022 15:30:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mHGbsjxXLiGIwFKVt5/aSOkyW7kZRelRcD+Im2xXmk=; b=quknBiALH7ZFXC
	d1NK++DZptoHmDIim7rCibX3qiSlA+IoqHXOw7LUAoJ7bngd6OrgOq4U4VFM8c/yqXBF4q7jBvY1R
	VWV2cOayQckVTyItHR+brBkiDfVchrL03Etva4pPb3KpRAYKvsb9QJ53QDYWJy3E573owP0MJZLUz
	N2OdpOCD72rb9Kzghm43MH/P0ryf0pimdiuY+8WVC9MAjUlr7TYbYlwWZQbrwsxYUfYjHkkrJ5DxG
	ID17MuG3kQkrXgizl6Y1GVczIZ/Ub6LQldfA7nrNBGy8ozSJx/kOiT1uTwt2Ty+iYOm6Nh7R5cjkd
	dnfUe8GsYLmfK9h9MSrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOLVW-009ZNf-KA; Sun, 27 Feb 2022 15:30:46 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOLV7-009ZB6-UZ; Sun, 27 Feb 2022 15:30:23 +0000
Received: by mail-qt1-x82c.google.com with SMTP id a1so2401747qta.13;
 Sun, 27 Feb 2022 07:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gwYHMhbRHXQxrol3Z4onOOebIeXrEkEaF8cW1M7ix2U=;
 b=fX7jIl7DhRISNYbrdZ7o3NlddSPJm6wn8+Fz2legfMrw0fWC7J3Dbw7TDnR5wOJdCY
 gpAxFOW7fOZ5tpfbGQXrfwbIxARXhi3BEoV5C9q1Mvv2TV+huO9eBaVRwR/Z4JCN4pou
 o+cd7icR01yEHh3RgUzTVtwekz8ocngD+m/wPuborxjbKudpyPSG3yTEUng1HKgNl5RR
 ubdjJB/NSYy+tqlkdG9UFnHkbezAj3KhR0ghlQbU70td2rW5szs8VL6YEWXJsic1R8PK
 pbusKyUqtKRy+NJVzqvm1M7K+xUXmehhDsRtAKIqpOeuxqX9i6sUSKFgPBeG7/3zPYXW
 Jmlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gwYHMhbRHXQxrol3Z4onOOebIeXrEkEaF8cW1M7ix2U=;
 b=iCQjMNtqpueyHJ/U1jIX41JaFzy38glZHw35mDS9pYabqmiAwZWnKP7ukLhX2gmC08
 RmclNILnJIgol0PS1neqBuIhwBir31OqDE6+zXOpxA46d3V2lided6yAWNkMM8BX+UeS
 BohtfssqJ9h9/pPQImGx5bz+S6/hgUwGuAIZmPSE7gDvNKiNy3m+PDzfsY713x8L63J1
 EEz1gtw/klZDBdbuoLQuL08mOGuUVT3RORNO61chIac8FqMx73GjA6Mw4c0xzHSxK0TH
 uces0euMKqFISbbOP3IGBq4q1eGJgdB/Kw3baf2c9F2p+xnGYsAsYk07Qg54QYcBUJUG
 1+7A==
X-Gm-Message-State: AOAM530YNKQJoQdxSRhYRPsbSDBtR731GD71shKen3ZcqyY75jTtLmuh
 tD1V97c8kR2dGjV99tEl7TI=
X-Google-Smtp-Source: ABdhPJxQRsI7Khsgyq5bCDJkTk1UuWXiSFiSgTumT5vnLv5/CZeunbwcFbAYiHp8junh5Dy5tZskpg==
X-Received: by 2002:ac8:5805:0:b0:2de:23d0:1c28 with SMTP id
 g5-20020ac85805000000b002de23d01c28mr13602302qtg.585.1645975820913; 
 Sun, 27 Feb 2022 07:30:20 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 s10-20020a05620a080a00b0062ce6f3f5d7sm3845767qks.16.2022.02.27.07.30.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Feb 2022 07:30:20 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 jbx6244@gmail.com, Peter Geis <pgwipeout@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/7] dt-bindings: soc: grf: add rk3566-pipe-grf compatible
Date: Sun, 27 Feb 2022 10:30:11 -0500
Message-Id: <20220227153016.950473-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220227153016.950473-1-pgwipeout@gmail.com>
References: <20220227153016.950473-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220227_073022_006191_8E6EAB0D 
X-CRM114-Status: GOOD (  10.07  )
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
