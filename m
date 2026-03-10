Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FB16FCC9AD
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 03:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkZpDJjSuKENtdvyFxoEWNvi+fzCPvVp/p0BM4zrZgI=; b=F0kl0Yk2fauZV/
	ZK3BoifVZnDp3OaZGFwTRG6oV98r58lkAlo5n5DQIy4RuWZsAWtcqvDlkz/MySbU/+KLhHkOug8st
	JOPGNhpljpHLTg7yakD7UdgXddVS9tFEJ0WMDXwtpwXr82OANE0dJIMyLcpptg1w6ND2+nAKLRdF/
	P7JoQXMI8n0Xbe4TG9xs2DViLXSKwfR5Zaaz4PZSF3J2t8UL6zEKMfbdjeVuxWsLkuNLRd6QPQC9D
	gvA6mRPad+vAzXAVIYSuLvtCpQX72Jm1NTQ0iy+13cJTKWrdPoTtkpXZAYFpW/K+diQE6jlwsFaVx
	wlyVE7sNgMrtIL1W4o0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vznU4-00000008cK2-1X7C;
	Tue, 10 Mar 2026 03:10:12 +0000
Received: from mail-vk1-xa64.google.com ([2607:f8b0:4864:20::a64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vznU1-00000008cIY-3jVh
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 03:10:11 +0000
Received: by mail-vk1-xa64.google.com with SMTP id 71dfb90a1353d-56a857578a8so4241064e0c.3
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Mar 2026 20:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1773112209; x=1773717009; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=NaiBbi0HogTMXwHL7wPNFFbXepp9ot6nGuxWMvztsK3QLakwd0ZRTF8Qbe1VY/d7kx
         xoCfdJizw2wGtJDqJ1m8te4cUhzxza43liatVz4sw/N+MfRNIQwCZCfAyCnnb/yxpG2H
         KqAfEpDIweWNeSsscU3CYdRVvTB/8OPYQUkxCw/Oz9TuOBGKEqTb6qUgC9duCA9yVGFe
         oSqzZedc9uDwco9yAuPjzkq4egir96OpuyxGZBnLtFSB6nAeuBR2HMpaAL6OUoBoRlDQ
         tiOCzn/Ojdglnfz0TnySu5RZkxmPoi6+U5gKjnftLc9+b+v77f79E3Z6Hz3oAGw4vnVo
         BoJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773112209; x=1773717009;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=d/xeXvE16J0J3HZ4Vo2Z/JSztwEOTU7jhLs3U/7Hl+EcqxEUn0REo36FJYwszyRa/J
         yB+LWQ3r0Z+jr5QQETejwVkb2Pao0bFikxGw0LVqiJkH+zamAa3HBA2waoHLvMilwM3j
         1NuGh44UZYxPfYywFzI3W71+5XifoHtZg52Ks45F4tXShTiK/w5Zu2yNf0L903ROrMIy
         JZ8k4rO4X30fUYL3GFtvRqnyHA8CLwjsza8vvcjUypLXRHl/Ws2Db49Hf5pUVybk+tKK
         0XS7FV867WalXgMUgGEPJsCWqXuLMQ5/MRnKgjSIX8IqDwc2/Yly0OmFi8OWofaIK/m6
         /huw==
X-Forwarded-Encrypted: i=1; AJvYcCWvMxdVRXdKUk/rImGljb0EKgbhUqFXBV/604zzAX2b0HLzb3CyUaT86OBH0LI9X32y7hdFsHEF/C0J/TxeIA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwGi3icEld7YJlexN0PVWu3VtAeDs2Xs8xfGSDLOuiPPJt7JAt6
	6xbBbVc+6lMcsOmMpiIWkSijK1h8wi8Bs6UsG+hVdCeKDT+FVMSPKIOa4Y3J3BS7X8irPuOG15O
	fqgUSB5KxbSZi3Suzt/t/3gLvSM93xkkrfg06
X-Gm-Gg: ATEYQzyXH92mPvS3qlRYkm0dMBSWU4xncb71vc73myodM1wkWkhwDPxrjcXGctdSw7P
	fjo29qMwlREgjV8pQMCml3JrONLYd3XZh3Lm3Ax2UWETxrdpvpn8tYXhL3Uk5bi+fhE+ACuMawO
	1ULIPySMlLT7r7+ZiLpDxcB6NiI8IgEk7MrEBbyiDc33ezLXY8T+pDValzm+nVaiROhZ+OtFEqA
	NTNNIoNJLvOEwtWaOPaSjKvZwTlqw7lTcaATiSzLRD3ijRclgguPJIEAQODFZuRSzh6ntm8AY2N
	yvIIyXbB/VYCKr28bXC8eWxdqNQWrATpx4Vh7VbvyO6pZy+iD1Bf+UEYS0viV5JbqkXHdYAo8rT
	9l7rf9H/2WyAI+kdtbuqOz9q//BuVHNNuGcXqcGYAPPNG
X-Received: by 2002:a05:6122:1699:b0:56a:f348:9b8b with SMTP id 71dfb90a1353d-56b07dff8f9mr4723574e0c.12.1773112208790;
        Mon, 09 Mar 2026 20:10:08 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 71dfb90a1353d-56b09ae3ef6sm1544609e0c.6.2026.03.09.20.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 20:10:08 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v4 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Mon,  9 Mar 2026 22:09:59 -0500
Message-ID: <20260310031002.3921234-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260310031002.3921234-1-dennis@ausil.us>
References: <20260310031002.3921234-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_201009_926903_0B718F79 
X-CRM114-Status: UNSURE (   8.09  )
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

From: Dennis Gilmore <dennis@ausil.us>

Add compatible string for the Orange Pi 5 Pro.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..3c6b83a84463 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1320,6 +1320,7 @@ properties:
         items:
           - enum:
               - xunlong,orangepi-5
+              - xunlong,orangepi-5-pro
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
