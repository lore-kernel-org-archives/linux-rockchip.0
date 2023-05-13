Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D16A5C77B7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 13:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aEd4EVCofMH80oMSXLjDd74kc+f/0835beQmcjSoh18=; b=1L4z3kuzyuVGwQ
	ncTD3MxRRzrpLwuhryJxSmmvsDJMK6A6+6eT9i7eTVk6EbZwAPwFIN8klKb2qpKSMsPYNf+59DLHt
	NowGWLr5ln8mDGQL0UyEWLxxbxoFDxadjgs7q+oGqiy6k05RgtjapifIYiPvNHtO3erILkd1jibCW
	KLPuhJmVaj+flfQBQCFfl8Gsy7vsBZQsxJW9l6F7SaAWw5x/Hy05k+ielVzrB8MbwobTKEJuxbBBW
	bjuMT96YrvDowBWvXy9KZoPQoJOhQanNCsDp84N2bLTJ/WgS6+iCnmGD/+dhJZd5L3TFixQVgRZc1
	huUbZBRgqab3b5mRGS7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxpgR-00FBYe-0l;
	Sat, 13 May 2023 13:53:15 +0000
Received: from mail-io1-xd2f.google.com ([2607:f8b0:4864:20::d2f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxpgO-00FBXW-1X;
	Sat, 13 May 2023 13:53:13 +0000
Received: by mail-io1-xd2f.google.com with SMTP id ca18e2360f4ac-76c63a98f88so127080639f.2;
        Sat, 13 May 2023 06:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683985991; x=1686577991;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TN0zJMvkxx65sSIuo+8IlKyGnKuvioQ0EbGfwquxBic=;
        b=SsjnEmWQqwS6Wk9ypv8YK+Mst01iRvVmSW5rwhB/PkiWCs+kYXnizKB0i/YcbBOqSf
         iY1MB8U0uBcrpgFGkzNwJZ/skqyyGm1MYjon9UZw1mn+DzPAyR2A5xftJfkHAiAN8SD4
         9kFmaDLAjIsNe/pGll6dbo7YN2lIoEeUdZ7ndBSLKjK2UU4FpRU/0ejQmj7Doz6UNI9W
         ZRV8EiXJcePg9qvTp2IL71pnMOfQ4EZYJHMby2jwl5DTIe9BMqSgnZ6zVQmGwNB3CjtC
         FPX6TMApt1TDGRM5tm7T46K+GW1nvHfdXV7uFwTC+SkncxjdylYf+Jrzol6T/QFPmx3G
         ja8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683985991; x=1686577991;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TN0zJMvkxx65sSIuo+8IlKyGnKuvioQ0EbGfwquxBic=;
        b=PmqxzizTDFZvUvpvJxE7YeKMhsBDG+AZtuautOX2/PlEsnulQwW+z8Tnrb7g2IjPy9
         13FQGmfzA1cbWCF3GV6n/JYHJQkshAky/5NEl5wy/lpyxJyM1gFj9tXCaylcdbp5h6GY
         1dlJZ1Kp4kgQe2wrCSDOG0ODOq6u7DrjZNZsEBXbMdvRdmBm3HYxtx6A/xbz6PJLR3bD
         hsjpOorUfr2T6nyO/5/OAMoHFmztNBpW+sZDcrfL3X8/AYXyQNjAWtEn/dOz+fnhFD4P
         2CxRpAvhLvgbBcFsCAH9R/Z2yR+guF3D8j7N3x0dOCHlk/htzkbH67ylbm8gfX2BU5IM
         bgNw==
X-Gm-Message-State: AC+VfDyiEji1EBYjjE/4ZBS3E751XksL4WzXq4bsIJKDj1sdtQxC+R5K
	4uXmMHR2f/a1giRWCzXFP/s=
X-Google-Smtp-Source: ACHHUZ4kpLTbd3Bxz5NK/wOd1+2Bs8dWmEog4eES9bsaCzU0oM6NBPu/QqYogEh90yP4JPbmfwKayQ==
X-Received: by 2002:a92:c9c4:0:b0:335:9220:2ec2 with SMTP id k4-20020a92c9c4000000b0033592202ec2mr10642522ilq.26.1683985990845;
        Sat, 13 May 2023 06:53:10 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id r15-20020a6bd90f000000b0076ca45ebfc4sm1104991ioc.14.2023.05.13.06.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 May 2023 06:53:10 -0700 (PDT)
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
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: add FriendlyARM NanoPi R2C Plus
Date: Sat, 13 May 2023 21:53:06 +0800
Message-Id: <20230513135307.26554-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_065312_521515_C1140CD4 
X-CRM114-Status: UNSURE (   8.84  )
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

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---

changes in v2:
* updated commit title
* collected acked-by tag

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
