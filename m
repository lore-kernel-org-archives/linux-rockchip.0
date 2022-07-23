Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3D23C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxPVdGPenM0bjLU3IlngBdC+O5p/ivfzkRFkSJk/I4E=; b=kqLLs6k5wlFEUf
	pFXY+/tw2vTXsQIFpr2BvmHtOwSaU+MjqShMFNZLZw3K3oVmryY244djzrW4ts9s6xaP8BPl0HO4c
	hB/JhO1mPS/UV9mY5TghXSQQa35xVipi21IpF3ROZlCk4YrmAUmb1V78StF032oLXVP7sAyf5v+lU
	pbMrTSYkOpNlaZA1wLyUxa/tL9Fr0O1x9M/4V9jwtOu2BkiP6J/L4UwYEcgmSMU23LCP49QpMgyki
	QobJjm2DAV6sqWURnLxobTHhq4gZFrbvy9pfs2VqKq5Q81wXKZNVwZhigIDwCr03E7xung1RrMNhr
	7bHGjs1VuqAME6lUzofQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM98-007EA0-UW; Sat, 23 Jul 2022 20:54:46 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLzo-0078qD-9P
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:45:11 +0000
Received: by mail-pj1-x102c.google.com with SMTP id f3-20020a17090ac28300b001f22d62bfbcso5668164pjt.0
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CDlZ43oVhMYzaJDMMEIQR/19nBX7GQkCpkJpfhIXaE4=;
        b=H5izq+9RNqowV2xQCwZ1phKisiPMaiZGQhQux0gqZdhw12XqLt7sYj81uKCO/orbAU
         WljPrx5D6PKiDiyS55gw2BJu1KvnGE/j3rbcLGQ/h3EwdRug6qC412Qngok8ZpO/i34X
         jUZvKZQT5P6gwirZictIKupqhGEvjBLQP06lMKlttIu8tSuKGNeHTfiTprALQvXCnEB/
         IqhiXRm7ipDUjTEVtLRdgea6BXpnRN2y8xeN3yQeJsfReJgLs4yONG5hF7YuUcrtMn9A
         AQCmLy16sFZdu3tc8kcDBRhn+9/RXD886Mm6Rxp3DtGQL3l6AN9j+P9Q10aqKQvgcJOa
         qqRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CDlZ43oVhMYzaJDMMEIQR/19nBX7GQkCpkJpfhIXaE4=;
        b=zHkGRv6c6GzPMB1K6HpJWvLdGffvIWxM6R8J51Tz0DNvi8WK6vj3w9bMD0ve7y59hu
         37UA1VzyPI1G3H5jzInRdjXtXIFWmLxXIBQ3HnahO+jZiS/MCYjPcQHgqVxLxpfyGnDg
         O9sSv5ceheMBewi1sRVDHSappYbnfTZLKXTtP2Buq/5Q+sDYrrUsGYK+QdZTCEzv/RtE
         wGLB5rdO2L6sF7z8j8AGVMdaaZR5HqDb2ULdx/P4mPZ3YJ7UkZimZjSNlXvd1APgA8MY
         GixpY6cyYL/bV9BizRJm27gmjWjx5xvxWpxnvnMXPdFOuCRMCTDFtYR2uT/t5tMn+Ml0
         kDJg==
X-Gm-Message-State: AJIora8rY0rXZiSd+XATv9KDKYU8rh1lR3ydN3GiRfncRqeGZREr7Tr7
	2Vs/9+B0cLSA3G50Ue8lGBVOOg==
X-Google-Smtp-Source: AGRyM1uKWl2D5HfdXUQ3QXMbTNGZZwYYJeIdpLvK8pfNQkcRpnYmb7mKs1rdeDZE7l5dKAnANb41eQ==
X-Received: by 2002:a17:902:ecc7:b0:16d:66eb:bb88 with SMTP id a7-20020a170902ecc700b0016d66ebbb88mr1477383plh.170.1658609107695;
        Sat, 23 Jul 2022 13:45:07 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:45:07 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 15/22] dt-bindings: soc: rockchip: Document RV1126 pmugrf
Date: Sun, 24 Jul 2022 02:13:28 +0530
Message-Id: <20220723204335.750095-16-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134508_614996_6A5AEF1F 
X-CRM114-Status: UNSURE (   9.18  )
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

Document compatible string for Rockchip RV1126 pmugrf.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index dd7090d668f5..521fbcb8eeb9 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -46,6 +46,7 @@ properties:
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
+              - rockchip,rv1126-pmugrf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
