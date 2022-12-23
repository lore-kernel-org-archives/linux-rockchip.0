Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D325C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Dec 2022 13:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QCv6zsU7n4B5b2O2Y8mCvT/QiVE77ENSNwa+BPQ2MeI=; b=sWsze2v50wFcNb
	QDTrxSjK/MgkSQ1HfcIkhyojgC1eygD5Hj1eGmKcomFR81+2Eg0pCP38+uWK6qU9Ut9+aO0xTGvHo
	CfsK8DV0UnsVJQZuN3mQiMq2pC+wLBmNNkbO9/SBg+wegCGlu43RAllPtMBO4UetjR8Tfeuttl/k0
	drmU0YPyPASB0nLhG/NbbLK2hmH9LzJmvOmIUTx1EatekkqSKWTsInrxclB7mbcBnymV8f4BwftaX
	+71tW/q/+LanydgrDp59gbCRvR+eeYk7wMByboYI7zfIbmo1pWusIBlpEbRBBJ+DZH7twxOeMdwPO
	JpLbrdjphJAwSMy/V0aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8i3q-008NkN-C3; Fri, 23 Dec 2022 13:26:06 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8i3Y-008Nbt-Vb
	for linux-rockchip@lists.infradead.org; Fri, 23 Dec 2022 13:25:51 +0000
Received: by mail-pj1-x1030.google.com with SMTP id o8-20020a17090a9f8800b00223de0364beso8811492pjp.4
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Dec 2022 05:25:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wundbcH2g9xN6/PVxd6vNLcmcPbSkSP9WqIdH+1twe8=;
        b=3YYEJ6fsDDNLI6BSPUn9UAVpJ3cm8A8yF4bM3GKpdiztut/6kkMEIugr9asK8oqPwb
         7col/iMpBEqJSKt1RV5xgrw3gOOwdqKXQtzhOngDvel74k9wZsQy+GIf2LNHMTlZuBZd
         W1e7SvML5sc7KGk7DhlhvdenKHckc8FWOIP+hSbcb7zAYvzLJw2NDAHf94/UuZAqcxZv
         YbAAevXIsrWLjuQ+YIbIqZwXqjY636/jjUSKwYaB42cLTgLa3SgAaJGXWx7YRmAkRGfC
         SnYmpbQUXDkrX55LIpOKGX/mCUuPXDk0loPoKSkPDQkDwXSzocet1Qz1rosrrnbqnEVK
         TwGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wundbcH2g9xN6/PVxd6vNLcmcPbSkSP9WqIdH+1twe8=;
        b=193j3xEGGkHBXe449mD0unSWLjjwx+JJUjfh2jIY9a7b9zyquEKofQR82grAY6wd2x
         t+byJn/blOU0u6A440hv7NaMdcW3RZuYPWWEEUbZSL+1XGXHZAXTPzMtpFjUR0gCwkka
         9D/LzY4nypevIsyJnVMM/2XgZiIrvEQ3Zzfh04SYcOvn4ZMnZu6inEYo1ljQCMJR4KTT
         R5Jxn+bstghkcuc4b3QxKa9zNfMiwWzJP2vv5pvkbkzLUj/OQNKhNI7Yx8C8fEeimsRm
         G1q6i6wWERlsSCOSaIDNpgMeDs+iemlMDKlpVY+JqhZcvIBOMph+zQ/StreQsrA48Lqv
         Z5aQ==
X-Gm-Message-State: AFqh2krpmF4r0CjqTsqFC7c/KwE80ANmGS/YeILCSbLCAEMGGQ2j9eHx
	+gKyIVO2QHmckWoc8mAwubnzYg==
X-Google-Smtp-Source: AMrXdXupbRVLFT1bwpmjESvCYz8d60hQsjaf+PgnNKc51oTZ642XvF1P0pE3Ipqp5xf+VO1u+RWjnA==
X-Received: by 2002:a05:6a21:6da2:b0:b2:56ba:63ee with SMTP id wl34-20020a056a216da200b000b256ba63eemr14967634pzb.24.1671801946506;
        Fri, 23 Dec 2022 05:25:46 -0800 (PST)
Received: from archl-hc1b.. ([45.112.3.26])
        by smtp.gmail.com with ESMTPSA id m3-20020a635803000000b0047681fa88d1sm1308587pgb.53.2022.12.23.05.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Dec 2022 05:25:46 -0800 (PST)
From: Anand Moon <anand@edgeble.ai>
To: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>
Cc: Anand Moon <anand@edgeble.ai>,
	Jagan Teki <jagan@edgeble.ai>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCHv1 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix rv1126 compatible warning
Date: Fri, 23 Dec 2022 13:22:30 +0000
Message-Id: <20221223132235.16149-1-anand@edgeble.ai>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221223_052549_275841_825A0803 
X-CRM114-Status: GOOD (  10.12  )
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
arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
		 compatible: 'oneOf' conditional failed, one must be fixed:
        ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
        'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']

Signed-off-by: Anand Moon <anand@edgeble.ai>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
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
