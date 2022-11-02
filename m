Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9BC5C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Nov 2022 12:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v4DG16bokjS5bQQNLYIFzHJ3xWxO7nVsmQt7HVuu7u0=; b=OsaOvU/ixrnRjq
	vubE7ofKoNdU0uMMfZsU8otInvOXLiVLfBjGe0LMlNvX2n8D2RX8oTBGi6zQAAUIDA0zg83/Hfms/
	rwKswxz4cKT3cMgn3COJ4YJgdg+tiunIdku3N3T1EN5aHXmQ2cu+ILTFNJ81SL4J28fhyyTMFVXbW
	EYkcxqnusp9VVkzA1hYC+4QtUM+gw+EdSRYnw58ZVx4DHN4GSpIo60VkgTtyujGWH4PhgTpCU7DNg
	F5xVV7JW/5szrUw5+BUhdk7AjoKZAuNeVxL/fPzVxmK8w07sncKYsbjFO7VqdPFBhyIl+3nsgIRf+
	AE6/Gtttua4z9SizIrEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqD94-00B3BD-D6; Wed, 02 Nov 2022 12:47:02 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqD8l-00B2wl-EE
	for linux-rockchip@lists.infradead.org; Wed, 02 Nov 2022 12:46:44 +0000
Received: by mail-pg1-x532.google.com with SMTP id s196so16155689pgs.3
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Nov 2022 05:46:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C2JvjMqQ1T7iB6M7WJyLMMcTpJZI3Dgx1XMVy2FW2+s=;
        b=LHYEkP6/KqAkLzdExh8Dm18iD0YkeqKkY4hGgvg+S1N012xERhw+XQfymKgEInmdWH
         77RtuWRZwHTgOoJuyNYli0PWio1paHvmc1mnzAqxxtKnkCLP/hwMR3BF1N+8jIfaTxU/
         +0+RuGYpOkJuNpIFKWP7dpwXdaMJy+I7KDHcQPW0IQZKb4motDfFD7ZjzBKLeIvqgx8v
         GKktzF+yRCnjX1gNIwWYE95Juzjt/HxDMosQQ788vXGX5yWppex77DHw72DlqG0IU4cM
         jABHsaHdXQ/7Pz2pl8P8TKSBwlWYoYdRQBfMwHqcOOUQrp1uBzzbJZPLgFBPY8Q5vtyL
         F1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C2JvjMqQ1T7iB6M7WJyLMMcTpJZI3Dgx1XMVy2FW2+s=;
        b=ti0/XvjqJFpko9W5DYeS0fgjsjtGdiCw0n7RwG2C8vlNZjZ1J5ybNO55+x5zNpp1D2
         DceJFuaWaVdlL5ZClQJMPe34lCXiZHv3EvaDOcO9xhGrdA6pzfhIsmfMbUgOvVkRowhj
         V+LEsbVNUZepzBfK1GUaZGx4r0km7Sp8SQL/jx1TfkvwkkHMEATcq2D8qpxQLzFqkEXq
         frwxKScttIyMsqS0hL9ttYvA8yMXbiM7bxSG6afZlmKmXa/wAYspXiAlZHH9uZeGYYCd
         Akv0Q3NsWa1lKTfl16lH8sIDDPs6ONbsl9uCYaMcG6H9MbGAEgpZsPnBPTKdEl2lFl8B
         by9g==
X-Gm-Message-State: ACrzQf2vbu0rkvTNdLf9IZV2Wt9gjAXQmUFnEidB1hNA+k24MiN+LKyb
	XfHEtSyJ9rT7gHZobV//CVGcqQ==
X-Google-Smtp-Source: AMsMyM6RKg2jakUjZMbwj8Con6lsmVohWwDGkRZ1xaeaOOok0VVkEksIWCWbK/iKCVC783Mdux02eg==
X-Received: by 2002:a63:e348:0:b0:46f:25cc:d554 with SMTP id o8-20020a63e348000000b0046f25ccd554mr22075489pgj.598.1667393200420;
        Wed, 02 Nov 2022 05:46:40 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a809:aeff:563:9036:6729])
        by smtp.gmail.com with ESMTPSA id g31-20020a63565f000000b00460fbe0d75esm7549533pgm.31.2022.11.02.05.46.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Nov 2022 05:46:40 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v6 4/6] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
Date: Wed,  2 Nov 2022 18:16:05 +0530
Message-Id: <20221102124607.297083-4-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221102124607.297083-1-jagan@edgeble.ai>
References: <20221102124607.297083-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221102_054643_496748_7093EE02 
X-CRM114-Status: GOOD (  10.24  )
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

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v6:
- updated SOM and Carrier name

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
