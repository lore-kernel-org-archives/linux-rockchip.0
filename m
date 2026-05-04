Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28433CD3427
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 May 2026 20:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMdsRS2Ri1YDaT4RVqQRbG1r+kvxOSuAFJYBX0AObWM=; b=1H0QEJGrkwPDJ6
	sYSiBHpsaYLcqRlQI7pyGYK01mX00OIP2vlT/DyAU5/AWahN8luQfn5CHjkFLbFSELJkL+UtG/0Nt
	64NIVTMAnjZBxZTWkm60K7vAg/HicSjhDMQjusBbKPPloVcimFyUG0Ko39nKX2kW/t4Ex9Y0E3HNf
	pe84iFBj4nQKW3NLLNRt4Vq0psGiUhDEfpRQmlb8HhcEmxUYxocA/dkr9beUcL3CAe42dDUnkeddq
	a+jJu0QmEcU6h857sg9eZWJ3+FdEzOm5Zge98wP7wvLvP1O0JxVzMvGjcCBDC4x2zpwiSAECQQI6Y
	0ohEruKH4hNT89k2a0nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wK0LX-0000000EJ8y-0GTS;
	Mon, 04 May 2026 20:56:55 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wK0LU-0000000EJ8H-1EK5;
	Mon, 04 May 2026 20:56:53 +0000
Received: from killaraus.ideasonboard.com (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 823BC9C;
	Mon,  4 May 2026 22:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1777928206;
	bh=OvsCWWPP+AJqsZrjj68PfEv+0e7Rwk83hjd9I2X1TZ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ufY78wWh2b9JOGqS+s7sDYdCtsOJtxzqD67uitaDNCGbWefxWa+K2b1IZUrkIUvi9
	 RmQba+GRYdMBexUtM0Bj4YXPjTvJWKX+hJgSbofLa5fGfVZqbn/i+hzTQzFwOegbj7
	 9o0nQGZ6Mr32L03XVEe006VMjDAwKUUk7xCZTrho=
Date: Mon, 4 May 2026 23:56:47 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: michael.riesch@collabora.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Frank Li <Frank.li@nxp.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Collabora Kernel Team <kernel@collabora.com>,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/2] media: dt-bindings: rockchip,rk3568-mipi-csi2:
 add rk3588 compatible
Message-ID: <20260504205647.GA1489398@killaraus.ideasonboard.com>
References: <20260305-rk3588-csi2rx-v5-0-3b7061d043ea@collabora.com>
 <20260305-rk3588-csi2rx-v5-1-3b7061d043ea@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260305-rk3588-csi2rx-v5-1-3b7061d043ea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260504_135652_487877_71202903 
X-CRM114-Status: GOOD (  15.74  )
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

Hi Michael,

Thank you for the patch.

On Tue, Apr 28, 2026 at 09:27:23AM +0200, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The RK3588 MIPI CSI-2 receivers are compatible to the ones found in the
> RK3568. Introduce a list of compatible variants and add the RK3588 variant
> to it.
> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  .../devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml  | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
> index 4ac4a3b6f406..fbcf28e9e1da 100644
> --- a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi2.yaml
> @@ -16,9 +16,14 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - fsl,imx93-mipi-csi2
> -      - rockchip,rk3568-mipi-csi2
> +    oneOf:
> +      - enum:
> +          - fsl,imx93-mipi-csi2
> +          - rockchip,rk3568-mipi-csi2
> +      - items:
> +          - enum:
> +              - rockchip,rk3588-mipi-csi2
> +          - const: rockchip,rk3568-mipi-csi2
>  
>    reg:
>      maxItems: 1
> 

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
