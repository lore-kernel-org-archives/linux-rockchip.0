Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 393DFC54EE9
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Sep 2022 16:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0RqHeYswOoKxCfV8hkVggXJ34WN0SfdlEw+J7Qps3g=; b=EDsjw2dwbAU4r3
	Fg1vXy3RsuXA22AR0Z6+sDh8CvFM3JBeHPls1edLe2hZ7QFWkLm9ACWiNyvrdl8dobUtP6grOnp4i
	U6JlPL11ySpx96WzIU5qe65antzsxV8z0MBPCVGElXttJ/zFFQjjSrVrkmipaMPw5pxT6Lv2+5iMp
	4QlSG2QUhZvhvMvX5bVBaPxFHQzuJ6bqPVO7hJOfzkAWXsvgqHNXwtX0xRQ8uszkoJubRG9aOINKF
	Da8jgkpNeAFz+TDlEdiPxDV8bmJWktXl6TWMUKwMf94bIobHXp1Bw6tW0zdTSzoMcMGES9sMRV/gH
	LpynU/mEDo3IISvSrtvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxXA-007ZcQ-R4; Wed, 07 Sep 2022 16:04:12 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVxVu-007Yp6-Je
	for linux-rockchip@lists.infradead.org; Wed, 07 Sep 2022 16:02:56 +0000
Received: by mail-pl1-x636.google.com with SMTP id iw17so8397034plb.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Sep 2022 09:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=DM269c0G1KfiTl5871k3NtiG3KLHFZaYqcPaiH2FJYQ=;
        b=tsCy0bfnsgMGnEYSU0bAxu3s+9UmIvfkWJL6ml9wCL2uMRxLUOOwBKkOLdRzvzhvtG
         Qi0oVXk5eRuhhcG1gSlPBflH6OoxyruvWyng1nMoC1f+cN78JHwqYXU0LwYxr9Zpokap
         4pRTADIK8X49lY2uP2U6Zv0KfygtZhXKzYZgUU2YdNUkIm5n4/VUmxpK1iJeDY1QSTfJ
         kE8reL76A1urMQmShqoy6zghI4QV8nWLZv2qk90LIZxQBH1UWRWM1IZ0Q/JGN5I6AGDY
         tDXZqyBbQ2G1RHZEsTEt1iBWaPT39vOVIj4mBcAkmjFMT0aGqCGHhTYaUdsmSX9oitmW
         EOaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=DM269c0G1KfiTl5871k3NtiG3KLHFZaYqcPaiH2FJYQ=;
        b=nEPZFSQXiek8yVVZvJZoG7uJ0kecAbSS+5W7FPtqLu84p7wbc4CiANPRgMaP0iqbac
         gCANM/dqmysiVjyXVq7fu7hpCl7N4ex7ob3A78BjRhxgITxz2zbsXi6OswkERcWdF3Sc
         8t0BEM/bRjMUI2cwKFeRYLgz37H3hTSDmnB2nOYlvrqIxI7wukTg0LqbpLqlD9QJ4s6V
         oqfhOEYp6yCUAcWI8yzh7ud50NvwQbGHYEeEdkJpFSgzN5KOkb7SfhulWvbWAoEaSejT
         WzU7MrW9GYN6T+ISwWCLhjNbtfe/9RsUDyZmF9RKZ9zNMablUpipwZHQA1fc1+eFWH7H
         +2Fw==
X-Gm-Message-State: ACgBeo37laNL2ZN4g7E+94W1ypd70OHrbNnzpG9deoN+YS2Y1+jhz+Yy
	UPzZsTOiBU5DfvR3Tiq5oaOZ6g==
X-Google-Smtp-Source: AA6agR7dj2KWtbEKj+YDviIX1M4kvbtC3UNmkNx7/ZhW16lJu9UqVXnoqROU+O4taP3RZuyNJAt9pA==
X-Received: by 2002:a17:902:a502:b0:172:5f2a:9e35 with SMTP id s2-20020a170902a50200b001725f2a9e35mr4280672plq.79.1662566574247;
        Wed, 07 Sep 2022 09:02:54 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.184])
        by smtp.gmail.com with ESMTPSA id x13-20020a17090a1f8d00b001f510175984sm14919719pja.41.2022.09.07.09.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 09:02:53 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 06/13] dt-bindings: soc: rockchip: Document RV1126 grf
Date: Wed,  7 Sep 2022 21:32:00 +0530
Message-Id: <20220907160207.3845791-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220907160207.3845791-1-jagan@edgeble.ai>
References: <20220907160207.3845791-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220907_090254_676629_6F66FAC1 
X-CRM114-Status: UNSURE (   9.54  )
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

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v4:
- rebase on -next
Changes for v3:
- none
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 97301c470173..3e8d609fef09 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -48,6 +48,7 @@ properties:
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
