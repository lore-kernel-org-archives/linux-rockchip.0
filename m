Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E780C43458
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jun 2026 22:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Wt7ELiMER3fe+dIV0u6KWG94ZNVjUthvLv7BzhyObnM=; b=jlqmayiRvGVmMV
	VrDC1gcQCvDaZvw6QgSVPdkVtfSfSBklXVJds27x8b8lJ2MbX/vmTslPdPpfwQI/bwLi6LHSimib8
	tRPSd3wBcLn1ddYOf6piaEjKFhzW3nG2Ez4le/zxj/+awE1Mb6W/y3Og+JY2kd0ch3GPUXGKYQ94E
	01K/k+uSZ4SeieDD2wENayWQ0QGQX8fbH7bHOQAsxHF9bqeQtzDb1IOuxU679iAqFDCsjEZE3ihjh
	nTgeH2efbceyjQ586yWLD4ZfNQR0UgKMDN9DuYmE7pVY5nCcwNQbCPnIhcuJ4F7ObQtdBQzXc+C9J
	yFEnhVVyRb9fllrWx0Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdbyk-0000000CoQi-1Shz;
	Sat, 27 Jun 2026 22:58:26 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wdbyg-0000000CoQ0-3ljb
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Jun 2026 22:58:24 +0000
Received: by mail-pj1-x1044.google.com with SMTP id 98e67ed59e1d1-36b9d265355so956662a91.2
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Jun 2026 15:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782601102; x=1783205902; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rjb/FajtBjMgnlv1ralDNgBE434bxvgdfvleOUHgX58=;
        b=XWwbjjLdCiTprvDyi45Gj21iS2QINc2CK7vqPAso5M0fNIs4D2fDA22MbhFP18w5jb
         uAS4PvkjijskGxqrDREffc4oxcciaUZmWUP2c29D1ULYAMvMsZSb6u8vDfJLdD5fYlIH
         6JmeZaaGkNeLh2T1YgcxX6yrV8rkrZKP2C665BZ4H/EPLYrE+3cVAkN/emj9fSMYlY4I
         WoT7NR1lJgw+3hXyk8c4EQwQ/zv9fE56Um/AKVbMii98TIuVs8Koo3y4x5sbtrv+lUDJ
         cPxBo5wgjVjZYo7mg89vZbR7/h4aeb3Ljp4W5rmbZozEfT6Cth7Mbp2SZ7MKFKs3EzEe
         mFaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782601102; x=1783205902;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rjb/FajtBjMgnlv1ralDNgBE434bxvgdfvleOUHgX58=;
        b=rE+p8wKp/AqFXnwIVkpm7qPi/jxbk6XsuT/TMw40OZKxYOwz3PyBmO8UwIFUHRIcOM
         sn8BjSLw5kFoQs3chUilLic8jadCfmUBgoZi82sJyriTmGCz/bS1NCXCr35pgv7vEunn
         wYjsHYLIp4DKpDAGLTnN2ZH06MXAI8gR4dhiPntURTwk6Z1xiTzpkHj5xengOx08yusb
         TPJYJFrz8lH/48aCjBTg9Auznv7HDqw1VbW7+OwVMsdDMUVll0XEAXQdD05SiVjLkNmx
         D30IfnhNzoQjXp1KmSpGDCIRCopgjShf7xzwVrMluNTjcOy8J3nlNx82ZIZHhZYADDeT
         SSDQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr5VqB9HgN1+NNlvR9wuS2BsDL4H9U4c/NqZs/4SxPqfmPTC06Zg3ZhlsSWgxjrC807cY3K9ogGBlX4i1agoQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwBFXXhStzbJrVPZbZoFfIG3tTp9pxQ3qmajNQJtF3KaCcKokf6
	CUr4T17FcNYaKU+eqDdeEQDe/FFMKi5tto/FXKqyqO4aaSWbb+aLjDfA
X-Gm-Gg: AfdE7cnZLCe0Xndk59w5O2d2tl2OKClAMKqpk42QxcalRVxpdilxDHnNKscy5Af0LVf
	p3U8FXLb1c3OLI4ifloaPizgvKqHjpBg5CVnlFlCrttNH+cG5btNOc4brOJJMv0kAMEphp3J3b5
	ua2XGjArAYzv06wxMcQsUvjxWLi+mBVk77/A34tuhoZviJJ0YwVCoVThn35IvndAdm5rPcqGWu0
	N7sQ4esHyM9I7hCbqXMMakvwjGyTjHRNrc94JaC5Pw0STIj0bpdahZo08oafycHqfN3WsxLfqC4
	JPtKMdbBqzSj/rKCwGQYRjxd0VnjYoHDkwCOWxYRr6nzTdLZGsvp3E5dBlalDNRY/1TmoOK11cl
	9+h11Y4cDQxwi9O0Y8PIACkP7RPZsiXlZHXQ8IvqZ9QM1pVwAe8zlG/XjVYuy6XSUO2Eypqx2+r
	YTMaK/7przgoQ=
X-Received: by 2002:a17:90b:4acd:b0:36b:93f7:a903 with SMTP id 98e67ed59e1d1-37dfa25a0d4mr12186003a91.18.1782601101601;
        Sat, 27 Jun 2026 15:58:21 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-37df3b0ee6esm6313693a91.6.2026.06.27.15.58.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jun 2026 15:58:21 -0700 (PDT)
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
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: Add graperain
Date: Sun, 28 Jun 2026 06:57:54 +0800
Message-ID: <20260627225755.1710837-2-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260627_155822_939099_378CFCE8 
X-CRM114-Status: UNSURE (   7.71  )
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
index 396044f36..641a37c0d 100644
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
