Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3731FC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Nov 2021 15:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7wwSxm7DW/CR5NLoESDlrs8P/QAvP/8iQPXsD5KkuoM=; b=f48MgofyWkYSlh
	cso1lBGmS5mjKSqDtLaf4DTyVZ0uVny972NZxKc/1QblBo8c/W/WDvjkH7jdtbSWNafNu/Fl3cLWt
	3oZf10xzUa8SgaUyV/dNl2Z+RBTAgdZ/nu7iESk/vBNUeVLMJPFofUJ1bxbS7ebVasJDCJRfbtZ72
	wqEWtsYWqT6j32dlZSEYActjRL8NEWil6FAeg1B88OCoBDPPuR0bLk9ZrSh3m0pWapxJHmWK4JnEz
	h33kXJqROvMCR5IrjejrrDK5IPIB8sFujPonKHpC027fRd5TfGZu31bm0OuSbKwI5m0IXGXWuoAVj
	Av4TN0eiOuZgY17+wIIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqzJG-00DsOt-3C; Sat, 27 Nov 2021 15:08:14 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqzJ2-00DsMX-SI; Sat, 27 Nov 2021 15:08:02 +0000
Received: from [20.79.204.165] (helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mqzIx-000681-5M; Sat, 27 Nov 2021 16:07:55 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 01/12] dt-bindings: display: rockchip: Add compatible for
 rk3568 HDMI
Date: Sat, 27 Nov 2021 16:07:37 +0100
Message-ID: <2147171.aSpvfvgOub@phil>
In-Reply-To: <20211117143347.314294-2-s.hauer@pengutronix.de>
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211127_070800_948959_20B63880 
X-CRM114-Status: GOOD (  17.19  )
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

Hi,

Am Mittwoch, 17. November 2021, 15:33:36 CET schrieb Sascha Hauer:
> From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> 
> Define a new compatible for rk3568 HDMI.
> This version of HDMI hardware block needs two new clocks hclk_vio and hclk
> to provide phy reference clocks.
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Link: https://lore.kernel.org/r/20210707120323.401785-2-benjamin.gaignard@collabora.com
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml         | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index da3b889ad8fcd..53fa42479d5b7 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -23,6 +23,7 @@ properties:
>        - rockchip,rk3288-dw-hdmi
>        - rockchip,rk3328-dw-hdmi
>        - rockchip,rk3399-dw-hdmi
> +      - rockchip,rk3568-dw-hdmi
>  
>    reg-io-width:
>      const: 4
> @@ -49,8 +50,11 @@ properties:
>            - vpll
>        - enum:
>            - grf
> +          - hclk_vio

I don't believe this clock should be here:
(1) the rk3568 dts node later in the series doesn't use it at all
(2) generally vio-clocks are part of the interconnect where the ip block
    connects to, so right now we just enable it as critical on all socs and
    if someone actually models the interconnect (where also the qos
    [quality of service configs] nodes would play into), it would need to
    be included there.


Heiko

> +          - vpll
> +      - enum:
> +          - hclk
>            - vpll
> -      - const: vpll
>  
>    ddc-i2c-bus:
>      $ref: /schemas/types.yaml#/definitions/phandle
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
