Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8AD4C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:12:23 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 10CAB61A02
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:12:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 10CAB61A02
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=akAcRhdP9cKjEKsW+RH2Y1/2gI11Eq8mWuYyKO1/KjI=; b=V5ZuXdx1bbKcLgJvIwyb1rHMg
	Ol/y4NbI5I8maOZHsqTUwwIv2x+cMrE80V4ZkLMEWCVgNgQ+YgvIL/g1YdakPAWER5rPvsC91t5H+
	VuNcgQWDSjJigipu0+Q40XmxJ1khbmzOITlkSpe0fDo88OKJdYNSQm9+2Hjq9Ke4NSYfZ3zXgf04z
	up0leAYIcbwZehXTW5MoZNONMi3iX3q2JZcnSQOM9UDuqNnEx3TXNAoc/iD3dy15+8jPXRjZHSg1q
	bYRpcdg/0+1SUSyBs7Y9RZ4rCAVUEtl0IEyju4MFYxYRTwFJEYxPk9/NElh9UY4081Nm6C6J5x1LW
	4xsnNLfnQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPnCB-003kHW-Of; Fri, 26 Mar 2021 14:12:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPnC8-003kGd-Er
 for linux-rockchip@lists.infradead.org; Fri, 26 Mar 2021 14:12:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnBv-0005tW-3S; Fri, 26 Mar 2021 15:11:59 +0100
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnBs-0006cN-1E; Fri, 26 Mar 2021 15:11:56 +0100
Date: Fri, 26 Mar 2021 15:11:56 +0100
From: Philipp Zabel <pza@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: ezequiel@collabora.com, mchehab@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl,
 emil.l.velikov@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 02/13] dt-bindings: media: nxp,imx8mq-vpu: Update the
 bindings for G2 support
Message-ID: <20210326141156.GA8441@pengutronix.de>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-3-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318082046.51546-3-benjamin.gaignard@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:07:47 up 36 days, 17:31, 96 users,  load average: 0.09, 0.22, 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_141212_551338_F931DBE1 
X-CRM114-Status: GOOD (  23.48  )
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

On Thu, Mar 18, 2021 at 09:20:35AM +0100, Benjamin Gaignard wrote:
> Introducing G2 hevc video decoder lead to modify the bindings to allow
> to get one node per VPUs.
> VPUs share one hardware control block which is provided as a phandle on
> an syscon.
> Each node got now one reg and one interrupt.
> Add a compatible for G2 hardware block: nxp,imx8mq-vpu-g2.
> 
> To be compatible with older DT the driver is still capable to use 'ctrl'
> reg-name even if it is deprecated now.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 5:
> - This version doesn't break the backward compatibilty between kernel
>   and DT.
> 
>  .../bindings/media/nxp,imx8mq-vpu.yaml        | 53 ++++++++++++-------
>  1 file changed, 34 insertions(+), 19 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> index 762be3f96ce9..79502fc8bde5 100644
> --- a/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> +++ b/Documentation/devicetree/bindings/media/nxp,imx8mq-vpu.yaml
> @@ -15,22 +15,18 @@ description:
>  
>  properties:
>    compatible:
> -    const: nxp,imx8mq-vpu
> +    oneOf:
> +      - const: nxp,imx8mq-vpu
> +      - const: nxp,imx8mq-vpu-g2
>  
>    reg:
> -    maxItems: 3
> -
> -  reg-names:
> -    items:
> -      - const: g1
> -      - const: g2
> -      - const: ctrl
> +    maxItems: 1
>  
>    interrupts:
> -    maxItems: 2
> +    maxItems: 1
>  
>    interrupt-names:
> -    items:
> +    oneOf:
>        - const: g1
>        - const: g2
>  
> @@ -46,14 +42,18 @@ properties:
>    power-domains:
>      maxItems: 1
>  
> +  nxp,imx8mq-vpu-ctrl:
> +    description: Specifies a phandle to syscon VPU hardware control block
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +

Should we drop the 'q' here, i.e. nxp,imx8m-vpu-ctrl so we can use the same
binding for i.MX8MM later?

>  required:
>    - compatible
>    - reg
> -  - reg-names
>    - interrupts
>    - interrupt-names
>    - clocks
>    - clock-names
> +  - nxp,imx8mq-vpu-ctrl
>  
>  additionalProperties: false
>  
> @@ -62,18 +62,33 @@ examples:
>          #include <dt-bindings/clock/imx8mq-clock.h>
>          #include <dt-bindings/interrupt-controller/arm-gic.h>
>  
> -        vpu: video-codec@38300000 {
> +        vpu_ctrl: syscon@38320000 {
> +                 compatible = "nxp,imx8mq-vpu-ctrl", "syscon";
> +                 reg = <0x38320000 0x10000>;
> +        };
> +
> +        vpu_g1: video-codec@38300000 {
>                  compatible = "nxp,imx8mq-vpu";
> -                reg = <0x38300000 0x10000>,
> -                      <0x38310000 0x10000>,
> -                      <0x38320000 0x10000>;
> -                reg-names = "g1", "g2", "ctrl";
> -                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
> -                             <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> -                interrupt-names = "g1", "g2";
> +                reg = <0x38300000 0x10000>;
> +                interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +                interrupt-names = "g1";
> +                clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> +                         <&clk IMX8MQ_CLK_VPU_G2_ROOT>,

Does the G1 VPU require the G2 clock and vice versa?

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
