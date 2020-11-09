Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28BDC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:11:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 49AC320644
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:11:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="CkaUPTJd";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Is8kLbd/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 49AC320644
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YTKs8Ec6IKF2jY2pBpXOlHxDRWpt8GTCMxPlMEQbR5U=; b=CkaUPTJdrakh9Wx3aYNgX9pCW
	9p7Z/niiy6qk7AHxK3DVWV4beDVejpLCA0jv9ykcSCsoOk9sIzgbQ7PuMZG0AYKARdnii+t/RjI3b
	a4zu74U6DaMOj7t7N3imsWaomeQGxyO+dMndlJK6j9LvR4QU36Q4rHLMke4XBIkkETkCp0H7HoiIq
	ztktH3ysyPnE90eWe3HIr++nH2ulztnZGAmPKn/nj4/KtRZreKvRtMghzn3nsNssXhv9dPbygpDFE
	Ue3aqwt8k7ug2Q7wJyNFWLtR+B6k1UZReKq/ZW+3gN9UrsxB7pV9EtcGth/OcYgb/ME2wPFX98E8g
	fne8iLQzA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcBdV-000667-A2; Mon, 09 Nov 2020 18:11:25 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcBd3-0005pL-AY
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 18:10:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id w4so7797877pgg.13
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2020 10:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Rj8A/Ech+iIHcNTsJ3NqAVJDVYSUQ5lILSrgdq6R7z8=;
 b=Is8kLbd/+CQZy7CHNBAiqe0iDgkURgBzXfbjnFLMVgHrK6XhgMNAPdj0vAxvUOZTvg
 e6UxpBoESYzseMPbsdepKvwN8sQNIDUajvRjRUZOt7AP3wWUCKAXWLOOuWFQj5z+Zb+2
 6PmfBc2y63NtdshfJxsKfLLUaPzck67uicNwY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Rj8A/Ech+iIHcNTsJ3NqAVJDVYSUQ5lILSrgdq6R7z8=;
 b=HzMoCe/A7w5Gd3rGzvEdOQ+G2mHOISDJfJkvGnRuP5a4eJTC9fja5NK7qZcZE3UmkY
 0tefygHfP0FJ3khfA+lm0lDx7w2cMEVjT2GW0FMqvfIqO03kmNt0Ml+8b0GNnsw05iTp
 PE3xsORsHgJuUc0fRz3MBSLu0nYbw6wUpE6WiCGhHroHyHbuBs6MxmeBK6xz7P8bchxK
 16zXWi0tYKA6s48k9osmxRe7RuRMGqK+8jCGFziLAHW6u79WbJ7HnMqo5jWj72EeQ9b7
 nhspcrZFVWZBJMKEO78Wzlur8G2YA+K75oP6ys7GiGDBBFbYqMiawg+GXqnbsKPQxJEw
 /tMw==
X-Gm-Message-State: AOAM533cuLOphH/mfYSBwepP1appEo0ksNJPsVCaatk9LRnMQYfMKTIJ
 TGmAZW1d0QrUcqiIX+edQ+04HA==
X-Google-Smtp-Source: ABdhPJyKovhGH9cTuVFn5lk50zpHzaLBeeY147x36C1a3JDFMVwrVgWmpRe8GFLD/NxhaPQDpMsmLA==
X-Received: by 2002:a17:90a:87:: with SMTP id a7mr391074pja.95.1604945455578; 
 Mon, 09 Nov 2020 10:10:55 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
 by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.10.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 10:10:54 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 3/9] dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH
 2.0 10.1" OF
Date: Mon,  9 Nov 2020 23:40:11 +0530
Message-Id: <20201109181017.206834-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201109181017.206834-1-jagan@amarulasolutions.com>
References: <20201109181017.206834-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_131057_444439_4EE4EB79 
X-CRM114-Status: GOOD (  11.19  )
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

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

10.1" OF is a capacitive touch 10.1" Open Frame panel solutions.

PX30.Core needs to mount on top of C.TOUCH 2.0 carrier with pluged
10.1" OF for creating complete PX30.Core C.TOUCH 2.0 10.1" Open Frame.

Add bindings for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 37fd456170d2..ef4544ad6f82 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -76,6 +76,12 @@ properties:
           - const: engicam,px30-core
           - const: rockchip,px30
 
+      - description: Engicam PX30.Core C.TOUCH 2.0 10.1" Open Frame
+        items:
+          - const: engicam,px30-core-ctouch2-of10
+          - const: engicam,px30-core
+          - const: rockchip,px30
+
       - description: Engicam PX30.Core EDIMM2.2 Starter Kit
         items:
           - const: engicam,px30-core-edimm2.2
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
