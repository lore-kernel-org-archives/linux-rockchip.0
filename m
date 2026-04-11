Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC682F45A1D
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Apr 2026 02:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rkZpDJjSuKENtdvyFxoEWNvi+fzCPvVp/p0BM4zrZgI=; b=JIqfYfZlo3gzj/
	+ptiRVRLJa+zuQuCnP0EX9QX2G271de9k1nSTaGmTepnw39AOWhB/G1zPYki16AUgsey3o34RBjig
	/ojhEWOnC8ofnVyzfvy870htEGtxTZf9eS6ttlghXjpyne0I/T1taTvPUDL3haMQpSsOli/+0dFlM
	Fd4RB9MLtvd2fHnrE/qAO5HK5xGXNsoOUHQnH5gSdW2hJhA7xqbOhmtD6hAmCJOSSgQ1XRNKz2rH3
	P0VX2veb6VQa9qT68Fl5Qhm9wazI58HaNA6xJyULoe2ptTQWc1SzyUg8pIcykaFy7Rd/uOK8qn5c6
	MYLVWd24Ef9qzZyDHlJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBOO4-0000000D44C-2nA0;
	Sat, 11 Apr 2026 02:47:56 +0000
Received: from mail-ot1-x362.google.com ([2607:f8b0:4864:20::362])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBONx-0000000D3zJ-48Va
	for linux-rockchip@lists.infradead.org;
	Sat, 11 Apr 2026 02:47:51 +0000
Received: by mail-ot1-x362.google.com with SMTP id 46e09a7af769-7dbba5076c8so1348854a34.0
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2026 19:47:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1775875669; x=1776480469; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=CBsv1gt0WJMdkn1abjV9g4CqWW/H8MjMEl+UTMSPcnIl40WOf+e/EwuxRlsnADgB5k
         /8OubMiobTfYnsyPlJBineNy7rPtugTv/atcPv+wIcSE/h+og3j5D8hl0/v3Z286Pryt
         7lChs2R/y7g6L/3scI/ekD3gdX9hT2BvqBsQOkUN5yJ6NZlPPiLS7yutBskrqSWONLKd
         NjgDkxBnhtIx+F0HPX5J/9WtJeG9q4hF1z/olWKyuhuuhaQJOXrM5N/gxyygYagJ7Tvz
         i1rxVASatJdBChrGj/XWkb1XAQA9pBxm5i+cjFxmJY+CBVi9IG0TZld9wc0pBg+Ks0D8
         Fx2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775875669; x=1776480469;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8HDblj7fRKJtovg4Bo+ljGQF5b9QTgQki2w/2Xqdco=;
        b=BxSVrteBg1n3vUibe0hAhCzqthPm5TtXoBrU6pTpPLpVlcdvFzsF50GV1VLwIYML04
         cmV0WmParmiB4IiECVJyMD4m5eC0LNDtTGS9LcYp7tzC89y1Ng02bMs/FHHXbaW96CWe
         zRLQxEjHuf6/QGeNtCT6kwI0u8mmaGNRU0bR+nuuv3aaMKCOFfzKDC4UZumeBm7+ajQW
         wZHwUM+0onEomaf0n/+Iuq8z5+PT4nupJ7FEzMCRd3WJHwFek/4YFnJBEmpkRXiKqCCq
         NKIO365rJPpcuAVldxElWOw+TOB+u0umiUlWeP0c/YT7vPu4Cja1PbaekciZBzq/ZMUK
         0kGg==
X-Forwarded-Encrypted: i=1; AJvYcCUiBPVxayj61mdHtQWG9Jnhh8zC0pHNKfwdkX6H/1tDrUOfd/F+i9MEBuyZL+O8UgrtzBOxlGTk3+hlI2PwvA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwkTDU9s8vHY/oZYkf1Tzj/bzNjd+gn2lxCdh4ZzCN6aU/A3XDA
	STQsAKc9xALNU4xExhJ6z6fIiq+//xgCoPfYvXqjrv1aqSGljW4RNkkxFN+lcDgwXWHft6Sb5ST
	EAvWqYhygtCEkJMMecka7YNrTg0RgH1RhsxaT
X-Gm-Gg: AeBDietoiXY5/RetB1863++PwOoMVMZxsxq3XH9kUr2PIiapcrR3/dH2+X+1dsuJ11d
	HVdZKaxny2th919UqVKqztGFy20NEQMFbHEVutQSqV1qTEkaM/5OhnSHCEsAmOwPzD8gCof2m0u
	Wolh58Ix49Kjqi27gdJyzMFSqEGQsO6uxkzHXV3WSM2vlQTjCVRbr98yIXiQLYM1gWs3V5grQSb
	PVG6IcViNtIRSOHPG54AYIGunBWwQyRQiW8rbePpSigb8i15uXOo95y+8kjxXbv5/03oEmoW11c
	EzgE5xvBBiPzE23m3wXlQeRO08EtkOkK0L0U/6K9iQkN3mdhrT55G8fdWhRp4I7cj2WSjjwajTg
	uYgJbWBYgJmC2MrkCFHHCV3rJiYTWb5Wm8r4YFj2Vw0d1
X-Received: by 2002:a05:6870:75c5:b0:41c:4423:5f0 with SMTP id 586e51a60fabf-423e0e8bd76mr3635022fac.14.1775875668802;
        Fri, 10 Apr 2026 19:47:48 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 586e51a60fabf-423ddd32ab3sm599086fac.16.2026.04.10.19.47.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2026 19:47:48 -0700 (PDT)
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
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
Date: Fri, 10 Apr 2026 21:47:41 -0500
Message-ID: <20260411024743.195385-2-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260411024743.195385-1-dennis@ausil.us>
References: <20260411024743.195385-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_194750_095605_71CEA025 
X-CRM114-Status: UNSURE (   7.57  )
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
