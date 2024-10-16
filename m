Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E2F9D2A52F
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 17:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnU1WLTlzGM1hDyhtvr+JFjQ9UiEQX6T6d0BbfA5RF4=; b=r5CouDpDpR5X/+
	RA6cM0u5E8x/ZfCVOTqbSWf3nfdNk5mQVy470y4+Pq92WJ1EHCaI/TE8MVirOSmRjK5lhSIkZuFQQ
	KiWxWU9N+97k40XQ4JcJDwOzFv3IZCB5w/B4FI+xS7ci1z5X1HApB2DSKNGBts8e+1tvVB3WQJl/s
	pF25BOeqABuqna6xHBj8ghCKVlUJe2X95v16NsKWcsn4a6TDU3u1TKEV9J7w6FOFsdi47MF4TGtdA
	68UmVyY+ROTRrJFY3+anr9FyZpy83JeOuHzll93K0RnxxLum1Wt2Gr6GiA4M5HLbQ0+Unn18yAWc6
	7sM6xU9HlQMzJx2khfXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t17uz-0000000CYvN-2taB;
	Wed, 16 Oct 2024 17:34:41 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t17tX-0000000CYeu-0Ejv;
	Wed, 16 Oct 2024 17:33:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 551A3A4172C;
	Wed, 16 Oct 2024 17:33:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEF19C4CEC5;
	Wed, 16 Oct 2024 17:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729099990;
	bh=WPrD40hISrWG6l6LJDVLR/3iKsPYJfFh0eBKmBOWvCc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dliDsSGJJOrK3aCli3Rr+aiHdE3SJJAA0U5kcmd1rn5lt6TLTUg0CeoJJD//Vb3d3
	 O7ivCQkWX1LWzO1iLPJd77tuGI1rqz4fGt/Au5TtU46F0HnJPslPtpxGaLydfDgOR7
	 BBttuoIYUYLe3XoKYUjX7lWY4VQ6SxHfFXGreUoXE73rtxyyNy73kMTko5rsxGqm5v
	 9q95TcpC+54eqrX1kn1JhkxfAbfEBUvAPvTjuCHCfZBLr5K1zNFCwOMsfluDBztPto
	 gvB+2XQLQa4UyJoeRMpwFiYoAz3XMEJ3ahIp9keZ3FDwR8jTNIplehwYir6+JlzKqU
	 4CGhcx9e+xUdA==
Date: Wed, 16 Oct 2024 12:33:09 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Frank Wang <frawang.cn@gmail.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com, gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>,
	linux-arm-kernel@lists.infradead.org, krzk+dt@kernel.org,
	heiko@sntech.de, tim.chen@rock-chips.com, conor+dt@kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: usb: add rk3576 compatible to rockchip,dwc3
Message-ID: <172909998847.2076107.16244680063698227537.robh@kernel.org>
References: <20241016083224.14839-1-frawang.cn@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241016083224.14839-1-frawang.cn@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_103311_181522_6495A584 
X-CRM114-Status: GOOD (  10.20  )
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


On Wed, 16 Oct 2024 16:32:24 +0800, Frank Wang wrote:
> From: Frank Wang <frank.wang@rock-chips.com>
> 
> Add the compatible for the Rockchip RK3576 variant.
> 
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
