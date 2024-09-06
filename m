Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7A0BCE7AB8
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Sep 2024 07:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d7ppRtRaLN6pHoJe+rUcCvErAgk1TkmIE8rjniNARD8=; b=ZcIfHeIbsOxafg
	yKzx4r3IanowrifJbi4RsxqzLZuXZO8A8T/dNZmAwSu1SGvKEVubLEHEqmiszHeEVRITs/+WKYfnB
	9lKEg0fd3pJ6t4eau0zDBsfX/zhxKeBE2eSjkDk4ZOuuYKHKuxbO2KpN1wpXxw90778clthcttaEx
	azi6CsI0XZW85Tgiq/MG7UYkN2TH8615D2jaUzH15YWelzI3Hil1+bESaUVS2uwosO3AJRTVXnvmX
	WxH2QAoff6FXXKTqLqKBMFRrAoHNfj0xzupvc9P1nYcKQRP8CbquhVfhuDT8q6WpUl+Stbk4rRd9P
	PjBs3AziU9aaqalTu8Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smTdF-0000000B94b-1Rny;
	Fri, 06 Sep 2024 07:43:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smTZh-0000000B8L9-0Ro3;
	Fri, 06 Sep 2024 07:40:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C43F05C5A4B;
	Fri,  6 Sep 2024 07:40:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CD7BC4CEC4;
	Fri,  6 Sep 2024 07:40:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725608408;
	bh=XRj7NGZW9ZhDviw+QZyekfwrwgq2vlVeyFWNZY0nv+k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HXmBOoaqmmI6oxnRAgvB1ZnM2hLSIMAtj9r0b2Kf7+45BFcDXYT79vjGl/WctqRLw
	 Jx2OFLh17ljbG9rYzEFa1ES0tfZc91NxEVS93tBDbPWz2i68LjLDl1Ucyb5j3/RfhQ
	 +DA6IeD5vYyczMDDEcah4CJj7zZ2D4BTDRRLJ2kjs/iaWGT3QwL8KkAQDgwwYGfRuq
	 4obMZMx+pcatQAcVp/78jFjZjxVmO9YfaxE4efyn59Eq9TRxiX3Ryv+2eV34rgT5yy
	 A0lrztG3klQ1Rt/A1O3gwm2okvXQr5UzlZbO7Dux4q06lZbnZYj8c3YckgljpxHX5t
	 LvLx8JM5x+guA==
Date: Fri, 6 Sep 2024 09:40:04 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Yao <markyao0591@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>
Subject: Re: [PATCH v6 2/3] dt-bindings: display: rockchip: Add schema for
 RK3588 HDMI TX Controller
Message-ID: <3wy2aoowmh7asdymtjccuzprwfah5xornelawg5ulnzj7gyfes@www2cgfnpdsx>
References: <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
 <20240906-b4-rk3588-bridge-upstream-v6-2-a3128fb103eb@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240906-b4-rk3588-bridge-upstream-v6-2-a3128fb103eb@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240906_004009_241523_0CCA236D 
X-CRM114-Status: GOOD (  13.93  )
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

On Fri, Sep 06, 2024 at 04:17:41AM +0300, Cristian Ciocaltea wrote:
> Rockchip RK3588 SoC integrates the Synopsys DesignWare HDMI 2.1
> Quad-Pixel (QP) TX controller IP.
> 
> Since this is a new IP block, quite different from those used in the
> previous generations of Rockchip SoCs, add a dedicated binding file.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml       | 189 +++++++++++++++++++++
>  1 file changed, 189 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml
> new file mode 100644
> index 000000000000..37467685621d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,rk3588-dw-hdmi-qp.yaml

...

> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    minItems: 2

You can drop minItems.

> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: ref
> +      - const: hdp

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
