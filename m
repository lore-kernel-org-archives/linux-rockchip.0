Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2745ACD3443
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 15:35:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nouCr4oO0BGdxdCrvEC3jFd8w6gwU/lUGqKYq8kDq4g=; b=LxnepqPnY8hleU
	tteW3Osa5Azl2jmmMKCDy3hbKgQ0R4ROAMdYcJ8OP2wPHeT3R8q3njgTogx91YrgGvC75JjRochL8
	PtBGOt0xwrFsMtaCdhj2Uy8Nh+dvx6znoBosxFTovUyObVDTM4SWAIdTGjILHGMhB6WJosXybLSyY
	rVfHxNXRA5h+K3cxaO6mG7vC/5qM37tuflnCanP0d8JKFhLkD93sLEJ2l4ZXzAupUxRM4doIjEuIH
	VhCx8lgR+F+Md1575etxRGCzwS2QvMqOu/MTEjxQ9vKqalKMXDuw8Rs9mwuBSejrrEMipaOjkBmat
	nRVY2NBeuwkj/6Lwt0EA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVYl-00000000tOB-3DGv;
	Tue, 03 Sep 2024 15:35:11 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVSl-00000000rKw-15Fc;
	Tue, 03 Sep 2024 15:29:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3B04CA437FC;
	Tue,  3 Sep 2024 15:28:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD206C4CEC4;
	Tue,  3 Sep 2024 15:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725377338;
	bh=ALtY1uTGvm73ECIw1cW5WXPk2oh6kLs/WkkEuo01ZUs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pspOMxW0pmWJxTJ4aiM+lyXKx17oey5qAUhcCxk7nC6mjvhzW6iA708Z9v7x6j6J5
	 mcrblk+qCr7l7xazH6r7VAOweNCxy6mAJrGoYYSwVTe+7993xiAroPsRdrsWNnIA1M
	 +BROm2gBmQS4BlEdvYypSd9WmlHNFRB6TxLNEQNDgJ7cPH3+2gVburrdpLy6dh6RYG
	 jRnoE4S1mbkhL1AmKNVs8OAr6KIXIwNE5T+I+QCUxNdAgXu9a/tqDQsUXVK2bvyZpy
	 2gTfWzEuLFi0xt9cc8AojJ9rTEYLUbtikv+12BXm++8JAFKA4Vhath36nCHioFuTuV
	 JkI+Qx68p2fGg==
Date: Tue, 3 Sep 2024 10:28:56 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
Cc: devicetree@vger.kernel.org, linux-rtc@vger.kernel.org,
	conor+dt@kernel.org, krzk+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	alexandre.belloni@bootlin.com, heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 7/8] dt-bindings: arm: rockchip: Add Relfor Saib
Message-ID: <172537733571.1049795.2978620254243576563.robh@kernel.org>
References: <20240903105245.715899-1-karthikeyan@linumiz.com>
 <20240903105245.715899-8-karthikeyan@linumiz.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903105245.715899-8-karthikeyan@linumiz.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_082859_384145_E9AF4201 
X-CRM114-Status: GOOD (  10.06  )
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


On Tue, 03 Sep 2024 16:22:44 +0530, Karthikeyan Krishnasamy wrote:
> Add devicetree binding for the Relfor saib board which
> is based on Rockchip RV1109
> 
> Signed-off-by: Karthikeyan Krishnasamy <karthikeyan@linumiz.com>
> ---
> 
> Notes:
>     v2:
>     - fix wrong usage of SoC enum
> 
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
