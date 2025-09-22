Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30E7ECAC5A7
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Sep 2025 09:17:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RLHl97xYcSjOqLMvEYCGjyFWtEBNcSywuJvcVE9pUdw=; b=w2OA55ON7Vy7jt
	cafU7XIY85QMP43MN+EuwkodVk8g9FYO7YoaxvHqek+mUtBOzVtyix+6RpO7w9T/vj3yCA7Zcg48v
	R2AaIvEfR7sDIzSjsVf1CkSZW4Zp8Un0vDOoGF7UmavLxilPWsKBw1i+dlf9OQSMQWiFda+/ow/ln
	pz/grHMupkSTCLpmVfBVUL3WCvuPKV7H73PTv6R3C/2gE+Uef/bie5LI6kvUTBTCGxRIW/G5l3WCL
	OWb+LsfBSiXQ4RYInY8yf2VT2J/dVev2dQoT8YZWENom1D+ho0RXwDXZsCKthmZ+A4OhBIL6sAFhv
	QITynNC+b/g6m5iSyMfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0cfp-00000009rNa-2HjJ;
	Mon, 22 Sep 2025 09:17:29 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0cfm-00000009rMS-02xt
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Sep 2025 09:17:27 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2698384978dso34696435ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Sep 2025 02:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758532645; x=1759137445; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fGb/DBgzMdYPrR58mCFwPhHuJtGwABvWLMjhmJdkkaY=;
        b=S13NmXYHEaKzp4sUxmxo5u9eaLdT5VQBZNoKoTYnNqTJc8Axc4QzAJRHk8LAlo0eS5
         IRFlBR/aQQKoJIbKLVjbpK3bi39+sLASjsbKgXQQlciKi6vlK38wY7sGxDA+T/Irj8lH
         xNhKmnujWZG1+uOl705uinzMF7ijqrYqor0H5nwNaonzA05fyUs03PT/OwxIRmierNR/
         acKJb0vpzgYE4jpWY10NQOJOpR9Q8spMbzmUxEwefz8cypUPw6izYmdcNW45EY36JRu3
         qzZYgEfclJEqWE9L3huoc+PUeCsGnYSTyAvfjXHCgcHnCqPSUcXT5zoLDe2i5KDxV/D4
         6rkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758532645; x=1759137445;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fGb/DBgzMdYPrR58mCFwPhHuJtGwABvWLMjhmJdkkaY=;
        b=DOaF5gAZVUFOjtWRNpCbZhlotPxLgN0zXXTbsb0aTaDxkv0QAwx9fBnLjaciBALgJ6
         5DN2c27PBYD+sF9Bz4U93SGPZt3v/XXGB1/I3IQwrQl9XhR68iQPH2/C3s4NKnVYNkcu
         CWIBX4H1QqTgLrdOcC6yuq6GB5MXA828XnCp6n5N1/bVgoPXhEwuYH21C7oC5oPwnKDd
         mHZad19uyXYOgllteyGlIKK+m7krxcVLxUdpFrQCAkqjTQC2gSz54XAVGmoAfZXDpne4
         HrKlAJD5BBD+Q6R1rv8fANhSI8ETbx2SQdp9v9BBkWw//0OeY5kdMJBBgW9bXZ12ZEFt
         ni+A==
X-Forwarded-Encrypted: i=1; AJvYcCUu/qnieWupBEkJC84o4WaT84lAD093Wk0uVEZ0XgOGl/yFBavNbkTZ3hbFoCvOT8+CoDrvtiiUrG3hjHZSew==@lists.infradead.org
X-Gm-Message-State: AOJu0YxTsgj8Z9/EwdAznK+CZVdLrYAONjL+0fjskcV8ObXjB/8sG8Up
	IE+N/bIkbFEp6vRc7Cus3h8bnmshSPmxJuxJxNjsFWg3IWCDXZT0Fll1QR4b7EvUQ5isTw==
X-Gm-Gg: ASbGncuBL+p4t+Afhs8lTb8YYW0lx6NUBwInDCJ+eOhkOEJ6yekrHH2+B5dx0oMm4MS
	DJTpDPqLIqRLUYxkcEMKoHOKgBB6JaWQBnwtgfk2hPHnzbVQ1f54jlLxu1ZM0LG6MAhRB40FSTd
	i3gvw8h8/V8tygcaDEW/cEoszPLQ+3AQHcWH8GUFuAnjtCeksfCsk7rr3gLBVkpN/NsZw2/V7pL
	c2ciXnNHLIcwt5VNT8Gr+9zLC4TYtvWY1h3ei/uNtmlIY2mHh3y5uJzk7i3J8lMNRswj6bhBc/X
	W3iVfr0VsySyySGxCq/fRL7k5ZE8oJwB1723lOQe+UZ1oAAJcwrdxg88KCRdfGuMEv0XdN5JN5r
	fgY+fpYseqCSBlZexcLaUjKnE///hD9zB
X-Google-Smtp-Source: AGHT+IHpQUnDxqtshyNYZwoifi0+JfQ4lWp5zNwj1YOtKACLv1wuYj4WHK6vgRUMTUwuv7Y9Eq6txA==
X-Received: by 2002:a17:903:1aee:b0:269:96db:958 with SMTP id d9443c01a7336-269ba52872bmr156749785ad.43.1758532644418;
        Mon, 22 Sep 2025 02:17:24 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([211.158.26.188])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269802deb48sm124126865ad.70.2025.09.22.02.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:17:24 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add FriendlyElec NanoPi R76S
Date: Mon, 22 Sep 2025 17:15:08 +0800
Message-ID: <20250922091509.2695565-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_021726_050992_13A96530 
X-CRM114-Status: UNSURE (   8.90  )
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

The NanoPi R76S (as "R76S") is an open-sourced mini IoT gateway
device with two 2.5G, designed and developed by FriendlyElec.

Add devicetree binding documentation for the FriendlyElec NanoPi R76S
board.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 6aceaa8acbb2..e8185344c6f0 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -330,6 +330,11 @@ properties:
               - friendlyarm,nanopi-r6s
           - const: rockchip,rk3588s
 
+      - description: FriendlyElec NanoPi R76S
+        items:
+          - const: friendlyarm,nanopi-r76s
+          - const: rockchip,rk3576
+
       - description: FriendlyElec NanoPi Zero2
         items:
           - const: friendlyarm,nanopi-zero2
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
