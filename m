Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 262B6F9D0FD
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Apr 2026 21:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wa4UkTpHB8orE+mCWtOpavKNY38P9zMdm+pgcXgaOLg=; b=I+222pDquGwNQu
	IdvsVUo9SSSjySvicEybmRwElbGhXL/jcWh16imfVuXzocJ1WG1XJGp1abWBlPkAdvYFJVwiokmAe
	qAgf92+KoxQ95TrU+PuNXhQC9mm7JyfObGWfcs3EaBlKJ74s7KZvMHJYbNHWkfCrKE15MHIWYDRQq
	QS4+iMSZwgwTdmrzIyf4nYZy+A3TTGgC3Hs8PE2cqKccHSCFS1LQjoB85JdqwQAeV4FR6pwxdpeDX
	5NegmtxGFdfZZiGr0hqt9WtUkgHNrUuaeLV03307/hz8jnearHxfIe6VQ+UXiBOGlIOd088hXpkta
	1oD3UI3ltjaBPOdfMAPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wClVT-00000000FfY-452s;
	Tue, 14 Apr 2026 21:41:15 +0000
Received: from mail-vk1-xa62.google.com ([2607:f8b0:4864:20::a62])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wClVQ-00000000FbP-2Tlj
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Apr 2026 21:41:13 +0000
Received: by mail-vk1-xa62.google.com with SMTP id 71dfb90a1353d-56a857578a8so2368329e0c.3
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Apr 2026 14:41:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1776202871; x=1776807671; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pdc35Ylej5ItvmLOneRVPWcqxy/OnSmxmxiLCyeKGpU=;
        b=AsEsZsJwPwecnQX4+i55eBVDvF/YwVdUIkDIq49XeEm3ky5zKVhQA16lv7dbZoK9NJ
         vravcouJreiaWVKPJzhbDonDAi3E/jOLLdTa5P7It9BQH1Yu2cJBkI5yTrwo6VQRsdkO
         QKWJn1SslKoSySUA/VnjH9+UXdDvmGQ0UkkNrWlEM/9G7ydze1SOTASxKjtAe10i54FF
         OIMg0SVMcppDXbEBzmNkHi93HhSiWYdwdgHhE8wKnTdncphsJiBjxIMl1LeFDkRpmvKF
         KgONG25UMXwpq8glCNTLcqM98NkVfFbxTk5wdQJKcqCrjfDCm0peDUFUQtcie4z4pG5v
         qxEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776202871; x=1776807671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Pdc35Ylej5ItvmLOneRVPWcqxy/OnSmxmxiLCyeKGpU=;
        b=Yhbcjo6WFC5DC9XNVGF7r+cnAxxZgRHbXsrrAqcIFuCS+cTmSf7DL71EXckGXE+nTk
         oeKpVvlziGAirIicS37MITzCAnazJpdKohGdDQZRwiXbKoaxqgaO2Hv8YzzLQONECS6a
         psJ5sQ2Exxm3Rb4qX6d/gnXvwn9E5cJrXMMyxlBspmFGMQBibZY7wKZaZh5YKP0Z4hBb
         OdjaKjFwfHvCBFTBles5c4B7Ewxkxcd9oTIp0lYRnt+IHx2F5iY+lWflC+W+kYw05JZ3
         gfhFMCgTj+I81g/gxHY6Ye+2LrWFjKZxygjZyvmy+27TCDazEnuk02c2f/tl/bKCJ6Dt
         aKUg==
X-Forwarded-Encrypted: i=1; AFNElJ9DX6GeANk3fI9JJ9cpSzSGt69I55xBQCLsMdYioUoyKi8Idy+HB8o//6o87jE4un2L8/Wwt7ma+AA14VKMAQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwOqVfNqZpRXEx5uHqGwLtkGBYcANHF2hTy6NFJoY+gukNpUdAu
	wSJcsZpuzWozv+d1wHg+m9eNiovhWcdGbAps+ROP0pdAzYM5hsGJW7PWe870GMHD1rT/mc5Ipfb
	91xh0RfPXa+llVep0n4PWPJ5bnV024L3ZraN2
X-Gm-Gg: AeBDiesJEqB37tLGs4GnFOIwAYSwQcpP1WhYv/ZTDf4IhiOt1RN7IZgi1vMNKo9u4FL
	408/gPvmvZUE20qjsjH7W47jvohOfnJAGrbmq0UlgF+6CxEJqIlM6W254tESXh1ZoMYxw/CUQHo
	9glW4pQzSlj9rFKRDGNbq15eMkVMw2hG8Nt+Sg23W1n9D/jVjtQl80ZjP+zOgd3l4fnA0XjM4Ou
	u4dnI46b5QPUGHQBLmSk1STeSNveZtXC89HJwYe1nqoMs5u7RsFz4O64MGE38CdHOm+Y8YdKHLZ
	F2pVEo0dzhE3gY1PewyiOCeSXowQhyxOHLsZ6an3Sqje0H5YUeuujW9gGQ1HOZM80PJF4uw/TxZ
	buoGjv6VJRz3sC2LtwajZmH9EQTJzFxVuVWOuS5XUkjHgyOCespZ6NmI=
X-Received: by 2002:a05:6122:4b82:b0:56c:ce0b:fecd with SMTP id 71dfb90a1353d-56f3bce78b3mr9047810e0c.12.1776202871351;
        Tue, 14 Apr 2026 14:41:11 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id a1e0cc1a2514c-95691131afesm346899241.1.2026.04.14.14.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2026 14:41:11 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: 
Cc: Alexey Charkov <alchark@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Hsun Lai <i@chainsx.cn>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	John Clark <inindev@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Robert Foss <rfoss@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v7 2/6] dt-bindings: display: bridge: simple: document the Lontium LT8711UXD DP-to-HDMI bridge
Date: Tue, 14 Apr 2026 16:40:53 -0500
Message-ID: <20260414214104.1363987-3-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260414214104.1363987-1-dennis@ausil.us>
References: <20260414214104.1363987-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_144112_634849_C61D8C55 
X-CRM114-Status: UNSURE (   7.83  )
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

The Lontium LT8711UXD is a high performance two lane Type-C/DP1.4
to HDMI2.0 converter, designed to connect a USB Type-C source or
a DP1.4 source to an HDMI2.0 sink.

Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 .../devicetree/bindings/display/bridge/simple-bridge.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
index e6808419f625..752c736c8f85 100644
--- a/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/simple-bridge.yaml
@@ -30,6 +30,7 @@ properties:
           - algoltek,ag6311
           - asl-tek,cs5263
           - dumb-vga-dac
+          - lontium,lt8711uxd
           - parade,ps185hdm
           - radxa,ra620
           - realtek,rtd2171
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
