Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 89327C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 21:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/parrOj3o+ilKFCsjWArL/pQptQRVOPcvzNI1vYRE0=; b=001BmZrHRonJ/B
	XREbKR3P8vO/sKclCwpOV84jlaoepBIoRwShnXo0lVQkfLxmbq5Gd2Dqio1iA0ZO9qF6nXTtIA7WR
	SSrQd+XCAnHXaVEtzZm1YOJpkQQXc+AxQ8IlkdC3jVQRPuNKSmtUMnDhaQ3T90euCb7S96T/1Ix1l
	BS9gk6F118jXiR4ilHSVE1aztQZ/i3GqoNaO3MK2akKhnGmBaQofYGjHZV476y9hFMo18CZBGw34n
	RzCfGVzcVtIgwogQPil4JdJbbgk2ypCawlwla8RN+tC/Hrs0bv9UJCCAx3dR8vmtKvtF6+6Lz4umu
	vfJ2mui92rabztl5JJuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Cuq-007I39-2v;
	Thu, 09 Nov 2023 21:50:20 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Cum-007I1W-33
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 21:50:18 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-1f00b95dc43so764618fac.3
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Nov 2023 13:50:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699566615; x=1700171415; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FMh7dJy6c7Z6dmqAsf3sJ7b9dHtCKsqZ04NpaCQ7mOU=;
        b=CkaWKwZzxq0L3YkOzclVQ6nmbKZyF1vGAFHBH117bGZFX65zLnJN+Jo5Zls8N2TXL/
         zYqJJOfaQOk+8zroyWiN4Apj3Tlb18Thn/uOoUE12lWDzKN2zKVwZuuEZiW/z+R7fWus
         bM7+C1xlabhnT+tRod1buBSwO8oyPRBI/cIVcgLk0jqWBhv91BX6A9N1lhbq9z7RO/42
         XBzQ9Ew1bME5f0ScpX/hzjM8baWsao+kGroCyAJtbpByheIN4jngkEnHGmMNkqe7WiBh
         nYLKF26Jzis0iUWR2TG2AHN5vpc8rP2K02/ZMXhVEcTDBpo1tdNVApNxTxUK+++3KcSr
         8TfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699566615; x=1700171415;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FMh7dJy6c7Z6dmqAsf3sJ7b9dHtCKsqZ04NpaCQ7mOU=;
        b=bxR55eROiXwwYzx1kkmz5IsuPF8gzK6UqNkikVvqwFHetiwwk1Rj6C8w3aXlgN+aFq
         o6T2EQBqB4suwiUqa6HH/obNxxf5xH2X0oJXEDpww2SYR0c7DfYKQyOOhmEvy70n71HP
         VCCRsodJtaq1FHxJtKOwAt3eVqxsW8j/4wLE3ShoJCymkhpOP60eU+sQB9uDtR0xaiNw
         rbX3NX4I+kHA19Szahaj+pdE8rRSZJBiCWafVCv7UVDJz9707E3QNN9A8iJFip63YKPT
         AjoEO5L5u1/jVQmAxjD6Nm5U35THvzOOxnXwgmBghjlpF+vnHfQq3OKZ/wLYl5EhxWTa
         clQA==
X-Gm-Message-State: AOJu0YzQVFgXETbD71FvIlL/oun3RKqeqncSv8hk4lvbbPi/kExH860l
	38ophh/heRqw0uABxf2UrRREvFW389M=
X-Google-Smtp-Source: AGHT+IHVkaf5YA3dz3qNIlTDI7draK5AFkU+1KX4tYYgrlpOTTqQ4WZJrARdU/LxrRrJ6a3/Gg2NuA==
X-Received: by 2002:a05:6870:1099:b0:1ef:62fc:d51c with SMTP id 25-20020a056870109900b001ef62fcd51cmr5227511oaq.51.1699566615423;
        Thu, 09 Nov 2023 13:50:15 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id tp22-20020a0568718b9600b001d4d8efa7f9sm864003oab.4.2023.11.09.13.50.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:50:15 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/4] dt-bindings: display: panel: Update NewVision NV3051D compatibles
Date: Thu,  9 Nov 2023 15:50:04 -0600
Message-Id: <20231109215007.66826-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231109215007.66826-1-macroalpha82@gmail.com>
References: <20231109215007.66826-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_135016_984790_343252B6 
X-CRM114-Status: GOOD (  14.28  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Update the NewVision NV3051D compatible strings by adding a new panel,
the powkiddy,rk2023-panel, and removing another entry, the
anbernic,rg353v-panel. The rg353v-panel is exactly identical to the
rg353p-panel and is not currently in use by any existing device tree.
The rk2023-panel is similar to the rg353p-panel but has slightly
different timings.

I originally wrote the driver checking for the newvision,nv3051d
compatible string which worked fine when there was only 1 panel type.
When I added support for the 351v-panel I *should* have changed how the
compatible string was handled, but instead I simply added a check in the
probe function to look for the secondary string of
"anbernic,rg351v-panel". Now that I am adding the 3rd panel type of
"powkiddy,rk2023-panel" I am correcting the driver to do it the right
way by checking for the specific compatibles.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/newvision,nv3051d.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
index cce775a87f87..7a634fbc465e 100644
--- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -21,7 +21,7 @@ properties:
       - enum:
           - anbernic,rg351v-panel
           - anbernic,rg353p-panel
-          - anbernic,rg353v-panel
+          - powkiddy,rk2023-panel
       - const: newvision,nv3051d
 
   reg: true
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
