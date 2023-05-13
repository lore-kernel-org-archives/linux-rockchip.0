Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA8E6C7EE24
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 06:53:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=60S229tnGhbjKog0ubtxZPQ60PoYjZkSqCSx3hW1wjY=; b=fN7gfsN81SKdSi
	h+uskmLqizCu22BBWXvbgtbyT9aCOKKZ0USDa6REtQZAgOpNWInwGoCfR+8HmC6zQtr943WI1kwnz
	vF3mS4B6zcPIcxMacQWG0uRPNEpfHsAOUfxcB1lktHCsvYToNd4NeJtfVbgedqyrCF4qGtp5Pfrwb
	cx6X/XAJ/xkhVf6LHHsGHR5KCk1OJe8Ecs4vfNyJhf/monU3+e1CaqrdArlrASVSdLH7X5Nw6MXhf
	RWfnLZRmuuDjCoGOLTIQgTvWMEoqxqYuBghL3KKgzl92H63nHk1mhyHFksyjVPeqtJkzNn6biCGWQ
	za3YHqDeTJB69Sf/w5kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxj7s-00DtoR-0m;
	Sat, 13 May 2023 06:53:08 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxj7j-00Dtlq-1y;
	Sat, 13 May 2023 06:53:00 +0000
Received: by mail-io1-xd2c.google.com with SMTP id ca18e2360f4ac-76c791e2d8dso246641139f.3;
        Fri, 12 May 2023 23:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683960773; x=1686552773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jZy59Sb4uWTS03Uzza8m8M1I8qxhAiWpLhVKo7Pl2pc=;
        b=Q7CavTa7jj86mcszJpgDaJKKf143s0m9p4m3X4FjqIRcVL3frnBcqqE9bOzrckKEtb
         W9+Jt+OnYE6gdt1Oi3YsSjnd+iGymukJQYkZfRLeq5mexg3LzJUBxvwDFyxTOdTFYRS6
         y0SNFCPPJW0CZncn6EdA89k0z6LUO1t3TvxwzMx3+lBtc49BZ4CIlfC/Au8KCNvUxlnb
         1qbYMplWm1B0CKRRQxqq0mgBHHF6KKiaEh8vKjXoh6rk1rCz5N0Q6DEJK367W5Nmxk6P
         KzJWE7RtI6vruuAOkL75SqMAE7sZ9yWX9Xe2eSvIaGHaeEH3KyFRZotx4a+iZYDXlBG1
         /zLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683960773; x=1686552773;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jZy59Sb4uWTS03Uzza8m8M1I8qxhAiWpLhVKo7Pl2pc=;
        b=GkT9c5VGNURRSHQm5t0ACdnIxogr5J4e+HPRbnfk5PGZCGj5Qf225l7Xj41w3cBpO6
         sZ3PP5h3L1Ta+MuZNJkbtLQojKQybCwMeggKimoF+ur0PfQpPa76WsQOdDyNySj+y2EN
         sRfcPcEYnPUNgGyi+onCND+eswONJMF2viWjP9K/6tPX31K19WgEdKx8JX6UEiBN9kDA
         pmEbaHPlIp1s1rBu6uZCVLWih02lAulPHd71ryaQwR8Bv965zbY7C+HPjWvnglzSO9K6
         nETVAEM1RuhKCSWEIfMkUS6/MWbj6BdqSwg3/uCCuEUb8LlbJkTHHGPA5pCiij3hKTFj
         Ql4w==
X-Gm-Message-State: AC+VfDyrqddW8KCziAzD49C2r3JODpg9D2irE87d2GqPNMZWJcsrje2R
	2Kmg1Es5GOm7cwcAIUXxQTA=
X-Google-Smtp-Source: ACHHUZ4ovM1vI09mzoHMP+4pWWbhBqn39wcj4WQY3BDIaxw6slO7z0UJx8mLLlmV+u4N0NOLels6Sw==
X-Received: by 2002:a6b:e606:0:b0:76c:8728:23be with SMTP id g6-20020a6be606000000b0076c872823bemr5455957ioh.4.1683960773380;
        Fri, 12 May 2023 23:52:53 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id a11-20020a5d980b000000b007697fe48ca8sm5371396iol.47.2023.05.12.23.52.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 May 2023 23:52:52 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2C Plus
Date: Sat, 13 May 2023 14:52:27 +0800
Message-Id: <20230513065228.25971-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230512_235259_662943_49F90765 
X-CRM114-Status: UNSURE (   9.30  )
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

Add devicetree binding documentation for the NanoPi R2C Plus.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b1d271778179..6f4d966744a5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -189,6 +189,7 @@ properties:
         items:
           - enum:
               - friendlyarm,nanopi-r2c
+              - friendlyarm,nanopi-r2c-plus
               - friendlyarm,nanopi-r2s
           - const: rockchip,rk3328
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
