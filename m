Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12324FAD3FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Apr 2026 04:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+0LS93mK74LcjKk+Hxfjq/QdbjXBiUKsFG4+X45JrQ=; b=SLIxyJuDIVDoVo
	AGsQV/wo0m2iRtsOTtN2sJxva7N+ihvNUpAPZFgie1PvWqHyitoLau82fGIPTAk7mtCn1sGfArvf9
	NswxiuOUFUwNkht4AzP+JJPWVq3Q1XVAeyC+UTNHpcNLfzlkAczYD5Vokah+FcIxmkyI3slPW6bzK
	WyHGAuA4QgtYfzOslwnPToT7WiXjdxbRsnWChQSYafw6U6k2VCTWPJcAxOBt1YthOprLcNnmfKKbU
	ZHu2AtpMRzgoN5ac4FsixPGNAbxOk43WdesxKHY7fjivdfpYOiq3CgLRYZB/7uC95ywM2g/fpByFb
	g56HWE3+XX+bAKKaPNmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFlgX-0000000B1mf-0Obe;
	Thu, 23 Apr 2026 04:29:05 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFlgU-0000000B1ln-2tjz
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Apr 2026 04:29:03 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-35fc2b18363so6999328a91.0
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Apr 2026 21:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776918542; x=1777523342; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ldKzYRVzGfk7M04BaN4noHVbGeTb3XbIYu+RVxu/5hQ=;
        b=VLTL8xPHfROHzA5yh0Hk1woYWpYNHON+2sVLT4LdOBUGyJhy8hVhEnIS1cAxbd1ZtO
         0p3gOAI/3W5R1R3NnRGCCrE8gH1IepHiAea4/vS0Uc5gW9gYWckl1lELQLpGelL3UJVi
         WoaQS/gbFWnkr8wZRMFehO0Yhjix5qQLo0/GsbcOkuELC7zHCtAWXDNgEfI/qsCoZOpA
         vJaCuNUXXy4HoETj9C9Gf3rSZEt4RJ7mg5700zDxRaMNx2Pt2Nn/xWyTizWqCUVUYkR0
         7Z4Gx2si9E4fL0fN1WAATloETnLriCaGizXMFVYFD9DXSDHbh7s2HpLdsZ2apRW2sqvS
         cSbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776918542; x=1777523342;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ldKzYRVzGfk7M04BaN4noHVbGeTb3XbIYu+RVxu/5hQ=;
        b=oYH7JM9mPc3Pf6xfk+pyE5u6gXK8C/yhhfrzx2BwIb6Pp9/SyCzQFMwd6CZyhOqWin
         OniccZOzgxuMKFRZnVy+qp0yPqdIxs/lDoC/aJONpuj9jbBgQiioZ2fe/3Q4t4JZH1e+
         9v1sOth6hGpeHdkPKkyE/FeJT0MJdbHairi0IzEL3+vOjHylp1sDiA8ZsR+y325Hr1GJ
         QK5hzFp4xUTtmQduwaeKJOXV4jIoN5gA2nwLBXrmEifviL394Rn4O5JNG0iIeyeYRjPJ
         R7eb9n/LxM+JiDTMDYIiKaco8k2aJuxF+wTkGArlYcltzpGsQ9dKxP7+hSz3AkcFFCBy
         VYdA==
X-Forwarded-Encrypted: i=1; AFNElJ+2SGH2cuB842A9aZlulrRj8vEgeffaS81sCW/52xHxs85a2MBbj+9xCTEkJAc1Ha83PwAURWgIVfB3rvgFCg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5Jeyk/ZsB5tTelO1aYAP8RMJwWaxVSR1oGpARDdYQfWsLGvRC
	ZnkQv4JUT5EKLdJ9THVeqMy3wLOfi2Tjc1clpX92UuF8ZNvdrWvQsYP8
