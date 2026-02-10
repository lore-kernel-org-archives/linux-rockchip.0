Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8955EE94625
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Feb 2026 01:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pyk/kAyH7jLmcdSEjdl9HzfU+KQkPoisDJhLYJONh7U=; b=pcxPu5lXdMb/yt
	/YiJ+zPySXmV9ZcT5jtOOfMUjk0fKQl+fGu81CjL8uheX/wKDeyFoGFcCkD+BmKVhjuQdSovTBoOd
	iGx2ybDCYeEs2r0ynyC0CZcDEwhDroF7xD04FteAl3trh9BuhjWEp6YhLNs7hREf4v/XQIY6gvvg8
	7hSDEig8KdMjye9XGESUOlkar4L85jSJyeHzZcwBtHZZ88C0xcVIo9u0wMSJRycjP5CnyB+BNRM3z
	mIYFxbGv+nm0SOkaot9ZN5yTJXpJeXL/zS/hq5PZv3rW0z8buYB8ZTU+ac1HGIPssNKuQZt0wYJDd
	Ld13o8V9tOXwtsbxc/tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpcVF-0000000GHFy-0oNL;
	Tue, 10 Feb 2026 01:25:21 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpcVB-0000000GHFV-32eV;
	Tue, 10 Feb 2026 01:25:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1AD9443EB2;
	Tue, 10 Feb 2026 01:25:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE4D8C116C6;
	Tue, 10 Feb 2026 01:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770686717;
	bh=B/9xj49pyIQTxEOvUELh2afe3C9tpol8NILa2gk1YSs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ovnT8SsyNnQ+DG1eYwtSMgsBCc8JamrCDvC4UtiJsyPB3+6hn4mi7PYlXUol2YCNz
	 pCZ+pG5ce41/fIcphnS/ey4AkA+mfpDVy4ktoRUEUXxJW3O8FGTKc3petsUEwf5tD9
	 H08GpUMaOs1BmuYv2/0d5dBlsJInRV6Dl2vdm02LXWZWD0BQaBYSmv/wn2kRFUbDUh
	 UzrwfYuITxYTJiIPPicuHxTVzJhKJ5KUygCXWT5Q6+TaRkR+ne2m/fq2iJF36Sm/wt
	 +rSbb7oUoqfPNpe2FyNzsywCablgYrVrV0SKCyW/B5CDKLUKiPGYLQQdBbPUwGeKMC
	 t7JIkGst10tNw==
Date: Mon, 9 Feb 2026 19:25:16 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: conor+dt@kernel.org, linux-rockchip@lists.infradead.org,
	kever.yang@rock-chips.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, srini@kernel.org,
	linux-kernel@vger.kernel.org, finley.xiao@rock-chips.com,
	krzk+dt@kernel.org, w@1wt.eu, jonas@kwiboo.se
Subject: Re: [PATCH v4 2/6] dt-bindings: nvmem: rockchip,otp: Add compatible
 for RK3528
Message-ID: <177068671576.2272495.16352349612961041838.robh@kernel.org>
References: <20260205211901.490181-1-heiko@sntech.de>
 <20260205211901.490181-3-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205211901.490181-3-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_172518_431238_697ED47B 
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


On Thu, 05 Feb 2026 22:18:57 +0100, Heiko Stuebner wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> Add compatible string for the OTP controller in RK3528. Compared to the
> RK3562 and RK3568 the OTP in RK3528 does not have a phy clock or reset.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/nvmem/rockchip,otp.yaml          | 25 +++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
