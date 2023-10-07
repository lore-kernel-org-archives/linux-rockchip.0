Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6698E94135
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Oct 2023 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmHg3RiQHyZmOb1YpSPWI9st7W10VuRsKQz1Mp+OMGw=; b=SWGHd5PPHpDc06
	diPIF7ClczHZ0S0GcnOgVISornac9Y7uOI6F/gaWFltXq5kdL8SeS64M/98EdY9FLrmQ6BGxPUQZ8
	r47DzrIEJclPamYsxeI4Ot3rPG934O+yqABcdObz1QnC+yqvqm91nF/LWHd3AoNN+ToM59ogSSjRm
	+ofoOC2jPtNdo16nZfvfMn3xXztWmTwHSuZnwv6kOwPajkwU4JzSPPLPFcCBOJ6n7t8vUjshksH5r
	RF+MfFV4W9SA9uFjSG/QlAZhMEoc1HdNPfZsmI91KWw+REK0t0DVES4nH0fQ4ECMBDmWVEboaLtv/
	OKlTCEBX4pTV2t0yiqrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoz3P-006xAb-2U;
	Sat, 07 Oct 2023 04:36:39 +0000
Received: from mail-il1-x132.google.com ([2607:f8b0:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoz3L-006x8g-2l;
	Sat, 07 Oct 2023 04:36:37 +0000
Received: by mail-il1-x132.google.com with SMTP id e9e14a558f8ab-351574aca7bso10187765ab.3;
        Fri, 06 Oct 2023 21:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696653394; x=1697258194; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xqdx5SQOCITW8sdpcW8PF7BxUYMoI+j3/zmoixXSHL0=;
        b=j17Rjp9IbY0hNKSbXkj/BwIQR5QBVouyNdl4lqwDoiJsRfokaTQ7yAvgajAQc3KUM8
         sej1pygFMnvzBx4mWPPAbvRHnrQhP7qhQutjy/CC7D2JnBb0NsqXOpgwH/4/nUGXIjLQ
         ufRC/+y0b8NKUGumVSmwIaOn1UgG9wiCoY200KOPN7AKkZhl+AAaarABEj3ggAwOgy4R
         GWXxIfwGSs9IPX+HbpAGkz/ETJQH57G0HeXacGBLnYZOztQmXJVYFTE145jIfHZ08R/7
         010z+lHKIWGjRCwyEYZgnNmMIqgbBorS19RAm2WxYlcxTsU9O5+tjM/v09uoiIQVtB22
         uKXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696653394; x=1697258194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xqdx5SQOCITW8sdpcW8PF7BxUYMoI+j3/zmoixXSHL0=;
        b=cHyhnPxUTOrqjzxxn9hX+5P952CIKcRRBy6SF39PRXP27O2tsl1o5ccqZNUctrwZL0
         3mcWvdE5gin56bczi6Dvi3fxRtVmWmv1Cnq7AIhZlN3XQuVaIJxQmRgKbckmTcHk29X5
         DK7UMUyANGHhU8TpuOwl6YRb/F70nqs367GevFgFmcrx/pMzwe+FUn8gvhsNvKhfmi3p
         wCHcgqE9cvrVUvrdC/k6+nR4yrY+BYTYNalVjy39YvqJizSdoYzcTNPsMMSptw1yzwbi
         WmKtWElzOREx8bx+DiIDW4sQ/bQnm3aRtHnCbAHMcD3HtdgHsCwGcoWHR9jhDLc0uZfR
         HnIg==
X-Gm-Message-State: AOJu0YzJK2vl/TuAfJvcyeoYvRPQijq+n+RAQuyBf8gD87w2gGFFb7SH
	50E4OFijWhQGygAf8Q/9FMOFdzOIrL6qdw==
X-Google-Smtp-Source: AGHT+IEgSad7mZWzRlttOGMzT36e0pj1PjBfODX/XrtdM22WnJ1/PoeBLZ8ZbAp3GL42xtkMPIFIxA==
X-Received: by 2002:a92:1a46:0:b0:352:a73a:16f9 with SMTP id z6-20020a921a46000000b00352a73a16f9mr9210546ill.18.1696653393932;
        Fri, 06 Oct 2023 21:36:33 -0700 (PDT)
Received: from celestia.nettie.lan ([2001:470:42c4:101:8a60:ad5:1051:21e3])
        by smtp.gmail.com with ESMTPSA id x7-20020a92de07000000b0035129b9c61bsm1520910ilm.45.2023.10.06.21.36.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 21:36:33 -0700 (PDT)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add turing
Date: Fri,  6 Oct 2023 22:35:58 -0600
Message-ID: <20231007043600.151908-2-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231007043600.151908-1-CFSworks@gmail.com>
References: <20231007043600.151908-1-CFSworks@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231006_213635_892719_B8E06990 
X-CRM114-Status: UNSURE (   8.16  )
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

Add vendor prefix for Turing Machines, Inc.
(https://turingpi.com)

Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..07f164e1ca2e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1420,6 +1420,8 @@ patternProperties:
     description: Truly Semiconductors Limited
   "^tsd,.*":
     description: Theobroma Systems Design und Consulting GmbH
+  "^turing,.*":
+    description: Turing Machines, Inc.
   "^tyan,.*":
     description: Tyan Computer Corporation
   "^u-blox,.*":
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
