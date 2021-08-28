Return-Path: <SRS0=b+1m=NT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45A0FC4320A
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 12:10:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D66F60725
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 12:10:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0D66F60725
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kbTP4PFwZQ2FrcM3DubvImYjgY3gAMHsf0wMisM7szw=; b=Er57gMnrJ4SX+S
	jXJWbMQ8LT5w3vZ5Mn7uMn3FtmmjU8lUr4r86StVs3/qOnnO/17oH1O3oVt+vZVtYjZRoC9b3aWF7
	gzs8FTQru6k5TiLVgZ/7fsztAGmS/VfC5/vVlYHFVUtZxgldlELDkq60Q7jwpSGdpVGZmkzzbY0fo
	VAfvJkYZTSE9bixQqk2NjLsnHosfoA918KjbFOu78iqI7pLIlds2WfYobDW77hMu21YnO1hLMPOkZ
	l7xMvRH7OSXzPo/OUVDi4YziBLeLUyGqn4yCndcag9RrTWXuMVo2IoUxfM6opnleZefWgJG/hswaj
	FRx/M/+HNtvGM/ToUTSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJxAL-00EE1E-LR; Sat, 28 Aug 2021 12:10:29 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJxA8-00EDzh-Aa; Sat, 28 Aug 2021 12:10:17 +0000
Received: by mail-ed1-x52a.google.com with SMTP id q3so13982403edt.5;
 Sat, 28 Aug 2021 05:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9HhIK54AGWzBDeJbtkac7rFYNxv2dm4g1nGUaF4jiys=;
 b=LLaSrDdw/XsSEGWew/5HiNsDUf4ckqEcisOTs/R6p/n0z+Ic4XgmNXCDiZq5kJD5ZC
 oD0FbAoY2j/nM9MNWIJHwfFCQ+La2CfAdg23GgS5vYWmucbQZYxfgjyFIPA0e7e/b1Nc
 YyXQPG6hvqZqaBqOtHFxT7oz8ydKC+qjgWcdntglfYYP5Gp28ZAhVJSGNTY2tLLz00V0
 N71tSuMx4X0fPJsYQe8406bbN5pfYxUIjk7LB4UTJDKVJlmcEHL/C1ZOGEt40xk49SjB
 IJrpKRyrKlD7UB+W578XflpABs0MN5tPMPs6O7HchQIBkyLW7lm0HK2Z6QQ4XZdub7QB
 FS2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=9HhIK54AGWzBDeJbtkac7rFYNxv2dm4g1nGUaF4jiys=;
 b=fMQrtRF/kk79E9/Ky7BywjlAoiK47aU2ArHH6AC2vGD3YWAKvKdW6Wd+yX2t1GudSp
 YL9bPq55HjPcnf2Hp8xkphgHy+IiVtggljt7i7UVDqPh8s+5P14JIZdt9MXG3pIeM3du
 DZj77p/gyA1sSwJjT65xefZ2zPh8Au9sr7W+hdatjgsYK+5ZfF+S+sucYAW1fKcAv191
 zRfCeS65T+dpZmi/qcDlZ3doPHckDsB7u6RhpG16IxTK+k1n257ysDaOkhwzk+tefiPK
 ZvZqiE7wPum9IRgLwocbw2BKvP8RuMJLECD3kYsR6oKd9pwneTrRP2AFsah8qM49vmZm
 iAmQ==
X-Gm-Message-State: AOAM533PgSIlarMod/k5sIPJnXkuADBPVRjO4YyZHodz9YV9s8upI2md
 6Us2z3zpuclsArTptqjqRGs9ntAaOP0OfBsS
X-Google-Smtp-Source: ABdhPJx0+wK7fWPp5Hv+wMocus2PrJup2Vhy39ZlTiCIOvxouNrRI0kG1Igi7cW/tlsfsCK4uHaXKg==
X-Received: by 2002:a05:6402:1653:: with SMTP id
 s19mr13890586edx.163.1630152613976; 
 Sat, 28 Aug 2021 05:10:13 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id h10sm4706922edb.74.2021.08.28.05.10.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Aug 2021 05:10:13 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: gpio: add gpio-line-names to rockchip,
 gpio-bank.yaml
Date: Sat, 28 Aug 2021 14:10:07 +0200
Message-Id: <20210828121007.14865-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_051016_410974_2C024DC2 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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

Some people and companies may want to add more description
to there gpio pins. Add a gpio-line-names property to the
rockchip,gpio-bank.yaml file to reduce the notifications
from the existing mainline DT.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index 0d62c28fb..d4e42c2b9 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -29,6 +29,8 @@ properties:
 
   gpio-controller: true
 
+  gpio-line-names: true
+
   "#gpio-cells":
     const: 2
 
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
