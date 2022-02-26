Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A1F0C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0mHGbsjxXLiGIwFKVt5/aSOkyW7kZRelRcD+Im2xXmk=; b=ig7Hd45eteasrS
	cUH3gVfd0gNhsZfsmGoZDI68WEOiZl6Vh3zAr2HswXG1Pe0OoNhCxZ8URmM0ITGPOHMBmkLeJw4yJ
	NZwShnmHKH5QfM6W6G7YoVJbO4gF+zjijPvabeQ7uqtbeW4aPoyH79gMJgFes8jpRhEDlvYg/ecRA
	bz1jMUV6o47njiGv4+Js4OQ2StJp6ZZtvQZKNUytTTZxioyxuLtqDcUDY0p2de3ufbdK0RSKtvjL8
	8WQqYaRCAhAJjixemEbDhlk4l8205/gOjCEfIv6ISfoN3QJ0y127+I51aZn3ITuna7s/ZT3vSlCqg
	1z+W34JN+M0UwXDRNvdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO22B-008Nna-9S; Sat, 26 Feb 2022 18:43:11 +0000
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO20z-008N8M-L5; Sat, 26 Feb 2022 18:42:03 +0000
Received: by mail-qv1-xf36.google.com with SMTP id fc19so9290644qvb.7;
 Sat, 26 Feb 2022 10:41:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gwYHMhbRHXQxrol3Z4onOOebIeXrEkEaF8cW1M7ix2U=;
 b=WOcKHnbvL/6tTiONrnrCInXreCNOmGUPPUCeG8xCoJngLTZSx8KaDLkpFstbgxp50g
 vERfAg+nbs2oBLM/SWE29rZj+26fK+xXUp2yo9543VtG7nXF/DAxqqWLqmhVvu72TP9P
 AbnYqadsloMHD4aXmAGfj2sHYFNm6BahjCUlAelOYQqG+4peZJ8955iu6ksLyByRVhaZ
 kHM35JgQVfRzm1QM6mfU/nk0UOmElSDK72NNjKY3sfhoHZQZ6GE1ACPT8kjDyDooMkOm
 4ls6mh9hayYhG91IQWAaPVgStnDUwlHOoLEe6Q772DmsQVaalf8DdYKPaGl4pV8gtaU8
 ae9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gwYHMhbRHXQxrol3Z4onOOebIeXrEkEaF8cW1M7ix2U=;
 b=e/sESNAljxE8ayInYxo5Mt8zwTXWlJHKmnDVWrqrj2mLArcKbOl25YNqocVlmeGM+4
 aWU2cc22wIKB5uFDJVUWOya0rH9NEPGHciotEY4Xf0yVtnfYpFoM3gIOgOxRDzH4wtYp
 0kjsbV0uakphNiQPCll4OR06pMukD8WoKUtpDIH9PkyLrnx/XzsPKdgSGvRZdm/BW9vv
 NlpGoY9r+hobz1QxVCgpPQaRfqvT4iuk6agu+hHBOzVBJCmk4mNme8o+Ch/fN5tJqHm+
 GwWv5zR0DiQqd5mfO2ib3q858STtv96QaS2KSoRfKunxSCDPhHAfWlib/Jt56t55fv0y
 q0Hg==
X-Gm-Message-State: AOAM533YSXad4dgS2APDxl2uDxvLWZy31FtnkDcZ2afqbAoI/8Ncpui4
 QSI7NuB4I/0LdQ/g4OmMsOk=
X-Google-Smtp-Source: ABdhPJwoouE/r333Mn111gg36xlXBSMHIg5VNS79zI8Z5qqJ9+iTNUUcocIFiU9lWVufrDHnNWvFHw==
X-Received: by 2002:a05:6214:5284:b0:42c:8d98:53ee with SMTP id
 kj4-20020a056214528400b0042c8d9853eemr9621526qvb.114.1645900916577; 
 Sat, 26 Feb 2022 10:41:56 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 p68-20020a378d47000000b006491d2d1450sm2891983qkd.10.2022.02.26.10.41.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Feb 2022 10:41:56 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
 Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 02/11] dt-bindings: soc: grf: add rk3566-pipe-grf compatible
Date: Sat, 26 Feb 2022 13:41:38 -0500
Message-Id: <20220226184147.769964-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226184147.769964-1-pgwipeout@gmail.com>
References: <20220226184147.769964-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_104157_717140_7C5B35CA 
X-CRM114-Status: GOOD (  10.12  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The rk3566 requires special handling for the dwc3-otg clock in order for
the port to function correctly.
Add a binding for the rk3566-pipe-grf so we can handle setup with the
grf driver.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 5079e9d24af6..75a2b8bb25fb 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,6 +15,7 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
+              - rockchip,rk3566-pipe-grf
               - rockchip,rk3568-pipe-grf
               - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
