Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 597FAC5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 06:49:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yC7ZRtLQWgcVwSBlMOxTfMmLoN4awY11WSnBgJwZHQ8=; b=13EGtP6D/pRwqK
	KbbBP8KEWJhcPYVw9CIPUsl510fc0syq0y7Ey3CcBJTtz+Pa3svdBn5zZ3JCS4EHMDAhtJH+ac3Rk
	Hsp8VFzXpW4oT08hgFgH8/8GUcQTZVA3IOEpYqPuMP1liaq2+Fg5Qj/u+aOsyeowhfT5HVjSnafCl
	labglDbCV/+BfuZySlO6PAd/EXZf35AXRRp/jHRy72ngmx+Mvw9hL3Vnz3SRDAx/IWSA16Pku0Bdg
	rrF9X+tZ2U5ff9uxV7utPLf0HMSi6uSqWUtpjh6tlK1vBUdPedXoMgN48rSAGwyoWzAo3uTqEvY2k
	X+kdgCIj/2T9PjmGd36g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFUuy-009tm5-DD; Wed, 11 Jan 2023 06:49:00 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFUuv-009tkw-4t
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 06:48:58 +0000
Received: by mail-pl1-x632.google.com with SMTP id g23so214169plq.12
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Jan 2023 22:48:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pOW8QelbsetPaHwWo+Ef2/hNHiC4Lmgaa/4OXCs14ak=;
        b=FYK9Tf0ShQColaigpcJHOo7vFiMPFrdVqQnpDLTxcUh4Xiw5b+yQrfLKNI+aJt8WjO
         5ARpsUqtaSG1xKKo0UtTbatYGpQA0mjHwYwtKQc22FtK9+z2rQjDDN/3FSHmPgfwvAH3
         xaDw/EgKu0vB2GriFiDeWrPFRj3baJj/VLuNcsb7VoFFjaohvC2UX8TR5W2V+HesZZBe
         /AQLQyP3CndA8SZopFkNjQD1ZyHih7NB0ClwyevKstmyQz3mOuRDZWiSwL4tRn1Fw0U/
         ROh4d/UBy67bWvZZt3E6IM9gIGR0kFyc28NUMF542nowL4zXOXZzcifx2SOcxiF5bva6
         QcCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pOW8QelbsetPaHwWo+Ef2/hNHiC4Lmgaa/4OXCs14ak=;
        b=uZ37RbGWjs1oyCm2c4aRPy3nAUlDml32iuMoC5cRj7WU23WYqXb/t8ExDhXc3x940N
         Pl9qbU4kCglJyGXtdn6UuX855fChlMRwX54yIh8bYZO2fP2rlesdamGOfuKqvSL8ysPX
         lXPInAPl8uMb94us67n9etfX4s1ss2LKgsImzuxAplFixYG47kG+ERpZWL6zvPijFVRs
         2f/Z/BySou4LrGqgopB7IBUyApTZxFQQnFX8mnEyEsdgnqk9Uwl3DUQiOg+OZDWmU1sn
         AHESd+7/sVn6QLw5B9ZAL1+9jiNDVaqYxfAkcrBTS12bX7j9jFwcyxymX7KYjLIMEiUM
         YhwA==
X-Gm-Message-State: AFqh2krfVADZ4lBnnV/s6ZvF5u01telqq7jkvK3DUVnRXgjdiHdsQ2RA
	WINdVUidrdW94KOvctFcQUVTIQ==
X-Google-Smtp-Source: AMrXdXuCGS2rYDB4jzJwTRppDihHyZElNqI24UqbsbR5HEpYSYpKgg00nyJo/KMf86fnvwCjNZiaAQ==
X-Received: by 2002:a05:6a20:4b28:b0:aa:7d04:109b with SMTP id fp40-20020a056a204b2800b000aa7d04109bmr1480250pzb.40.1673419733390;
        Tue, 10 Jan 2023 22:48:53 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.15])
        by smtp.gmail.com with ESMTPSA id m2-20020a170902db0200b001930e89f5f6sm9301861plx.98.2023.01.10.22.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jan 2023 22:48:52 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>,
	Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>
Cc: Johan Jonker <jbx6244@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCHv4 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix rv1126 compatible warning
Date: Wed, 11 Jan 2023 06:48:36 +0000
Message-Id: <20230111064842.5322-1-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_224857_431787_7EC37460 
X-CRM114-Status: GOOD (  11.72  )
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

Fix compatible string for RV1126 gmac, and constrain it to
be compatible with Synopsys dwmac 4.20a.

fix below warning
$ make CHECK_DTBS=y rv1126-edgeble-neu2-io.dtb
arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
		 compatible: 'oneOf' conditional failed, one must be fixed:
        ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
        'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']

Fixes: b36fe2f43662 ("dt-bindings: net: rockchip-dwmac: add rv1126 compatible")
Reviewed-by: Jagan Teki <jagan@edgeble.ai>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Anand Moon <anand@edgeble.ai>
---
v4: none
v3: added Ack and Rev from Rob and Jagan.
v2: drop SoB of Jagan Teki
    added Fix tags and update the commit message of the warning.
---
 Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 42fb72b6909d..04936632fcbb 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -49,11 +49,11 @@ properties:
               - rockchip,rk3368-gmac
               - rockchip,rk3399-gmac
               - rockchip,rv1108-gmac
-              - rockchip,rv1126-gmac
       - items:
           - enum:
               - rockchip,rk3568-gmac
               - rockchip,rk3588-gmac
+              - rockchip,rv1126-gmac
           - const: snps,dwmac-4.20a
 
   clocks:
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
