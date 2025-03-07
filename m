Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49DD8C19F32
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 07:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FVduH+0k+MR9kCb6KBGxCUc2fGZOjO1wUWZ1io/0qPY=; b=GvqDW+h+ffjddT
	wvnV254GkhqjTlT01JewnlazAYftK+PYt/qyoYXjL2DAUHveUHvScH+iSogA+MpsBN3Qlc9sGP3ba
	/vfvhxbrBRVcwJAH8wxnyg0gfpX4U40FCRXcm2vI/mtItZJ/2NHq5viB/VcShh1agpOxGah6GOqFG
	jFxcVrJ9A911aRK6iY8Y+yG3AEv2ejhcFxOZKdeuR37cI06XWq+y0Ef7rR5GOSZ3bXSsZvmmZXan9
	SsKwlen6jfK5t11varoC/ouo2PH2y7C3r3d+q56S45t+qYJUfhHheHKQRlYvIhwarxHzEeSUyjSoB
	uHclS/uuH3gYQqpt/s6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSYD-0000000DTpa-0Z2L;
	Fri, 07 Mar 2025 07:55:21 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqSWR-0000000DTXo-1s6H;
	Fri, 07 Mar 2025 07:53:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C96E7A45534;
	Fri,  7 Mar 2025 07:47:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13B65C4CED1;
	Fri,  7 Mar 2025 07:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741334010;
	bh=lTRXkcQG9Z1B5zmCxuNgpQ9Vtwor9EZ3D+xgKciSc/E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B2zT1gS6DJ5D50DqZd3GD9wAcgplYjmWgsvFHnzQW1x8kf9QLZYESHj3sd3d4Qtoo
	 Jq37CyYmeOraCNmW8lbW/vNyB3fvN9t3KpVpflN+a4AqEO2gTP9uzKr+x442QQaCtl
	 QNnAEAuLBsrE27hQ4Vglt83i8N+j4OKdjAx59msMqb96GMX72gceNwwe4Jyb2qtwSf
	 /qV1I6F+3ASeaQkt+6WqQWArYcmfoew64+Mo0gwu1nFY56KuHYZgyREp0j4h7MAllx
	 l1hJNJ6ObadqOLLz1GfJdNM+VkSjlsOyzN+kA5Cy8u53XOD3r93GSmN1wWoYZ2r4wZ
	 T9imrFN4M17pw==
Date: Fri, 7 Mar 2025 08:53:26 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Mehdi Djait <mehdi.djait@linux.intel.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, =?utf-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>, 
	Gerald Loacker <gerald.loacker@wolfvision.net>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Kever Yang <kever.yang@rock-chips.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
	Sebastian Fricke <sebastian.fricke@collabora.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Paul Kocialkowski <paulk@sys-base.io>, Alexander Shiyan <eagle.alexander923@gmail.com>, 
	Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 04/11] media: dt-bindings: media: add bindings for
 rockchip mipi csi host
Message-ID: <20250307-cunning-glorious-pig-80a99a@krzk-bin>
References: <20250306-v6-8-topic-rk3568-vicap-v5-0-f02152534f3c@wolfvision.net>
 <20250306-v6-8-topic-rk3568-vicap-v5-4-f02152534f3c@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250306-v6-8-topic-rk3568-vicap-v5-4-f02152534f3c@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_235331_568881_FF3A6F75 
X-CRM114-Status: GOOD (  13.58  )
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

On Thu, Mar 06, 2025 at 05:56:05PM +0100, Michael Riesch wrote:
> Add documentation for the Rockchip RK3568 MIPI CSI-2 Host unit.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  .../bindings/media/rockchip,rk3568-mipi-csi.yaml   | 114 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  2 files changed, 115 insertions(+)
> 

Same comments about subject.

> diff --git a/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.yaml b/Documentation/devicetree/bindings/media/rockchip,rk3568-mipi-csi.yaml
> new file mode 100644
> index 000000000000..900f5a32dab9
> --- /dev/null

...

> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/rk3568-cru.h>
> +    #include <dt-bindings/power/rk3568-power.h>
> +
> +    parent {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        csi: csi@fdfb0000 {
> +            compatible = "rockchip,rk3568-mipi-csi";
> +            reg = <0x0 0xfdfb0000 0x0 0x10000>;
> +            clocks = <&cru PCLK_CSI2HOST1>;
> +            phys = <&csi_dphy>;
> +            power-domains = <&power RK3568_PD_VI>;
> +            resets = <&cru SRST_P_CSI2HOST1>;
> +            status = "disabled";

Drop

> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
