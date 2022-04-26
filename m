Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DE1DC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 16:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=vlu/Xh32Uf6B06+feyDE+3h1YEZ60PvJ0SszaClf9V0=; b=EZ8ZFBZGBy5l50
	ChjtR8yEnr8Jqta82utM+CpLqldSyqDYnBHq8e/vOOUvLX9q9IYwJXGLafMLlR2/t2oIT0av/+Wjr
	ld5Bkc881pjyOldT/LBIoMMiHdd88KHcqXUDcxaNj9HOWXbqr4GwMpFHhiMitIYHTf03/qU6tRIlO
	nlVQ4la9F27C+hMW1TMK/uLSYc/aeHrLvL0AAfSToccKLLJsOJo/UT3WAeU8UNPoOrJ4YnD3KiWBp
	OiBheWDSHHc6WTmKIlCtOkuY2qZghWw+i/2w59bjyKREnFf9xKRnmM8RizAXS/FJZePyC60nFBJ2I
	qpkc36skVw+uARMiA9nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njNg4-00FH12-IC; Tue, 26 Apr 2022 16:04:36 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njNfl-00FGsA-AR; Tue, 26 Apr 2022 16:04:19 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 62101CE1F71;
 Tue, 26 Apr 2022 16:04:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A7CCC385AA;
 Tue, 26 Apr 2022 16:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650989051;
 bh=DF6HiaHX+dY5oLx+lPOr2QI/LdmMgjcLKt3ZE8J8gK8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=fUz4dsSHHsZ0RthaQqqNVleFK3yj7u6ZWZ3AqxjSzYd816B8v5+wSSrUlbJhbQPxI
 2EEb+sLh/UV0OfQxxkG/by3e08H39Z/H0OtgKBsYiEz6tkjRb2PAFpSYbUpWSRe7KA
 JufQJb17P6X/yy0AyPKoNLs+yGdUns/bEH9USJGBTMejgYFh/jRoEaRiI8+AQMoT2Q
 VYQaIYj+rIqNuf2JVNoZvg/wKfz8LJ0yIr9q3R6MfilJysBWIHdYYBGuk8JaZfTQg/
 gY9v9s6a0774Gr953EHhaOe6amXWYY43lNAm1Kg8Aq3PDuVB5b/n9+mJjCrBoJiwdH
 j1/oGcEXQmUhA==
Date: Tue, 26 Apr 2022 11:04:09 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-rockchip@lists.infradead.org,
 Frank Wunderlich <frank-w@public-files.de>,
 Bjorn Helgaas <bhelgaas@google.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>,
 Vinod Koul <vkoul@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Subject: Re: [RFC/RFT v2 09/11] dt-bindings: pci: add lane-map to rockchip
 PCIe binding
Message-ID: <20220426160409.GA1731042@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220426132139.26761-10-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_090417_744125_874FC8CD 
X-CRM114-Status: GOOD (  29.02  )
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

On Tue, Apr 26, 2022 at 03:21:37PM +0200, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Create new property for (rockchip) PCIe controller binding to
> define lane mapping.
> 
> Rockchip driver uses this for bifurcation (true/false) based
> on lanes should be splitted across controllers or not.
> 
> On rk3568 there are 2 PCIe Controllers which share 2 PCIe lanes.
> 
> pcie3x1: pcie@fe270000 //lane1 when using 1+1
> pcie3x2: pcie@fe280000 //lane0 when using 1+1
> 
> This ends up in one Controller (pcie3x1) uses lane-map = <0 1>; and
> the other lane-map = <1 0>; (pcie3x2)
> 
> This means there are 2 lanes (count of numbers), one (by position)
> is mapped to the first controller, the other one is used on the other
> controller.
> 
> In rockchip PCIe driver the lane-map is simply converted to the
> bifurcation bool instead of direct mapping a specific lane to a
> controller.
> 
> There is not yet any slot mapping below one controller.
> But for binding this may be possible like:
> 
> lane-map = <1 2 3 3 4 4 4 4>;
>             | | | ...
>         lane0 | |
>           lane1 |
>             lane2
> 
> on a 8-lane phy.
> 
> This can map lane0 to port1 (number used at this position),
> lane1 to port2, lanes 2+3 to port 3 and lanes 4,5,6,7 to port 4.
> 
> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
> v2:
> - new patch
> ---
>  Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> index a992970e8b85..998b20b3a9dc 100644
> --- a/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/rockchip-dw-pcie.yaml
> @@ -52,6 +52,8 @@ properties:
>        - const: pclk
>        - const: aux
>  
> +  lane-map: true
> +
>    msi-map: true
>  
>    num-lanes: true
> @@ -74,8 +76,6 @@ properties:
>    reset-names:
>      const: pipe
>  
> -  bifurcation: true
> -

Why are you adding "bifurcation" earlier in the series, then
immediately removing it?  Why not just add "lane-map" directly and
never mention "bifurcation" in the DT at all?

>    vpcie3v3-supply: true
>  
>  required:
> @@ -115,6 +115,7 @@ examples:
>                            "aclk_dbi", "pclk",
>                            "aux";
>              device_type = "pci";
> +            lane-map = <0 1>;
>              linux,pci-domain = <2>;
>              max-link-speed = <2>;
>              msi-map = <0x2000 &its 0x2000 0x1000>;
> -- 
> 2.25.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
