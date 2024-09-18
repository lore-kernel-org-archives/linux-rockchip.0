Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9778CDD543
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Sep 2024 16:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QjmyTMohzErr7nDvCEZgchiT4af301CJmOrxuZ2vYfY=; b=QJPEu1DQ6CG3yG
	1gUlNqQcLM3nB5+hwgYHmLLZAmLTm3AByGI8ceReHBhep7MYE/27wlOe1/RZVqGTbh6Cfm51gVaip
	YSKA3Xle/tnr4FsAT11tEY6udXROT9K18hds9S7W8f+q9FhJ6ZZD0lmlFvegcEoZmfcHTBCtLkMxS
	YhPdxzhTiknSTUxGveJYOlUZyS+BXZsz3LC+tOO3q9QIPRop0ak5J9tB0w0hIy2YCIXXgYZkeY5bd
	WWbZI6GTbO3YGz2ala5p/f3gQEAK+bzPRibBjcCXToAITxc3BusL9Y/SyzRTi1JyPsYjz8w3bN1db
	p91egsxjvvYsx9LL3arQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqxts-00000008fQm-43hs;
	Wed, 18 Sep 2024 16:51:32 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqxso-00000008f8A-0uUi;
	Wed, 18 Sep 2024 16:50:27 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-20549ca1fe3so4048705ad.1;
        Wed, 18 Sep 2024 09:50:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726678225; x=1727283025; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KqTNSLFZ7PSrKudzN6DYiBhUjY8chO7f1kKqbO7sK/E=;
        b=RPZpWiheIrlBwl62+Bib+DSQDD1UWe3bfCDTd6eAmmdVKvCa4/AOnbI9EfHNX7/zHy
         eQyc5egjtN/5eTcwbM/rhzry94AVZ76Jav6oYrXHVgfrC6JfMa9m704YdAdQ4QukWXgF
         IGz7A9RGrIv/fyxOeEOhY5e9IHZAIdE4ivv5MCPXl+ZnNrWwY87D/jzx3mVySfw/Zt8K
         ZWCZByWl5xv9zs3/SgTFpSyBRYzycZu41t7yL0Y0D/4+KFlHlRKfePf/HMJa6Wio1CK3
         eRfL8xXM/I2OUn3W1AEi62UV4PfnDQSJAJatM9MGJQ5x7Swu9V85IBpeJAo057aD771Z
         j1Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726678225; x=1727283025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KqTNSLFZ7PSrKudzN6DYiBhUjY8chO7f1kKqbO7sK/E=;
        b=gKkE9n+tkGOg8iZK4sozjjkVAqvBr9tvvPEskAjpJJ3k2dQEMw124GfnAfcXkZEhaL
         GDBB8eXk5JTxezHZo73fHcZwLNIkLih3jZAqMuDwjS2sM5dlkuGbwL7r9oCBvFjSbJ5L
         laae9AARwIZElad1Qwba7hxUd/vqlXITeNJZBL9BIFVZh/TmhgqiRQt8FxSIIou8NDcE
         Ngqe8dBAnXkcoaIZBFLZRQ2fJAlhsvjCh4JThC3LSJKV4HBcYhpifrmphUuODbwJdePy
         DJI4XoREebUpte1RNr2GMrzNPqsHYEVjs7l8Tw+LWiyontJdEUtpi8avJeWmD2fPF91w
         jUIw==
X-Forwarded-Encrypted: i=1; AJvYcCVYnyQ17s+N0ia5egT7i6kqYsM2pi7dbSvF0kaJfyv3PH7S0YjPhyksXzU0Rimjh4qaogBcHIdKew2jVN+6MKnW@lists.infradead.org
X-Gm-Message-State: AOJu0YzeGUKUDrO5Uh2k23XtIyRp5Lam3ns7afTPOu8p06jwKTlXuqcO
	hftahPxFm4hBz5kc0/KMLZwXpzu9Z8tJa+EhydQlQe5em0j1KbpDTmzDft61
X-Google-Smtp-Source: AGHT+IFrFAiMmodBWF4D4eTrbCyBjSX2g4S9JUQwga5Rowen6566QJZTJem0n2pqzofblmcJDXHO8Q==
X-Received: by 2002:a17:903:183:b0:207:6dc:b6d7 with SMTP id d9443c01a7336-2076e37a943mr139270815ad.7.1726678224653;
        Wed, 18 Sep 2024 09:50:24 -0700 (PDT)
Received: from localhost.localdomain ([221.220.134.146])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db498f9eb2sm6696123a12.23.2024.09.18.09.50.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2024 09:50:24 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Stephen Rothwell <sfr@canb.auug.org.au>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add ArmSoM LM7 SoM
Date: Thu, 19 Sep 2024 00:50:06 +0800
Message-Id: <20240918165008.169917-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240918165008.169917-1-liujianfeng1994@gmail.com>
References: <20240918165008.169917-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240918_095026_278136_8BC637CC 
X-CRM114-Status: GOOD (  10.06  )
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

LM7 is an System on Module made by ArmSoM based on Rockchip RK3588.
This SoM is used by W3 Board.

LM7 features:
- Rockchip RK3588
- LPDDR4x 4/8/16/32 GB
- eMMC 16/32/64/128 GB

Add devicetree binding for ArmSoM LM7 SoM.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 687823e58c2..1ed72df971c 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -54,6 +54,13 @@ properties:
           - const: armsom,sige7
           - const: rockchip,rk3588
 
+      - description: ArmSoM LM7 SoM
+        items:
+          - enum:
+              - armsom,w3
+          - const: armsom,lm7
+          - const: rockchip,rk3588
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
