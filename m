Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A51B4C678D5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Mar 2023 06:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4d/TLt2swq7LvFv7yDyEBablMqCq+TsmXfhnbOn5x4M=; b=2T4RsXDM3oA1E5
	7c/8Y4YT+m8lR9dcFic2yo5sn7942ncGzYZeczocz56HkdtaIVeRt12NggWYekrInf64WuMsgJCxW
	mtqmec6NePZopupWWuoqFzCmPkodnPTnh+GMvcFFcfBzr6kVVWkWNlxtGK8Bi1SdsNtFRfxPgoWRf
	mk8IrfEmSWgqJzrijSQBWV1YUbllENQ6YVp4TcSxatnA9v1QaLbh2QiaPL7fgRC2E1q4tpBeIStYp
	KhDrfBIbDEiLGowgJSHnM+VbHSLgyapfZ9fAC52hYvP9bJylE1NHyQ+rYY3yDNP0jMRyscPWnfgyd
	OSYxmrSqywUvxRtQzjCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZnMa-003iB3-IF; Wed, 08 Mar 2023 06:33:24 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZnMP-003i8T-Hr; Wed, 08 Mar 2023 06:33:15 +0000
Received: by mail-pj1-x1033.google.com with SMTP id p3-20020a17090ad30300b0023a1cd5065fso1051930pju.0;
        Tue, 07 Mar 2023 22:33:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678257190;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1FYFH0DWf8n5NKIAjbDLfxRaONFbp2UCoSSzl6jRiK4=;
        b=IixCDD2dfl1SCqgVxsnbDoZSVjPW2ejJVIDUdQCGmJo8W1qqOwwnoNh06D/Gvpv8hj
         BnPLrTrOXQDgRWC0rNRKfIz/2X+dE+lSu124HfRLvNzVYJKKai+ufLFy6Q6Smom6Pldc
         c1taUqxC4BHIrbJQOf43NdXJdH0LEScHv0yOP4HK2BgAKzPrZ+lmw2BMdwfj1r29VfOy
         izteR/y/wzFsKxZr53wxwetg3CvE0bl2Lr1I4QzAkSMXqzF+tT99ESIyPp2W4CRjI9wp
         k3ZBumTvQnH1N7d+xTweYdHIxiAMCozPyaeSmSt1nDR/Z9qpVy2rLBA1QL7ZcezLIAOF
         eEDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678257190;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1FYFH0DWf8n5NKIAjbDLfxRaONFbp2UCoSSzl6jRiK4=;
        b=7Li4L516aRb71HFDSsq++IJJzHJc4fmOcq779ZiDB4W6zOB7EpLIa5uD0WM/B/Hpeh
         PSygHdbYeD6PorKbiYPXvcxtbbEvmRZXJHrS2jcH6JvaMAr7S+DntKP6JFNSTOEDFr9d
         7PxZyc5D5uvDoBton8yptaKhSF5jWBybMyRw9Px7eLm+d4WCFh3z4ZNwGnGGvifXdoKj
         7ei7UCvbSZXSPNXsT0HvPqMP6qrei48U7XWsDvimE1G2Pbu1MRLARi0YDtDhYjSt9V4H
         q4FB7+MIUe/Ikop++T+SvitJaJMJLN6pignvAxUAoZIuq6DVrB6qffehmRgdSEIPxlYA
         qtmw==
X-Gm-Message-State: AO0yUKUquwP4glCsslbvKT5n9Sn1L19VvozvrrY614QSyCrg7oQvUUhc
	OPDv+XghCh9sz7J/Cz+KGOU=
X-Google-Smtp-Source: AK7set+kB3ZyvAUuUVwOMapQnB7ISx1ZuDSffBjWmy08Byq7YRrVclCt+MYayRCvfxK5QgZddMySRw==
X-Received: by 2002:a05:6a20:1610:b0:cc:e439:bdad with SMTP id l16-20020a056a20161000b000cce439bdadmr1459282pzj.1.1678257189828;
        Tue, 07 Mar 2023 22:33:09 -0800 (PST)
Received: from anarsoul-xps15.lan ([2604:3d08:7780:e52::398])
        by smtp.gmail.com with ESMTPSA id s19-20020aa78293000000b0061a829d2679sm5783349pfm.37.2023.03.07.22.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Mar 2023 22:33:08 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Tianling Shen <cnsztl@gmail.com>
Cc: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
Date: Tue,  7 Mar 2023 22:32:39 -0800
Message-Id: <20230308063240.107178-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230307_223313_608440_DEA2B228 
X-CRM114-Status: UNSURE (   9.98  )
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

Add devicetree binding documentation for the FriendlyARM NanoPi R5S.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 35f74eda30ae..0813ad22dc76 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -201,6 +201,11 @@ properties:
               - friendlyarm,nanopi-r4s-enterprise
           - const: rockchip,rk3399
 
+      - description: FriendlyElec NanoPi R5S board
+        items:
+          - const: friendlyarm,nanopi-r5s
+          - const: rockchip,rk3568
+
       - description: GeekBuying GeekBox
         items:
           - const: geekbuying,geekbox
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