X-Gm-Gg: AeBDiesvBJkP5t/V9En3efV6YNybrEsFres4vXHaZ7NW/umktecDDW3U23W+W5TP+eF
	7O7jLe126FZSn/HvH6VA9JdHI55PFifslHLz5y/EsPpcRI2m6HS9xDyyEZ2TwWRaKz25G2Qr8Ew
	U1IDr2Z9PGi1ZRw4Ur+7H9fqpQ+IVxZkrVFAhz1Ha+75AiYKGeq3eQrkU4jg0ym/M7xNMgnb0cf
	EEbObhrIm829Pt1hDMetQD7dXDxD9kgP0u39V7kDlvIo8igbEB8Jnssr3CHW5zd4yIk11zbHj4l
	6yetbDbEM9TBVOa5eRI5C95amLTecpLxkfK8H2zNGASNGLkNcZhvi1129b/T+kP3uM/zvLMcjhw
	D/6M2JX6J8TKoBZMdPQqQ8qVmhWtHqXLkZ3pq59SY83AtINb/X3h+/HXj+5/28qRfwuIEjASaZv
	Ll6rPvLTc463FcudJ01YjvVRRIKdqAsI2+G6rTHLk52Xj9JEXrugdM00ZkAP4o0zHPYsYq
X-Received: by 2002:a17:902:cec8:b0:2b0:5b4e:370c with SMTP id d9443c01a7336-2b5f9f8b3ccmr282724315ad.32.1776918541770;
        Wed, 22 Apr 2026 21:29:01 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b5fab4049bsm165723755ad.77.2026.04.22.21.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2026 21:29:01 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Lee Jones <lee@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Joseph Chen <chenjh@rock-chips.com>,
	Chris Zhong <zyw@rock-chips.com>,
	Zhang Qing <zhangqing@rock-chips.com>,
	David Rau <David.Rau.opensource@dm.renesas.com>,
	Animesh Agarwal <animeshagarwal28@gmail.com>,
	devicetree@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 2/2] ASoC: dt-bindings: drop redundant wakeup-source definitions
Date: Thu, 23 Apr 2026 11:28:31 +0700
Message-ID: <20260423042831.21114-2-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260423042831.21114-1-phucduc.bui@gmail.com>
References: <20260423042831.21114-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_212902_735720_74DA7BC0 
X-CRM114-Status: GOOD (  10.55  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

The 'wakeup-source' property already has its type defined in the core
schema. A number of sound binding files redundantly specify the
'type: boolean' and provide descriptions which only repeat the generic
meaning of the property.
Drop these redundant definitions and descriptions to clean up the binding
files and rely on the core schema instead.
No functional change intended.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 Documentation/devicetree/bindings/sound/dialog,da7219.yaml  | 5 +----
 Documentation/devicetree/bindings/sound/realtek,rt5514.yaml | 4 +---
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/dialog,da7219.yaml b/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
index 19137abdba3e..fab37cd92e0d 100644
--- a/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
+++ b/Documentation/devicetree/bindings/sound/dialog,da7219.yaml
@@ -45,10 +45,7 @@ properties:
       - wakeup
       - irq
 
-  wakeup-source:
-    type: boolean
-    description:
-      Flag to indicate this device can wake system (suspend/resume).
+  wakeup-source: true
 
   "#clock-cells":
     const: 1
diff --git a/Documentation/devicetree/bindings/sound/realtek,rt5514.yaml b/Documentation/devicetree/bindings/sound/realtek,rt5514.yaml
index 7fbf7739c371..57e5c09c05c0 100644
--- a/Documentation/devicetree/bindings/sound/realtek,rt5514.yaml
+++ b/Documentation/devicetree/bindings/sound/realtek,rt5514.yaml
@@ -48,9 +48,7 @@ properties:
 
   spi-max-frequency: true
 
-  wakeup-source:
-    type: boolean
-    description: Flag to indicate this device can wake system (suspend/resume).
+  wakeup-source: true
 
 required:
   - compatible
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
