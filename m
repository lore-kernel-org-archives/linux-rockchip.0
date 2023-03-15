Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24872C61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 16:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0vX2/fJb9SgYzUxwUpDHktMgzM1vzm9dzKZAKWzWn4A=; b=p2E82xSlCdaxwD
	tzA4UAypKSB0Cx6xTdkPb8e7AQVA8LinvM6OQp3H9cOERfWHoUJEcLsNcKuRt/wCzcKK8plfVYk4d
	xSsvWZXGV05abmLPKlyejvWAbyjhwhZ29vKYAdg6mzmFQWmWc82gTfYPuYiIOPUou63Vl+okuSaNB
	Iq+qiv4aCZud6ymNwwy3cWARtlFV4FjZcJSmtxxa5Bb3F8Cig0KhRU+g8N9cabJ4Tvb0PwlZfzjj4
	rkzYFpWdYOFWVwHVVWMVwBIU8/jJATIIt8zM9vol2Iaact+MMatehq0EVcfZqhJ5Q4Wn+9EPQT5iV
	dX+IK1J307Ih1VG/IbEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTai-00DzIW-0e;
	Wed, 15 Mar 2023 16:03:04 +0000
Received: from mail-il1-x131.google.com ([2607:f8b0:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcTaa-00DzEn-0U;
	Wed, 15 Mar 2023 16:02:57 +0000
Received: by mail-il1-x131.google.com with SMTP id r4so4618758ilt.8;
        Wed, 15 Mar 2023 09:02:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678896175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3ezi8oNC2pf7LWaqlTmOz5LE1KTRmUQ4OdTaGPWRRLc=;
        b=L/plJVhS43n3cjFazUgrq1EMvu6ckndESaagQLNKwXMfsosWlroo/vHn4kjimtWPAL
         YpRqO8edvNx1iBMbnRnr7xOvzxr7Hoj48wNFBosNkoge8PGK48/QdTr70x0J4cTIDw0V
         uOeIM2d+70dMSXRkMNFw1XyN/1Dlc22v0BckQtfn36z1Ejt6SjbeCphABoyk4Iygu/XO
         GqLeW4JvSI1qO2v0eXNc7F6hMVpzS96KsF5t+1AE86COOkzxguOcrGJXM1mbWTQ35lCY
         dEBK73E7pogDFLq0A9qlIMLKSq6+rJ8afhL9BJ7B9C0WVPvTE+7uWC3GNmn7afLX/sy2
         shTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678896175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3ezi8oNC2pf7LWaqlTmOz5LE1KTRmUQ4OdTaGPWRRLc=;
        b=l5EEt3btEHUIEYx76wZAKLtc6ryoqq+shH8cfl/DMiQ9i+IwOsm+BYLey5T3zZw7sa
         FUMZUMAawTagX35NUMUJ45ZxiYFOz7UMlVODvlRUsqfyVoqC3BieA+4tgoCJU3IJRtD2
         5vFgVVygXYUj8OUPPwTHudSKZb+knwp1lm+zbsh1I/MJBxob1uawunzABB0gdmUY/BFG
         z+oR7pJPxm6Zv/aO6gJLHlm+O86+9LbJIunj5Rvf7df0Xd4hsLU2OQAezOj4rIqAGFS4
         Yiay/ln5cD36tiJRJDRXjkqET5XmJjErzWItBg6QdHYGElu59Uc6zf/fyoJPj10hZRfb
         jSNg==
X-Gm-Message-State: AO0yUKVWZwlgsQB1CHwIgf1EnOsQckxpG9530oW00nRwiOK0bS1GNqZq
	npxX0zEujGKF2G1hnWic/KQ=
X-Google-Smtp-Source: AK7set/RF/anczqhdjGZbAL1DrAPHGeX4qH+SRdNWCa9qWA1YsnlFw27MVqFj8qagCF2j+uAfhWtGw==
X-Received: by 2002:a92:908:0:b0:318:6d32:b12a with SMTP id y8-20020a920908000000b003186d32b12amr5215890ilg.13.1678896175062;
        Wed, 15 Mar 2023 09:02:55 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id l2-20020a92d942000000b00313fa733bcasm1730725ilq.25.2023.03.15.09.02.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 09:02:54 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] dt-bindings: Add doc for FriendlyARM NanoPi R5C
Date: Thu, 16 Mar 2023 00:02:25 +0800
Message-Id: <20230315160228.2362-3-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230315160228.2362-1-cnsztl@gmail.com>
References: <20230315160228.2362-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_090256_188214_7870C8D5 
X-CRM114-Status: GOOD (  11.14  )
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

Add devicetree binding documentation for the FriendlyARM NanoPi R5C.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5474cb4a13d1..d9105e609c27 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -201,9 +201,11 @@ properties:
               - friendlyarm,nanopi-r4s-enterprise
           - const: rockchip,rk3399
 
-      - description: FriendlyElec NanoPi R5S board
+      - description: FriendlyElec NanoPi R5 series board
         items:
-          - const: friendlyarm,nanopi-r5s
+          - enum:
+              - friendlyarm,nanopi-r5c
+              - friendlyarm,nanopi-r5s
           - const: rockchip,rk3568
 
       - description: GeekBuying GeekBox
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
