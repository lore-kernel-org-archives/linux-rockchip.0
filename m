Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16E89C5CFC1
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Aug 2026 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0kSuUj2C0wp9UOJkSC+oOk0UwfrZCuQyRIIDB1av64=; b=4O+6pLfPiRmYBl
	mVck29Fp/8hKw3vclmIn2hQBFEYfuWkx/fQ2KqgLMgBVZysdqkFyW+xhQRXC9iBt4oSevo0YZLp+B
	8eUYSxpPhOZEhqACKYWiwOok0atysuSZ2YtmhWX+B4bVvs+i9JrL3v+QZgHuePV6AmogQyZaTZDsZ
	jUddogJlwDgrPL7BKfpM727mPvyG/Forc8ZOUuYaixhlXnzC0ojh+cXgA8KwnQSV66OmKc2LX5y0l
	/BNchFepteMvMxIVch1BeEUlarmaxSRfLNe8Pdd5J/Vt/Qx2848V0XYAHlgzvNEyNxw4l+Hkb/JOx
	DNGIi9RYHVgjZYVYj3YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wup2R-00000002VGz-1Dzu;
	Fri, 14 Aug 2026 10:21:23 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wup2P-00000002VGf-371h;
	Fri, 14 Aug 2026 10:21:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0B308601DE;
	Fri, 14 Aug 2026 10:21:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A03A01F000E9;
	Fri, 14 Aug 2026 10:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786702880;
	bh=qb/LiS0W/y7yHH9+e9qvnb8YEVHpUvl7FHRXw8WQl1k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YOQIcoe74kRChWbmv/mXVEEfZslk1rIXehTZgx5CDMkKuRpWJu3eNzEYwCxAYDHIF
	 rGAeFTLXL624XJXehQIEv2NlHuZ1glC0iYB+OkXr7JUbFlccXhtpXVzjjRdQ0ajgZ5
	 cr4dc2//RkfO+zrYTLfzXFQOZUeXbjDJiMwplmREsy+myyWeOZOo7E/2+shinsbFyt
	 Btf73cOA/INOO6XfrdFBpa/W8kejnGUZ7lMDivb0RQIM4c8iqfaGnFvWa7o24ofMiL
	 pp5jkK0XYqVMhb+j/d3X1cX7tYM+HEyGYFGI0+KGx/Z9vNs223tNhnPanHcf3oQ0dQ
	 TpAMjIFvNQ3pA==
Date: Fri, 14 Aug 2026 12:21:12 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vladislav Leonov <vlad@zlab.su>
Cc: linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Simon Glass <sjg@chromium.org>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Andi Shyti <andi.shyti@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, linux-i2c@vger.kernel.org
Subject: Re: [PATCH 11/25] dt-bindings: i2c: rk3x: Add RV1106 compatible
Message-ID: <20260814-resilient-handsome-ibis-d5efdd@quoll>
References: <20260810121121.210040-1-vlad@zlab.su>
 <20260810121121.210040-12-vlad@zlab.su>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260810121121.210040-12-vlad@zlab.su>
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

On Mon, Aug 10, 2026 at 03:11:02PM +0300, Vladislav Leonov wrote:
> The RV1106 I2C controller is compatible with the one found on RK3399,

Add RV1106 I2C controller, which is compatible ... /

One sentence, one line or two lines.

> so add the "rockchip,rv1106-i2c" compatible to the list of variants
> that fall back to "rockchip,rk3399-i2c".

No need to repeat obvious parts of the diff. Explain non-obvious parts,
though, if they are.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
