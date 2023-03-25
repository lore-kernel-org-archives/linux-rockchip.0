Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EABCDC6FD1C
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Mar 2023 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bpqbcXEL0CuLQqpvq85nn/UG5m2rfiuUiN2Pvaerhrc=; b=UXIKtCp8sn3o4c
	EMUOj5sYHJeDa66GaDrbL01alX7peMf0r40gBL8snyIE7M4WzRERLCPwLxBGM0W3mvryzpFKk/7Yl
	FLWrbyOR+AdCdc7W0QFiOCbNT0MJXZzk5TPhJU7dBNWPwmC/9O/WHnr+wUDY5BVp6/gO65b7TWQZL
	WxWFI/8aEXji605nAoa9itLs93XFGOhhTriQMeUU/Hl99qoHwVphA2+duuYSlMoG4Hoc+3/rz/Zea
	Gr5onagdFB7cZqtI9C4Rc3h8AGhwuye5VYg6OjABlmxDrJIx72vho3QB+AAC5eWTy0spBfyVGdRZl
	gIxrzcYH22eovugP7QMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfyVu-006NSg-2W;
	Sat, 25 Mar 2023 07:40:34 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfyVp-006NPy-0a;
	Sat, 25 Mar 2023 07:40:30 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id p204so4811609ybc.12;
        Sat, 25 Mar 2023 00:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679730027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D1IG/1kt/Y9xOco97EKexl0aCGg2ZwXOiS8z/jOTAxY=;
        b=Kz0NMsvL2drzYhlbOpIYQko84qzIPh50R3MnkyFwgpmKIZYC/qhaEfGlUvpvuo0QOa
         ioa9An4lUFoK/TKLMjdtTEUCbUSu1tSMAPZgdIkTGzl5HjT2kjsoq8jbBqgVOIuI+r7B
         BILKd0YJNGKZz1+Kgs8+XUg3jpdfvEHrz10nZ/5y9o5nYU1NGAN/ennW8iOxEUNEldnQ
         8A13u5NTVHfrmElL0XlIXVGt3sY1xGC0Ne3mJUWg0wpNCkOwMORFJslOxHSrTk5TvXoR
         rjF1W1/WCMELRu1aOglHKPLVvYawenn5psnyZcZM9mNNt0yfwofmejrpXyYxXzIOoWKX
         Ff9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679730027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D1IG/1kt/Y9xOco97EKexl0aCGg2ZwXOiS8z/jOTAxY=;
        b=BtckqTlozIim+IhydCliajndM+JjJL86Ur0NHzB0vi9Jf7nQqN590sqgqLWa+XknYp
         jtySnK/bDamiP8qszOSSnMGtyzwjSh5ldxjH+EAWrMlqtttiB+dLfxmbwgBpXFlrpWis
         2Yeosz1f19LDyA+EnclTzk9UCnZd74tYFHB0ePc7GEixm/Smhajgg/uJxtUid41iWZld
         Wc8eW8UDYy4KfDY+P+FWas3QvDb3khqNInMy9uFAfjOy7FmeOK/RKu6hfDW5JVRjs5W5
         gR8U11jErUeFoIplbLY9l0EKm14b5NGlzxjK97+r9dx/MMYwFFLUb8eRtq8Tc7zsokIg
         1f6w==
X-Gm-Message-State: AAQBX9cSes55219tAVWTvYvmBBQ1Bvoj6+bFxLZ5u3ksCnzH8/bpz+4X
	cS12qgRJqTz1yrKzlBijxFc=
X-Google-Smtp-Source: AKy350YKtqc4xm5jVoKtAYVD+vHoIATs1mebKljtVf7DqcKBmtWTngWkLrUevKxUeU2bpI+I742aqQ==
X-Received: by 2002:a25:db4b:0:b0:b6a:51c9:d7ba with SMTP id g72-20020a25db4b000000b00b6a51c9d7bamr4845123ybf.20.1679730027579;
        Sat, 25 Mar 2023 00:40:27 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id w20-20020a25c714000000b00b7767ca7498sm969629ybe.53.2023.03.25.00.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 00:40:27 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: Add doc for FriendlyARM NanoPi R2C
Date: Sat, 25 Mar 2023 15:40:19 +0800
Message-Id: <20230325074022.9818-2-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230325074022.9818-1-cnsztl@gmail.com>
References: <20230325074022.9818-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_004029_220459_4B8FE84D 
X-CRM114-Status: GOOD (  10.81  )
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

Add devicetree binding documentation for the FriendlyARM NanoPi R2C.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6f4270f2bd9e..883c9d36e4e5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -185,9 +185,11 @@ properties:
           - const: firefly,rk3566-roc-pc
           - const: rockchip,rk3566
 
-      - description: FriendlyElec NanoPi R2S
+      - description: FriendlyElec NanoPi R2 series boards
         items:
-          - const: friendlyarm,nanopi-r2s
+          - enum:
+              - friendlyarm,nanopi-r2c
+              - friendlyarm,nanopi-r2s
           - const: rockchip,rk3328
 
       - description: FriendlyElec NanoPi4 series boards
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
