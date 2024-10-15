Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97449D1F9CB
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Oct 2024 20:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0y8Oi5wvIuSSVu6kLbc4BsbQRnlvec65sOl0KZMxFlw=; b=MwjY27/9YiLUNe
	hbCfVUYI4ZrqhP9CssdaLCaARBspZBz+N5rgpUVIogKk7oVOEmb/8d3Mfuj3j9Qj4sN3WlpelGl0L
	qaY5Q1fg2MMqJyeLaxXZrOJuHFWnKdUnmcb8h97XFxW4MuVgwSjRuZaVo//0dxwlsEP4Aif5dk99R
	TnJ+Ox4rjcdhxCCU+62GNGvWovPL0huqVcW0CW/RT2YQUUKEIM92kwvTefdVfNKLLTZ1K21GNnROY
	IaI8xdbVOoUwhb/C+B3wvrcDJKtj4hxxi2Y44ZoDLD2NvcEVA56CzyJXy1VZ735KzkaIgS/p3suII
	YZ8ntEWhNgJNjwkkrvsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0oJo-00000009X0B-16Sa;
	Tue, 15 Oct 2024 20:39:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0oIN-00000009Wmw-2SBR;
	Tue, 15 Oct 2024 20:37:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4E1345C5AAF;
	Tue, 15 Oct 2024 20:37:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE1C6C4CEC6;
	Tue, 15 Oct 2024 20:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729024650;
	bh=wEllmQzVhgF4GVOEm1VErXB6Nk08jOpeFQrbb38vU6w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AIdXaRjtRU52RixQ78a0qnfo5er9t1kQMM6/HBYQRQ+WSdI4fqrBoN8e/Q6Pqqqo2
	 3YQfF9R4ARVIG2TKqAqi/nwZsnqXg9RDWa5AXJkGXZ+Mp6bsw1tS3v+cim4TfxAlVt
	 2XhZRYUAvsgZsmDuGoyzYTMuq7KQKY0KRsI9gChZ4DZVzDzaxFkLN78/FOTcuDBiEb
	 zvgqPikaEeEaHEbbe9aZX+EURghDT+tr8usAZMM2vfp0HMCucCKE5p4/tDI4kOKqE4
	 G8mohUPqezznGm4E7+AbrPz2BQujfH7D8TTKJ7XrYqzexc2zRI6njmae4p5CjaabyH
	 gSEFMnBvLw4GQ==
Date: Tue, 15 Oct 2024 15:37:28 -0500
From: Rob Herring <robh@kernel.org>
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>,
	Andy Yan <andyshrk@163.com>, Tim Lunn <tim@feathertop.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Jimmy Hon <honyuenkwun@gmail.com>, Jing Luo <jing@jing.rocks>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 1/2] dt-bindings: arm: rockchip: Add Orange Pi 5b enum
 to Orange Pi 5 entry
Message-ID: <20241015203728.GA1914063-robh@kernel.org>
References: <20241015192905.28969-1-cenk.uluisik@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241015192905.28969-1-cenk.uluisik@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241015_133731_690624_8E81A83C 
X-CRM114-Status: GOOD (  20.82  )
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

On Tue, Oct 15, 2024 at 09:28:35PM +0200, Cenk Uluisik wrote:
> This extends the Xunlong Orange Pi 5 device tree binding with an enum for
> the Orange Pi 5b, which is implemented before the device tree.
> 
> How does this board differ from the original Orange Pi 5?
>   - the Orange Pi 5 has a M.2 NVMe M-key PCI 2.0x1
>     slot (hooked to combphy0_ps) whereas the Orange Pi 5b uses combphy0_ps
>     for the WiFi.
>   - The Orange Pi 5 with the M.2 socket has a regulator defined hooked to
>     "GPIO0_C5" (i.e. PCIE_PWREN_H) whereas the Orange Pi 5B has GPIO0_C5
>     hooked to BT_WAKE_HOST.
>   - builtin eMMC storage
>   - no SPI NOR flash (u-boot, preboot etc. initiates
>       from within the eMMC
>       storage)
>   - ap6275p Wifi module (like the Orange Pi 5 Plus)
>   - builtin BlueTooth module
> 
> Signed-off-by: Cenk Uluisik <cenk.uluisik@googlemail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)

Well, still kind of too fast because I just acked v5. Before you send 
v7, read the process for adding tags.

You should also read the part on adding change log to your patches.

> 
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> index 687823e58c22..62bb6587da8f 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -1051,7 +1051,9 @@ properties:
>  
>        - description: Xunlong Orange Pi 5
>          items:
> -          - const: xunlong,orangepi-5
> +          - enum:
> +              - xunlong,orangepi-5
> +              - xunlong,orangepi-5b
>            - const: rockchip,rk3588s
>  
>        - description: Zkmagic A95X Z2
> -- 
> 2.46.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
