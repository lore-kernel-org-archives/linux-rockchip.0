Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA8ACCD37AC
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 May 2026 19:21:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ci26oriE1HcyX+/IKmMFOpuUQxAPIty+0MFXRbJnSIg=; b=oCCRZNNTs+g2jP
	TOfwPmMjg0V8pcFV1eGfjI9PgA0ditfXAKTG12ADEVL20+RnQxGrFiSvTJsaVfYqD9atFZ7BgnoYD
	Gf9t4L4CqbvVxoUtmzxDH9hyswbAaUbbGSKJoeS2dh+zRIrmGPBFbznGEj5N0SVpw9oEbIghG2KZY
	0K7H8f+g10U54fphfeLsvFIV6wWGCBVaITNbruhae1RXye/hFWQ+KXQExZzgEW+q+gnph+Pn70+5n
	f73FV/Fx9Hrb3efI1lIGxwDnyv4rs23BWiK96AFD7fHcLAdpZ40Y2MqucZ+RtGdjsts+8+dRiy2Ut
	K5QGC78Y7DAdyNX3mQkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNF9E-00000003Z1p-2FAt;
	Wed, 13 May 2026 19:21:36 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNF9B-00000003Z17-3ydE;
	Wed, 13 May 2026 19:21:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3EB5742D8C;
	Wed, 13 May 2026 19:21:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAB02C19425;
	Wed, 13 May 2026 19:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778700093;
	bh=lWXs1bqOmPoc46gGSfD4IrJfDLSHEiOP2ZwgIfqFCeE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MDDXiRpAo6z5wRS/5+yaIYY4EQErovhLH41ZDVkr0qB8WpqWuFgcJLMgOy/H/Q3N1
	 Jji9uMHWIExSdd3X4E/ua7UQ0tp1T6G4c0x2G3u89CKeAy76o9LIM4yjFVtClZUj7w
	 33R0wttETSyam5oZ/LMjoTJYcP1gc1T2kpJqTbxPUB4ARyk8aeOWdhePWqWLyWmt3v
	 vyy6ueMehMy2siXqW5O72ZBjxGvvMe6Q4F6b4vH88WXDE52mB4yxag2RHIi9WN5/rQ
	 aWKP0muE7fpTNSCMxT5Wlc1s5uPsv+9NQe8Sxfp4ftwQ7x3d+riQ/9arfYg+oUdmsc
	 LqRy4Ur0wODZw==
Date: Wed, 13 May 2026 14:21:30 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Liu Changjie <liucj1228@outlook.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org, krzk+dt@kernel.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add LCKFB Taishan Pi 3M
Message-ID: <177870008974.1728187.1071588098659841130.robh@kernel.org>
References: <MN0PR19MB6091C07C729B83E594722E84AC3C2@MN0PR19MB6091.namprd19.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN0PR19MB6091C07C729B83E594722E84AC3C2@MN0PR19MB6091.namprd19.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_122134_008744_28CAF007 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
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


On Thu, 07 May 2026 11:07:52 +0800, Liu Changjie wrote:
> Add the compatible string for LCKFB Taishan Pi 3M, a board based on
> the Rockchip RK3576 SoC.
> 
> Signed-off-by: Liu Changjie <liucj1228@outlook.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
