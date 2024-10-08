Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5A12CEF178
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Oct 2024 13:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H8DJJpaph0DoXGse1/YSHv8X9DldsY+XRLc54ShcH4Q=; b=jpJ587zKZvcDah
	dM5vm4n5SBklh7PpbcbeGX2hRHfBfqUmjaEf6SjUkF/WB4odOJIHdESxvBBwINUZIOrhCTyMkoXsF
	/QdlxS2eb0C1zCPjAXA4QcOE9RSce4grsslMSxKvrKxtx8e/b9aqQcss56ulL5wcl3JG14a0iljPv
	w7b9RgtGO6FLPp7y9e4nMPBvzD/reT/IMa9mjH/FtS+qXw2/+WkXexZEStzhyRI4FJgpyF+i0/CVu
	vwJVqOKghTm31KPmHNYbPvk9Q5uWOxP3YOykEKbcI/W5MG3hyC8NBJ8jFSGGsFeTSpqpYeUbZT8zF
	wCXnqiWOjlJVQ3MhqY2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syASY-0000000623e-2g32;
	Tue, 08 Oct 2024 13:41:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syAK1-0000000606e-3cLa
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Oct 2024 13:32:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 101365C5C4C;
	Tue,  8 Oct 2024 13:32:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65D6CC4CEC7;
	Tue,  8 Oct 2024 13:32:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728394337;
	bh=m3Dqaue9iMHe36I/93iGbTtg5g0XsNP1DjGguFYsNxE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n3ffvz4MdASGCADyFqcOUDV3RAoKJ0UC0IMNe+xmXbpkLs55+uR3st3mH2w+0QqAC
	 hUHLQrtNj2qlRYMakBl95BmzI+lL6m2y40hXK8ucPYmaJzgyaA1Yc/mpIFWZKBjp20
	 WyqPeVRSvEDKZkyu2TskwsveLVsVNmo0VqrB0cNRngMIFX0fKMp7p0k16vCWzLNWor
	 /PuXmwHHSDUdUGzMKvUJnEfA2BGYLvCbHn9ksdJ/dWY0C/0ZQskX39pusYBGtrIXzl
	 cLegrKJm+fmX/OVgHwztKx+d7ukPh+ZLN8NomG57k10SZcEm74PevVZVu8UXc1k+eF
	 iQRzPmLKmuNsg==
Date: Tue, 8 Oct 2024 15:32:14 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, "Martin K . Petersen" <martin.petersen@oracle.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 2/5] dt-bindings: ufs: Document Rockchip UFS host
 controller
Message-ID: <pthhldiu7mus3ehk2yndro5npyqaqdenru53daz34gx7vrizlp@ub7lgvoyiq6a>
References: <1728368130-37213-1-git-send-email-shawn.lin@rock-chips.com>
 <1728368130-37213-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1728368130-37213-3-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241008_063217_976853_E6BC8E55 
X-CRM114-Status: GOOD (  13.23  )
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

On Tue, Oct 08, 2024 at 02:15:27PM +0800, Shawn Lin wrote:
> Document Rockchip UFS host controller for RK3576 SoC.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> 
> ---
> 
> Changes in v3:
> - rename the file to rockchip,rk3576-ufshc.yaml
> - add description for reset-gpios
> - use rockchip,rk3576-ufshc as compatible

... 

> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 4
> +
> +  reset-names:
> +    items:
> +      - const: biu
> +      - const: sys
> +      - const: ufs
> +      - const: grf
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: |
> +      GPIO specifiers for host to reset the device.

Redundant description. I don't get why did you add it.... maybe we were
confused by duplicating resets and GPIO, but then say here something
useful not what the property name is already saying.

E.g. Which pin is this? Active low/high? Resets which device - phy?
memory?

With proper description:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
