Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18769C54EBE
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Jan 2023 05:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8z1hk16vtaxUvgF2sHh60UVgBhN+9nu3LfmqeuJyW6I=; b=zO2MgwwZBLiNnR
	ZkUrIjU0mmHkWHWcXt9QFLizSQYaMjQR5/Yk5Au9/2nkltj1MZzFpnUBW32CLHVyL3Cc1c+oXVkHO
	71NZiCUhDDrmRp8DjmkVJZctZEChGV094NU2OgR+5S2xVy/u3ZMCml1IWaXz1CVHIWIyIwpCbjh3x
	UqkmaHkxIqp0AjrDaEQ/ILSaHdadijrozjnnimkWv3G3rSXju82jhcxbtUpZ8fWprBFPexZU2eh47
	nBGS1c/+up+7lS48gmeyFOB9SOriPvMCN0IAcIRCP0Syg4UTfyUgL829oVp7OMB78IW8+Vr/c7RTu
	di03xsYBh55rspjJCuvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGCvH-000aiR-Tt; Fri, 13 Jan 2023 05:48:15 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGCuS-000aKC-N9; Fri, 13 Jan 2023 05:47:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 7D33CCE2012;
	Fri, 13 Jan 2023 05:47:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08365C433EF;
	Fri, 13 Jan 2023 05:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673588833;
	bh=LW8TnaibHU54vrL0vPl9vuILz/2J0PtXSn9Y9MJpIM0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=jYXuikPElIiZLpCpgEPw9EzisX6zGqhA8mqkSB44BiFu/Wt0AnAdt9se/2o7AE5YP
	 qm1RuwwbrJFHIpqEDlh7O0j0dyJShzn0/cZXM3C3TDaEmEnfbvWRbE3XviQrBnlCgA
	 JHcHUBiolb+hvW1kqRxDbvnk0sBq5j40+yVgzkoG9v5zI8uFNVMPeL4lSmQsGiJ5at
	 4pi1lUpHoI09/NO209TPNPI1q2hUObiyKpZtxXHUBpfnF934aBcYKylPDQJkSuf4pA
	 ZKpwpsf8Rm3fMojzOIA2x7/4yfpcxJ6Aiaf248BEkgFR60dXgloQuZlOuCUmr56jk2
	 ambovgE/5biTg==
Date: Thu, 12 Jan 2023 21:47:12 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Anand Moon <anand@edgeble.ai>
Cc: "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 David Wu <david.wu@rock-chips.com>, Jagan Teki <jagan@edgeble.ai>, Johan
 Jonker <jbx6244@gmail.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski@linaro.org>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix
 rv1126 compatible warning
Message-ID: <20230112214712.0a32189d@kernel.org>
In-Reply-To: <20230111172437.5295-1-anand@edgeble.ai>
References: <20230111172437.5295-1-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_214725_003994_51AC1A4D 
X-CRM114-Status: GOOD (  12.78  )
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

On Wed, 11 Jan 2023 17:24:31 +0000 Anand Moon wrote:
> Fix compatible string for RV1126 gmac, and constrain it to
> be compatible with Synopsys dwmac 4.20a.
> 
> fix below warning
> $ make CHECK_DTBS=y rv1126-edgeble-neu2-io.dtb
> arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
> 		 compatible: 'oneOf' conditional failed, one must be fixed:
>         ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
>         'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']
> 
> Fixes: b36fe2f43662 ("dt-bindings: net: rockchip-dwmac: add rv1126 compatible")
> Reviewed-by: Jagan Teki <jagan@edgeble.ai>
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Anand Moon <anand@edgeble.ai>

I think this patch should go via net-next?
Please let us know when it's ready to be applied, 
'cause we're not CCed on the entire series..

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
