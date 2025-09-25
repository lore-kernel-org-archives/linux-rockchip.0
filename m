Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FCFACAC5AA
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 05:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wAy3PVGMnsDQ/hwO/NrRL9OykkwqjGYJ8XVmXkIhMZk=; b=zwPjd+KtjXrDmd
	9ohI/y/KhiqjgSobANMnBZwJSLcayGeSkMegrljyeSUBIda3McGYRTwGt6xnElKNYJTv92BozrN4D
	FG40xiftpgKF0WCkOjMKiJOnEAjHWQQV0i2q7pRWOzSHnq/6nbfHNU/wX65DSsRDnKqqWb01kuoXK
	R5nPtnadAsMxy7uDooLlyMp9OsOk+QE6hbtRDvyZASlMZa0zmyRM9Qp/cOdnve2732n7rKPCy0uMJ
	Q8ak8BFVAnNwrx3bhzXTSUkaJhuUMqhsti2b2A5Bmbat6IW9/sOP+WnXiME5LKGzdMRLBJoMNGOYS
	wg49fRilg9Cd5czsVa4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1f0h-000000064Uk-3aDw;
	Thu, 25 Sep 2025 05:59:19 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1f0f-000000064Sq-35Ij
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Sep 2025 05:59:18 +0000
Received: by mail-pf1-x42a.google.com with SMTP id d2e1a72fcca58-76e6cbb991aso581111b3a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Sep 2025 22:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758779956; x=1759384756; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hzgyK9PV21LUzCc3kELjlfdCuadwZ4YNSm8kpUWXn6s=;
        b=mzWC6yNyZKMfS0VM+BGp6W8udNdCKjDecrjYw1JZmIk6QWu61TGyxzCg7csvDeVBQp
         KumdbflVmMZ+bh0+2wmpif+WCze8iciTMqXPMReew3LGU4JyAuSfhspDlI2sXB/hgbzl
         AVYoFyTMm2v7SFBpHnUPyQDSowcwquBDk15t5hBk9ZetBjL9Ky/LnPeZrvadii46MAkY
         uKrC94A+BpDnDoKZtFecakJPYeKrm07HXuFGlQMlibGXqbL42Kxw7f/5uRxS6zb8s3PX
         4qNlEJjK6GezEAeKM+8lhKLvsNsnNLpu38OB4k2ut7wEN3a7z+nSKSJ7FeEtluCij3Ly
         ALSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758779956; x=1759384756;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hzgyK9PV21LUzCc3kELjlfdCuadwZ4YNSm8kpUWXn6s=;
        b=P9X9xVnB/YYil9A/U9pZGvs5lV2QbKmNQ4zL7yZry/o9d8R+5/s3xN3bq5Uk1rcUHl
         bijyTNkRk6aNCmGSeGQFneUj6Ia8oROV6MPIoNrPq8RZm93C2aOPC1gEy9hu76lNg0hN
         3mdaQaB1mMHLRjyLsdT6S+wxF0DyMxf76YjcUbw1m4m8WvE2ZoY1rXETaa8lUYeJR+cs
         GJNX3o8CxLl5+8AKqUnem9XC1pr91Uvh5P4/gTBK7izxzikct0sya0VKp96+udJS/STN
         3RrcLNzsdes1ev1ATAjlfs61MyhWlppYfMGmPDGnfOlj1ui69ZiMkmrh/mkMqRIKPYMC
         rjYw==
X-Forwarded-Encrypted: i=1; AJvYcCWMT8oZyPyaOnZWVLLnVKb1LQZsYtfVZwGpNq+H+9pbtgxM47l63wjYzCfybQ/afcMB1kOiNca6Zw+HeO1EUw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwuqSmZ9ToWGCh2bod46jBzYskEIpfVMOxeuwlP07bBrp8tbici
	lq/GbD3RrhU7X4ibdjwCZaxF6ciptszLzYmonwblLF0AcAInAw60yRg3
X-Gm-Gg: ASbGncsvg6RulcZEl2CLVs/exFuEiZcJiLzj2HR1aDF0P+riIZiu08JaJ4G9PR1CJ51
	LbxnjAqS3oLbuSdgkOHGNJ8e7VM8H/LK3gEl+rw+pUoLEGatN8oHqirzqvBaVBTh9ratholuGQv
	dm7kLskAgyk06bsM5wwDngL6keGlkyHPQlOABcyW6guNDPLW+odxLTN3+rdmBjlLozuAF8+hRXy
	98oF3ZE+BKQI8GaKKMZ9qBORhDXVbXXPZP+JJCrhUeL77sZB2ejws+KpRtyc+MYTKS5APeoufSb
	lMtzftRFIJmJxvDVngFnkkLg8ahWIMCA3XKlgdCXMnFeeIrC7ZWfUjfai8asw4YW2bJe8Zd3+U9
	cWlSkQr7nf6zztQ6AftZgPipEZRJS0Fc=
X-Google-Smtp-Source: AGHT+IG9xIcUHZTl7U2e2Kcvms7TIgsGltU12ow8osqzjYtqIjX+3YzN6wVfCYN2K3OEd05eSOjGkg==
X-Received: by 2002:a05:6a00:1408:b0:77f:6971:c590 with SMTP id d2e1a72fcca58-780fceb49eemr2573091b3a.22.1758779956482;
        Wed, 24 Sep 2025 22:59:16 -0700 (PDT)
Received: from localhost.localdomain ([2a09:bac5:3981:16dc::247:77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102b231ebsm866478b3a.52.2025.09.24.22.59.11
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Wed, 24 Sep 2025 22:59:16 -0700 (PDT)
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
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Document LinkEase
Date: Thu, 25 Sep 2025 13:59:04 +0800
Message-ID: <20250925055906.83375-1-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_225917_772961_5FEABB43 
X-CRM114-Status: UNSURE (   8.42  )
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

LinkEase is a company focusing on the research and development of
network equipment and related software and hardware from Shenzhen.

Add vendor prefix for it.

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9ec8947dfcad..db496416b250 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -873,6 +873,8 @@ patternProperties:
     description: Lincoln Technology Solutions
   "^lineartechnology,.*":
     description: Linear Technology
+  "^linkease,.*":
+    description: Shenzhen LinkEase Network Technology Co., Ltd.
   "^linksprite,.*":
     description: LinkSprite Technologies, Inc.
   "^linksys,.*":
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
