Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6256EC83F22
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jul 2025 01:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCvdp/f4kjMZyCLA4i9Xa7JO/1ip6ZGjU7fQxdVVCzc=; b=NAsd/xmBdir7bu
	fpnqvrhk9Xww9vOdzCWXHZ4zX/S3wQ6YwZyiTtRLcy+8mYBXS1bOkzZSiH6GSVqWw0ZqTKW94uG28
	vM4IufO+3SPOB2kXIoWaH8ScnquWDEP/FCH9SpZ21xvKtJDvZc71XWhuv0k3jt2tfl7vQSh3nsahY
	nd3HmoZn9frl0U2d/cJj8ob/+GXWqzrqjh2x9jTSW07lm+Qgj9UQ93oX1DRz0m3+ADSxOy6kvH1nh
	gQ29tJHEbLmrK8vw2PTOAxfurGhuknryKvmsas1IWaN6rdf6K6l3anyGuCfkIEqg3kzKLYBjwCNSz
	4xU9ivt0JHwSI1+LIx8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ua2QK-0000000DQMd-0qnN;
	Fri, 11 Jul 2025 01:19:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZzcC-0000000D93r-0Xr3;
	Thu, 10 Jul 2025 22:19:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 72E0A613AC;
	Thu, 10 Jul 2025 22:19:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0A0FC4CEE3;
	Thu, 10 Jul 2025 22:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752185978;
	bh=qWJ9OuQImauUF3Zjux87h1FusUr34Lwz8v8vuFD8Z9o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uSEkg1r5k9u8Rf86Fq+1vnxiZw+blZLEXki4fYuI3RS566yZT0ufwm0d0dpuhAoro
	 fWOGdRFPA77cKUV6mh/hRDw2xSvXAaqoDXF4pGkEEDxYFVtJ12f/uAcDSiAw+KIx36
	 jmAS4UlN9Td6wVH1XwEr9g5bgxQR0qCxkCnn4SQIxJasEQyk/sZvCALU/uD7hWCXpi
	 uOEmoF9QIrewUGnT3IpBRkzKE0g3W7r+xUeHeca7wcDxIUJCpYq9oxFmzlDkjy2uYG
	 6TDoRUSAKCizYzzSDS7KktmfGOztHwjF54DFqCQ9l93ZDZtVYC2RDuWqPmnyaiYcqP
	 XWdcgv7D+RQRA==
Date: Thu, 10 Jul 2025 17:19:37 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	Dragan Simic <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4 03/10] dt-bindings: display: rockchip,dw-mipi-dsi:
 Drop address/size cells
Message-ID: <175218597662.4163951.14813766986445272508.robh@kernel.org>
References: <20250709132323.128757-1-didi.debian@cknow.org>
 <20250709132323.128757-4-didi.debian@cknow.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250709132323.128757-4-didi.debian@cknow.org>
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


On Wed, 09 Jul 2025 15:15:16 +0200, Diederik de Haas wrote:
> The "rockchip,dw-mipi-dsi" binding has allOf "snps,dw-mipi-dsi.yaml"
> which has allOf "dsi-controller.yaml", which already has #address-cells
> and #size-cells defined as '1' and '0' respectively.
> So drop this re-definition.
> 
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
> ---
>  .../bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml     | 6 ------
>  1 file changed, 6 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
