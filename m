Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 62D89EE0AC3
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 11:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RNUy14QKXTFXFQHQYCz+8mUfDP3H3EL9pq4gsF/OuO0=; b=JGtYaHuRVJKfN0
	ggmdYp2kmDoPvMMrTwgHWr0pXDtzzE9lF1pU2PXy6QJ2W6GvYDCfWDbvuk/DjBBw57q18WQIzIHuV
	a3QHzaO3NRNnIIN2EbbkNRkZsaQyBN+npmzwMcl9ZQXXTMqWjreXW/yegsGYrfWusSfOaA7bi67qJ
	V9lvJ/dhkZk1PzrxVGww6pg3awsxscvCkFqqo6Zqkswm1W2br7nfhwqCzOPyXke58nTXgN75RLHTq
	QBEuamJa/ucS/C3hEj0g4pCnnTZ+1SbHlcyRia4fRwWgarzIQP1OPaP7owI3sMD+95vze5qvmrzQ/
	rZuPMj1OCWjif8e0RB/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vog3f-0000000CNZP-1uPj;
	Sat, 07 Feb 2026 11:00:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vog3d-0000000CNZ0-3RRk;
	Sat, 07 Feb 2026 11:00:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 70C1F6001A;
	Sat,  7 Feb 2026 11:00:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9768BC116D0;
	Sat,  7 Feb 2026 11:00:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770462056;
	bh=OkGRbb+Qb4VJU+Gl3lIrApgazsO6ANeEgkvhODSPUNk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PGTVag4rgg0K5ovySbN5KS8saqSgfBvp89IjDY2/Q0jI1eSLxbgrNm8zUagL74t0J
	 DmLdSna8LZKA9bnbBbh2IuBGbjxwOLTbxEfklN/2qm2kgKGy2Sy6cqd6ZUDi0dAXhC
	 fdu8m9pBcqp3vN5EZIj2oqly94c4kU3q4QTtvcyH5jF+/2PmfKuECQqp5wvYV6nl3I
	 R6VU3VXnKTgruuKMbJui9Y/RqcAiqSJX4uGfZPzwm+lv0eEhYK8Smck+kC8yzwa9NE
	 0BeK8cKwKLHw+u0Ff949PxCoQXZMsP3e9nDxyp3wN85SdBqDxCNHMl6K/W4x2MmcJa
	 Kg9WIzJ2+EWbw==
Date: Sat, 7 Feb 2026 12:00:53 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, Fabio Estevam <festevam@nabladev.com>, 
	Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 02/11] dt-bindings: clk: rockchip: Add RV1103B clock
 header
Message-ID: <20260207-porcelain-gaur-of-tolerance-da50df@quoll>
References: <20260206181309.2696095-1-festevam@gmail.com>
 <20260206181309.2696095-3-festevam@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260206181309.2696095-3-festevam@gmail.com>
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

On Fri, Feb 06, 2026 at 03:13:00PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@nabladev.com>
> 
> Add the RV1103B clock and reset IDs.

NAK, that's never a separate patch from the binding. If you have to make
it a separate patch, it's a proof your patchset is incorrectly organized
and lacks proper description for maintainers how to handle new soc.

And adding new soc is nothing odd, we keep doing it all the time.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
