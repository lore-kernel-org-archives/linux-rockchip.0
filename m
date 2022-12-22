Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51FC0C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Dec 2022 14:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I0fPPBjI64oYTNDwZn9Vh4k37rstxmjIZ3YZQWz1Uf0=; b=Oq4z1Z/b6tk54p
	2OdZAQAkTUSEwlkjr5iDjGkflLWHYNRAh5H4NmLYdWRnq8M8vF+LPv5GnKNnFdZn5awHtEp1an5b6
	VkeumS00/3vI/4DRo3vO3KIDYrj3DIZBMZY4iRNRCU+IXyQ2A8hRlSrTv0xurqfif5nQRXKQ1YWrW
	OYJwKGE+Uq3aFtZlfF9rYLowFeLwqfgnZqq/qZHJ5oUEx051q686LFO1QlHI9rRmYmE214kW800Y2
	juS8x8F0eu94vx5ZOqrNLKNfvLk6xR/7TQ3hm2ooli9k1XKC//ZmqMWvr9BynwY+Gy68GQdFbKEEn
	NGgGfa5W76NS4cuYjhEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8Mt4-00DAEi-B6; Thu, 22 Dec 2022 14:49:34 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p8MW9-00CwAV-0G; Thu, 22 Dec 2022 14:25:54 +0000
Received: by mail-ej1-x62f.google.com with SMTP id gh17so5276939ejb.6;
        Thu, 22 Dec 2022 06:25:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fOsi2OwSq3xHI7aui3O414Oo1XlE4pBwJtqzcodoVCQ=;
        b=MlKU5KNhffaWl+HI6LQ+w9cQLnvsbNTJVEYK+oItp52FhknzDgvIMJ+/mBcMmMp/nM
         FBpCzLrvZGFUSW739Xqa/Ck0qPPJgnpjK0rQAn5r8CjtHNetqca/BWq7JNQ+kU+FffjZ
         PxKNZj2lsEPu6ozrQke8Yrx6nOyxq8DCQO3+CF6oFs1k2/eMoo41sh1pwJ5vaBD+e3Rm
         QmtU8bNdMMjy7r4ot3LTZwTOv7Y2MR9p6CCO8dRh9pCJX9XeuvS3t3CHNsI6aIZEHN+s
         pUvz8hEIRjXvtwWLkd+UAXxEgwQIC0kvRIJIJL1TlRSDlX85aGeo05gDzYBkQ/jh/xbf
         Rn0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fOsi2OwSq3xHI7aui3O414Oo1XlE4pBwJtqzcodoVCQ=;
        b=dRsUoGEJevFw0lsuvnxcPWH6TZ7JBnxU9dVLsSHs/ptRq1RuruLPywG5+tVDi6dAyb
         Pjb2XQ5XcXttaEOYOTefzVXWvDB3ofLpz2s/XJVWgjI8rPfx3EnrxaNApk7UXNMTMzXv
         FKyNKlsG/5U5xxPxDVDUfZt/u+Cttd1zReXQrhfiihApdHtWO5ggOEFtvuhLmDjBpgnQ
         Kc+BEu047Ea54BnQE6HA5vxZTI1sXhGdBTLjGWieHjhhpOdMeQ/evv8x25bSXUPKUn2v
         hf5LomHgHxLLKdpQanBHnRbEeeaD+YUHk8n3XQ7MOBllYuvLS7+0V4cA5WR4fyMAXvEj
         WU+Q==
X-Gm-Message-State: AFqh2kq9nkvukWemFrcgU8etL/v+vTQnd4Tp0BCaXBVaJLsoProZHVpG
	Z8Nj5Nle0jc4ikESoFtwflQ=
X-Google-Smtp-Source: AMrXdXs2ZIgjx4BwdrZ9OPUxEcwQhQL93aelpNu8ZOBPma6g87PHYtq+N1Mh0lqNtQZcwkk2DClGQQ==
X-Received: by 2002:a17:906:688f:b0:7ae:31a0:571c with SMTP id n15-20020a170906688f00b007ae31a0571cmr4818918ejr.57.1671719146475;
        Thu, 22 Dec 2022 06:25:46 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id cq17-20020a056402221100b00477f0d89e8fsm432158edb.6.2022.12.22.06.25.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 06:25:46 -0800 (PST)
Message-ID: <78b4548e-dfe1-d0c6-f96c-5d40f28f8b2e@gmail.com>
Date: Thu, 22 Dec 2022 15:25:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v6 04/17] dt-bindings: display: bridge: snps,dw-mipi-dsi: fix
 clock properties
To: heiko@sntech.de
Cc: hjc@rock-chips.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, gregkh@linuxfoundation.org,
 airlied@gmail.com, daniel@ffwll.ch, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, philippe.cornu@foss.st.com,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-usb@vger.kernel.org,
 linus.walleij@linaro.org, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, alim.akhtar@samsung.com,
 linux-samsung-soc@vger.kernel.org
References: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
Content-Language: en-US
In-Reply-To: <67771143-fd83-383d-41b2-68e8707134e8@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221222_062553_351504_386B4BC5 
X-CRM114-Status: UNSURE (   9.29  )
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

Fix clock properties from the common snps,dw-mipi-dsi.yaml file,
as they don't match with what is used on the SoCs.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../display/bridge/snps,dw-mipi-dsi.yaml         | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml b/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml
index 11fd68a70..0b51c64f1 100644
--- a/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/snps,dw-mipi-dsi.yaml
@@ -26,19 +26,9 @@ properties:
   reg:
     maxItems: 1

-  clocks:
-    items:
-      - description: Module clock
-      - description: DSI bus clock for either AHB and APB
-      - description: Pixel clock for the DPI/RGB input
-    minItems: 2
-
-  clock-names:
-    items:
-      - const: ref
-      - const: pclk
-      - const: px_clk
-    minItems: 2
+  clocks: true
+
+  clock-names: true

   resets:
     maxItems: 1
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
