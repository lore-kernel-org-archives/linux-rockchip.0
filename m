Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56924C5DF8A
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 14:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NeHUYVq+94zLqPZAE8v0YPxIAN0XpqTTZTGr2dR2sRo=; b=hqvbn6Cz92yiy1
	wSbSSvnce9btjLhiobtWEuBLG+zqkjlxN6VQgravPIz7tSMY3PCrPRN3KMayUYF8eQnmfdOdHVnXv
	Y8Dpqv9EyJMDxC8k4yC+3x633h/iLm8JW3nDGMDUZbDK/ZFQrqrvlPIPGJ3tfd8IKYwEWT1XDliqm
	M65dHghBKSlUOmdpEcBtgo6EL9lSfEgw705zNcwZ/1EFkLXwpi+JeFbaTjyvQQggAgYOFgbdTj+UO
	3+QRh/qnmUsIs0p96m3cxV3SMp+dFyYocsuew16UBJVS0/OflIDyndn70OP/JmuF6QEgOQCLpKkhJ
	sPXhBSwI5zc/5pwru+kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Kq-0000000BeYf-0aGm;
	Thu, 20 Aug 2026 14:01:36 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx3Kg-0000000BeOH-11dr
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Aug 2026 14:01:29 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-49556f97a9dso16003505e9.1
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2026 07:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787234484; x=1787839284; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bLaEkJkOM/bblPdjJj80Q8FaxdewKpE3ij2aO8k8oV8=;
        b=JIEqrDH3D37tC0BlBfl44zucyXTQv34mQfu1TjbLUprDYbLfLj7QDOwAVgX+VYnOi+
         lBHgJKMja8rbXxvWsSg2XgmyZ5s0mFCYkqaSFNmahGFv7z9V91c9XMQaAcpTefelaMNj
         whmF2oeu2bfdXId0vrw2Cvy1cxj+9Wcoe1KZYEOdi1gjxDs4kH5/4kMIb58wjhNnuKqk
         3nD62u2gFy74sJVnfUwfk0hadYs640Z8aDUyJXz7XARz9FVfj9ibuMR+9mKIDRlxZIRC
         MS2h76GsSQb0MWqSvF53JIC43g2ZuOB4pp+kI5kivQ5ZFNFsLg0q2l2qivl3tmY941cV
         kbWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787234484; x=1787839284;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=bLaEkJkOM/bblPdjJj80Q8FaxdewKpE3ij2aO8k8oV8=;
        b=JFYMXnkkA1clwe9rytXJaYyd9c8xcAKih9q85t3mO0q9JkX0fDBUifSZytlTpO1X9H
         6Bb7vg6S8GakzPJadg7BzDV+mYK8IGDRzoUZ9ORkDh3YJmGZD2WeDTFlZNK5I56yGs8S
         bk4ei1T7ModkU+2S/c4lQ81AxxTzmgyIVutngLF63ik/PWUwQBIiA4Ac7yihU6AG6gZh
         HJgclswUQdlqEgEY2Wy4q60JWNy5qnVtx6owFXVLSGjXl+u6kk6xXaJY/iJ0uKUX/+N+
         dw0KmuDwI5FJ8Ewt3+TMnuWH+6Jn1sc9m8BWlJ9CseeHX8qMFWCIfKqJcJiGxQfio5jn
         6PxA==
X-Forwarded-Encrypted: i=1; AHgh+Roa/Pe8HjZnwOZAaW2kjavbEfNRkBN2OOflCYT8PvYVhfpbaMsjezkr6fkAMNAVYhmMckAhuuVzylTgbboaYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwiVQt9vwrEVlzXSTM1HD4RxDZOu0SUCespPr9PLy+gE2Q1qGWn
	oS4//8LVvtpBbnnVyTELpjSFqytr0uvnlbOEk1trXQrlyYMKsNZ5SucZ
