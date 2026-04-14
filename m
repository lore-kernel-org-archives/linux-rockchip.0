Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC885F9D0FB
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Apr 2026 21:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBDLVZMsxScxnGQ6agN/YwYdbU0ln+EeC8JfzRkjEOQ=; b=aeF3zIFr3KTfag
	YnV6NsVXYQmN9FpcFxrEg5AE69QyKgQsEyuKsnBeEhaGBbiiLflKJPYAnRQ/R3zRPrtD072sCsyPz
	qkm0r4HItk2mmzfjV1xn1DCWbHoTVzSf39QUrKnoCtCMwXdMa2HzQH4C/z8IQNjXJ1NVhdpSVAuug
	OeXUAojNR1XxcdHFiRqrVKKtAMQeF6C9sY1bOaTCTSZ0bUTNFTpAs39yhlbAzW44Cx/fKNK+7wMDp
	VPEeaOEkQWJM/03hSVVFe+cWu8dUT1O9MDS6sDA8IFprJuuhSq1iN56PZbV0GQ4cZVeltW0qoVO70
	3KPTr9VAcuimFgpCmtMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wClVS-00000000Fcy-0JOD;
	Tue, 14 Apr 2026 21:41:14 +0000
Received: from mail-vs1-xe64.google.com ([2607:f8b0:4864:20::e64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wClVO-00000000FaN-3wUn
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Apr 2026 21:41:12 +0000
Received: by mail-vs1-xe64.google.com with SMTP id ada2fe7eead31-60fa13bde2dso1657587137.3
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Apr 2026 14:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1776202870; x=1776807670; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qyy2EUSFHuUvP8vn408rgcFPQdBTOKcJ9K4PyZHCKk0=;
        b=iCRN/+3vOpt94JJB7griFob7oJbc+UTNnr5EGLedoGECr1+85Bwew4y2iB1WBV3lL5
         mENs2O1fRWbWy/dgixfdImzxcU1RNJUDs6cHK43RJwbgBMRAsKiLKNd7/Wxh4A0tpUnp
         6XG5kkWcDy42d9S1hLx1KPhDY9CeY6M3MZESm9AQfQ8HkJbEKHqYIa/0fJF/fsho6Qk7
         WyytfVt1O5L+w4HeUiZYKTxD9U9HEgKl/pOdM63ygII+u4/XVQZxApl9tRZHgKBYjpY+
         wM2X874xX1cGW9TsX8+GO/U/uAsNNOX8RKYHOam8bSbN3f/bAK8hwf6u85LiVGfqxTmG
         ffew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776202870; x=1776807670;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qyy2EUSFHuUvP8vn408rgcFPQdBTOKcJ9K4PyZHCKk0=;
        b=RXN7BDvkO9ez9UM3mm+dK8Lgngtb8ewko0kg9pBrcvA/oUPLW5rqVRR63WbQTxJd/5
         1WMC3bzld4E4lgV8tSJAI6bEvQOGn+Yk+BeidXw6uiZxK0swI2ANAHz7IPeqGFwigGWK
         WOfM+g7JHXCy3hyGBb8xOwkwZESFcyRXrcBiDTgOZxDPn61DcsgVfpewg7UK9kO98DEJ
         nGxJWVXnn/42dLaDJDbpDrktYfHkpIlzG9O1VuNwrLCdhCoKf59ZT7KcnwCaOYVXWO1m
         z4hkNHMpJXYYUD0xQfitAdZYpTNerdEtRB9fsOtsW5Q51MryqJZlWZr4GHYF91TDCWWR
         MAQA==
X-Forwarded-Encrypted: i=1; AFNElJ8/tr9ZbHF9R6PPQx95Td9Zh9V5LBkRtaVsHXlDLq7yNNrrgi7X5y0X8gusDEUnx2o0W95PcC7qSWKv4/qNlA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxjBr/ralan6ZAJuy0HRxzbekog5p2OYDsDWlqYdoUJbLigJJ+3
	rbNth4LiF//W0qkJv7EnmC5BA9dYsCAcrpBC+wa6IokOn9f+g/IxKh4t3EsTTAOIcevnUOayhAJ
	6ZpAtO66qyhYIQ76lPpZM4KCuC0ydQYUI9p3j
X-Gm-Gg: AeBDieuikRPE6xe99UNpgrMUB3UImzD0qa4r8GeIjXi6TPT9+KzZTPR9SYnP+haXQae
	xystXIYxhOpFmYcC4Ii+Q+M+QlwfFqXWTEnaWyRxIfO0HogLaHGszXlY3AtBEgMrd4fCX5LnFrf
	WumT1KVpesT6z0T8jp2TXwQPdHmqBtpMgKKMFpxkTnK0NUzfnrp4Ul/LCDobAwP7Nx4SIJKgwNv
	lQxSuedTF/4Jrsj7s0HLjABDYml9uYmKMOa0N7jzGxyxJSDAbglu5ubSXvsOD7tk89k0xehYAk6
	SHvKbedwsbgosisnaaeLQkyRYEgC36OJ+yKxL8JRZfGw4LPHE7FT6BBU2GuwiSqPv5nDChrUJcY
	Uhtd1S3gDVr+gfXUYcnMal6/B94wexWpLNigG5W9C6+CfAel+8mpDAtM=
X-Received: by 2002:a05:6102:c0c:b0:608:9c0:4908 with SMTP id ada2fe7eead31-60a01271472mr9236374137.32.1776202869938;
        Tue, 14 Apr 2026 14:41:09 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id a1e0cc1a2514c-95691131afesm346899241.1.2026.04.14.14.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2026 14:41:09 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: 
Cc: Alexey Charkov <alchark@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Hsun Lai <i@chainsx.cn>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	John Clark <inindev@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Robert Foss <rfoss@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v7 1/6] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Tue, 14 Apr 2026 16:40:52 -0500
Message-ID: <20260414214104.1363987-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260414214104.1363987-1-dennis@ausil.us>
References: <20260414214104.1363987-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_144110_980432_816730ED 
X-CRM114-Status: UNSURE (   7.62  )
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

Add compatible string for the Orange Pi 5 Pro.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..3c6b83a84463 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1320,6 +1320,7 @@ properties:
         items:
           - enum:
               - xunlong,orangepi-5
+              - xunlong,orangepi-5-pro
               - xunlong,orangepi-5b
           - const: rockchip,rk3588s
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
