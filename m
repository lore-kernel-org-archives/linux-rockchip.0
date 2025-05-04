Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74B6BC369DC
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 May 2025 10:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hxo9c2yd1yKNhj+PULp4Oxj3TyXstBG4pojiO8XvwiY=; b=l7BWIZmp/BPpuv
	uBU3+ettga46bwz9P4UxrR/7GolknMhkBiM9NnjL0IqUT+9dlJtZdXgsu8pSWcqHDLpgNJTeuyh9V
	gbS8NH5GpUAmBChNTtft5bss3jYsUWfMGXOEj+0+ZFRIW51qpeyGFh1nf524/a5VOXvKVJuuUYFJX
	chhYAjNd5sbgY+zq3Vv5ZNhkt6Kn6+y4LoNjKWiI4iC0t/uX8JLbcIwX/Vs7bsanRrmkNFvTIXLYh
	Gr93tZdKYE8uihBLH7nIPl7VTdqkKnU8nBiwaYZjK9q2tvuCB/FD1H03xdFvxYO+7891iYNVxAUQE
	eVrxyVTsjTCLmMLEefww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBWcU-00000005B2G-2149;
	Sun, 04 May 2025 10:30:50 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBWXF-00000005AR9-2jZd;
	Sun, 04 May 2025 10:25:26 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-476ae781d21so43130671cf.3;
        Sun, 04 May 2025 03:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746354324; x=1746959124; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QeBI1hiHxX3EY5hNbTVYMQnv6jTJMzI7qpXjSX73AkQ=;
        b=cyShzbyEH2p/9anznMrgq2ZUHua5xMOID7g1j/r4kNXamZmZwDzX9uHKfoMWtRXf0m
         6QBb/Kdq3DS6znCPxndovYSIeSSngC6qqDSKRAHMk/k9Fsn0gFz6+sw8auNgv7ASsxol
         +gQ0dR8BZ9RQiIObZdNRunXS4+sZ7Hp56xVessJhf0gIeulPECtD+cWQCuGn9YS8RYLG
         jwcyAh9smEW7dSioQPEsmV1aJTywMq+F47hBE3cvb7sys8G/YXAn/KYH2EAgX/+cxqp1
         j6I00YbyAQbF915p4cyfv5tQBchGNuvZW2Mrm9EI+eF4sR/poM10WtA+P4Sv1Nsm0HmT
         jJmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746354324; x=1746959124;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QeBI1hiHxX3EY5hNbTVYMQnv6jTJMzI7qpXjSX73AkQ=;
        b=lqsUezkfl5belt0s+sbjBIpLvcVsE9Xmwo0cLma5PSmTvXh4cmMTy2bbSxZHiz68mb
         fsYJN/Aefpg2JfOrS/VyureioPxE3ZnLW3RWa8k3RHT31SNuu57on69B6H8v2gNeWcj5
         xcrgWyRIKeOXQbIubV6W4D+nSKHjgz1rzvMxL95gmMYfv1USZ/Yz8g49HljwNqMzkfdp
         k1LqZYGyw3ONK3loRlJy4UQf73JkDwokn99E3Xf5DrEegI5cZi5a+4Y5/TK0mOSy5gT/
         IzOQta1MrqPvEvgkMCunBQyqlhhZNRBtXcj/K7IOadTUwSsAYg9719JeqtO9FUSJNaAq
         uNrg==
X-Forwarded-Encrypted: i=1; AJvYcCUHUs0CV9yQCEE7MuLuoeqLjdR9FBVlrXU9guVVnbYd9dA5bA79+IjZ/Xhmu0DYysB6UnWvvp6iU7VMZmOgMSZp@lists.infradead.org, AJvYcCXKv0JZHmU3tl/mVS/t6gAhyEVhExJ8IodctWIFZJ3IXagJ1lmb+5GBzGc+dhX9yPIPN1KVvS6DRZMp7tAlEI0=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx65PrmwtHBMivLYf2jOZt3X/BEC21hULQ/AoRFjYT7qvzG6+2b
	jq2dw0Kr5QVIDP73Bv1ULU1+YcVnmVAdbikfyKeXsK2YkRKYyWeU
X-Gm-Gg: ASbGncu/qbwpEqOZFgmAdc3jl030a78TnaDG6RSggvBqG5IZHE74ySO7yuE2QjsP2Sk
	OiMp1lUEuklyFzz5+GzAuUhxsYfcgTRNFXVbb40KzjDp/5SSVu/3qTkrV4G5irlMvyh45on/EF8
	nA/UBLiw6EPQJtokA6+mD6aIylMZIoFv31qvH0TPqnZ34zscoQS0QXr6M4Vd+mJK89vb1Ao4VhG
	k6sH96vltq3nDm6F0EylqZr60wPweFR9fftK7WSUgUt/0g07ku9RCFluZHAQ7MuuHyhfuqt3QwL
	uR1+CXsUDO0OhAZzKRTNuIrLW8/S5vqAoYCYGkaihT23QXu+h9NL
X-Google-Smtp-Source: AGHT+IGz5k+2XSwMUtRHKJOMrQNaU9zoqpmnjJ2twV1Pghmry78hHJFx69ES9l8vE65GsebcgWjtSw==
X-Received: by 2002:a05:622a:5c6:b0:477:41e5:cb8d with SMTP id d75a77b69052e-48e015516e5mr46421111cf.44.1746354324469;
        Sun, 04 May 2025 03:25:24 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cad23c48d6sm429222285a.32.2025.05.04.03.25.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 03:25:23 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add Luckfox Omni3576 board
Date: Sun,  4 May 2025 06:24:46 -0400
Message-Id: <20250504102447.153551-3-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250504102447.153551-1-inindev@gmail.com>
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250504_032525_681224_2E191890 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, detlev.casanova@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add device tree binding for the Luckfox Omni3576 Carrier Board with
Core3576 Module, based on the Rockchip RK3576 SoC.

Signed-off-by: John Clark <inindev@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 455fbb290b77..225a2d9e4d94 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -715,6 +715,11 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: Luckfox Omni3576 Carrier Board with Core3576 Module
+        items:
+          - const: luckfox,omni3576
+          - const: rockchip,rk3576
+
       - description: Lunzn FastRhino R66S / R68S
         items:
           - enum:
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
