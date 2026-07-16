Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DCB5C4450A
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 08:23:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdv0a8V7IO/QEdwphZifCNi+Ao5oj6lsI8bXSo+WXzg=; b=bAjLbU9J82n7gU
	+ftkcNkDtuUtwVPY75EglusC1tFvxf4paPXrZRWGFMqv/4Oin6hjH9fM1IWQZ+herpxpVuTaNZk3c
	d4vUint+qUfHmu4XRUfEJ6eKcyyU5mETr3bu65Elr3n/I2OVhtvM7vYm++wlFcqFDjl4TvyDAtikv
	8oMB2OhzrrWs9shNOYktHvKztYw0M8qSk5x0jJB4N3DjVz2wTIyiGzd179y2UTfrYjKJ3N5BpoMnu
	QEjHi4N4y0A9sw8ptQKC//VxRggKlSGyxo9S/add/vIpGUtbsURmgqzdfZxDFVY3Exv+/PJpjVIcI
	IuHW6wH67YPSWQkninwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkHNX-0000000Gk0x-2Akc;
	Thu, 16 Jul 2026 08:23:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkHNV-0000000Gk03-2CKz;
	Thu, 16 Jul 2026 08:23:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 4A1DC40229;
	Thu, 16 Jul 2026 08:23:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94F951F00A3A;
	Thu, 16 Jul 2026 08:23:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784190213;
	bh=/7m1JvgzycF3NQ54KraqW0bwlWnQ5KN6rAOdQ8da+hQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BjIszk9JG7cVRGkGeiuy1S+WXOYDRLa0yXFw7uuyGX5HpXIWIj2/k+OUWv73J75Tv
	 maPuTuEBqVPMe7HQtAOKsZkFyuvPZonhrj+lfwOnop9BFxYu/E2zVuDlV9ZsqCL/vR
	 wqZxiZIuVEaILWMgPEy80nUHrThZr18VFuMzi69rELEGmTfFUeL9IUNr5Yy74Mn2r8
	 AmA+7C4Xbhb/m6HYCAWPRd9PVwC8TeAMsQOVZ2Q/Yj9Pdj4YaQXIXvfJp2/jsYNFLp
	 wuvapJnfhuEGnRbuKbDn+Y3W7OwmP62w/USTSlZX/m3ac/RNcq+IreBc0cYBXQw3qT
	 NvfWx2nusXqhQ==
Date: Thu, 16 Jul 2026 10:23:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jiaxing Hu <huhuvmb88@gmail.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add ArmSoM CM5 and CM5-IO
Message-ID: <20260716-artificial-spry-tanuki-1d969e@quoll>
References: <20260716012838.2353939-1-huhuvmb88@gmail.com>
 <20260716012838.2353939-2-huhuvmb88@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260716012838.2353939-2-huhuvmb88@gmail.com>
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

On Thu, Jul 16, 2026 at 01:28:37PM +1200, Jiaxing Hu wrote:
> Add compatibles for the ArmSoM CM5, an RK3576 compute module, and its
> CM5-IO carrier board.
> 
> Signed-off-by: Jiaxing Hu <huhuvmb88@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
