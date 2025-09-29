Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82D0ECAC5B5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 06:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdSv26IpKWWTwT7hGrMuMb7rJKsOrNWGMZBXJwIxtoA=; b=jhAM5ZJCTLpH21
	AYgNqOn/szcTmQRcbFoWTS1Vqp3kdmKS4ZqXsurzpNZFBRmrWZyWQGe5Ao/tIryB/1Qlwlzg/2gf+
	pwyTwqBzFvGhAa6Lk06tBAw6/pL9VDHd3q6thU9NfzsQcXuReVDG9PHFKcOc0m7AER80ZMZe7y9//
	Fs6o5aTeDhxG4CRfCKbY7esPcvzrDM7BQEYNaA66sVx+6MqfFXqP/IZsbCNDjzZEQv/FDZLhZID5I
	9oQC7qUzizYqJnBR301MWM6YUYElnw7YlbX3ew19hU4dYsk7OhUFfukQW9p/tbAMZdWOpSrjv0zh3
	WNigLQ8+qTYROT+RW5/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37pU-00000001YEi-1YZn;
	Mon, 29 Sep 2025 06:57:48 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37pN-00000001Y94-2ZpK
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Sep 2025 06:57:42 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-279e2554c8fso43778015ad.2
        for <linux-rockchip@lists.infradead.org>; Sun, 28 Sep 2025 23:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759129061; x=1759733861; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=EEF5i1OvFw3kXabVhuF+ksVM5BMUYaW2nJvh9ASvuPE+p8xH/YVs1ojGXMnM3A80wb
         7JKnx+UmMqVw6U35VEdiud6eufQniOIuLNxTkLBe/Fm5ntAUzUtAEXYzQe2QQBSvSbDQ
         /Uvj65sp+p15UFUzZNTnrOSJQx2xqEj60/ALT2eoTHIKCdligAwtQnCcB4O/bArYwlXI
         q1p3RAUlwhrhiB47E5GNLZPaepf1hc8HnKgmUCUs+wrsuVYkgN3Li/5rB8NW5utmeZ0S
         WgQAZb+d+P1xcHPQ0iJFps5U+SJnM79BQP2tt50bP+oLdxkrm/jjMruF4PgMQemKtk0a
         VO5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759129061; x=1759733861;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=aHBPoUHxJyBVTZFH0AiCpf4sYSYCw8sXjSFHznEw4/4BYAOlGCA8XxOMjrfzEjXdpm
         Yw2EouhAaZDd1Dj9tuvl7wNYjGDnljdF5ctP0Vi7v8sU3Rq+XvTHX5XfNu197gX3EMYt
         nz2wu0vvP/yht6jQDEjzQDcoY0YQMp+lzEN7w1EvHVLcAnZOQp+QXLr9sco5x0M/adgK
         Uhf7eUcVFIB6ep6cdVYW5MA4GBRUdke+bHIRGTnj05F7vjTzZVFiti+vDAjYx4NJkA4k
         QWa37MGYnxCVXKexb38eVBcAXrL4QP23RozMtmBPhnFlzpBDJI+NWviGaTRSbfxQw8RD
         cdhg==
X-Forwarded-Encrypted: i=1; AJvYcCVUiyBnzYnjVg9tYyRxQcw0cmL6b1GdQMwJ5U2BoMO5VJtijy12UbqtIT9vHz60oLveE/KHt1GnIowv5a8b7A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxAgSi6/9+hptbPQq/il21swMqWbZt0852Vc7PP2bgD3UpjKz2T
	GH9LG2vYGXb8jTcpzTZQzztXOovYwfXKA/I74qTmK2E4dsmHVBWkf6Nu
X-Gm-Gg: ASbGncvqX3lIqtmINOz4T4n1fFmkpt3uPHwiivxbVPrCuqSTEra1bpYZ3sC8mJrc3+5
	4TYG2f2VMvnbBUnc5Ne2Uczx6eSx/H17gNWzdFGMd5W0rgHU8L53++xT5DMFLh/KVlxPXgWS955
	xdP7CwXVeZhNQ26qphhp9U9EDDc0IFOqxvIeWEwj0nstRiHBgYO++dlXViiiLCb21B9X7HuN5+J
	JuFSWbQvOCDj5fk+e5ni8g/8Dk41seMO9bLOW5mNPCnhi8UXARG5W4AtWIdocwGnYZmFuWfnIJt
	v9zn7hYFbjld5B5TpbYN3Ps6aoXmYpZgngWnSND2VSw2Kt4i8jtuFxA0PtyT/PwD6DP97sjHx5u
	Yttj1xeRvWpMUgjlLxL1BgaGi4I5o5tMpoclbdLA/eQM=
X-Google-Smtp-Source: AGHT+IGXx48956iAsgN2mLQXj+DWiZQ/oeB2pwDmDud/7PQv/mcuFlsHf1iG+3XAh+OJgY293RcZBw==
X-Received: by 2002:a17:903:3bce:b0:25f:fe5f:c927 with SMTP id d9443c01a7336-27ed4a7f364mr157596135ad.31.1759129060832;
        Sun, 28 Sep 2025 23:57:40 -0700 (PDT)
Received: from localhost.localdomain ([120.229.16.251])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53cac77sm10549595a12.17.2025.09.28.23.57.36
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Sun, 28 Sep 2025 23:57:40 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Mon, 29 Sep 2025 14:57:13 +0800
Message-ID: <20250929065714.27741-3-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250929065714.27741-1-jjm2473@gmail.com>
References: <20250929065714.27741-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_235741_674835_096A9E3D 
X-CRM114-Status: UNSURE (   8.46  )
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

LinkEase EasePi R1 is a high-performance mini router based on RK3568.

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..ec2271cfb7e1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -726,6 +726,11 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: LinkEase EasePi R1
+        items:
+          - const: linkease,easepi-r1
+          - const: rockchip,rk3568
+
       - description: Luckfox Core3576 Module based boards
         items:
           - enum:
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
