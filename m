Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7B90C43460
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:23:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 740A6600D1
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 21:23:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 740A6600D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PoOW00ZvLmxhC2K4mXO3cwWzNUMfWnG1n5ZYA3JEla8=; b=etKgeWJOvQFTpip+EU4lLRQ7po
	3eG66s8CWcan153rHF5vZzAEF3JDsAxEx+EKsrMqQKHnJngpGYiA6eCIEXKiqUWQqjU3jrVHKgXUy
	hCXDEldpOCPjZSv/OpAR2JCqoJPLxX6f9nvQe6bViPhdyxHOJANY/xAMCOZ72liOPEbOi9ABYGFgv
	2UErE0twnGmGipeGiT5bh/Wsab/8i9q99rWsiOp/sCaVsC+IhnkdgZMwLLtZdDJAndOfkR4lNSbbm
	UFIIuh7Zgkll0bARdJcCT4NQqC2MEQQAuk5+Letmsquc9krlRfhuanFr6Ij42HeD5ELwQP1M9CVCn
	ULalZgWw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWmz3-00DqGk-17; Wed, 14 Apr 2021 21:23:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmut-00Dood-Lu; Wed, 14 Apr 2021 21:19:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=F5YnMoeI4BcqVYscCNU5u7SkDX5pKXOy3KyGP8x/t/A=; b=DKQC291wbGOamrdgcZG+0K3vxk
 zkFabni9CIo99GL4bRYd7KmQ7hotLlCkZF4vEdxH/gZuCrSyQufhNLPf8aPexnR/PXexKTHUmnUk9
 DikPLMKriyoAmWdP+dwxc5ukoWdboYkmGTU859i5118ydnVCh1ZkJ7KdurlokccCa3ThUvcx7sCu5
 6Z4Uro+rQ9JFzMZ2VuLHZ5bZmXPvPIdDqHMh2KlVJN8L0OammHAAlYt4HdbDzIseBUOLoPCVwRsXe
 eVNboigC+gqPwGMRIkWIlyfOmJCrLBMVOPjreBxPwtV45QaE5LVqXNyQ58SoZBCyeam59RtLy3w8z
 1Mn+/Dtw==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWmur-0086sw-AD; Wed, 14 Apr 2021 21:19:18 +0000
Received: by mail-ej1-x62d.google.com with SMTP id v6so32278467ejo.6;
 Wed, 14 Apr 2021 14:19:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=F5YnMoeI4BcqVYscCNU5u7SkDX5pKXOy3KyGP8x/t/A=;
 b=lNSPar5egpCWY5E30O3i3AkiiAUErI3Poip/WYYWLcbrildCK2fZdNdcHP+E2KXLIY
 8121w0dh73BmCOJ8Ckdt9PbEz1fIu0PCNAPO81ikW3NJ+MHExM/C+BJZlezpxiWErlcf
 eJst4YCl0lTjlHel5W4TDD7QyrLxivJJikZXczm5irx2/45i34gNJ5BiPf0mllnm4zXd
 o3fT/Bq4Qdth/dtUwO/TMUf41BzFq78H+4vCXLoQUwh37Q9bHBfIK8cqwJqGcbf4adZ+
 nnuxDMroyn/DXItVXIr+IDM/lNppRg1qt7XwUFekgtOZTNPstAMRMJhbtlmtXak/nwFV
 YTtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=F5YnMoeI4BcqVYscCNU5u7SkDX5pKXOy3KyGP8x/t/A=;
 b=gkIpdaGKjWVZHeZ+HIi9cohhxWVDhWWGxg6udOwUKzIMFrQsBP9Xx/Dm81QGDFnlNT
 c/dkDgxmUWYt6fOEJZA8F6mGqXBUHZzb8z5Poj8SqyxDoT4FW9XWn0W5JYQLkq+t1cU9
 9+sKKz8ogaAuaPd/dWTYNAceUKiLjzNTIiyCIi+MdKIf63VwZ4iH1gXwiXVxnANUyywy
 FhdH68K4KKb3Wi8cyVSllR3/biB1VtCC1TiMjzgKmleTx+yuZFh197szrBfSyKdix8rs
 NDM2Cj1c3X5kGXEteASWmM94nWz8ICfiYDrvWPXkdc0spiLDb09dqXIIENwbg2uyCT3Y
 cBaA==
X-Gm-Message-State: AOAM532Waz+ZBA+wJdXgShFgPShcUDxGyhPLTX3qXZek5kh2bKmTWY3m
 ThnPUoxlLCDW4/O3CQRxtDA=
X-Google-Smtp-Source: ABdhPJyTYkUEW+WE558pCNRKo8Gg+nj8vJqjRZ6gWh4Gu1rp6xiUeJkUyVaoyzFsCL3LUh+dTg/0ow==
X-Received: by 2002:a17:906:f56:: with SMTP id h22mr80129ejj.494.1618435156208; 
 Wed, 14 Apr 2021 14:19:16 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v5sm568222edx.87.2021.04.14.14.19.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Apr 2021 14:19:16 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 10/11] dt-bindings: power: rockchip: Add bindings for
 RK3568 Soc
Date: Wed, 14 Apr 2021 23:18:55 +0200
Message-Id: <20210414211856.12104-11-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210414211856.12104-1-jbx6244@gmail.com>
References: <20210414211856.12104-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_141917_370967_81C98063 
X-CRM114-Status: GOOD (  10.64  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Elaine Zhang <zhangqing@rock-chips.com>

Add the compatible string for RK3568 SoC.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/power/rockchip,power-controller.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 934308006..1354f1dc0 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -37,6 +37,7 @@ properties:
       - rockchip,rk3366-power-controller
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
+      - rockchip,rk3568-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -82,6 +83,7 @@ patternProperties:
           "include/dt-bindings/power/rk3366-power.h"
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
+          "include/dt-bindings/power/rk3568-power.h"
 
       clocks:
         description: |
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
