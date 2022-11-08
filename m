Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 134F2C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 04:14:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3l5gEElIpUiyhPefz+u1vvUcK9NBVd01xBs9U72Upw=; b=F5sDYDOMK6tRTK
	BIYTV1+p0bOqADj3ErdKcllrH7NnodPZ3D1hUNKncRVgi9LgptvPHq9dhSwCoKoGrt25U11PIJ76V
	izBZJPxojUk92orL00xTfNYOEEqe6RzVFZwGrP68oEPiKGjOcDQzjG4IGpkJ64Q4NsV80s2rGZxxE
	b9T07ZJMZQNVGsFJx0gC02K/UHMbYd3ALYEWw/ZuThxuB6Rzn/Rbgf+V8iQq81zGaS9sXpaDv9AFd
	g1L6gM0tj/ko6IR1x8Gl+iH+o0xFAFwUCu9Wz84u7j9DTg5q1GudGuZohN/IfZxGJuDrBVbbQMlxz
	sX3+1QUwE+49DS6N56KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG0T-002aIE-CQ; Tue, 08 Nov 2022 04:14:37 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG0J-002aEx-8n
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 04:14:28 +0000
Received: by mail-pf1-x436.google.com with SMTP id z26so12743685pff.1
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Nov 2022 20:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WggUs9c+nJlbaHOwoUyw7DZEi+csMErKOjBTJLuhk70=;
        b=Wbqhv6rx/8pJzGBEGWt+NVMuhgd9hwDIn9lmujR7SXLyowfQKmjDVy2gTB5jGT7EuZ
         Zc3uYgySTk5DtvF0TVUUdAD1Xle+MLGqUjMbo6GVJH7ahQufmW9xKo2oR7TH8xhetiZC
         74d0EXsKmaGO1JCb1+KrhnwGK22LBgy0rDYNThwd/hob10AmqmK0zqM2AnOIlhnj67t5
         xngP9bGIOl2oN4pPEQoQOJzee3HWVxmoJ0leL8ovYLUBinWh88du4+ZsnKIRA0XqNxoh
         hRt91EVgm80LM8kT7ORVCwa1FrXi4rKYFHWpxVj9mMBHKJ7Rt/UWm5AhnCBGTh/jlkn6
         FnmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WggUs9c+nJlbaHOwoUyw7DZEi+csMErKOjBTJLuhk70=;
        b=B7uBxbv30kPVsE59r/92nIGjVO03v+CV+qGAcO4NW1LFC1/1/0EpD+BTH6djAivwC4
         tiMi475Ow4VXP5xNHIwa0XT7I4CJPFdqM3WPQ99VlJP77ANM7O04MZ+KGwvNZtBnTlGR
         e/vPZak12wu79mPjI2e5zSX6jB9mesxJ649yiqyu0KnsJmlfHeTwdJlMN1E4ya6DoVcc
         3GcVjikLAUoEPm5VYqrQLyUcGOU8tdzY8S7Ly+QPvVPAgM1/hszXI0k52i5fNYZccsKo
         j44pionwdRyA531cHa7f5yWGYUb/qrFlotAotj6SWMVNS1At70h8Mci6q2MGckHPleLc
         8+ow==
X-Gm-Message-State: ACrzQf2XDeA5hY/wTkvoAXJmNIJ/nF1gJmGP1pDIept0ExVjVbRleHgT
	veALhxfb7rnbFvsYFrxZ/c8+Iw==
X-Google-Smtp-Source: AMsMyM7dNxNHQy7mYucy/S/24wFdnyyf7hzLAY4tQqP2mJ8i/FMeWyowgHMPefe3h6lJv4tY+Q3Zsw==
X-Received: by 2002:a62:174a:0:b0:56b:9fc2:4ebd with SMTP id 71-20020a62174a000000b0056b9fc24ebdmr37482673pfx.21.1667880866254;
        Mon, 07 Nov 2022 20:14:26 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.14.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:14:26 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v7 01/10] dt-bindings: arm: rockchip: Add pmu compatible for rv1126
Date: Tue,  8 Nov 2022 09:43:51 +0530
Message-Id: <20221108041400.157052-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_201427_326505_9252B6E9 
X-CRM114-Status: UNSURE (   9.78  )
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

Add PMU compatible string for rockchip rv1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7:
- new patch

 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 8c73bc7f4009..b79c81cd9f0e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -27,6 +27,7 @@ select:
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
           - rockchip,rk3588-pmu
+          - rockchip,rv1126-pmu
 
   required:
     - compatible
@@ -43,6 +44,7 @@ properties:
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
           - rockchip,rk3588-pmu
+          - rockchip,rv1126-pmu
       - const: syscon
       - const: simple-mfd
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