X-Gm-Gg: AR+sD12aZpxyCAJW/As/nWYRI5YsZeohvj4GKK5RbwX7n9n7C/6OC+KTehhppYu8W+l
	59CVmGf72NyaF0vC1UsNC52rpT5L1jyKOOinSbqwyCvSKaFLWR6zxzSOThI+8/PsSQ0UMnAv1Gc
	96HG1LI1fNTv7wsHZAvMnqfN5jwClkBsICsCvbOc+fNZcpIaG2myz1k6G2PIqacrcyzVAY3fJHV
	wNaz1GT0cvqgCetKG7W6EBKJbDsO+PWTH7XAzJDRNNSLd0iR7oGCM7dQ2CS+RqvMBJZIuB95ZXV
	pGvNCXq2Wx052oUc9YSyFD9ggERV+AtLiO1lq7fKFKeZf90F5hhIOSOYCSSEB7uJ8LSWJ1jkYoL
	kXqOOlzVGv/w0aDkvT1AJC8DNLU5p/q08GHYWYNYIAjn8CVuE0XN6OFgZlLPBeSqcVZYFiJFiNe
	58GTdQDXj1KAHIlJCue4MaWwYDXEWQ5dSyZjVAUwDCs+pkmOqwJ8xltxGhwKc4KVXeQBAvU17hk
	PrD2tLeYjWyYrerUfxUBc4PnQK3WjB24IjlbcWe6kIvWw4K
X-Received: by 2002:a05:600c:1c22:b0:499:9240:9a1c with SMTP id 5b1f17b1804b1-499aa1f5589mr213200385e9.15.1787234483988;
        Thu, 20 Aug 2026 07:01:23 -0700 (PDT)
Received: from [127.0.1.1] (lmontsouris-656-1-83-121.w82-127.abo.wanadoo.fr. [82.127.110.121])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa0e473dsm137978275e9.15.2026.08.20.07.01.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 07:01:23 -0700 (PDT)
From: Amin Gattout <amin.gattout@gmail.com>
Date: Thu, 20 Aug 2026 16:01:09 +0200
Subject: [PATCH 2/4] dt-bindings: phy: rockchip-inno-csi-dphy: add rk3576
 variant
MIME-Version: 1.0
Message-Id: <20260820-rk3576-dphy-v1-2-70e25e8d5e78@gmail.com>
References: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
In-Reply-To: <20260820-rk3576-dphy-v1-0-70e25e8d5e78@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Michael Riesch <michael.riesch@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Amin Gattout <amin.gattout@gmail.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787234481; l=1206;
 i=amin.gattout@gmail.com; s=20260818; h=from:subject:message-id;
 bh=PQU26xP0GCgU75+6oYY/FD7rSTDen5UQ3ddMVoJKHtk=;
 b=vVatJWe+TLIe1CZEaI6WT0B5tUQdWfTEoBKH00j37Vospx7fXC+76eafe1vUDln3ztYdagCAm
 IVW7y6akOZjA+GI048Dv150feOuZLDXjs8YFPTR6f8zv8l6/jhXfJoD
X-Developer-Key: i=amin.gattout@gmail.com; a=ed25519;
 pk=MSIqDPkCOkwtyP8Fns1m+KFU9SgqoDl2mpLe18vL+hQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_070126_307237_4C24B47E 
X-CRM114-Status: UNSURE (   9.80  )
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

The Rockchip RK3576 features two MIPI CSI-2 DPHYs compatible with this
binding. Unlike the RK3588 variant, each PHY instance only has an APB
reset line, so add the new compatible to the single-reset group as
well.

Signed-off-by: Amin Gattout <amin.gattout@gmail.com>
---
 Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
index 03950b3cad08..92d0c961f4c4 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip-inno-csi-dphy.yaml
@@ -21,6 +21,7 @@ properties:
       - rockchip,rk3326-csi-dphy
       - rockchip,rk3368-csi-dphy
       - rockchip,rk3568-csi-dphy
+      - rockchip,rk3576-csi-dphy
       - rockchip,rk3588-csi-dphy
 
   reg:
@@ -89,6 +90,7 @@ allOf:
               - rockchip,rk3326-csi-dphy
               - rockchip,rk3368-csi-dphy
               - rockchip,rk3568-csi-dphy
+              - rockchip,rk3576-csi-dphy
     then:
       properties:
         resets:

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
