Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86142F513E9
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 02:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkZpDJjSuKENtdvyFxoEWNvi+fzCPvVp/p0BM4zrZgI=; b=TNoOsysN0f/uIX
	EfvCyusiUAO75WXH2FN+lTPDmvwAhvpzm7D29/A9g6rWAujBjXnzTyRiq0vXJxUwtCfOlSvtcFbpI
	IxKRO1VZh9tLlr9go2iY/5M28NZpjiYhGvgKc6i6O7YddHyKo2sKEevmtdPaleUgN0AYlqYf0y4LU
	4y3WEpgJpMEzfxYoQE9Uq7BHP9/YMtDA5eHV1QW1Oa4jPmTmLalDgK8l/zlve1lxifZx30J1YVEYV
	ZN5Eslq/uCeAjLnrqXXU1tv9A7u6BqI8OPy+dd8QOlQ9mwQPym3Cp5ZD94tsqCabJGcqL5ZW0YR7U
	1Avap6DsLVQx4i44fHBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyLDO-00000002txx-0pqd;
	Fri, 06 Mar 2026 02:46:58 +0000
Received: from mail-qv1-xf61.google.com ([2607:f8b0:4864:20::f61])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyLD8-00000002trL-29dV
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 02:46:47 +0000
Received: by mail-qv1-xf61.google.com with SMTP id 6a1803df08f44-89a1347051aso57492896d6.2
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Mar 2026 18:46:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1772765201; x=1773370001; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=WTIQODUpmgOte/lnFGktE+FW7IkW/E4TyW6950AeQ5W0UD1lxOyDc+NsSpyHZ1vWge
         SJTYUNqw36Fsvqs+7WkSFrm/2hyIBQK2TSVKPXr43zPRBHFV1WpAGSLcz3jo+yNYqj66
         ulGGrtmRtTdHWixyifSro5JqlZf9hBRjoxN/HBpvVlZHvNd3KKxR1r/kJgXAWLra1Vt1
         Jyvd/aTWbbDrifHTFMEY4kPatrCjGqviq1IjqApGes1jqstkUekdLaRN317lcwlSE5W+
         TsiZZolO4uAORjf/vUFIta7GQ0aPTbg+/sI4DdqqBYg/Oi/71EI8Hm80wxmlYIj7d+l1
         m1yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772765201; x=1773370001;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=jEgU4FYRLkb+0EInq5oCn4cCyk16sdUFLX8Ym1S8oIO8YI46aHjvLQUcOgtZuz4jZE
         NKlK2azNjGso0U3nnnCsMAtABo8DA3PfX2ihc+ejciI7PV1ukspGTNrAN2DZdspINOQa
         wqLyK1GQGGTImvtoFM9X9pJyA+J4Ol/d5f7/9H6huzkUoBP+8V2N9N13RzJ1ZNEedizm
         ylS1BqAK078/+t/s/SX9md/BZwmNesdkUIMDVtw+GMsscX+pXkwRj+AD7+QC+puoFA3S
         FYFvLx8Sxqbvyv2+HGOESzMVrnAX75ELztuUsr90IDK5rEozlc6WpmIxGGM8OM53juKv
         9sfw==
X-Forwarded-Encrypted: i=1; AJvYcCWiUie9qglzCtYknM4dFKetqfWMDAD5WmwDm6q6jeWPaKE8uj6tPgdAhY6KFsLfs4VkOBLgwPsyoY0xUZqTOg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyv8GB3buV72OJxa7CDiPKW9LZIIMaurJGQRFdlNdipQIwk5Vqz
	+KyUm/y+5SM6MDaXCtDnv5n2QORQukBn9UY7Ml5k36tjrXHVB0BuggnmUJIpYOIHf/sX7ecIxsJ
	KKNgY3iXQfBlJU2WVVs+aB9A6uxMIlTr4gZOB
X-Gm-Gg: ATEYQzwuk/qGbta029HUhdYSyCDGHy7jW28Oi/GdeTC+KVS/LG2R2BEegKEKx2klNe5
	DtQmEqDRZ/g9VTUZ9sEHGWpkehO18T8SYDQquOFltscijNMQQ/3xdFf2HJBqkt0NETAIOSH6YwV
	+rkQY9IHdAWC78Q4ngUaB/gpFiY0MIcxW8leTEOdXdbxPIGOHw/SrNp4aVCC18SmCdgwZKCBtWH
	WYZs2WsoS+LZ1IvcXu5c15yV/jfFvyXAUB/fULnGlXgFSpZCZtKfm9x9/QIJWGxsvvNZ+J18Oak
	8tBq0hmZAgo6bRFyY56YDbZVZFcub0o9Ty1jq2faJKXNZDXJ4dGyyllq8UtrMQP8CRFYL8ybx5P
	u8KGFuVkzEZAdkinJhJbJmGh44p5jSOHAB7mfHZh//pFP
X-Received: by 2002:ad4:5d6c:0:b0:899:f725:419b with SMTP id 6a1803df08f44-89a30a7dba7mr6939816d6.27.1772765201104;
        Thu, 05 Mar 2026 18:46:41 -0800 (PST)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 6a1803df08f44-89a31412832sm168366d6.11.2026.03.05.18.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2026 18:46:41 -0800 (PST)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Thu,  5 Mar 2026 20:46:32 -0600
Message-ID: <20260306024634.239614-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260306024634.239614-1-dennis@ausil.us>
References: <20260306024634.239614-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_184642_569212_C060F24F 
X-CRM114-Status: UNSURE (   7.45  )
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

From: Dennis Gilmore <dennis@ausil.us>

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
