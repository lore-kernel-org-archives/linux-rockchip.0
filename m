Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58041FF8861
	for <linux-rockchip@archiver.kernel.org>; Sat, 25 Apr 2026 03:10:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EQj43UlYI8wiR85Qx5xsxo9KPZrwWBctITAVDj1spwA=; b=FVx/8zI6y3Xc4I
	l+ue8g+xOftp/nXUczVILh5OmyY9Q+WH+/bExHBb96mI1+FiRs5MGx+WchEA2Swfs6fxH3BSdlEU5
	EeW3jYPfr+q6NxRuX120b+mYpM3GTdLm/DFQztTSp86ihQAUhSsZNu6GcBTBY503nm71zgL2fngCO
	zGbLp20+zaA6Ljw/jnaW5R0YrNWG6o0NhxgeFxPlCeXEX0hz2zGeYfdQDgGApIkWl3pLDlY5ur1vp
	m0rMCwnQr0JtAAgZIN44Vi7Ujl16kcA2mN8QvZfuV9Y+DyWKcMUL61rDtQ4OBXTn4Nbe+wIGQyytT
	+hhjQjGGBqx49V1KS9EQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGTPV-0000000E1et-1yKS;
	Sat, 25 Apr 2026 03:10:25 +0000
Received: from mail-dy1-x1362.google.com ([2607:f8b0:4864:20::1362])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wGTPQ-0000000E1bK-2sAx
	for linux-rockchip@lists.infradead.org;
	Sat, 25 Apr 2026 03:10:22 +0000
Received: by mail-dy1-x1362.google.com with SMTP id 5a478bee46e88-2d96243c91fso13406651eec.1
        for <linux-rockchip@lists.infradead.org>; Fri, 24 Apr 2026 20:10:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1777086620; x=1777691420; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hzwyg+Q8PpdccnVWRF49NDrMOdX2e/qspSUaU1qJfGA=;
        b=izXD3xNkioLXJ4dyy3bF2LhcmaWWO2diS56OL1w34TtapvKVHshpIV0k8vLSrGxPKk
         rirWGscdEInuEj57AUNVyU4E19Arq3+OttcwSqsanblWqJM6ti3E6JVlFb131/AKgqQA
         VLox0GwCCuRYbUoc9Kj4q8CK3+cbUu1tR90jwHIxKi7u6sU+AsAA0/nIq4ekhAVuZ+XR
         XBDz2g/F5hDMdHf59YpwQndK4Hit1H8TE0lv+wqKIKZMUfIeYNFakHcTOsGoKN45YtCJ
         Cj2uEy9gFosBljaAXkZxDDHqSHInKFZGAv1+kP4kyJxDJdRdy6Uv1CwlLy4CtCntuZjh
         1ZdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777086620; x=1777691420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hzwyg+Q8PpdccnVWRF49NDrMOdX2e/qspSUaU1qJfGA=;
        b=Y6e2oLjd2LkhP/0jYcupBgCV4B4+JuHxt1TxiLTTghV4WcwgqirGnphGP51TUwL4hy
         mH0mPDS5Y5cpld23voQA1q823tpLxdeAwIwmYxZ12/hqX86X++A/2E8mRX76TYG2y7Wm
         BY5d0a+/sEgqFLsou4DNyrObsVf569rzmBJypUCGXmK+iYewa+KJhHJsK2lFn7isE/zb
         HjHZZD0b31Nf/r7CIdVgWwRJ92z4swDngjm07KR6EebJeuHYzQSJejEjwJYw/92ZTCO+
         YgLShkgjyQFNRXqQ+UfAIcx4QXycLMl1o/+4GI93GjZs+9d5y036xeHazV275XXgSDRR
         19Cg==
X-Forwarded-Encrypted: i=1; AFNElJ87yWoW2eR5W1yHGmlB56h8Xl+HI5FIjUd7FQKZdQntl7wDBGA9s1VbQPYQHKNczIzOWTBhneQTsuHOzBmkfg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzKRWK3xg+fJEat271Xj0krH0VyL4uYf28ysy73nVu9XGbRZg36
	naVn8ft2pOhuS+vSLveXMIoWY+/+Jk4LBMyc78xGpMfAdf/bdzYCMP1+p8sQYFHpCuLEWynNgnZ
	5PqytVaXnN4rHA7hggTq7BmEz1S58MKMGSg7Y
X-Gm-Gg: AeBDievC+j+AbtLz/0hfKbQCPVQ8iC1+ERd6x4pvfRlPpaNp1FaA3v1WL23YFbnJo63
	i0i1Aam+NZFUcpexavhqvsj/eHjQThom4+6E7vwKnhkyhzM+9/f2cy9w+5LFlc0EEZn8I/no68M
	wSo3EM4HhqxYlxM+tGpLrnlMGAEkku2zXDLaM02kTBdlhicHcriz6GZiEQQuQCfgLcayKRkCXDp
	ctcD8H36etcyKJ5yT+j0t8vgfDNs6it4djncCSjLNygYgWGOWXv7+eTYvhLcM6VHi1GsB/2oMiy
	5qFOVV2OF8pbhZrD8fBBePW3WEs4zo+lpfin/ma5MM3Rqf7QuuKy9h0dqy2fIDewP57Q2EMpvgw
	6DRFyqQcCwa5jv8D/HgcPX+VRuJksRf2W2jIKUhTlaIQ99DpDffEr/1U=
X-Received: by 2002:a05:7301:3808:b0:2d8:7302:d21 with SMTP id 5a478bee46e88-2e479724538mr19046348eec.16.1777086619649;
        Fri, 24 Apr 2026 20:10:19 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 5a478bee46e88-2e53a3ae691sm1728646eec.11.2026.04.24.20.10.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 20:10:19 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Alexey Charkov <alchark@gmail.com>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	Dennis Gilmore <dennis@ausil.us>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v8 2/6] dt-bindings: display: bridge: simple: document the Lontium LT8711UXD DP-to-HDMI bridge
Date: Fri, 24 Apr 2026 22:10:07 -0500
Message-ID: <20260425031011.2529364-3-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260425031011.2529364-1-dennis@ausil.us>
References: <20260425031011.2529364-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260424_201020_723237_29215AA6 
X-CRM114-Status: UNSURE (   7.27  )
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

The Lontium LT8711UXD is a high performance two lane Type-C/DP1.4
to HDMI2.0 converter, designed to connect a USB Type-C source or
a DP1.4 source to an HDMI2.0 sink.

Signed-off-by: Dennis Gilmore <dennis@ausil.us>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/display/bridge/simple-bridge.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index e6808419f625..752c736c8f85 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -30,6 +30,7 @@ properties:
           - algoltek,ag6311
           - asl-tek,cs5263
           - dumb-vga-dac
+          - lontium,lt8711uxd
           - parade,ps185hdm
           - radxa,ra620
           - realtek,rtd2171
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
