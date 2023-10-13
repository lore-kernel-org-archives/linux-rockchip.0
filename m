Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31510CDB484
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 18:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyDCOgGbz+hR9FyrdLLorqLQEL7GzhBPjfECnsvSbd0=; b=gQmNY584LYOXuu
	DsJF7UIhddG1q0zk4ZyFbFQD3am0vRjdvlx3nhtcMaQEAeq+8msnBYydi1iYvHVVOMNhaOZtoW6AR
	bI48UrtUPJN7M8xP+eXWsnt8FGOskqkFGMfq+HNM04o0LO/cMq89wStG0q4vX4ET0hhTqde2UBKMk
	gdRC2T21kSh/VfdgSfKLIHzkaObc56K9YJf1dyRld0hSbHPDhrmsVC6Ujn4QwGG93pajN7cjlJ0w+
	sj2Su6lt1Kzs6b3faM7XpmWjN5T/cukkrQKywfE4Q5PTztvxUeZcVh4XxEdajus703XY7Sc+Vokh0
	5dIV3/5QOuWwELQrPB1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4N-0043x3-2O;
	Fri, 13 Oct 2023 18:39:31 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4K-0043ub-15
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 18:39:29 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3af609c4dfeso1462951b6e.1
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Oct 2023 11:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697222365; x=1697827165; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DL5nx56ml8EwdqvqmpvvdFpkJtuFtwq0M/Gm2EXLElQ=;
        b=kkLnVSAPYB69NWhJ2iQiUcqnMxB3KUTz5vCGB5o02CqjNivhcrgemGdPdAt8T9I9Oz
         TMsw3fzS+2ttJL1vbdrAF7TAQ/oFc/BUrajmHhx/YterftN+2yzxISVWi3QYqWqhH97e
         KfNztRxyaq+GzbkCYIH5GppAdJ7F/FcVeWJqf0ihg1Ha3Mner4sTFaRzQ9RWyNUbKG1p
         rn3gXMdJVIS71tMNfuWayPChrtv+kSWIdLt+r+S0Z1OOvP96jFqTVRKPJx4qrYl5l/57
         qs2dmd1bQ0JllpGjgVneZD5FXiYCJpn9XbEYCy6m92C6mRebnZY0BJBH4H4LSy0uzw3S
         uH4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697222365; x=1697827165;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DL5nx56ml8EwdqvqmpvvdFpkJtuFtwq0M/Gm2EXLElQ=;
        b=p8z5PMwpanb5lvY+0p7Yj4GVFv+2y66duJYtyqo874r2bSipCNQZiZlXr02XuPsHal
         N85gj8AfwY710F/hYcB/Y9bupgxLDmvgJUpSsqok0eTvZD1nMkoPzf2mvar42A+qm9QN
         XrjveuatRnQf0Skub4Ewpc6x1/iVdRHgt2acj7ntLJhQ7re+rXnlKfNoNw8kuXqIZGxC
         zDD5Gjyfh3Ymfueiea5er/46nTB36RzN9r4Y5ropMjhYJk/z+a95nGam9IxMecEeRuU3
         yLYMEy+5EUlVZ+UGOzkxL3kf5smEgZuBP6iIB6fKmrNPySExfOAmukN1oLonYWftDYer
         F1uw==
X-Gm-Message-State: AOJu0YzewjtjLfFLMwdTz4N1b6AQ1LZCHthUc8F8fYPPdFWaK4ngwNmJ
	lEmiRD5H/o+rtxGgQ1dnfB6se9jIRCI=
X-Google-Smtp-Source: AGHT+IHAQ4slZoIai8CkCpzcohRVPtVa4yKRxIDPVGcNh8vLB3G0lzsMzhjH1ZSyUz9BdmXegQFNMg==
X-Received: by 2002:a05:6808:1b0e:b0:3af:6cb9:ffc7 with SMTP id bx14-20020a0568081b0e00b003af6cb9ffc7mr36242744oib.16.1697222365565;
        Fri, 13 Oct 2023 11:39:25 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id bx19-20020a0568081b1300b003afe584ed4fsm842159oib.42.2023.10.13.11.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 11:39:25 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	megous@megous.com,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/5] dt-bindings: vendor-prefixes: document Powkiddy
Date: Fri, 13 Oct 2023 13:39:14 -0500
Message-Id: <20231013183918.225666-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013183918.225666-1-macroalpha82@gmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_113928_396244_0883995B 
X-CRM114-Status: UNSURE (   7.96  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Document Powkiddy (https://powkiddy.com/).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 573578db9509..25fd2dc378f5 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1081,6 +1081,8 @@ patternProperties:
     description: Powertip Tech. Corp.
   "^powervr,.*":
     description: PowerVR (deprecated, use img)
+  "^powkiddy,.*":
+    description: Powkiddy
   "^primux,.*":
     description: Primux Trading, S.L.
   "^probox2,.*":
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
