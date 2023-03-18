Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4885DC7618E
	for <linux-rockchip@archiver.kernel.org>; Sat, 18 Mar 2023 08:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MpqNPlKCwCSxGyURurbXxvykSx5rxGY4hmp/iOqjMfc=; b=ChmT79R3264++/
	Up+wh6jhV0hSHn5lYXvc/LXfGkti4hTYhd05TJDoPbxqjud+m7hDKvXlqUJSrt1o8wNyCY+vx/3on
	ce3WFtdFHYlh+TYmxByu+AmMhPmdidU/X5/QMwvnHru44qMML07XE4S3kKS9GHe4bXA8dZSIvkQdu
	CGeYBAfgyNFwQXMpnq/WT0KH+0FVG2GmPzwtuqa8m7qV8dzzS55Fh4UtXxGit1dPzu/MVmFJcdBmb
	DoocVM8sSu/bMG3scYMwpYpugYciWOkiqoWLkMrKFZn/AwKXCyHGAWT0n2LjO3b9d30Hc2JNgqZmy
	T+LA1Oz/p7r+DaY5/Sgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS4e-004S57-1p;
	Sat, 18 Mar 2023 08:38:00 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pdS4W-004S1j-2r;
	Sat, 18 Mar 2023 08:37:54 +0000
Received: by mail-io1-xd33.google.com with SMTP id p17so1582896ioj.10;
        Sat, 18 Mar 2023 01:37:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679128672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/CUtzOx/VBQ65j6QlMGz++TFyPeFXZKVfsxJDvvHEMQ=;
        b=i0CifFNBS5TxrTOLSglL+vQ02NWG+AU7/XIfBYUXJ3buFVDtp8pgxvrqYV0jA77ZT/
         GdQXs67r74+33QxQPumVaCEg+WNt9tUOB/2Zyw8xg3wuUk5wagwYlqG63gnlMYIqrfSe
         2QXDO0VO5pO2oSuB4jCrjeQgH+4ty96Cbx2ztP/3IfHQrbB05iYDUB0JGyOdVYn1Yusd
         k13VRaMW8ud1by2fcvNPUPyTsnRjWZuVyrkZIYAe9GRm+CqQColAKEUIvYEalgKCPlcv
         sK+dvAlTZOg6K3ANBiYkSQ/4IhqHXoW0tGIPYr+5LpTuL615nqFJwb7AzTJ0cb7gnu35
         IHIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679128672;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/CUtzOx/VBQ65j6QlMGz++TFyPeFXZKVfsxJDvvHEMQ=;
        b=nEC1JhahZg2GxOfmBsZt7wmasdppWnyMPkfNYQGdjGKe4VYVgik1llmNoRKsTvMFKz
         cLFr0ucP+9OfvnyLBvBicEiyyWrTOOGSTmjfAtyF1cW7d6AHAe9QK7H+9imuWzmCdXQZ
         SNuFJxZU0h4JO3RKOCAMuKDFFAacpzoTQ3vP+K9XSW5lOBhrqFSKPfX0IhR3hnIeAGRs
         zqDBlT0x6SEeZxHnlZFpGj6B4MIDE8xYBotE3/b234azFLXM0/+o1Mj5I08XtJq5O0dc
         9LDEFM3xdSFOtXl1btm7mRSTeoD3kvlEy+ILNJJdsDNrsttgM9yfwul87GStwMy/PKEg
         8+9Q==
X-Gm-Message-State: AO0yUKVukKbsLXV3Dbp4Om+doe4A3LCadz6YLnJ3Lx+JsdP4HjKWWK69
	irY5gzL79JN+aFqlUpoLjAw=
X-Google-Smtp-Source: AK7set/o4k5rbkIH2PJDc7znIIlGm+BwsedMSah7q0ths7ZKm9QTN8mKEya/a2eKqpSX6sqQ+xOEuw==
X-Received: by 2002:a5d:9c52:0:b0:74c:8b56:42bb with SMTP id 18-20020a5d9c52000000b0074c8b5642bbmr835123iof.8.1679128671773;
        Sat, 18 Mar 2023 01:37:51 -0700 (PDT)
Received: from localhost.localdomain (tunnel785484-pt.tunnel.tserv9.chi1.ipv6.he.net. [2001:470:1f10:aed::2])
        by smtp.googlemail.com with ESMTPSA id h8-20020a6b7a08000000b00746041ecbf9sm1174834iom.39.2023.03.18.01.37.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 01:37:51 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Peter Geis <pgwipeout@gmail.com>,
	Andy Yan <andyshrk@163.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Andrew Powers-Holmes <aholmes@omnom.net>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Vasily Khoruzhick <anarsoul@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/5] dt-bindings: Add doc for FriendlyARM NanoPi R5C
Date: Sat, 18 Mar 2023 16:37:42 +0800
Message-Id: <20230318083745.6181-3-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20230318083745.6181-1-cnsztl@gmail.com>
References: <20230318083745.6181-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230318_013752_924604_EA071172 
X-CRM114-Status: GOOD (  10.92  )
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

Add devicetree binding documentation for the FriendlyARM NanoPi R5C.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5474cb4a13d1..6f4270f2bd9e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -201,9 +201,11 @@ properties:
               - friendlyarm,nanopi-r4s-enterprise
           - const: rockchip,rk3399
 
-      - description: FriendlyElec NanoPi R5S board
+      - description: FriendlyElec NanoPi R5 series boards
         items:
-          - const: friendlyarm,nanopi-r5s
+          - enum:
+              - friendlyarm,nanopi-r5c
+              - friendlyarm,nanopi-r5s
           - const: rockchip,rk3568
 
       - description: GeekBuying GeekBox
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
