Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0037CCCF9EE
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 19:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fi3IwoOao16FUaPjrEL4yhf5Dy+UO9pD1Y2qTwK76ss=; b=suMTwRSozntvaU
	D2GYkR2Sf80dKIWbxZDGlAmYpPZ8VlNHoJ04i24TJ1XnzcFnHk0mBhIXimvY8f3pxjBebqYawvQM+
	1X6d40CkcHf+dhywdDwPrxw4MmatttnJ0zQCipcppAjNk+mgGpzUEkhDlXzW0UB+5tkhZfciNGkRD
	vCaAx83AMZ0y4Do8ByGhDn4K8U6yImAA9saQF8ghocomkaxQl6BuLE0P3ExPm16fX2TolnsrmEMA3
	y21vAfghu4blxfPZipAyeX28d2NLNOqVltu3vciBPoSqu5L8uCAG0nusz8EFa3WPFiEZGvgnnEA17
	+GS1Yk8ravPIetz+eJiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSyL-0000000EgCf-0uTj;
	Mon, 27 Oct 2025 19:33:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDSyJ-0000000EgCF-14S1;
	Mon, 27 Oct 2025 19:33:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6FDDC6206B;
	Mon, 27 Oct 2025 19:33:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D61E8C4CEFD;
	Mon, 27 Oct 2025 19:33:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761593618;
	bh=uPve+l7+cJjOEfzkb8Q0gunZrnDYl+FrJHFKM+t/nqE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J5HlgI0mM54pKfQ021GKCv4Dk2osy/WkbrTx1weBaulJibkE20dhmQoF/jAh2n6Il
	 EESQtP0S5rsKorEnXTKHI/d3WUZaZDsLJjiEtZIUmGTTtIOmvyG5QuFYiXzNHbX/56
	 1iMWdpVr2Q5DZvyxTTnpa7CthCbkoB3pvgnY7OeF39p4v6iv4hA4KRUm5gERl/ce7C
	 TlpA2dbApby0cWE/IhRhpkhIupvqAm7pVa1WaFWdWJ3dyM6gIZD47+AWdpZCOTRIXM
	 +Hx4Hc05Jo7L7/mviaz4Nnht2RqWRoujac+6cXjXi3xgU9gCj6+McbIpeTDfSamfcz
	 vWGMWfJhA5Uhw==
Date: Mon, 27 Oct 2025 14:33:36 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Coia Prant <coiaprant@gmail.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 1/3] dt-bindings: vendor-prefixes: Add NineTripod
Message-ID: <176159361376.1460089.7581284266775192820.robh@kernel.org>
References: <20251026150358.1078453-1-coiaprant@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251026150358.1078453-1-coiaprant@gmail.com>
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


On Sun, 26 Oct 2025 23:03:56 +0800, Coia Prant wrote:
> Add NineTripod to the vendor prefixes.
> 
> Signed-off-by: Coia Prant <coiaprant@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
