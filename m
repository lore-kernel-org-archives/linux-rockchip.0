Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE7A2C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Dec 2022 10:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6fGueQu+d8gyohSYWN2dQ9T+bkbO2KPGk9JxgwFB1OE=; b=ny278uKVY2/J5p
	DnTfsMQRODlTVS6gCFqDuW+lX7vStQH2xP8UItSuftRX5xTmla1RhDaFjzjksJPaNcF+ezeXS0AoD
	MCt8CVeaKy4u89hxT/12wU2U3QfGb3dgpHBOWBSBnywq4jjT6tmAmtYVO57aS2LFk8T91wlujBSYm
	C7pLZHDOWEL8YxFIpNZA5s2cBmG2PDjD6RLyHgfqPjAOyo5512VQHrl9mlsDFcmO+RUsOH2aHNS/j
	p3q2hO/zMdUvZPOwleE4ax31tRqc0sZjaQgot2I2w9kdwVPdowT/yyT2FtQzsSUw2acMkbdnzwCZe
	LhnYdqOV2BPzVi34YlSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7XG-00CE2J-G2; Tue, 27 Dec 2022 10:50:18 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pA7W1-00CDYJ-16
	for linux-rockchip@lists.infradead.org; Tue, 27 Dec 2022 10:49:15 +0000
Received: by mail-pj1-x1030.google.com with SMTP id m7-20020a17090a730700b00225ebb9cd01so5010655pjk.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Dec 2022 02:48:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TTKLuzkwLj+Q2/P4X0bnHmkwF9FCPAj0tHenrsB64MU=;
        b=hdFU7UXge7DZPRpCdlZ8nglNVWmcOuTR2FjkeOANwBgCZ3F2DESNTF/GibvEPWTshz
         rCxGwmtIDPTCanOxY+lBsSBOUx55E7Y/Z0ztWDxDr0y+DSaXqDu/ml2lityYuemQ5FMK
         +ELaseW7KSyLBb4l9lagFg3yv+USCXdbjxOJ+iVYPhEFnRSJ5zN2TuodEiaVQVg9qczr
         aF0n4D8xHKdRabMDdMjalIdYSSR3O0nW00ctJqVZa7EJUB9YzrPbbUioz2RdOuC333de
         bz9pbG4v5sDZVTsaRWo/sA2v5kEquJeqzmHaNJb9i99HkNCdua5gOnQxOK+dv1Wf7Jcv
         g/1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TTKLuzkwLj+Q2/P4X0bnHmkwF9FCPAj0tHenrsB64MU=;
        b=irtGsMwIl4rvF3fFYMnjnn8aAj9GDhO0C0KG/IHUFD15/GMdgHb4N1fkUNPGyMzxAV
         skvvqRVGRl7OP4vdHdA+EJcYHo9sMCC1/DcqAZZsZkQGQIH71mZc0EkUKWoDE0492o06
         rysEDF8UB6IOG20/+EOlb5ivzL7GxOgIGIv0g0JoTmddBI6MxR2bkY0llmMjzuuUiVtu
         /zVaXRTmVDfRiDxr6LpMOQU1fhpLbLuuIIRzG8Hl4m5Oy61Ed+fq5uuEWcMdDb7FGnBO
         7kZA/DIInTjdLYdFgOArRIDHa9sCaTzmsTD+ap4vBjg6XJuDhMwjFPOu6pezMnK1djkb
         pjrw==
X-Gm-Message-State: AFqh2kqQDOu/++Jm2xAMRZK+C+HcUvlKMOWmycbAPwDM8mXE0EFY/+mO
	vzSDUAkr00rFZ3EgaNbM6AYm4w==
X-Google-Smtp-Source: AMrXdXv1Z/aYGHPnuLv8/usCVi6UgfeoQF9PF5KxPbvZs2FqfHDvdi7G9dC66WbevOL9lCCZDwjOwQ==
X-Received: by 2002:a05:6a20:2a87:b0:b1:dd00:eb05 with SMTP id v7-20020a056a202a8700b000b1dd00eb05mr33626652pzh.26.1672138137218;
        Tue, 27 Dec 2022 02:48:57 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id w18-20020aa79a12000000b00581816425f3sm194809pfj.112.2022.12.27.02.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Dec 2022 02:48:56 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Anand Moon <anand@edgeble.ai>
Cc: Johan Jonker <jbx6244@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCHv3 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix rv1126 compatible warning
Date: Tue, 27 Dec 2022 10:48:31 +0000
Message-Id: <20221227104837.27208-1-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221227_024901_312670_492D58EA 
X-CRM114-Status: GOOD (  10.88  )
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
