Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E21FC021A9
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Feb 2025 20:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1O7+UpBeGa+C636eCleBT88mxqVqrSgEu7a0u+g288M=; b=hJhbGt9E8oHXqk
	ZskasI/JgcwU4nuT7YNvdj5nSQVtah51uRk9WDwFS1VwB8PeIXV76ZsO6EbTYd4no+c4rO7K2YfJ1
	3R6UKuXV8vjJIwFNVJgeWRCjuakSAzkbC+JnRzxr3KcbBewBwxW+EO6wl4O+PGUwsGlg1zDMV+Rhj
	hvjrdMbYFtsvKL2ZctjoQ7DIl1uKN19Ywi5bsIJVUqEs5vMIGjsMGdqMXpu2DLtNCYr4qRf8VQ7UN
	WgPQ18vzKO4GSy6As4w9ogy+kQHJQ2hQEv6uQuszTUMd482Fo7V1k/ZC1v01wz19lGCy8AooQ/Jey
	y6Ul3F0cMyqTG1XaXvtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk7m9-00000005tzf-25mX;
	Mon, 17 Feb 2025 20:31:33 +0000
Received: from mail-lj1-x262.google.com ([2a00:1450:4864:20::262])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk7cc-00000005sU7-3Jcz
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Feb 2025 20:21:44 +0000
Received: by mail-lj1-x262.google.com with SMTP id 38308e7fff4ca-30a2dfcfd83so13516211fa.1
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Feb 2025 12:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1739823700; x=1740428500; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YVr1hV2iB6PfGNoj61PMcywr1x0JJZuf5oSH4KXCTLQ=;
        b=Bvx3EtBs5NwQHZWtVsOXe2+Uem/Fv1Vioujz8fgIbJ1hHHS2kZXzFNNJoLkn5uz0JJ
         nZDy09s7y6vLGXx6Z2FUkvvATpz+VlX0tTBiWfBu3jx+Nh1pAT9vuxD5yyzG+SJswCV+
         FzTiVgzqp2IZjZWPgRXN56g8UFTMkQIBFIOMWr8L6lKqvvMgsBgi0ZfTeS62rZa7smBl
         RI76G4lHB94ZFJ8rmxdUzpGtFucs5NaTNe45WAqy7MRKz1GMxIWZWTtNvsOhAjZq4I78
         vYYO8igbjvRHIvWK9Ok2HBYbAFVT/PE2RWhJ4zVp4LI9W6FSeS+qSPIbd8L4VR5V+uiR
         QfAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739823700; x=1740428500;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YVr1hV2iB6PfGNoj61PMcywr1x0JJZuf5oSH4KXCTLQ=;
        b=kKuGKBiTbsAkohX1ZkoQSHTRcD8VRkN5ZSrjFsxNGp/ScZzOmZ10UUu4xpTNRBO+qi
         uMbwJwxGuS2J8qRYM3hrdeR/16M2iW7tiDOFWAw/CtBzgwiHqqP3O2peLZ56qAas7woM
         QmI0V9QJQfrpMj+TLGUi0kAzL5TMpVgvZeKtXOcjx08IetwfrS3SdzeXyySpMH/iPifJ
         Ta/MOvK2jHXu82AoPmBPQ4uEP41Nek7tBSNSA1KVtO8FsrAET8lYQ1jVeoyfc2bquc37
         KZsjs/yKqpuWsqXgpPi761AsF4U/Dh/L6yPFZxrgPMM7rBDRNypgRI6qp3rGhVJQJabs
         Ro4g==
X-Gm-Message-State: AOJu0YzX68LCf53qaCBPO7YHQnb3akmHdQ9IjKpmOKvCyvyJRjlKnJhm
	06/1T7WCEcFT84sfwSFu8N+2U0glb5wJ76lcXMr9SLq8xURrsCMO6HR+SQrBgjiFud1SLJUhI+j
	7su7c5i1GvOYkiCPV0p2Cclqpr+2bl+C7jITEC8YG
X-Gm-Gg: ASbGncs+H8/ynoPK/iCyvOFqbdJ683wxkEcqo9ymgMnht8ZxkLuFTzhxKLhMzlWbUBj
	Hk+XzkeX5ScvmZFQ18Q819Dtq92BCCAqZkiV8JvNJSTeLJ8t03gNesKlIoM5dTLq4tsvwVKcSwv
	b88hbrH/viV43LH5OHc4fqIspG5gmd/+CP+7Q/VyMy193Iq7Ow2EgfeuSqxlGpXZRYt/vZLHt9j
	hLSgcEW/amAIhEjO8LRjSV/vvk6yo4jnRUhZ+lCVIdkZDIlidHozoW4zA1/h6WP17d2pS01JHp4
	9edUSEgVQ16y9V/XsBNlanEyTS+z6qdM
X-Google-Smtp-Source: AGHT+IG1KbT9YXMVLvcLXnzqaNmMCKEzhOQTa2fDguunLh0CvEnteT/83KIuEJOKJgj1nh+n/Fr6t8d1LXAE
X-Received: by 2002:a05:6512:3b08:b0:545:1049:eb44 with SMTP id 2adb3069b0e04-5452fe8bef2mr2746361e87.36.1739823700140;
        Mon, 17 Feb 2025 12:21:40 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 38308e7fff4ca-3091ffa5b3asm1234801fa.21.2025.02.17.12.21.38
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 17 Feb 2025 12:21:40 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Mon, 17 Feb 2025 21:21:35 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: rockchip: Add MNT Reform 2 (RCORE)
Message-ID: <Z7OaTzIpeJ-IACrl@windev.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_122143_075253_4CAE0DA4 
X-CRM114-Status: UNSURE (   7.56  )
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
