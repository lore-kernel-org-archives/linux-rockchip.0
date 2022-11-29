Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9ED4EC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 07:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MPnJtT3QBYWvqES6D7TMF8vlV584/KGoLY2PiAThSAM=; b=NHz2Q0Tg5HS//B
	Qs8w/bFMF5lhBK70bfH+X89eD/8o86e2JVhW/3Nu0hTu3ao7WTnv1/PDIv8aLPFtNFUhQLP7FIJqu
	6xm566SFyMKfwrrtiMTms/T9pvzj+XIGC6Cq8TH/Z4tIOsyzIBzPZFjGJggylfrvG0rwbF7fTwqcq
	nqUWU8I2nhEwilcAsdb0UhDFAHV43iZhRkmc5Qv/ikzsvDxamwAOHqddsDQ8u1uEI8ThXjghJNiNw
	KNDfZkrE8hkv1oA9XH4UU1ExLD/IDe+PYVYh4Hz0pxC22tDMFut9tGT1QAaOgFKV9RKfYUxCKfcev
	hR810TrXlQAbtZFk1ShA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvVK-0078yc-ME; Tue, 29 Nov 2022 07:58:10 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvSZ-0077Xu-V6
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 07:55:21 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d6so12630791pll.7
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Nov 2022 23:55:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SS1ByF/ZIw8rKX+vE8A3zpU2gUaBENnfomeSItJeP/I=;
        b=sRDKAvolV1yWrStj9+Ehk13VI1h6QRLLrhuSQbnulwwcZdw4A/XrQQIElyQMtB3dvB
         nG8wpoxdJrYWAb8U+LStvQHvpcV5fT5+gZzfni9Qq/2DBVpzGF8VVVs5XB+yb82AwTrT
         paldaQznhqXHhtTBZORT+8ySOxyGh33SPJtnLchMHxULfrmehVqMGUQaYvOmHalezuzX
         Ls5bgHtkWQS1PXyckICqqIYxQ5kYgVACwfPvtXW1LRQYQBbwf0faZdUaOpid5EDbIDfQ
         eWoDunQoJFtyKqNh4UL7VCoXWYc06VXNpPouEnSpXndoA6R8e7cw3gbWfAyxphGFjUxl
         IP1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SS1ByF/ZIw8rKX+vE8A3zpU2gUaBENnfomeSItJeP/I=;
        b=XeQ+xrurR0RREqUFxyTxNRlKz69aTG0gsCgk5BnvisSwIA6Q/70jEAYVC7PD+JlWoX
         kkpz8mur10qIc+iHHGWZEcjjIiKY+89K6X3PCokZzlyprluNwTdJZ3MTf1YqNxRkAdxv
         3UCkDBRHkgVctqBk5LfBfQNc1u7dGzR3hOcibjIFdKwkSR+n3bqFoofoT8JCClWrK9rn
         q+Qm5sGuv6T4XEf4Shglx3Ikkw20lx3WX/FDCgs75rmDSvWddgX65zTbfs5fby+3q3wr
         Tki+v+SLH9QWbf/XrDg/NEmdU1xOCPvQ1z2RihYAPz4EaKpt6f/OxJH84tybeBQXMq6g
         NuIQ==
X-Gm-Message-State: ANoB5pmjixAjIU9VEbQ9UkfkYq+4COfjqt7ji+7TOczHR5VOy4vnp6bc
	DMsDhVTYzopQ4MfliqbiOD/jUA==
X-Google-Smtp-Source: AA0mqf7Jx4zJRdYvDxcyL6CzoQNORQkuOGAGc+d1wDJtGACoeCrQjEIvSnEYhUX4x1ZDot8hrvyC4w==
X-Received: by 2002:a17:902:6ac4:b0:186:bb44:946d with SMTP id i4-20020a1709026ac400b00186bb44946dmr36752312plt.11.1669708516993;
        Mon, 28 Nov 2022 23:55:16 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.55.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:55:16 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v9 6/8] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
Date: Tue, 29 Nov 2022 13:24:22 +0530
Message-Id: <20221129075424.189655-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129075424.189655-1-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_235520_068357_EFABF8A9 
X-CRM114-Status: UNSURE (   8.98  )
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

Neural Compute Module 2(Neu2) is a 96boards SoM-CB compute module
based on Rockchip RV1126 from Edgeble AI.

Edgeble Neural Compute Module 2(Neu2) IO board is an industrial
form factor evaluation board from Edgeble AI.

Neu2 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 2(Neu2) IO platform.

Add dt-bindings for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v9, v8:
- none
Changes for v7:
- collect Rob Ack
Changes for v6:

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 244c42eaae8c..26fdd205a899 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -85,6 +85,12 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
+        items:
+          - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
+          - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
+          - const: rockchip,rv1126
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
