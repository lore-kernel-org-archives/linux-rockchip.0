Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A7F1CA5FD4
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2026 09:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNGDJpneVGsi7yrmjxLXluQI90bCx3ABDr3EcBq+0Q0=; b=wxJL/xstqpQFbx
	iE4gv4xr7f0cdWJsl0B2WBxJQNOTFrOc9luCbtk1Qc2qcqf4EEdFDyKdJDtXxlELPzOdqtxdhwIro
	RccLznhu5ADzFb491D+UNVmegAe37MfkGWvo2p7wJG3ww4CDziwKzXunCklcgZkvVmXvgdKwcNd+M
	82CxmriYIU7qdWwrapS3lb8xeErFUNOc/9rRDskS24JGZkuuHlA+7IpP/qESTuGEB/N6Z95qU1BnM
	nz/Vrcap/hAseSYu7X9IHPN91jSIFDxW3gjO4mATwpDCvONjTas7NVlFoSgdxO9y7Jf9V4fQXQnXD
	APPt0keYnRfVXaBenldw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCZHB-0000000B4R2-47D5;
	Fri, 02 Oct 2026 09:09:57 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCZHA-0000000B4Q7-30H0;
	Fri, 02 Oct 2026 09:09:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3ED4842E5E;
	Fri,  2 Oct 2026 09:09:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 256A01F000FF;
	Fri,  2 Oct 2026 09:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790932196;
	bh=YGEaSpoZvoET9V5FtqUSRMfYIQ5YULrJRJ1KA1LZnMw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A7wUsDvmdnfgxr06TD6qIRYIuRgaSpLhhefkEn1inuRF1NMdYTMwoPzmqkAfyIpIm
	 RnEiH+WVhAY+npYSJzRpLp/37Ivq3yf89PL7Kgalr0bqOHClh55mKpCBCxQ/d11X+y
	 q1g395NRQ/gsFNQbxAw3cKfCtaEZS0Es2g82SNX/3HgkFy6shvW0WpuU4OTpANO42V
	 /CF/AtPtBMjBTC9Rl5HfgGX+3DO7MZ2vQYAFueUYRTI7dgPp7AZdfFKHUsagxohO1T
	 P35snTUifOcSg9G5ZjRcXr0sHFGWbyPEiZH/4EyB9ygBvy/U1JkDbJ25hlo/yN4OMf
	 J9yP10juxnrzA==
Date: Fri, 2 Oct 2026 11:09:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: BG9OXA <bg9oxa@163.com>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: rockchip: add ALIENTEK
 QuarkPi-CA2
Message-ID: <20261002-armored-robin-of-influence-9a74e1@quoll>
References: <179086264917.29834.5543033479795788817@163.com>
 <179086266302.29834.11881496781543805639@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <179086266302.29834.11881496781543805639@163.com>
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

On Thu, Oct 01, 2026 at 09:51:03PM +0800, BG9OXA wrote:
> Document the ALIENTEK QuarkPi-CA2, an RK3588S based single board computer.
> 
> Signed-off-by: BG9OXA <bg9oxa@163.com>

NAK

nothing improved, you just ignored feedback...

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
