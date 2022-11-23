Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BC1BC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Nov 2022 18:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNdsIQxrAMCnLJq4996ob5fY8OXTggKUM675M9DzAL8=; b=FkZxJ2Li9m85vb
	VqJDjg6+gIui1hbI1/LvSKiHWCKhNvIKeUPRQGVGLYU5R2KoussC7vFXl7BDIWnwGs9bLSlvy4T7T
	LDhWOFa5VI42a89Hs2Bnv66w2LRcJ4X5Spag0saGj/hmqoeDw58jhiYpEFvw3Osrz1yPBfppCCJEw
	nWTUUCAhwqzV3mmhtw9K/9AbyIIDqWNAPPkd8eTun8dilIsaTLsUTiOeGxryrcR2679aqI0EqNPdH
	ZN7i0kgiofwIMkoAF/RMmaEWRrfnsMLODQHlsEDtWxnr5AvTi2wrcfOQHEOPOTfvqqKxRuFJa4GXS
	MQ4ywafuvVB/PjI6UyuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxujW-001kuw-MH; Wed, 23 Nov 2022 18:44:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxujC-001kbj-Cn
	for linux-rockchip@bombadil.infradead.org; Wed, 23 Nov 2022 18:44:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6j5mqKn84eUJHlTVhgt/r0hsiKO0EwT4B6+zjNhs7Eg=; b=or1ZaPBrsV6vf0JU7ilYFnseCT
	dToXtpqUCml/ksvOnLcpNxmR/gKjvYkmX+qNtAUCdAw0nGP6Qs//0Nd9RP8Zc7pW3qCrdXd0fJnF4
	XAB5bF6TP4z5RtDKD9JSSrowIZwASfb4ks2Yp0XzKfJFaJ4ueuO0oLiPikDFN2FGITXo23+CtHniq
	jCVWa8FbayRX2NohKDgWvxD+6vKdw6WBNst9kc9R/9dbzN1DloplZUUDKc3pq1A3OvEKZO6XNMiHS
	OsVA7A2t4GzRdH2MUyHl6ERF/2gLwupJdvfJVFa8+cXk6ZUy0IqsbxH1axkxVXXL1nEDdR8PXPKBv
	2+4f0Xzg==;
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxuYZ-003tBH-S8
	for linux-rockchip@lists.infradead.org; Wed, 23 Nov 2022 18:33:13 +0000
Received: by mail-pl1-x62a.google.com with SMTP id p12so17408081plq.4
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Nov 2022 10:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6j5mqKn84eUJHlTVhgt/r0hsiKO0EwT4B6+zjNhs7Eg=;
        b=hgftC162d1sc+SYpWOx2nKPuIy5gGpGTWHa/Gfy458NvmR/dgAq39uS6CnJQCL/jAp
         62dC9dLKDwBA9cX0gzqS9+PfikZBBT2Gp5afxBgAKDMYdEgn2wpyfND38StCB6yEWTUp
         0Vo4DPtooPRUy+/Mt7qFTx2yWL0qEPw6kMa0HQFoYoZrEp3mq6rk/k9gxmMoQdku2UOe
         J6rUHDfvdKP/X8Hw0PB0MVy4X3LqTMyGEeKhDONUDOK2VmMYRFo8lLI9NnRx3RJPy5aF
         HWjyFF0X7ertEVYt+lhLs8PdhihcqqNrougk1cqlDFoQWTIWmBZhCecvPFsm0u+uM8ze
         rppg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6j5mqKn84eUJHlTVhgt/r0hsiKO0EwT4B6+zjNhs7Eg=;
        b=7mFwUl4OBKxQHpe8u7RjbM3df4NgOwDkvTPL/qCfjvCHEZbc892XF/eKAzUUa9yJIq
         ZiJAjpNj6wrQqZjdZIGX3jf2zvKHEUY4A5IZqbWTqQkAbCff3VsN5p/ZBonu+S6A4fyY
         jV6UNVe2wO75GtPUhVQG02SzKUylYQpbYZ3LSD7oQfPzGXSTql86I+A9GlExqnlM7xcS
         aVgev8aUWs8Jr+Un2rrwzizRvC4clyrN8y59AavR74uSS8eCzmAUt5l7G0+yvXrlerfU
         CbGie7l26+PdMzQ+5pcrsbDdEiF8XsV+CGCwmuREbWbCUDNMpThtc0qBSFVjr8tpbshJ
         +VqA==
X-Gm-Message-State: ANoB5plH37JuVMmVdg2JafYr9HGhU+bujFK7T113bEMPrj9cCwquVE/+
	cwX3IjITIs2u6+DTpzG33febkA==
X-Google-Smtp-Source: AA0mqf4XxsmoOwkcSlzNimQjlNGov0Gaa06OicyYKHO3P0fF7W5uXy9L06LiE8P2FjpoOMCwDAoYEA==
X-Received: by 2002:a17:902:d502:b0:186:61fd:744e with SMTP id b2-20020a170902d50200b0018661fd744emr9877472plg.122.1669228389810;
        Wed, 23 Nov 2022 10:33:09 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.33.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:33:09 -0800 (PST)
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
Subject: [PATCH v8 6/8] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
Date: Thu, 24 Nov 2022 00:01:22 +0530
Message-Id: <20221123183124.6911-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123183124.6911-1-jagan@edgeble.ai>
References: <20221123183124.6911-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221123_183312_019331_0F0CE2BC 
X-CRM114-Status: UNSURE (   9.11  )
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
Changes for v8:
- none
Changes for v7:
- collect Rob Ack
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
