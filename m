Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEB27C54798
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 00:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+JuBO4L89Vx6IWKF62zHkmK5X4fZ58pbEe54kuq9vwo=; b=djemhosE9hAPd3
	5osS7ZWZq0EKo7hgwPFX+FBW3/rineD4nueWW2Wvsgiy4tRnBOE481GmVHHKXHdWWlxYJYdq54X52
	HaDcqi+hkJP849+jXDWwDUP2pto0+TNbL2gUQppU3oO/Ds+Boq26Ont5ucA/uMaUJm1jpGyA116Ry
	vDKHvjnFXp4/gHBO66TIolGQbK98GVsLZRRHeJ0AbE6atNH4zZIGxyibKY103W0/d3YL8Y3FM9b77
	sdEYFzyOHblORZQRjc8RYVIpOvC59k8BhE2CuEd1zzi6CTuEloTK6x2qf1z1iS14VlTc3p4Ogbedd
	PFqARP7dGvfRHyD87OBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdJS5-00000007B5k-3dFr;
	Fri, 23 Feb 2024 00:30:09 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdJRb-00000007AhP-16mT;
	Fri, 23 Feb 2024 00:29:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D920ECE29A8;
	Fri, 23 Feb 2024 00:29:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D216AC433F1;
	Fri, 23 Feb 2024 00:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708648169;
	bh=ZeCNJBXQ9bwuS1WWwQEywvtoXAbTPDeQyBV5lMwyy7M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=k2jv0/GBroQoysc8chdUrCOdvQ2fVBshGFizT8Vf+drkep1X4XtlCyNuMkBlQqtzY
	 7EoOaPhrs/GuyNfV6VED66KOsThDdU7+tIlXOXk1wFv1Ua1/tNyRaM7vGeCW3JCCZS
	 6b5X6iIg0PQFhHO+tVO9OXn0UZmLQ4bVwtZxKjKXJbOkyPs6pGt3Rt5IQrjIjDh24t
	 7qxsLBWZY5XqyPJYM1kEY7StkHOlrkE3QF/Ir3dvWDGucwos6x3KCp2w7NE6MnioOT
	 f0UhYX2LfiZWsvZ+ha35DUMg9DZYAJFaRC3ziT0Uu1zFAMPdYdrsvUILe2Gy0fQyj8
	 49C/3PuHnQKdA==
Date: Thu, 22 Feb 2024 17:29:25 -0700
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	=?iso-8859-1?Q?Th=E9o?= Lebrun <theo.lebrun@bootlin.com>,
	linux-media@vger.kernel.org,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mehdi Djait <mehdi.djait.k@gmail.com>
Subject: Re: [PATCH 03/14] media: dt-bindings: media: rockchip,px30-vip: add
 optional property iommus
Message-ID: <170864816486.3960279.12154290757664269303.robh@kernel.org>
References: <20240220-v6-8-topic-rk3568-vicap-v1-0-2680a1fa640b@wolfvision.net>
 <20240220-v6-8-topic-rk3568-vicap-v1-3-2680a1fa640b@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240220-v6-8-topic-rk3568-vicap-v1-3-2680a1fa640b@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_162950_619769_BF3F8428 
X-CRM114-Status: UNSURE (   9.70  )
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


On Tue, 20 Feb 2024 10:39:13 +0100, Michael Riesch wrote:
> The PX30 VIP features an IOMMU and can be operated with or without using
> it. Document the property iommus in order to support the former case.
> 
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  Documentation/devicetree/bindings/media/rockchip,px30-vip.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
