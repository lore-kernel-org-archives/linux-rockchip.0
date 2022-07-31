Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 730F3C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYi7e//jF4ihLaeNB4XJAd+34b/I2NA2/ledPhs/vGc=; b=i2imb4m+ErjOFR
	0tNld8ATvYiTySXjQgPun2hfks1tkhL5LSOJieoQm5rHFTNOEa0DreE3w4eoLTaywQijCHmlrcqWd
	NSJl/X+74yGn5vHWPHs6lodCJ+IvOoHIs2wtkgnGUXm3xj0WB9j899iYQRV22tCZHzXX54AMSCu8B
	kqOCw642tNt+V4WmwSmV1q4KTjxgC4jhOP96AO2WGblnh6k+Zo46VfYkw8x5RoTW6nOkz+bvTpZqs
	p7FgGsOkM2n+nSHVzoSfnIZVfelgHwjaVEMx+/zEiqwi/Q7zqoVgvl3ZmjGPXWaU0+bUm4au9zeTz
	WWolCOzMFGTCs5nqFIbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIDE2-00EkBK-D2; Sun, 31 Jul 2022 17:59:38 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID3K-00EeQM-Vd
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:48:36 +0000
Received: by mail-pl1-x635.google.com with SMTP id w10so8611448plq.0
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=SIiloTz/G0Na67mRN9ue2I+l1atGJUqobZ9P3OaTVRA=;
        b=kPqF0C4Y+/hf4qnCIgEGvBMYaNS5jf6R7a1C6csTxbFYyUeuXEYCjcCInyhPMAYke1
         +GsMjm0f2DmoFg5mOw2AKvnWBvXnCdIWqs/0aZxMYydynL5fROBwiXQ0BWOU1Rogbg63
         Q3KWBOZRYH2HAK5ZGOAkNy0PJZgj5xJbInjnjiGl6U9vBf4tEyvqGwDZ/A6RkbmOMnmp
         cRjVZoLLs/pBd9Fl0VZX6YzjhfC/F6YEz23C4kBfmbxPXu7mPjfKhovRqWgmAdKo2A2V
         UTcYrSy6tw3Uwf4biRN65xzzd6aLcTZHLUwvQR3reUr+G2PJw0sYNLSUw6+E+w2Lle8M
         wCaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=SIiloTz/G0Na67mRN9ue2I+l1atGJUqobZ9P3OaTVRA=;
        b=IDNSuMVvbFprEupP2QyUqnO3CxSjWjYe+/DpeC0kXYL8PzFRkzeRtz0OK35ZW81t/d
         rjjiQD5qYFGQxUvfmWlbfVHBnwCANkinH+KfO7FYhj6T2tBY0a7j4e3bO5s+E4sJLZkd
         zVpAmUHyLO6G08bR8Byx9EYzNJQ4LwTObt/d4b9TvUl+nfb2nCfXu5NvIl6TbnPjKoKl
         kvoNPQU2KYc6jTZTOKGc92IQN8qoGj/YCifY2ycZh/T8L2pz6RbzhHD/+CbgvjGWiMUD
         Vb4SHaUMIORTDJCBTbBOmml4EWrmY52tHxjhfWU3o4FwqmhmZ+N6dFdCtCM/iERyMHN/
         7RZQ==
X-Gm-Message-State: ACgBeo0maJEI3Y8zdG+yeRovd8AWL3n+xXsZWtn+AJQzXT7wBEKmsZBt
	qSdFxQ16DlpZR2nw5W8pw7cDDKS9jiVkvS7OOYeSbQ==
X-Google-Smtp-Source: AA6agR72yDI+dAZtETaByrYY69Jt1PW0BwapJ13DcveuwyNpG+pWvYogRud4N2OqyRJfYFa8Fck88Q==
X-Received: by 2002:a17:903:2041:b0:16d:a78a:efd9 with SMTP id q1-20020a170903204100b0016da78aefd9mr13184434pla.71.1659289711299;
        Sun, 31 Jul 2022 10:48:31 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:31 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Lee Jones <lee.jones@linaro.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v2 14/20] dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS register
Date: Sun, 31 Jul 2022 23:17:20 +0530
Message-Id: <20220731174726.72631-15-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104835_064367_055D9306 
X-CRM114-Status: UNSURE (   9.36  )
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

Document dt-bindings for Rockchip RV1126 QoS registers.

Cc: Lee Jones <lee.jones@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index fb784045013f..32cd2ebccaf2 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -59,6 +59,7 @@ properties:
               - rockchip,rk3368-qos
               - rockchip,rk3399-qos
               - rockchip,rk3568-qos
+              - rockchip,rv1126-qos
               - samsung,exynos3-sysreg
               - samsung,exynos4-sysreg
               - samsung,exynos5-sysreg
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
