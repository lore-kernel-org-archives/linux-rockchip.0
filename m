Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A23BC28B2E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 11:24:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhLHeCOgEcrhzzcJumjKFvW/WaA3DaB4i/zmYkx8tu4=; b=dyxp0/0PwLy7mr
	vy8o+q30sD2UWgNyc61EvoffFqMszeJyOIKJdUUpDejjB6ioea5tKtv4rrVCuiPLJNDWYpMUEC7Dw
	XxU/uEmZA7Kg5O2w2FJ5Y54Kaun75SHkOb9BFZkv6b4PzAJOiwnVybustWiDj8rody/A3sKHgslgq
	S1vptywKUKxGnXK1qboiBqIYTxUTXStDSdS/5QPzrbUIsf/IO6cWBvzs2b+bIgNGpZPXJzseQinCp
	xKSnkcpAhjIjWg4Wv3irkgliXtgwoIcbsScNbDWxjmn3IhGWb9YYPuIgcGezfAG/zt5jpMGYBh4HA
	dIMH0NHPjwQ5X4l9ip9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trxiT-00000005SWa-3esK;
	Tue, 11 Mar 2025 11:24:09 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trxgp-00000005SGS-1tQa;
	Tue, 11 Mar 2025 11:22:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E97745C5BD3;
	Tue, 11 Mar 2025 11:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6944C4CEE9;
	Tue, 11 Mar 2025 11:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741692146;
	bh=lMU6ponq0xF7hfMuNjfylz3m1p39UzPIIE6c6X297+M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gmOlMRpAXXcA7HM4xu9omX8AqdedevKRIxId0WOqOTno+zeda+2h8sy95HaIMCk+G
	 bUBrnjhfGBQGo06Bw9JqGY18N+soUJB+Q+oWBECAJcFlPJv8OiS7A0Ny6NXt0/wBzq
	 0YNWW3Ij51kn6LRNut5b9Ju5pcdI6doRnu+n1s/fHiL9NYqiXaYNhE0aLQH1r21Cg3
	 j8J4qHgQKVfEJVVARzlszEMPUZp2uQ7fxy8GCcW+LD5EUO+Pn14Yu/eEREWfZybWgI
	 lz4aNnFusUI5DLXQ29K1rVKM63ZON90uW6pR5HTjAMFFGPILh9fYyIrbB1hwGcpnvX
	 EeDnn5iHRQHWg==
Date: Tue, 11 Mar 2025 12:22:22 +0100
From: Vinod Koul <vkoul@kernel.org>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add rk3562
Message-ID: <Z9Ac7hhQj9J7sFwJ@vaman>
References: <20241224094240.3817261-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241224094240.3817261-1-kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_042227_543872_195D060A 
X-CRM114-Status: GOOD (  12.81  )
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

On 24-12-24, 17:42, Kever Yang wrote:
> Add compatible for the USB2 phy in the Rockchip RK3562 SoC.
> 
> Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
> ---
> 
>  .../devicetree/bindings/phy/rockchip,inno-usb2phy.yaml         | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> index 6a7ef556414c..367297f6f8b5 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
> @@ -19,6 +19,7 @@ properties:
>        - rockchip,rk3328-usb2phy
>        - rockchip,rk3366-usb2phy
>        - rockchip,rk3399-usb2phy
> +      - rockchip,rk3562-usb2phy
>        - rockchip,rk3568-usb2phy
>        - rockchip,rk3576-usb2phy
>        - rockchip,rk3588-usb2phy
> @@ -150,7 +151,6 @@ allOf:
>              enum:
>                - rockchip,rk3568-usb2phy
>                - rockchip,rk3588-usb2phy
> -

Unrelated change?

>      then:
>        properties:
>          host-port:
> @@ -190,6 +190,7 @@ allOf:
>                - rockchip,rk3328-usb2phy
>                - rockchip,rk3366-usb2phy
>                - rockchip,rk3399-usb2phy
> +              - rockchip,rk3562-usb2phy
>                - rockchip,rk3568-usb2phy
>                - rockchip,rk3588-usb2phy
>                - rockchip,rv1108-usb2phy
> -- 
> 2.25.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
