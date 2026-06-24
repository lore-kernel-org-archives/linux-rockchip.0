Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71EA4CDB479
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 08:46:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=whkzVpMsAT1T8XdfZe8gh1/hEhPA2h1ymHPuMCWHGuY=; b=lkyyaK7GhQgXJd
	BzntO9nN9NOwzhSMAC3yJJbRnENs1CxebZ4RTYk+0xpnjYdaJQGNBK6tPkz6oQn52ixRNGl0q33uM
	TM6de6HhTbbHybp24R++ug44uYwoeXxGDjt1jvfzcT2PGpVn43//ed9SlTWhRPjTwGEp/RgeXwpyl
	bTl0yrcCyn8/uHlga32Zx5AC7cPv3D2dFwVLpaQNnArPx9nu/WpZkJXn+eY46eHxJ2M+zKqOGFLWd
	xFscSsVaq+G85R0Q2NY8kftaJoLu/nA8wbDLOQIFzc3no50mLWGZsD/KZJO6uzZI5NaHIhoPN0dnl
	mwGR3CE4OG5D93wgAYmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJG2-00000007Q3h-1mOl;
	Wed, 24 Jun 2026 08:46:54 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcJFz-00000007Q1B-0iav
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 08:46:52 +0000
Received: by mail-pj1-x1042.google.com with SMTP id 98e67ed59e1d1-36d5fd50d20so599496a91.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 01:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782290810; x=1782895610; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nE3XF9TJ3rEGOneChwFEqNNIrveo5+lTJId+Q3nPPQA=;
        b=PuvftsW8FJ5+xuJ1JUFNF8zyNG6ddcgOn88lxnmiCGB6jHesK7g+ZgX5+LJqdi09M/
         3lzAVAXJGChOhJt/ClNKcIGcvb3ny6zA1AfkzSuaLNFtqQj08GxjoSugQTG8jwEfEC3H
         rLVKaNGsUp6r2yxcUfJF+uuxkGj3QAUdjd0p6yJGoXyZp0/bFkP7IfY5Nvqy9jT6TCyJ
         r8hQJ4vzj7vAwNxyBdEPHgCYgtaJG4ptquMNMTnooOxPJlV83QAzPbc4DUxKLDuMaqE4
         iSeZJehek36+NeI4XOCnsmbI1G6moFC7YxDUxQ/4Lqp3rJf3BGxNu2cSzLYFWWVaYFxY
         ma+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782290810; x=1782895610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nE3XF9TJ3rEGOneChwFEqNNIrveo5+lTJId+Q3nPPQA=;
        b=LrNxEEL0IQ8t2cJI0koiiR+7GItZvqSLuo1jwSnvZsVWsoNmbMCenRpoyAR3pW7SGc
         +LkyEfr2eR4F+StC+DJ6gjBoB7RwVdMKn/h+78k7r3fwr45EGT8/q8M0O9PZhlOiVjjs
         1kzFUZLfoEjVWC3U0lrYE00PRNss9lIEajKpwWzAGrIHEqXp1ViWQTf1MN5PpbpHC+uy
         mPzVkb1CaLtRvzmSUm9KNR5il59a5C5+uDEvd97U8aO92JyE/xq4P+FKAQy0IPREuDm9
         Sdil6V72Ppf1rMqcAtWsWFnbV5GJqZHjpnCDE8ghBwm2KmTLkgkQyymv64G/9lGpi9XJ
         8+gA==
X-Forwarded-Encrypted: i=1; AHgh+Roy0TUtsfIX2Hmrdn5nUtn4iOIbeIejVtWicxd5rdVGU9gbiIK+DCU5SKXTBqgZPpfYXTrxu1wGfIsWJxd8Cw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz5mlk0eR3gxknbOlCdnQZWzoaSlxo/zjl8mQYrwMUAJDoKiCwP
	MpUvrZEWRdR3wwTh5I23Zxo+CDfeEbd7AatasMLTuRjiE81iauq6lV3C
X-Gm-Gg: AfdE7cmN+sgDNFyACoWbc7HZNigqIo1hwXf+jFh9mDY7Deroza7Okn1Mznlhrq1xYcB
	Yj5HbGrmIpyU8usPwEmuo4xvwdixXHxe32TCwFibSNmk7JSmZqxIf81JIt7VlL//rw2239SsY7I
	VBaEmF6A3zv1h9IP0NXI+omLGIzWFHtkaMvSOdnRP+NvYkDkly+9/JqeUQW9CNNoRpag6LELWg4
	+U3x3PKtmwb+XTFsjIu2fAAilXlqr0ATIlxLzIK9xmEJcGt7F2ltHn5O++lMLr+d7yCD/bBBtc1
	/15u8oiWVTGHZltesEqNBxdnB6wBIZfUgiKewHqGFEToepD41O7qFT4rhpxJlf3hqExJTTKi86b
	xt+4D2I3otOz847j6NwM+Ep9qxLK4EKp29Tov+suR9ePGxmy4mhRQOsi6PHf06u1XyVKCc/OX9L
	GCoYe0lyqpzr1tGnn84UW7W9ps
X-Received: by 2002:a17:90b:278b:b0:37c:6975:2e3d with SMTP id 98e67ed59e1d1-37dd0d3de38mr6759149a91.8.1782290810525;
        Wed, 24 Jun 2026 01:46:50 -0700 (PDT)
Received: from [192.168.1.101] ([218.194.36.79])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37de3d152f4sm2138146a91.14.2026.06.24.01.46.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 01:46:50 -0700 (PDT)
From: Yanan He <grumpycat921013@gmail.com>
Date: Wed, 24 Jun 2026 16:44:39 +0800
Subject: [PATCH 2/7] dt-bindings: arm: rockchip: Add Alientek DLRV1126
MIME-Version: 1.0
Message-Id: <20260624-rv1126-alientek-dlrv1126-v1-2-5aef608a3f64@gmail.com>
References: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
In-Reply-To: <20260624-rv1126-alientek-dlrv1126-v1-0-5aef608a3f64@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 Yanan He <grumpycat921013@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782290789; l=1084;
 i=grumpycat921013@gmail.com; s=20260618; h=from:subject:message-id;
 bh=hEAydHqntdYMnlyAwKWZtU7FCzzrJfeB5kFdTHg3eh8=;
 b=LQo6M34edM3nvXNVY+lWG19FP/SsEWFUfLZegDFVnSHuVJWMtsEo9BN8H+BQsQz7HVsHAPF9k
 ntrv/WOTO4JAdqu8mcEVaIdImKoX5QNJcMKn9i+mijaj9U60D4syALM
X-Developer-Key: i=grumpycat921013@gmail.com; a=ed25519;
 pk=oWrY8KwXIunZWlYBV76NG2A3V4p1bJ+aD45Mr56ErTw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_014651_243870_0D603DD1 
X-CRM114-Status: UNSURE (   8.17  )
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

The board consists of a DLRV1126 carrier board and a CLRV1126F core
module based on the Rockchip RV1126 SoC.

Signed-off-by: Yanan He <grumpycat921013@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..9058f2a461d5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -162,6 +162,13 @@ properties:
           - const: coolpi,pi-4b
           - const: rockchip,rk3588s
 
+      - description: Alientek CLRV1126F SoM based boards
+        items:
+          - enum:
+              - alientek,dlrv1126
+          - const: alientek,clrv1126f
+          - const: rockchip,rv1126
+
       - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
         items:
           - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board

-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
