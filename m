Return-Path: <SRS0=/3g+=CH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2E55C433E7
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:58:55 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B334020707
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Aug 2020 15:58:55 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="TMLPBoSm";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="rBpfgsrw"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B334020707
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7QIM9gx+1ZeQ0XJgGm6r9xGUmfETGCpO58cl6zWuHXY=; b=TMLPBoSmr+/aNAukg5jUPZtQc
	u4r7S2BdVzUy9B09jBaGLDljcErxRdAV6OFUhiFNKN6N1ozegzDHRM/Z3VHNhiNhmug0crz80wkhd
	5s6M1JUgksXarr42iJIbqw48CUSN1lZs5ZHTvtPuEv6J3w/cjUBI/ttGR5DmpPQlUiA+gupgLQ3yI
	kcadcDeR0G67G80jBY81UQ2E8KnlKqUGdfrBWRNI70bwyuc6V6cpjV/SnpE1/1PFCiokau2wn1Ldw
	eZoA98CKH0Csf3RGSw7MVx4r7zHDCNCWP6OA3a3dtump6+Vn+dh0+y8oJCkW46evXCccD07UMnXd8
	QYKcZS1kQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kC3Fg-00046A-DT; Sat, 29 Aug 2020 15:58:48 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kC3FZ-000448-AE
 for linux-rockchip@lists.infradead.org; Sat, 29 Aug 2020 15:58:42 +0000
Received: by mail-pj1-x1034.google.com with SMTP id mw10so906096pjb.2
 for <linux-rockchip@lists.infradead.org>; Sat, 29 Aug 2020 08:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cCkAIVmETRezSJjOY4Toyyj9ShgR/BokJpWgWd5XZ2o=;
 b=rBpfgsrwCrg5DCD+sfEJoYHz76uGggLFzDD9/31SDDL8PTavT9y9KnGncz8GPKTVOc
 9cs6XdN82vb3WKMFJkJczYbqWEjaoFhz99GnefgcJ0YQxl8Rs0xXlEc/JH8r7a+2jHjH
 I+9mnTOPpJcl4K847EkhR9RUEFe6iLCaY+beU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cCkAIVmETRezSJjOY4Toyyj9ShgR/BokJpWgWd5XZ2o=;
 b=AUx7XodDtvVfCW8TV0PW/PDhfQNaw+/NdMIrRi43YdUyjvG3bHAXiIhpjnC6+YnKkM
 akz29kk5LnSt3fym5RLdN9a96Q7mvhcl2rYZ0y0zrY92KCU2mYBG9+TeWuaobgbdydY8
 cQ71+D/n6NsL4icxcJu3Rcjs+1I8AQP7WUIgRczn6G6LCecqtjU+vwNth7/JLTkNWvFr
 9avCxh45t22RawhL3BY9fXu0BoHpixFN1l0KWEM3OeMYpCBHCeKztEFdm+Vo3BaTOjdc
 8fzVpQuvZVnJsTWKuSXBu1e/1AC42+tI7D2LIcfeg2xT5xN8zcgXRLnwZ1Y9+Boelnrz
 vKLg==
X-Gm-Message-State: AOAM530GWb9zU+Z71R36Wr/P0rZk9SnQwgbmjE5OINdFII43hGDzDPOF
 MXXqjyaGTv5XzC9TXAousPSzdg==
X-Google-Smtp-Source: ABdhPJwbonfq+DZDWgNOg6YSAZSYlISfaCI20n62hHNzKlij6eCzuHJB+HAuxG+v+0lm2+stOJy5WA==
X-Received: by 2002:a17:90a:c917:: with SMTP id
 v23mr3500041pjt.97.1598716719239; 
 Sat, 29 Aug 2020 08:58:39 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
 by smtp.gmail.com with ESMTPSA id
 j20sm3131714pfi.122.2020.08.29.08.58.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Aug 2020 08:58:38 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 1/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core
 EDIMM2.2 Starter Kit
Date: Sat, 29 Aug 2020 21:28:17 +0530
Message-Id: <20200829155823.247360-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200829155823.247360-1-jagan@amarulasolutions.com>
References: <20200829155823.247360-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200829_115841_440026_7EA5F300 
X-CRM114-Status: GOOD (  10.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board from Engicam.

PX30.Core needs to mount on top of this Evaluation board for
creating complete PX30.Core EDIMM2.2 Starter Kit.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes for v2:
- collect Rob A-b

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7025d00c06cc..bda0f2781890 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -70,6 +70,12 @@ properties:
           - const: elgin,rv1108-r1
           - const: rockchip,rv1108
 
+      - description: Engicam PX30.Core EDIMM2.2 Starter Kit
+        items:
+          - const: engicam,px30-core-edimm2.2
+          - const: engicam,px30-px30-core
+          - const: rockchip,px30
+
       - description: Firefly Firefly-RK3288
         items:
           - enum:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
