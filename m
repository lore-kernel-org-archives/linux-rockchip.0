Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE5EBC25B06
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2WzPAgq4J/Koc+jvV4Qqtcun0q+XJVGnFVeZMIroIpQ=; b=eGdnXS3ElRS21f
	66lu9frrp5veIiYRrzf4NuVEZpe3XzyNY+bx99hhVa0CFHKR1kGZvIdxr2vfGA22dtqI/m06t3o7w
	NHlgzct0GRSipqrtgAnyZ8qZgaZJ5YZiVVeDEx7cQzSRZ5h1zW1z5nWmGU5ZfbvlHTuUWCVX6ecWy
	JN8yz5I6xErGScvQFempZiBLjnslAnFIsLHMDA1qSZF2H0bxnD8NdlK7tnOcnMyZIYIkcNOHtdHTx
	3p9w92Z8vp/DVUr9huwnCUzzbUSXTMai7IeDyiFjy9QEsXU9I69YIeig5IBTvGeY9CXSYxa+rSSiK
	uq1/TEXsWK1jbwCy/WrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID2w-00EeDb-Um; Sun, 31 Jul 2022 17:48:10 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID2W-00Ee0J-Ax
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:47:45 +0000
Received: by mail-pf1-x431.google.com with SMTP id 130so837817pfv.13
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=U2DiOWMYZFeHnRa08EHHJ0cCs+siq8/3MXdBn4KTO2Y=;
        b=hHVYfk2kF1c2Cvc/IY+diqQ+nLtoCgz/8WF10wB1Zw8lSoUls341h6uRxHJ7DH0DzH
         Dk7/duCxbhRGU7oI53iXp1UNST4Ov+EtJDnXk0R4YObPRkPf6JS5nvIQ7hhNMM1fF2MW
         D+NCztsFTjVBYOhU7OiO8BTu9chHFbOdRU9g9uYDcJ6ls92A50ndvyTbwUgA9nB8Ev6v
         /zTAUs4BdGjCTr7LUC5ihiAqJrptFvsVeto69Q367TR4LPVmggKyeOB2JDjDpJj0ORd2
         hb9HPiI/jB1Go2535Gr5DQe5KlVfd2uJVA39HeVrYGCoqSaQS34cYeUIpGycBzNry3Y6
         ckkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=U2DiOWMYZFeHnRa08EHHJ0cCs+siq8/3MXdBn4KTO2Y=;
        b=RUCmZmTEz63JQb56f42gJbUy4DJbOQO9CbAU2B+qWMzUlPgKGM1hrJjB0Z3ibAe1cq
         vda8fdq+vTFnlp58QCDuoyEFmiJTemd1SdkvE02o9GbjiDOMKd4EWY4+37Ty1+F1ZkFp
         sZdpKStWPQAKMcPeMeA+xIKcAy6ifEilA5W+ml22SGLsSIRG2rR1JoVcV/OVmIL9Um/W
         0boF2OQc3hmuIQf2Ru5w+JHrBrtaVaYEwCrkPAiRaxJIJ8Eon+rSHfX1VcnIYGvhN2jo
         re2aGNdCqDdlRVxBvJCSmoqiCG+xvXLhrtKUvOAvGsieTMxa58hcu99rUQc+bIaA2C3R
         j3ug==
X-Gm-Message-State: AJIora8SI27RSt35Jp9i1BqpB558ThBo9yN9YDGvgdx5Xy6wzCLK54Qi
	ktt7aZbFbaCgrRRU9Rop2i0rPg==
X-Google-Smtp-Source: AGRyM1uaJfmronFGB+ZUvm13gkXPbJ/0qUk6hV1sqPdsvxye1qkF37x1j5WqbI7BatUbuqsdCPR0ww==
X-Received: by 2002:a63:d646:0:b0:41a:6c24:d829 with SMTP id d6-20020a63d646000000b0041a6c24d829mr10483905pgj.470.1659289662680;
        Sun, 31 Jul 2022 10:47:42 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:42 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 01/20] dt-bindings: power: rockchip: Document RV1126 power-controller
Date: Sun, 31 Jul 2022 23:17:07 +0530
Message-Id: <20220731174726.72631-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104744_405415_4CE238FE 
X-CRM114-Status: UNSURE (   9.44  )
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

Document dt-bindings for RV1126 power-controller.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Krzysztof ack

 .../devicetree/bindings/power/rockchip,power-controller.yaml    | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
index 3deb0fc8dfd3..602f08a76f2c 100644
--- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
@@ -41,6 +41,7 @@ properties:
       - rockchip,rk3368-power-controller
       - rockchip,rk3399-power-controller
       - rockchip,rk3568-power-controller
+      - rockchip,rv1126-power-controller
 
   "#power-domain-cells":
     const: 1
@@ -119,6 +120,7 @@ $defs:
           "include/dt-bindings/power/rk3368-power.h"
           "include/dt-bindings/power/rk3399-power.h"
           "include/dt-bindings/power/rk3568-power.h"
+          "include/dt-bindings/power/rv1126-power.h"
 
       clocks:
         minItems: 1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
