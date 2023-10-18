Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 530F5CDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 16:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6dCB/qjApiO1QaFxYoTWXYTc3UH3I8fgY08TG1S0SvM=; b=S3DcEXpkLTJlAi
	FR/3PZjUjhccxnKO9rqYAypqp6NYBlkuhBkuEO9Iu45r/LYyDV7CAQ1FiDa/NCLxmgL58Dfx5zeKr
	RPgZZpJm7cZSoRXHPx9oqsFXeMPEXizbt61LdAMGz2lTArJ+8pdJxcXJpeyw2AaYjDTdjvtkoOSFX
	u2dWSxi2OfKxdKzoN7L3TqYO3Alylrclm32L+OOXTA+aZ4AjxzblTWDbFYhiNlNEA7Fl/6b5Okz96
	PbptMfngRpnlzZCthWDZ1jyLZgspoenB0AHloHLrne6cbnIG7mLbSBpWU9ircMNkDToP9c6BHVBfx
	rwfwRtc2kaXIz5FzNRpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt9G9-00FABz-1x;
	Wed, 18 Oct 2023 16:19:01 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qt9G7-00FA9o-2d
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 16:19:01 +0000
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3af64a4c97eso3846627b6e.2
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Oct 2023 09:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697645937; x=1698250737; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hM+gahaFfhqvyzMw+hLPiLwUYVFl/GwZI4lQvIkPZFg=;
        b=SFyhk6mIQAI24QAFSdZN2kBdI8fstwzNjNwsdprjxZvpTgumBSEiHwdD2GWzBNGN6H
         YqYDW5j6wCRz6OosqL0TCWZ4IXt23OaH5GKKSEUGaiPz+3LkmHbVKNUtzUqlJ0Tt+D35
         HweWhvuU/Y4ubiVIj3K5PT7Y9BdZrGLdvagx0PRJ+dj3yoW5Aq8PwppWp/hHpES7iVAe
         69CUYGR2gCAP6EJIOHazAIvDJgaiu5Op3jzL+KUcKpEYYtz2G03b7eQhppI5pT1JLPI4
         nyKY2oT4e12nMm2OTX0zKiUyX4hsF0D4TDNRH4ub06DFXtNKqdwWR3jv0xhFsBAsJ0j8
         hBig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697645937; x=1698250737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hM+gahaFfhqvyzMw+hLPiLwUYVFl/GwZI4lQvIkPZFg=;
        b=NSGAmZZL9TluB1v4KGI68OK8jctzEAIbk0wr3wClCww5aPDFdcgIBcTPbD7GHOPR8p
         9vpofRVHo0EkL9hm9B2Qg4VdoGsB9me38HBs/nmhRNC2dkacXY0/lEzQnDrmbGAuzigg
         Rq1LQj9fxDhj3jb6UXSX5DnvS7WOHUWFFULRx/hq+QS6Ujz3oia9gBbp+nOfnVF3up4B
         DpocYYgVmhoyC6sdVG2b6t8+NEbv+WAmdfowiNuyLwqDxyLFIwKFCC5ncwyyY5VPB9N7
         DDevFL2E2oX0FQowuQvhHHBbrPtpsABf37A6UoJq8v7DlYUIMaQZMXvDNJGVG2rZHzVi
         GCig==
X-Gm-Message-State: AOJu0Yz92KMC8I1nH3xv/IJha9fItrWTLAmReqrpf43IForFRyX3jBlC
	0u0rqyFOJ7rFETkLlo5Pp85D/W5IZHw=
X-Google-Smtp-Source: AGHT+IH4OYf/H6hu8k3PAsRf3mm4jsjcixitYV7dNNGP1JInDwCe05WxnBR6TBxPI5AC2/tf1wVZoA==
X-Received: by 2002:a05:6808:f8f:b0:3af:b6ea:2e2 with SMTP id o15-20020a0568080f8f00b003afb6ea02e2mr6734005oiw.59.1697645937480;
        Wed, 18 Oct 2023 09:18:57 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id db14-20020a056808408e00b003afe584ed4fsm697390oib.42.2023.10.18.09.18.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 09:18:57 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-clk@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/5] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Wed, 18 Oct 2023 11:18:47 -0500
Message-Id: <20231018161848.346947-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018161848.346947-1-macroalpha82@gmail.com>
References: <20231018161848.346947-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_091859_854003_AA412275 
X-CRM114-Status: UNSURE (   8.92  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a349bf4da6bc..a6612185a7ff 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -674,6 +674,11 @@ properties:
           - const: powkiddy,rgb30
           - const: rockchip,rk3566
 
+      - description: Powkiddy RK2023
+        items:
+          - const: powkiddy,rk2023
+          - const: rockchip,rk3566
+
       - description: Radxa Compute Module 3(CM3)
         items:
           - enum:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
