Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E708BC43334
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 21:05:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BANDsrDeIBFPGnKVnyGCtfTwG+l3YIChdfLUXMnmbR8=; b=2jygLoqQNU84s+
	1y+DHbcKMg0/Rwpmye9ki8fEbLqHvcpCEZh+SwCS28OLBOoMRIKEzAoidvRAnk3PGBO7PN9UIrYzE
	JL4OHLRqO9LaD/SIbxdKfFzfbgRJKAljD+nj50r2nC7XnYuaXfLmeLreGPmjdiAzJZW9wCuHngLDZ
	hfmPyEaCY7SuZ6BCWOSHWKQDFZX05LjJfSJ1NWEvqKz6HDXjWw6bLL4/tteKVKhdnpgLsAI8OGB4U
	mlGIZ2/hdLiZcaVK86rv9h2goGhmhHFrrv5CYWeV6skTdNRCHvC/m8Lnh48NP//1D9McX3iZRkXar
	JHN7EjmPQzBdoy4MG+qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFMJA-007JE0-IQ; Sat, 23 Jul 2022 21:05:08 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM0Y-0079I9-Lt
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:45:56 +0000
Received: by mail-pf1-x432.google.com with SMTP id w185so7183651pfb.4
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y2X4hBgWJ5M3qcpU2Yj23INzw0af6N00euO3mnLniHU=;
        b=vQz45ZqcsffyC1SskJaeS+KSyktsNS9Qn3Ay4JgjPWJzB7+P14ug5wFF8HoxLaT+qH
         6iRpgUGAGYU+RJZf2IR4624qznEwqecQLmDnyeS2IoruPQd0cWVLC15PKRybvW0IxUIf
         d5oah9D9MC4GGXF91Th6itXySGXUGdWYBBfs98rPThudtjEYHjZQUj4V5IuRhOU18iTX
         nUS1jWjmuE8UFuHTuuSOa6XMKOACxKtrnxsBtczIbVGSZui5G6gPHp/oQPGRZkn+0eLV
         x1u62jXmlCXoi+jtTbqCr9dDeW2x2f7K3Mg+dpUTeWd1I5hGdpuvcBuY6EFB7X0b2aYx
         zSww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y2X4hBgWJ5M3qcpU2Yj23INzw0af6N00euO3mnLniHU=;
        b=KqHb9b/KVGQO6UBagjr5d6LsjqKQOxbybHJzz+QtbUmMpsdCJa2BVNXxE1InAcL4L0
         eiAQn5+RGksS/b9wJz6P3PRn+CUV/v6Ac0xEcZuoBmYUT8WdXG7mqYvhj4s46trNtyV+
         T9jIY+Vm11y7A6dK3i1gZxpVWaaQUGpposw/u1eGTYmcGoJ0luxcL35pamjOTFRkhAJ9
         W8Cuj8D/i1vrA+L++B+zTILGDqRyG9ztd2T2N00Uj0OYDn4Bk+UEqph/dNh+h7HKMSsh
         vNRpMjH/PK1qvgQYaM8fI62XHplJ9VpNzo2GhMTB4AJTU9KUouoMrtX/wqKcSG1FaDzV
         M95g==
X-Gm-Message-State: AJIora9Rvgiw1jrKw6/MIXYoyE8s+8HEemcbXfM9tuGFEHwlwH0ds/vA
	9OCXttj7pjep5gonVBRTU4uis8Mn40oljyV98JUQsw==
X-Google-Smtp-Source: AGRyM1tTjCYloHNRD4pj5g9L0ejn2QlFQY4tvRYYRXez7E6lEaXUUk6JKXxPvsNRbV8uKedhaLcIIA==
X-Received: by 2002:a63:551:0:b0:419:9286:56 with SMTP id 78-20020a630551000000b0041992860056mr4888343pgf.267.1658609153512;
        Sat, 23 Jul 2022 13:45:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:53 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 22/22] ARM: configs: Add RV1126 ECM0 fragment config
Date: Sun, 24 Jul 2022 02:13:35 +0530
Message-Id: <20220723204335.750095-23-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134554_771327_F8428C98 
X-CRM114-Status: GOOD (  11.99  )
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

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/configs/rv1126-ecm0.config | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 arch/arm/configs/rv1126-ecm0.config

diff --git a/arch/arm/configs/rv1126-ecm0.config b/arch/arm/configs/rv1126-ecm0.config
new file mode 100644
index 000000000000..8219c2d4d794
--- /dev/null
+++ b/arch/arm/configs/rv1126-ecm0.config
@@ -0,0 +1,3 @@
+CONFIG_RTC_DRV_RK808=y
+CONFIG_COMMON_CLK_RK808=y
+CONFIG_ROCKCHIP_SARADC=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
