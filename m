Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FBC1C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 17:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u/pApHB9GEZV2o4E9lP8jjP9ZgFnsGu1WEqBvQofSHc=; b=PLlpCFm6hV6nI1
	pHeYVJ88sorNj+phs7PAtpytWwLCUwRZj9X7LKjUWafDx1CGs4klRW83m+hNZAhMu9BZGKDe811yg
	sd7h5Dmy4EIbHj55mbOHdH9c6z0HC6DpvzCOGWDeXG2I1Ny/UDJYFg3ttLolQZV1mMw99ylq+Wjuj
	GYho2iyCBbZ/mI1bX78Fs8X0KJGqb/kVYo0sudTyGQCHkowoM1Z9f1g6jzeqrs6VTtN8F1LXrjwg+
	xw0Yg97tu8XMvgLPCpaaJjGhNPccqPQnizeYIc06PWT5AMnvmsw0zX0RTwnvT6tofwqHmNv35J2dh
	HS9TdASRX9Nvn/VenTHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCPY8-008yOc-Pg; Tue, 25 Jan 2022 17:24:08 +0000
Received: from mail-il1-x130.google.com ([2607:f8b0:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCPN8-008tRe-Uo; Tue, 25 Jan 2022 17:12:48 +0000
Received: by mail-il1-x130.google.com with SMTP id e8so17395996ilm.13;
 Tue, 25 Jan 2022 09:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RU3KIa4qrZXY9R48xjJEZLxL91fbwb33hYcDZGPVEeA=;
 b=KHvX4bjGcFWJPXQ91el6u/lSljusxx8pbcvu7lMe5WJ9FwnlTXtJ69WFqEVLsE4976
 RuF7fIouyHo1iSezLZbFkPem8wnA2SDnrF6rDwwnYZfdIbwv1dXNCkLCBTy+WpJydfm5
 EqcVwTs5S1iFUN1XY7i4NIgw7SCwiNg0+j7y7/lWwOjBk3HPSxr9t9cYTZpcSGbPaIIq
 or0eYS9JxmErq4ojq2ZQyvjFRmkcNA8Ava9Sm0s2Jg//dgpzGKZYQtbJibU+RLiyb1jV
 SHJnDa+wuTcz0PNhOea/uzau8fwSq0CQtWw5Q1KBWhJunAzkSrfVScL4LrwCdHeluWx8
 /w7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RU3KIa4qrZXY9R48xjJEZLxL91fbwb33hYcDZGPVEeA=;
 b=I1wVk2fTCP98+fOANBE0yv0HlKkvHa2orr4kV2rRJXNwRMDKgFHG7994jCQ7HLrDwf
 fuESP5A+mCJGB1Gz2ekUZ2yFXHXt9/rTEamXExFu5yjVhvFaW3U21PQ/VbeuwHMc3ZQI
 3dFeyCAcInlqdJkYIYGkHOvCjXuFidfiw0HlFi9CF/KEFDdA1dZqZG1XCG8UGn1J+eM3
 5MPQR6TX5oSf+tb9TNZecWNTZ2jIdxm6S5SVTu4yL2/07bJXcydHFItV26w3cVM6zd7q
 PJGCHXbXPQT+GdAD60PjkuVtIbA8RYHfoFDqHl7N3YP5CaZ1cWylk0MV3KGIgpK1/iUd
 8PUw==
X-Gm-Message-State: AOAM531AkhrAAyH2sORdRTpi8xMVnq0bOOBlYT7Csr3IgFhKV3YTvYj1
 ZdD0b0zHXsuGvtLqz6ai3IdLL/d068I=
X-Google-Smtp-Source: ABdhPJysd/AktlKpxM3/2Jwk3iYtFwARQhWgrwR964Q7bKGasZLBkRVo7UQcFFUdCsdTaVEYa5IG8A==
X-Received: by 2002:a92:cd85:: with SMTP id r5mr12345147ilb.182.1643130765506; 
 Tue, 25 Jan 2022 09:12:45 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:6592:b6fe:71b1:9f4c])
 by smtp.gmail.com with ESMTPSA id m14sm8090291iov.0.2022.01.25.09.12.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Jan 2022 09:12:44 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com,
 Adam Ford <aford173@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lucas Stach <l.stach@pengutronix.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-staging@lists.linux.dev
Subject: [PATCH V4 09/11] dt-bindings: media: nxp,
 imx8mq-vpu: Add support for G1 on imx8mm
Date: Tue, 25 Jan 2022 11:11:26 -0600
Message-Id: <20220125171129.472775-10-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220125171129.472775-1-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_091247_098321_DB3326F0 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
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

The i.MX8M mini appears to have a similar G1 decoder but the
post-processing isn't present, so different compatible flag is required.
Since all the other parameters are the same with imx8mq, just add
the new compatible flag to nxp,imx8mq-vpu.yaml.

Signed-off-by: Adam Ford <aford173@gmail.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
index 9c28d562112b..7dc13a4b1805 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
@@ -5,7 +5,7 @@
 $id: "http://devicetree.org/schemas/media/nxp,imx8mq-vpu.yaml#"
 $schema: "http://devicetree.org/meta-schemas/core.yaml#"
 
-title: Hantro G1/G2 VPU codecs implemented on i.MX8MQ SoCs
+title: Hantro G1/G2 VPU codecs implemented on i.MX8M SoCs
 
 maintainers:
   - Philipp Zabel <p.zabel@pengutronix.de>
@@ -20,6 +20,7 @@ properties:
         deprecated: true
       - const: nxp,imx8mq-vpu-g1
       - const: nxp,imx8mq-vpu-g2
+      - const: nxp,imx8mm-vpu-g1
 
   reg:
     maxItems: 1
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
