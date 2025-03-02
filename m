Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7042BC19F32
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Mar 2025 20:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bJjynKKvtW1y5X2qULntUIoVbRfm6E9zcpgKfekgLzs=; b=h9mXw/K4JVUkp3
	c2PGa0UusYqvkUazwGP6XYIzw4/uAQb+2ib31PrBtt62Ctcz/K7iYXKrv3XTX3SinEJghpJRqFXF0
	LwB5/ulIJ3VY1ovPPE+S4WKzYM44tGSnaGcltW8aZME0Ol4O09/JXmEuqmhtcO5FwrhVPtVKDmI5T
	+tsWKAPyNvA76SrPzZ7UM6vtjNLBBf0sVvkcbUNDGvR4D2m9pMa1bwsP91y9Whk2pOnuECu8EyhK/
	1eQFSMRnP9kN7DM951+Mv3iiGDCap2RJTW4DlEc9L+5UhDBC0FtPeziRKe7/LwxcgPbXl+/GuhYh3
	0YjZUHYmVIvigErySlZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1topXc-0000000GcnX-3Gto;
	Sun, 02 Mar 2025 20:04:00 +0000
Received: from mail-lj1-x261.google.com ([2a00:1450:4864:20::261])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1topW3-0000000Gchb-0Y7s
	for linux-rockchip@lists.infradead.org;
	Sun, 02 Mar 2025 20:02:24 +0000
Received: by mail-lj1-x261.google.com with SMTP id 38308e7fff4ca-307bc125e2eso41282021fa.3
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Mar 2025 12:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1740945741; x=1741550541; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0ktqAo906g1TKt406wyEYKOmiF5CVJ1rF2+5tYAkr74=;
        b=St7g9HJdTw2C15tdFK85LvD9wHkUHG/Y+h7s+0EGNoGIjaHIA3ghDojqgNCQ5KmM4+
         MXfFdK5jRLwYJFb7uhTM4xu7bu4rxsGOvdyelgfjss8ln0c9lL0Smo49WgFiVXD+rj/c
         Ukx1colNFhZNHm72DSgW9w64rR3Hj6IALfqnjXatHHvSq2SO3mrs0QNfXjxTrAkT6K6q
         0/srGTg7eb+1YD8r4zCh8y7naOiCJeXJRITI7PWariQuKRuLzUOzI00xvTYMd1UhqpR6
         ojRITDhrnqTgV8A4wi4oWK58oyJ2gVFAnl+7ntoykqwMWem+LOyOZhPyPszb+ADRKRoh
         B0Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740945741; x=1741550541;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0ktqAo906g1TKt406wyEYKOmiF5CVJ1rF2+5tYAkr74=;
        b=wvNmtfyiytTg51eWnWlVwmjiNcmWVyY5PGhzlqTkyvFzHZ8P+2XifN80HVDOOl79Xx
         ao6C6tUCXapMVqudoqMbVbGePD4ESjALMhmh/8Wkw8v3lq3T+3kUMqe/60Xx5NiFriqg
         eHhPzHOZElPsokPTtjiNY+irtkZi4vT3/bfAfH2g6MTrRlic+kdnZBwQ+mr20AVhCjFR
         UiqN5s2YM85Y1FraoyvafYdAh3HMhk5cl2xCMC/ztoSq3Cr+XjbDG9ueNBM7Bkk2DDje
         hIGk88emntcrMNzMgj2fqFO6jikpNRC3careoxIYGuwhgQ5bgeMiiEhjcpuiMEoPyud0
         9kZQ==
X-Gm-Message-State: AOJu0YwmzlcI9UMatn2QdY0TinPWCPECfj1TKth0VB4iz8NSMz4wjahh
	npt4a5dyDNi4qVpyrMXRkZDf1scrRVWzixZA/XcbSU5X+kc1KkhFNYBZfsoChQzuvTwuneEC7fV
	P4z0/0lrF29EIf6L/Z/9JIB5eJ0R2vOKukgKDabbW
X-Gm-Gg: ASbGncuHA4gFQ5FEa1RcOzjtyye0cWJgOMJTrhmvai1XJ87wEH44VGgWmTMasR+UC5O
	YQRExITyIiOXs8DC39uE7fxXvPbJPkuQ75JXj498+KCyqbqOeBGvDa22v0nj424vZ+ZxvC3sLPq
	Zo9lP/LD69KnJk/tBtpw0+1njrkxMK5gvN8M4oeY26BrZ7wvuq/tZhd7Yi/xnoQjU3QGgPvgW3z
	zLpIpGY2k9LXMkmm15NYKSmklDh2rh/b3NVZwDK38Ll7lHrvkC8KgJpteJdH8P64pnPmwngt7tT
	DU1PuHviJW4Q9zd4yesf+6U4ap8fKD1GfuBC8F3vpRk=
X-Google-Smtp-Source: AGHT+IEoW2SHIDDk1aLDFV+GZp9bKgEaP+RRL4SkeATZfvS4Scg3SkpbOr9RjR6zN8pzWGl4nlfKBtFrcL0t
X-Received: by 2002:a05:6512:3f02:b0:545:e2e:8425 with SMTP id 2adb3069b0e04-5494c32f8dcmr4146730e87.39.1740945740250;
        Sun, 02 Mar 2025 12:02:20 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 2adb3069b0e04-54961daf36csm53433e87.112.2025.03.02.12.02.19
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 02 Mar 2025 12:02:20 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Sun, 2 Mar 2025 21:02:16 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v5 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <Z8S5SHqUqKYiT6Wd@windev.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250302_120223_423786_C212FB97 
X-CRM114-Status: UNSURE (   7.35  )
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

Document board compatible bindings for the MNT Reform 2 with it's RCORE
SoM, which is based on Firefly's iCore-3588Q.

Signed-off-by: Patrick Wildt <patrick@blueri.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes for v5:
- No changes
Changes for v4:
- Added acked-by
Changes for v3:
- Split DT as it's based on a Firefly iCore-3588Q SoM
Changes for v2:
- No changes

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 522a6f0450ea..e21c5c8fc2a3 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -178,6 +178,13 @@ properties:
           - const: engicam,px30-core
           - const: rockchip,px30
 
+      - description: Firefly iCore-3588Q-based boards
+        items:
+          - enum:
+              - mntre,reform2-rcore
+          - const: firefly,icore-3588q
+          - const: rockchip,rk3588
+
       - description: Firefly Core-3588J-based boards
         items:
           - enum:
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
