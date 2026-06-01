Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1254BCD6E57
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 15:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfd8lFJ9rU+GoMdbFz4vCQpIe1DZoNIi4R2lyx6AiiY=; b=wFY30iPHzjiHph
	Djr5OH6g1abr+1xmH7+l4OOO/gLtugDHL+Y6DwVa3ab4raa7SjlMaqssFrhwI5P7KieZFLzubtY4F
	KD4jHfJ/Y7TyW9rrUdSy+K9NGQ4OKOGEeNp+vVCVDnqjUpFj6cvkRkjxIyXVDLDXHIR7nbgEeSxvR
	CF8bbaTiZ+KFmY6KpgLnqET2igSt6dHO7/uyXccTBCfYTJ7djDkIGIvsLSlpv+Efg4JHZ/Cv9g03I
	WI+XjrnLXC2eik5QbZYv5wELXzDOvSmin4PPqyk3LBLpn+2MkDaBNDH/J72Lp5eKsMZ9INGGA/MWG
	Qxiym2t7O/S5hSAuEpwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU4PU-0000000BMSR-3gB4;
	Mon, 01 Jun 2026 15:18:36 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU4PS-0000000BMQk-3xt8
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 15:18:36 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2bf22d29dabso24603945ad.2
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 08:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780327114; x=1780931914; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NFYhV629aCcMh6n03w8fB9pu9Qir4aq6dz+7Wpy2WIQ=;
        b=n2iy0Jkl/EFbD+e/peKU0owtQntE0tCZ7CcGE+X5sIag5fzjwh/Ys+CxhbSCDx7LRY
         iUM1xHOmk8PBQltR/MbcsPaE08rwmhCm9EwIQ/MYxelV4hhEF1pm7MkTFJgdtKjzErKc
         JOijrh49kuzt4f3vT0tqVkR0+7e/HQC3KX666lJQUeD3z1f5CGP0cBIKqdtQcdzVctvE
         U+EqB3nJvr6/ILkLTM7QL24Z5iZYbBGbS2Ol4ZbMQwSAWR7pZNQArFQizUdIjuDx2z2h
         r/eo5dQ+RbQ4Mgk5QcNV27qjiL5bymuFs3SaBbszkBdk98cafV1ksuLchxx/oURLrEq3
         /f4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780327114; x=1780931914;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=NFYhV629aCcMh6n03w8fB9pu9Qir4aq6dz+7Wpy2WIQ=;
        b=CvUAp8FbeeMQh81SG6hlENcd9GlGvFHnaIzlrKrMACFMjXCgak2FkYu4roao4witWr
         aMgDx54f8ow4Q3+run87qK7qy99EPpiEs7rGjgLDd198wkF7dd6TuwIchyR/Zea2UQHb
         vnjfNHRB74X3K5dKFT48rF+tNeBM4T6MvokJr7vXM2nwfT5DXrCgisA4SPxdFZf64SP0
         rPBCnFTyOI7f48nZ+JIvqXXk4JbTtj3xordc1dHfwOFymyk9xSrNQMkofH9bV8MkLk4x
         zBrMhnpfxxVqWxmHwLjdaPfemA6w/0yXPQAsbfiRyj7+udkARNG0HERA3lsf0YeTXciY
         LiRA==
X-Forwarded-Encrypted: i=1; AFNElJ+h97OcnBy+Nk43lubZZ8JASGRnS9i+4P71X2JFFx+hwC7TFU1jv/qp6jPdVhJrTwOqcUV1CgMeUScAqQ3Z/A==@lists.infradead.org
X-Gm-Message-State: AOJu0YxehZMEgunIi18hv+ZSAztZ5sEoiUhkunb9IYwNRz+XdIkPisBL
	ZXNmprAxLbYIkaXnGt9u+xT+gpoNkyPWHUHDlSmA+kGtjM1PFBp4flBd
X-Gm-Gg: Acq92OEcb9uUZ8QGXqfM+jBM9WNSnW5xX+9tQJghZ4uk3oeXVADvuJbeaEQrWpaKckF
	BGFepovEFHnFSy4bKKGpsAimSHLEKz5R/WK17zSRD2vy91a9QpdiJvzHIaL/a2tkpODq1LzaD+O
	gS1o7waBWGBlVNgYq1+GlcMMMV50vt5XN+TX1/9vM7Z1C6j6Uj43beXNmBJcw6+9taUqv4IinWx
	prIa6xFIhOCE2MYBBO5iYhA33BR+/0aaH9dvH89qFyfmojrQBIvnwkWai/ETsQ0+waoWOt1AAIm
	9PtO53EU7/U0Hc8PNgITqT71TLyXdCt4NMCCjyFSc73mUd6lryYX3LQ80kmlMoy2dw9N2wIf7tv
	yRBVxT5nGcV5d59hvMyrCYHvNW7gZwnYq5MsE0mDrKVGG9kMHF55PQuo6gLmv88laiWlRxIvvMd
	YbOwj+U65AyJLJ7xFmlh6ivOS4+/+vIopFHQNLmIN9
X-Received: by 2002:a17:903:986:b0:2bf:222e:461 with SMTP id d9443c01a7336-2bf3682aba3mr125337835ad.25.1780327114048;
        Mon, 01 Jun 2026 08:18:34 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2bf23c0d727sm106633925ad.59.2026.06.01.08.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 08:18:33 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v4 1/3] dt-bindings: vendor-prefixes: add vicharak
Date: Mon,  1 Jun 2026 20:48:08 +0530
Message-ID: <20260601151810.162173-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601151810.162173-1-hrushirajg23@gmail.com>
References: <20260601151810.162173-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_081834_980724_5922798C 
X-CRM114-Status: UNSURE (   8.39  )
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

Add the vendor prefix for Vicharak Computers Pvt. Ltd.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 28784d66ae7b..504a691a33b9 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1791,6 +1791,8 @@ patternProperties:
     description: VIA Technologies, Inc.
   "^vialab,.*":
     description: VIA Labs, Inc.
+  "^vicharak,.*":
+    description: Vicharak Computers Pvt. Ltd.
   "^vicor,.*":
     description: Vicor Corporation
   "^videostrong,.*":
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
