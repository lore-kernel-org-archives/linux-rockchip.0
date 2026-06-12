Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 499BFCD98DE
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Jun 2026 15:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCPBekPD/ScNsLTh2xls/J/RNTHLUC2a3n4Hk2Uakx8=; b=yBExoPjTwJTtKT
	b3+HWkvefzHjslEKDULrLKdzcbztIwtLSGwIZJ/F6ZcaTBUKYMTyvzadpo510gKx20PTd/rV4Z1Cr
	Ng0kfAm4iOTDGhR98Nf0cKH7AbXClGu6uH7JXKXKQEom76+oQiIzxdLJMKN17kOmooWEY8MGq2OX9
	06w/nXFXOKlbpmJQbalskkGhbM6URTvkaGP/lRbmQ7JmmnCxN3de1A7hN9j0ORj2ASg0gSZexLXvl
	SaNQa/2bupoyF2SNm40bEkKNA8BSc+rneqcPmXtVV/iAnxWmp37gfLKYoCT80782F/o3O5hDEfkDg
	n11EQ2F8WWXMHGo8R4yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY3tv-0000000B9mC-1qgd;
	Fri, 12 Jun 2026 15:34:31 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY3tt-0000000B9kp-03SF
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Jun 2026 15:34:30 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-490d1e54b3bso14422385e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 08:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1781278467; x=1781883267; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dpNtr9K9XTNqCrkpUM3EVF8WuctLCaDVmj8vhM6mxC4=;
        b=S1tclBYArJb0oB+/mD4shmKpJQUl6s+sq6FqGpUvJWctUXmNLWyGN+3v4a/k9Hvkve
         xyD8vi0EhfRUcGP9MeSWb0zG0RBP0HuShRfZ0j/jytUU0ebi6qyLi7ynesrr+mdn76Ss
         wHT2D+VeOqjoBar+e7lapUZKRvmDCEJE1A9j6x5yFHpCoSlzt67H7o5R/meJ7oxQMt2L
         ueTF8lwD+G9vI+xescnLD92S5ZV/5P1A/J3+8RYDSHmFvRVoyJti73OMPhXf5wOQFW+5
         8O2PQLoY3QlFSmFBKMihACf/AAzXl+9s0EkPkcTVhdqQrpHxAODlKjShzfdJc6C/8bhV
         HwHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781278467; x=1781883267;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dpNtr9K9XTNqCrkpUM3EVF8WuctLCaDVmj8vhM6mxC4=;
        b=NxyPUOYYFOy6b17U8/4usPN61wpt4Fb/0D66kzUgo6RfD4qTnoddYpzU1VgsUBr6u4
         xKFFIDrrupoA0atUIGx14AZnEJtFnuYa5WODaLemJPEeN3XL0//sGBP5w6ie4wUgQpDI
         KGrdcV9ng79Bva3goGRBs+0yF2omSak0elt6kACa9/RV8yvpj8M0GtmY6QuImmMA6OGG
         JlDH8OkqhMO4Z+0O3WTHt9OgxiXoya0E8qpOfJ7N7jXjkaBabASNqbxwziHufL22RCWB
         NVs3EXFx5ahnWrrCw2G7wg2ypIi/geZevTIJi7anhLq45rnfeefNpyc9Pp74Y61wGO4x
         kPrw==
X-Forwarded-Encrypted: i=1; AFNElJ/Ppt1Gcm+Wu+h20+pVIo3MHabXCDQHR6SNOx/LDHyESctUP6zEa9AeQqjwHq+vGSM7myoyzeFLUQFUzDCijg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyBSglfeYIr9bPfYMbI2TVdnSXZsehg+sC+6Ea4Dz5Y56H1gqcg
	ImfSkEzFTX+bRVB9eNhLNb611BK56ug5x+z+L1XF6cT8xtibqlpopAQlL/5ts61xRrlzimv4kLL
	YJP8hf4U=
X-Gm-Gg: Acq92OFScavD27bFwKkD4iWPQMiPxoV5kJG74qeMJcQUQzAjshjhF+evDXNRxPsppSU
	Ftv3gv+qrtAPR20pBN4Q2tAt8SSNMp1m9Ug9+0vOlQhy37U8auScCsjfewvdQzWwwDnBkkTToj9
	sKtBN9q0snFViKka00g+BTyD3/GGLHmn5n5CqhS/G+4oVZCCgRT7bf/7onyXTYWAwGtGekP3Kye
	nRGjJGr4qlSnPwbUQK7MW8oMdcrGjnewzulT90VRG/2N6nBrNQbh/acCQRqHrbULlSEGXHNAiBj
	HxCFKhuBUj+tEMh5taWic9Vkq809ms7sBDk8X5FL7na0zEVAvlp4CC/TghDo35emU12rVwEv1UE
	ust80OlFilyJIOhfCQm83/V7KSiYs0TreyARscVB1l0dNZm/FGG5AaVr8ysMB7ZqfAWjuUuh/SX
	txgkDtLQEeexDgE18RuNlyb96cqmMFo5r9pl0rANdX
X-Received: by 2002:a05:600c:8b31:b0:490:b28d:a6f9 with SMTP id 5b1f17b1804b1-490ec4a8474mr43552025e9.8.1781278467170;
        Fri, 12 Jun 2026 08:34:27 -0700 (PDT)
Received: from alchark-surface.localdomain ([5.194.92.128])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2b0d28sm6916641f8f.20.2026.06.12.08.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 08:34:26 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 12 Jun 2026 19:34:14 +0400
Subject: [PATCH 1/4] dt-bindings: vendor-prefixes: Add Ugreen Group Limited
MIME-Version: 1.0
Message-Id: <20260612-dh2300-mcu-v1-1-ab8db1617bc0@flipper.net>
References: <20260612-dh2300-mcu-v1-0-ab8db1617bc0@flipper.net>
In-Reply-To: <20260612-dh2300-mcu-v1-0-ab8db1617bc0@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=943; i=alchark@flipper.net;
 h=from:subject:message-id; bh=ALIUQWDYA2tt/w5YoDnsfyeSNacCwhv9VqHFuMI+0is=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTpqP09+abI9JCu1HVuYVMG5hWKu5UyVdMfu+rJcF+st
 5t4T3lex0QWBjEuBksxRZa535bYTjXim7XLw+MrzBxWJpAh0iINDEDAwsCXm5hXaqRjpGeqbahn
 aKRjrGPEwMUpAFO9qo/hf+XzqQluPtP5J3jFSOmv/uEtufCL/TUtuRc7uZJPfVRaLsbI8EZE5ve
 sgqUW1q+rS3ezLJRSmHLNViT13K1qyT9p7bWvGAA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_083429_093455_F75EEC02 
X-CRM114-Status: UNSURE (   7.99  )
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

Add Ugreen Group Limited, a consumer technology company producing a range
of smart charging, office audio and visual, and smart storage products.

Link: https://www.ugreen.com/
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index dd94c50e97f9..274e52421a5b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1757,6 +1757,8 @@ patternProperties:
     description: Ufi Space Co., Ltd.
   "^ugoos,.*":
     description: Ugoos Industrial Co., Ltd.
+  "^ugreen,.*":
+    description: Ugreen Group Limited
   "^ultrapower,.*":
     description: Beijing Ultrapower Software Co., Ltd.
   "^uni-t,.*":

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
