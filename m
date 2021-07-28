Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94404C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 13:59:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 624EF60EC0
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 13:59:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 624EF60EC0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jORCWShVZUBwgTV8lL4pa5J2MXtL8epdRAqSSCqT1r8=; b=UvHu530WqlvOkc
	6SUlgQHVWI4htNZuXIdsrOb4eJBlQBetZII4/meyldJliIuFrAlIF9ob0Ihj7fUt1VsyVO13ShNI4
	nSCFbR+FN0k02WjqA6O0NY2pz//LICIS0Y1qaDqiVXd7phG2xm937vpkeZ6fvOjrey5/nral5vDZ4
	DbuhbZSXkTzD4T/LZi/VRjLhm6/0BU8zxBKJj1EDCG5e3j3QpwBKE85mXftsqjD19sxvxnUaYiAyi
	kOy6KyZc7/rnnmlBwhGIcDrTifLDYyHobtCJqDE3M7gYgmDwoId6AUb9abV0bshG6yfMr6yE/sSCI
	rJaYA0IRsDdh/APBzo/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8k5f-000tZc-GD; Wed, 28 Jul 2021 13:59:19 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8k2M-000rsg-5O; Wed, 28 Jul 2021 13:55:55 +0000
Received: by mail-qk1-x72c.google.com with SMTP id t66so2304550qkb.0;
 Wed, 28 Jul 2021 06:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p0c/IyLNYUcFRUNhIkMuU0AI+TpmMpaReD0iwylBw/k=;
 b=lI4HE7O3xfbrLZHlZEm6CLq8NrFgzrcXzQ+FCqH4bMco4nV+Hvz5agyILutqUHegUn
 o/Bjv/EaB5qT2qnagUeroiQWSXrMpTP6U12EHVinFY8m8E9ABcYNZlznekse8OFtpNTq
 t3oFf6NxAUCyBCOUO9UtD+/cJODji4nbwykjNY24dUPxbY/YaTTnjF+r+NTBdziyRRJB
 M17Q1QZZCJUAOVjylL/t4f4sv19oMepslZ1RZ+xLwjKNl0INSPXFtCRcdXwMKLPB7MnL
 CBhJ2vQoafmjKj0sqQ2i3HEfknj+CtwZ6pAEAMXJBjTI9Ancuu5gyLgdCAiyevy6lAUf
 N1ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p0c/IyLNYUcFRUNhIkMuU0AI+TpmMpaReD0iwylBw/k=;
 b=t+St0L5vFJC6Zq19T1mpNCGSaqds+jIM0bjxJ7555z7YKPS8u+PGNuvdE/Bxq1D4Dh
 LaOpyjF3mZ4xfL/Rv0TzfdG5wmQJTmlmJSSY1hkb9HCgJEi/iWMHXZhyFbtGRJPseGKp
 hqNj8DTo9YGcqu964whhAehC6Q3y0AvjmOeav1vSU1skyIvYCSBB2uzjOZZe3tBIalUy
 IGVtqHlrJP58S+S7H1YKm94+JPI0jiqZIjEms+/iP/mo37sPKO9L+J3SLalgl+VYE5ox
 7smE3ESs7VWtkVWPb1iwIil9/5ijhryuF8D04oGF/1kiznti4lJYE+f0KU9T4DcGydYB
 ADBA==
X-Gm-Message-State: AOAM533+PQ3XQy7P4WbztWVtvwPLP4i/yqgEXKz4qJCxg3a8xevMf8NO
 C+yCzIVsEpjVgefw7MrM1fs=
X-Google-Smtp-Source: ABdhPJzoNpKc+OhcYe2emeCQDQYmrYhrUprg7KEWryMcCF76OXmFd+tXGIlTeIs5GjwINx54kLx8gg==
X-Received: by 2002:a37:62d2:: with SMTP id
 w201mr15042275qkb.318.1627480553423; 
 Wed, 28 Jul 2021 06:55:53 -0700 (PDT)
Received: from master-laptop.sparksnet ([2601:153:980:85b1:b58:2ae8:d75f:660a])
 by smtp.gmail.com with ESMTPSA id t64sm27202qkd.71.2021.07.28.06.55.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jul 2021 06:55:52 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH 1/9] dt-bindings: gpio: rockchip,
 gpio-bank: increase max clocks
Date: Wed, 28 Jul 2021 09:55:26 -0400
Message-Id: <20210728135534.703028-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210728135534.703028-1-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_065554_259656_AA519217 
X-CRM114-Status: GOOD (  12.37  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The rk356x adds a debounce clock to the gpio devices.
Increase the maximum clocks to account for it.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index d993e002cebe..489a5263a7a1 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -22,7 +22,7 @@ properties:
     maxItems: 1
 
   clocks:
-    maxItems: 1
+    maxItems: 2
 
   gpio-controller: true
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
