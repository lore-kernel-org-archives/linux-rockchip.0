Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78553C5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 17:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VfZQD6B4W/7j60ZqgGEuQDrvZYw9wSuN2NNiEAL+Go4=; b=SbWKDrHQobIccw
	RQUfBRicn6NeUD0sjMG1Ja2i+7F9dIpyZ3oSHaYLoTIZUebDqu2TIZyqzG3xbPnj2U7Z99iBCYEZp
	7rPzHsluwfA+hMcTynon+RsVE1JVKfWWtpZXli76KIXZjxaYH7DkyUggfW42c7IZlk1ngIY/APwEf
	mIDCb7hbxiMY6BCYEQj1v6oOwlBlE058/NgEdtJoFdqlWuM1Bm3jjFEiGOJFLzQxUg9iit6BgbBz4
	BdeMHjGhQw1m3iYubS+xfeyHwXBxwZlUJH9974kNPQtzDXA3niSjpJDW6ZxMTiYh40kOmmu5olgIN
	RC8M74i7K+bcx1ov9qag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeqZ-00COVK-FU; Wed, 11 Jan 2023 17:25:07 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFeqK-00COOD-Dv
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 17:24:54 +0000
Received: by mail-pj1-x102c.google.com with SMTP id o7-20020a17090a0a0700b00226c9b82c3aso17964954pjo.3
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jan 2023 09:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jbu/rVr6n2Zk27DTmTR5ScWWLUloBxQI7RkPhtXRlII=;
        b=yrD8dxGNg5ZO4IXiMKYPbv93TaG4TWX2OugwLUbr+siHQBJeBxpqrrOM4wt32jCbsb
         NFLH7HvE3rPdiTGDeXEpEu4jprmbdiLqGtoLnGjNz1loktheApWuVEtB4HvLjjlOGW/k
         3i0M1KzDEyv7koyZWtwlkUFl63j8c4Mc8xD83j86VGbXoKfMl9/P/2XGSPpiYZSPN7/f
         Rq7WfexbuEbvPze6dLTZBZ04ACNMMWB59my82UbzsBPUqiRLaEZDzlO0sgy1G5BMnXeY
         pDmZ4K2dJbPdITGUh8rnYBTBwc2AkWTrlMwUAQDt8CwaqQhBmGmDi+hE+qvoPYXWtgJc
         Fz1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jbu/rVr6n2Zk27DTmTR5ScWWLUloBxQI7RkPhtXRlII=;
        b=gwsimdFxBqA5vH/V7VoRhINubD5/8lnJ8XGYkRJSTAiDY3I2fJ9U26g1yhT6YaPaoP
         FLev9hZ6FdMMpQP0pfRM1tOSgAiVcWYFFq82v9hnvn3XgLGZ+uV/ZIJleEC9K1NNN4Oj
         0vh+PTTIV7bdnspxKLgt8XHboYf+3hry8oe/L0L6rU8Cf8iLD9U+mtROGgiGFxZ6neBb
         hSdLyytGTWQOHMzfntpI8Hf94UFxUCvMCtFrZd1WxMYuPR1dghIpfTv/8q/oi8Dm7U3q
         dVHIJnqH21GNgCPTWyxdo450Lg2g1Ipqgq2y5gTl55agMNYlyus3wYIGX5YFf4OFefVU
         +zvw==
X-Gm-Message-State: AFqh2kpqiezW4YJJexErQx8hsEqI8WfXB6kqw5ju4WmubA9HpmgbUck4
	HQHeKwoTK12gfZUt9JkVyvIjBg==
X-Google-Smtp-Source: AMrXdXurfUnEXP3w5lWeGVO/1PNLOhoMBmCfXSG1xwJFS2xQEpZyInyfKEQjAm+4z8o35LQvYOtKjA==
X-Received: by 2002:a05:6a21:e307:b0:af:7a88:f752 with SMTP id cb7-20020a056a21e30700b000af7a88f752mr90849296pzc.48.1673457887706;
        Wed, 11 Jan 2023 09:24:47 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.15])
        by smtp.gmail.com with ESMTPSA id rm14-20020a17090b3ece00b00218fa115f83sm11110722pjb.57.2023.01.11.09.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 09:24:46 -0800 (PST)
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
Subject: [PATCH v5 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix rv1126 compatible warning
Date: Wed, 11 Jan 2023 17:24:31 +0000
Message-Id: <20230111172437.5295-1-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_092452_717376_68481F8E 
X-CRM114-Status: GOOD (  11.43  )
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
v5: none
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
