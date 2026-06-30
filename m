Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B71DC43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jun 2026 15:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Da7f7S8UTmYmM0g97yK0hFK2mnShE96TYZqsMGcZf/g=; b=fLdIUwq8RQGgrx
	w3j7+VaxPU4TKv9vSjkLauNWm6lh4u5TyL2VHYLOAl37bu81O2gvIkwvicJSAUvfvB6OWR+uCwVp8
	Q9JDhauDI5D7Fm0Talyr9yk52BEgKiViAxxZ9JYOOMIQ2IrBN354nqRCB7MDoZv8BqzFXq6jL80jA
	TXYuQICge1mKTyT2jme3CMOuLnhflYjireuj/wFGQhJF8yrIolaJVdGTSUGi4nggpciH7i7G8DdLZ
	viXRjLqJCmS5tTkDkgc61O2iLnDmD96BnCYLJHDJuWDhVTM5wQsKBr9BZJ6bIXISoO8gBvkmVLe/Y
	eA3FojxxJNjyMtbq4qhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weaY1-0000000HOAa-0qa3;
	Tue, 30 Jun 2026 15:38:53 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weaXv-0000000HO7i-31yM
	for linux-rockchip@lists.infradead.org;
	Tue, 30 Jun 2026 15:38:50 +0000
Received: by mail-pg1-x542.google.com with SMTP id 41be03b00d2f7-c8894387780so2034164a12.2
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Jun 2026 08:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782833927; x=1783438727; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ybEb7LoBEbAkKTzDnRy615rGgqf44SIjqzv0pe3EObI=;
        b=LXa2RfN8m0cJnTE+Ncol/j3hFDfpUdfWdd5hR27+cMmPwFkZT7k3vr9aeXMqC2Jr9m
         ZDdQRYrATbF+vtzeXb2gMtdGQF9LsjYSFHl0iWhAOhpVJ+WNVrTQNFsVvwWhrfVl7RZN
         SLjE0OHiGsfyt8wQhKjG8vUy5KYYfi6lXtN2RSwo9DXNLOBfHbbJ03ujSFeEX/6FTwmy
         PFQWzjcc6gutmu4oeU5r2UyzuYCZ0Jw/wueZSO4IpenL5oD9JUdVUIRgaogh6B+/ZGUQ
         LuWuHvpefXJ6SiskXkCKrKV9dWTDP5wa/T97WQBo0IPE4M/BmaB+WEMd+YUTh5ig4U0Z
         czjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782833927; x=1783438727;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ybEb7LoBEbAkKTzDnRy615rGgqf44SIjqzv0pe3EObI=;
        b=FWuvWPIF3nFz+FAI7y69K9rtZxPWKfrtFbRCH/djWngzP3xpSx0fakaxs8IryIuKDS
         +QcG4NtWw490rAXSH0dMFYAsoZzIJoQ+VLmdpahwWpjWi6XUjq2it5vUwwmKEvy54oow
         KPO4jiHUUNmHcsaSHNlcXSDIalS+53mtBmu7H8VOB0S0u3mnPMVIkyzRaCE9D3OenbnR
         blPl/ugmu5r1TRmbVHpuaykzzY1Tpp8+9N4bCFPnNf+2rgSNUXjo3/nAtzr1E1BVmZoM
         cOef+pLduOd/8q0kO7LzsIzCNznEIZfGxXNAVGhi6WWhQiCchW2YhHuGu/rrgIFsnptW
         wzSQ==
X-Forwarded-Encrypted: i=1; AHgh+RpJfDe5jMyp6aTbUK2ownWXOk3fzWTbF/AAI3ev8Fn773/xEMS4i4DpZte+bYnYj8DMJuQoBNftpMmebnKECg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzq7e1Whde8MFY6zu+xyBPX3vJUB8+0PS4NlM9MDbGutLTkike8
	OVYZ8XU74ZPSqdXqccSJDroLhNwkus4Kj1KYcEg60/lZ8eaPNcxmN7dN
X-Gm-Gg: AfdE7cljCGCDxpx1vBWEjjV3MfGNC6fUX8kZF71EVLPEz340pdGDMZpNpF1QUmqaRvA
	v4BO/bkWJZpqH2LyOrjdIQabZfYqEifKMA1YzGmE8CmGbxKVhgG8TfmahujzOkyMmJRgHeJFNGh
	b3bUZw/mAP9fDtre5v6MBgxDitlvlXux1xBT1Z1uMkaG8AAx2w6/sYPHYRCr2q2KKVMHrN2yTJx
	QUXrbA90TEcPXJoXr9DKEKg7yeZ0jJRfOMtzeboxmqS3Ta2b1RbRV5vpGGqhcQfBKrXgUT+MJWk
	SjdYMUw65qwhJ486sIWIDIYAbTvEWUR/TKtGUUSkZJUu1GOqqQUKObQICa2GMJbGYSxJmbaXVUf
	7npxUaW9plOHZgpSgQE94+soKbEBeIKeIA6W50GM8bQ7/EIJteMG4Z3iwovb2IQx0AX00gr63AW
	jK3c0abUaaGUA=
X-Received: by 2002:a05:6a00:6c84:b0:847:84a1:9782 with SMTP id d2e1a72fcca58-8479eed7996mr3558289b3a.26.1782833926590;
        Tue, 30 Jun 2026 08:38:46 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847a03cb50esm2413695b3a.60.2026.06.30.08.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jun 2026 08:38:46 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add graperain
Date: Tue, 30 Jun 2026 23:38:09 +0800
Message-ID: <20260630153810.3574714-4-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260630153810.3574714-2-coiaprant@gmail.com>
References: <20260630153810.3574714-2-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_083848_567647_F6D7848B 
X-CRM114-Status: UNSURE (   8.20  )
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

Add graperain to the vendor prefixes.

Link: https://www.graperain.cn/ (China)
Link: https://www.graperain.com/ (Global)

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 396044f368e7c..641a37c0debc9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -682,6 +682,8 @@ patternProperties:
     description: Goramo Gorecki
   "^gplus,.*":
     description: GPLUS
+  "^graperain,.*":
+    description: Shenzhen Graperain Technology Co., Ltd.
   "^grinn,.*":
     description: Grinn
   "^grmn,.*":
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
