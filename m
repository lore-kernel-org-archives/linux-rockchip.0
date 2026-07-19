Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAA24C44512
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jul 2026 08:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E+XK+iBlpiPq3DOxEmA0Buidnev8JoExGA1EdRSwANs=; b=hakP70n4qyWAxi
	wvXpH5zhNKXO+t6XlR8o7KavKXsIoiSB668rjZ0azNWWeveS163pUfAtQ2g7wlxkdPw876QwJLcXh
	RyX4NhvIQHVyA/mEIV8vRRhdJuXuGm9IQrKtKtOiIfiIcHcINKb6Sn5L7ExFiSdXGmgFsn0xgkyC/
	FUtUmEVacPlQq24K58ViYrFnBRRxkatjEIUUATHyTxxV2cWD7L1hAO5gLjUDDMRMfshToB8rbLzgx
	BPdc+bAaz9t8idZXwH5fzCou9spdTt+5zjt0XvIyuZPN3PoY6Mhcn58Elfm9qz8py1ASsiuZO2Yjx
	lxgWVlrpbCXpVppXXY3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlNIB-00000004rWR-1wdo;
	Sun, 19 Jul 2026 08:54:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlNIA-00000004rWB-319l;
	Sun, 19 Jul 2026 08:54:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 380E7433D7;
	Sun, 19 Jul 2026 08:54:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 242071F000E9;
	Sun, 19 Jul 2026 08:54:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784451274;
	bh=6JA2cRpWVkl+pq93Gp5B+SIoyj8tOsJA9TqdlqOvO9Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MIU9h77ioJjiCwHrf+PflRpZo079MJQCqzEvvi1QYXxwLdYFH4BCswhsaGtYr1/fw
	 4ejYcLi1QxvOHmCBVsv8OwwXU/JV4ZjxE9/ORGY0FcNsq1tuUmv2UfupK13WhnThOB
	 TscdaZN9BAspD+ELweg+MTJ0wHnXFkhNDLwRQAfl2FagGTe3SzExqbstIIjEf3kl04
	 sx/NNCfaRJFJ1S7OT+Gyhp3GPXriGSZZ/QSUEEgEuXdRBiVGR2i+G6+1xuL9zT9r10
	 i1/rFTHy4sH/KvIJ4NYLaxS92jVRQfvfy6Ec6VRHgrKH/uRcSmdKlDu09/Q0ssduBx
	 GQAvcDbMsekYg==
Date: Sun, 19 Jul 2026 10:54:29 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Igor Paunovic <royalnet026@gmail.com>
Cc: Dmitry Osipenko <dmitry.osipenko@collabora.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, kernel@collabora.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: media: snps,dw-hdmi-rx: add
 #sound-dai-cells
Message-ID: <20260719-sassy-muskrat-of-finesse-b426b0@quoll>
References: <20260718085728.6797-1-royalnet026@gmail.com>
 <20260718085728.6797-2-royalnet026@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260718085728.6797-2-royalnet026@gmail.com>
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

On Sat, Jul 18, 2026 at 10:57:25AM +0200, Igor Paunovic wrote:
 
> diff --git a/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> index b7f6c87..fa6cd0d 100644
> --- a/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> +++ b/Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
> @@ -78,6 +78,13 @@ properties:
>        The phandle of the syscon node for the Video Output GRF register
>        to enable EDID transfer through SDAIN and SCLIN.
>  
> +  "#sound-dai-cells":
> +    const: 1
> +    description:
> +      The HDMI RX controller has two digital audio interfaces, one for
> +      I2S and one for S/PDIF. The DAI cell selects the interface, 0 for
> +      I2S and 1 for S/PDIF.
> +

Schema should also reference dai-common.yaml and use
"unevaluatedProperties: false".

>  required:
>    - compatible
>    - reg
> @@ -129,4 +136,6 @@ examples:
>        pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_5v_detection>;
>        pinctrl-names = "default";
>        hpd-gpios = <&gpio1 22 GPIO_ACTIVE_LOW>;
> +      /* referenced by a sound card as <&hdmi_receiver 0> (0: I2S, 1: S/PDIF) */

Drop comment, not needed. Consumer is not really relevant.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
