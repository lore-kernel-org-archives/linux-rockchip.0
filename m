Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DD12C761A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Mar 2023 11:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P5y0R/fxYeq22h3p1mrINWw6NZCEYOATQ99BoghTlFw=; b=Y3vcR4hMf+gtE/
	uiulsM1vS3Nk6vSY1AqJtOfnvoJMKWc5HEWja5Vl5tYe8tZGiBM0s6fWYan/ynisHe6IXMSWGPiDx
	rNWV9/K6QH6G+lKF8vvjfPQXgZMUN9Lcs8yOSOlCXxnyUGJh3Bymij5CfV6EdyHvfbzuiawKrKY1z
	1iPbCTbhWt48nUzQKJcLOQaVGR8RtLwhT6aDwkXj/3YNnZ2jeAmBi/V6rHgfqd8wmsDF4fQyCGoxA
	WQtaGzinRCPCoarhqgNq+OpO5QKDmemT02Zp8RJfC18SRl15UzKkI/kY8pWKmJ7y66k6SdgYJ672/
	FLYFtqm+EZq9dnRT3bQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phqiG-003fP4-1G;
	Thu, 30 Mar 2023 11:45:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phqi8-003fLU-0l;
	Thu, 30 Mar 2023 11:45:01 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1phqi2-0003YZ-6H; Thu, 30 Mar 2023 13:44:50 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Javier Martinez Canillas <javierm@redhat.com>,
	linux-kernel@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Robert Mader <robert.mader@collabora.com>,
	Jarrah Gosbell <kernel@undef.tools>,
	linux-rockchip@lists.infradead.org,
	Tom <tom@tom-fitzhenry.me.uk>,
	Rob Herring <robh+dt@kernel.org>,
	Martijn Braam <martijn@brixit.nl>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	=?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>,
	Caleb Connolly <kc@postmarketos.org>
Subject: Re: [PATCH v3 0/2] arm64: dts: rk3399-pinephone-pro: Add display and touchscreen support
Date: Thu, 30 Mar 2023 13:44:45 +0200
Message-Id: <168017666941.2380317.10565826137192421162.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230328073309.1743112-1-javierm@redhat.com>
References: <20230328073309.1743112-1-javierm@redhat.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_044456_278373_C226FF84 
X-CRM114-Status: GOOD (  12.30  )
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

On Tue, 28 Mar 2023 09:33:07 +0200, Javier Martinez Canillas wrote:
> This series adds support for the display and touchscreen found in the
> PinePhone Pro. It's a third version that addresses issues pointed out
> by Ondrej Jirman in v2:
> 
> http://lists.infradead.org/pipermail/linux-rockchip/2023-March/037889.html
> 
> Best regards,
> Javier
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rk3399-pinephone-pro: Add internal display support
      commit: 3e987e1f22b9b9fdb652a5f3f4aff24265c9af05
[2/2] arm64: dts: rk3399-pinephone-pro: Add touchscreen support
      commit: 17a23ce930e35d5a84889441efd9208d0445bf18

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
