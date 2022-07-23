Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B598C43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZMwBKsXMggqKK8ymZo923+6TBXZuwTzNKi9XSH8AexM=; b=K9eB0V0/IWkrCB
	yfdJ5hj2B9hQHdVIKQy05gWnlcDP94aKF8QEVZajnaYecrOgpr0WL2n9vslKawUSDN8+JeHDNVbNq
	K+dOEbNpr3tzTKiM/rSa8e/DPPTWPm5/6otx4g9sT8twQBXrr8dY+uWbmLgwa8KshpbAdSSd5AJ+C
	Rbrw3a9OI5155zrgRqBR30wcNWT4kM85bydg+qxwPQnEiEAbK/c6QnRDualmXD2Ts4lqEmOfS8o8H
	b4/p0DM1KcOx8wXCV58nTyzSXqfUijl3cl4MXDGCiM/a+zp/u/CtZbEbkoxsmr8wvw/rr287GVsKG
	vvImSsHA78rFqpQ9LSTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM6t-007CwU-9l; Sat, 23 Jul 2022 20:52:27 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLzi-0078jR-MJ
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:45:03 +0000
Received: by mail-pg1-x532.google.com with SMTP id e132so7077389pgc.5
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:45:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nm6nbnjiRxOXdwLeEjeC2uCR3G6MiXh9QLA4PcvlHnQ=;
        b=vlvVPqYjbWIuDFylCT25W5n7UQUMi8m1drHLX+dbutIk+9mv1oSGvrZ0LtMlk8APWs
         lms8CPKvpzrnOr8rbb/e0cB7RPB54h1FPWAcwUbyQnDCpIC1C6a8PUyhnUoNCilYO4dl
         0fYQ7cXBA7vxqZ0+iMOj8KBtmYYwxyTZIVvaOhIUdqZlmDhRfhjkIccIvqYbRpXF0MST
         Bf/u4cuoVzhx+Ux7/hTYyull+3+emOQZVfvZ7d2fj6RuvH+5dnfzvybi108bbOWS64rW
         ftD6Ftgk2OrCMcguPvYE7bJbtOJ78p5HRnbVOpGv6AGQbgrh//NgfxvmYp3pwo/9yxoc
         vaPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nm6nbnjiRxOXdwLeEjeC2uCR3G6MiXh9QLA4PcvlHnQ=;
        b=BeoByiYzvJO6BvWlZcCMd4NrtXhdpUmatK/WXYTDqFxu/Q+Z641oVCvE0XURsxkF+2
         8HyGm61HbZjTao4R+B6vcLSpRw+8dAnuAEj9zii9A0R+CrlZNxXhu5FlDONon6NnFwA3
         ATIewjrn1Gchi7gVm8C7rG4IsJfQ/JyHPXgsTFctgp7TzCZFWlClWDvt3J6X9tRQwah9
         7BMHLE2HdZTAgAmazaDYtrkuapiu+jN+/FxQPlxm96JmMewXS1xn8ZRKXjwKfhw0ASBg
         /FvcPuQRKPJ26wr10JssGUFKPnVNm0P0BsszWskHb3GxvGoat5exhHBeXxIZUANLhNJK
         aIIA==
X-Gm-Message-State: AJIora/rEEqjh4QHImqnvs6VJ8ZyveoB80TCJYL18+Wa+UtZBTQsPQ0N
	33gxbpAdmTQskj6tYhrrEFRchg==
X-Google-Smtp-Source: AGRyM1sv3HopWmXThwMmwnr7aevYu7HQJ/mn8QlwfTlpt2lag/EL36qjUcSON+NPzM107+hSgArTNA==
X-Received: by 2002:a63:d006:0:b0:419:b272:9e6d with SMTP id z6-20020a63d006000000b00419b2729e6dmr4996894pgf.608.1658609102346;
        Sat, 23 Jul 2022 13:45:02 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:02 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 14/22] dt-bindings: soc: rockchip: Document RV1126 grf
Date: Sun, 24 Jul 2022 02:13:27 +0530
Message-Id: <20220723204335.750095-15-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134502_770553_BBA3571A 
X-CRM114-Status: UNSURE (   9.18  )
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

Document compatible string for Rockchip RV1126 grf.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 75a2b8bb25fb..dd7090d668f5 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -45,6 +45,7 @@ properties:
               - rockchip,rk3568-pmugrf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
+              - rockchip,rv1126-grf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
