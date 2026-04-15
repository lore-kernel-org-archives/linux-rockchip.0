Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3421F433C5
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Apr 2026 22:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rQDK3Tn/hISizp7Dnw3tJtSRxMX8O+qxvIqbSuuxEcQ=; b=wRpcKJZpnb5JRG
	uE8cvF+dKYiddAsw5RmatjVmVtfHY1HpiM6JT6kd9MqK4WYaJZ7mAT7xUoHZJo1t164bWB+PYQByr
	aEqxgnPle2sRKLznLqqKekZc4lrG7jm+bCJJlP4Hx4iCNWd0bRAnvbPW81fhnCZSnfGS7YSncVpKg
	+DpkAsFQUm4xg0+okS2kh0o0gC19w2pNjbUOE1awMe3qW/35mSlYhGSIDmcrvp1SzNSFY57RM+CCK
	x/Lid/5kXlVKLMhXfbqCh100PEf0OBq3BeTgsBmB1k4jPW4KiiFTFAN+H8FhCQUfdNcHFSEXiSDdY
	LwANFqRol/8foDvf7wgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD8Lq-00000001f7w-0glS;
	Wed, 15 Apr 2026 22:04:50 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wD8Lk-00000001f7g-1yeS
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Apr 2026 22:04:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8D5C760123;
	Wed, 15 Apr 2026 22:04:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01D43C19424;
	Wed, 15 Apr 2026 22:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776290683;
	bh=G8WHssE25KQ6tcDWOQojWxZnoS+qLkfpgZ3Cu4Pcp60=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N/qcc5h4qraB38xx6wKUQzmmnOlQ37RoMzApdWToa84syPrNXCRxo8BegPmq5DlHS
	 c5K5J4ypKfrVQ5pG4cim/rZN2+nb/E/GAAIh2Ml3y4chtj0/BtabVlKNgjMP+gc2gX
	 xrzrcxj6+gl5F6vSdVE2dzbnY80auQbUJ25t6usO85rxQ4tP9iBrQlJ5Y+y72MjYrf
	 gACc1NMwjt4ptPgN3EaLWfvvi0Bd4MyQkSbibeAPrBI7dKf7uP7ykTPJrA+cMQ0CE9
	 v/Cxc8tVSsBBNC0Wm+AFb7oBbs0ceSvW+NSXB+u6lGmID1HXDuIW7dMcPl6xUvv2lq
	 NY0MKifhfWLlg==
Date: Wed, 15 Apr 2026 17:04:41 -0500
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, andy.yan@rock-chips.com,
	krzk+dt@kernel.org, conor+dt@kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: rockchip: dw-hdmi: Allow resets
 for Rockchip HDMI
Message-ID: <20260415220441.GA724186-robh@kernel.org>
References: <20260404200434.1954651-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260404200434.1954651-1-festevam@gmail.com>
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

On Sat, Apr 04, 2026 at 05:04:34PM -0300, Fabio Estevam wrote:
> The Rockchip DW HDMI binding sets unevaluatedProperties: false while
> also inheriting from synopsys,dw-hdmi.yaml via allOf.
> 
> The Synopsys binding defines the optional properties resets and
> reset-names, but due to dt-schema rules these are not considered
> allowed once unevaluatedProperties: false is set in the Rockchip
> schema unless they are re-declared locally.

That's not how unevaluatedProperties works. There is no resets nor 
reset-names in synopsys,dw-hdmi.yaml.

> 
> This went unnoticed because most Rockchip SoCs do not wire a reset line
> to the HDMI controller in their DTS. The rk3228, however, does use a
> reset, which causes dtbs_check to emit:
> 
> Unevaluated properties are not allowed ('resets', 'reset-names')
> 
> Re-declare these properties in the Rockchip schema so they are accepted
> when present, matching the capabilities of the underlying Synopsys IP
> and fixing the dtbs_check warning for rk3228.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml         | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 29716764413a..59fb084bb4fb 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -113,6 +113,12 @@ properties:
>        - port@0
>        - port@1
>  
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    const: hdmi
> +
>    rockchip,grf:
>      $ref: /schemas/types.yaml#/definitions/phandle
>      description:
> -- 
> 2.43.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
