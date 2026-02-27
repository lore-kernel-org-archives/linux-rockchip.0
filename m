Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 014B9FD5307
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 07:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TPbEAWggO2HKtGF8blr+TjvDwkuIthjikkycqVc3xYQ=; b=ET7gfamARFe8UY
	3+C1smgbhPdpcrBZ7DGMpTPJlJX0Iczggrl0nH9MLi4KHDvuFOZNr1WAlPM3FHMJmZfhbHEyUishW
	YL/IKVTTPbtrZXM2LODwRBkbOWHEpf2n4dFtPInB/pPNQ2v4DwplNnmZDq0V3WRM/PvaprzW1Gdii
	Vklmf5AEf7bPpU4kSyk0N49TCx2c36ajdJ2ougoduIiQl6StsHl+/uH5QxnBqlnZEMlQZcU67eMgJ
	b2TC5zgS/dVq6CSAXN1WhT47n2Ovsrk0dVnB3dNq5qWauolahuciEiZFEtTRGsXMF5Ngt7i2EQx9W
	A6R2MLFD8CxtC/aYfEmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvsSA-00000007u5c-0iLi;
	Fri, 27 Feb 2026 07:40:02 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvsS8-00000007u4v-1ixT;
	Fri, 27 Feb 2026 07:40:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 8782C60008;
	Fri, 27 Feb 2026 07:39:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1085C116C6;
	Fri, 27 Feb 2026 07:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772177998;
	bh=sOiYomvFhDq7ZX6J8GSoe63dznpvQRU6nVHqlNksY7w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LpG7zHTpjfu9gK+YkZ5ZMc+iPrUQxQRM+TRD/8fEXAvIU2oEzEfJ8EZYp09RZrNle
	 z3507pfPNT1krjeo+CoR+VRzyHlO2kh1EzkCVJHJ5a8JJYvj6KIlVGcFIh/93SuwQA
	 M2zDS1dYhBz6jucMZEAGInEAH7bPHzcg0ntnfCYBsCvJiYo5aE8cg7ymB+v2eTJxFB
	 LIgoibaoj5BtvYbyZHQNhI/XvgaR+E/eKKehM6LSqh/06DCZAXxWtxkia01p/iGxrw
	 GBqIAQCdiGCxgmRw7bxMVr3uAtK5h6TdsSQcgqQDLQIHGH4EBUBW0bxORzur7FjXUS
	 pJfTz/yU345Hg==
Date: Fri, 27 Feb 2026 08:39:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Conor Dooley <conor@kernel.org>
Subject: Re: [PATCH v4 1/3] media: dt-bindings: rockchip,vdec: Add
 alternative reg-names order for RK35{76,88}
Message-ID: <20260227-aromatic-aboriginal-ibis-d14e7f@quoll>
References: <20260226-vdec-reg-order-rk3576-v4-0-b8d72dc75250@collabora.com>
 <20260226-vdec-reg-order-rk3576-v4-1-b8d72dc75250@collabora.com>
 <20260226-salute-threaten-a3eabb232396@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260226-salute-threaten-a3eabb232396@spud>
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Conor Dooley <conor.dooley@microchip.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Hans Verkuil <hverkuil@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Feb 26, 2026 at 06:43:31PM +0000, Conor Dooley wrote:
> On Thu, Feb 26, 2026 at 12:46:53PM +0200, Cristian Ciocaltea wrote:
> > With the introduction of the RK3588 SoC, and RK3576 afterwards, two more
> > register blocks have been provided for the video decoder unit.
> > 
> > However, the binding does not properly describe the new hardware layout,
> > as it breaks the convention expecting the unit address to indicate the
> > start of the first register range, i.e. 'function' block is listed
> > before 'link' instead of the opposite.
> 
> I don't understand this commit message or rationale for an ABI break.


The description is indeed wrong. The binding properly describes new
hardware layout. They just don't like it.

Hardware has three separate address spaces and EXACT three correct
separate address spaces are described the binding.

> Changing the unit address seems like a "free" fix to your problem,
> especially when reg-names is not a required property that you can rely
> on. Actually, there may be a bug in the driver - it expects reg-names
> for rk3576-vdec and rk3588-vdec but the binding doesn't mandate their
> presence for those devices.
> 
> Deprecating the order also makes little sense to me, given that some of
> these devices only have one reg entry, which as far as I can tell from
> looking at the driver *is* the "function" region, so it can never be
> entirely deprecated.

There is "if" at the bottom of the binding, so the one entry does not
use reg-names.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
