Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73C39C83F09
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Jul 2025 20:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pk2OIHfMDkNHtZDR9G7v4CtT56Tmc4lyLrszrpY1Mhs=; b=TldECU+I0Fwssb
	l8qMEFeRNGCdWB7o67uL+SEu2qNP95+OZkxLNjgOUX67c1UGYauKX8gB/nXcSqVmIe6QFKyf1KExk
	39w3PXG2UTv4KW07K8XGRn65b3NNshRUULiLwylRBs2nUPRtl4dfEdWgB/mXPBaSTKqayqqJ8ZJfM
	I+DymTitmz5UFc7brWCGCTIiMbg7TjBzjjGLbANj6Ml7fV2cVidMKJecxpJXkVS7qN2/PfYfJCBMP
	LHK0Y8krBTKObsh8kUtFfqJnBWYqyIFARHmGPP7w6eEnUqNVaLCMUK9UmjQSa8Jh2lyfXmb2bu8Dk
	t6gKfzIwls+f8pynmWRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZF41-00000006XJM-0hzN;
	Tue, 08 Jul 2025 20:37:17 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZEdh-00000006TCi-24to;
	Tue, 08 Jul 2025 20:10:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B7E786112E;
	Tue,  8 Jul 2025 20:10:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36164C4CEED;
	Tue,  8 Jul 2025 20:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752005404;
	bh=ku8L98emvYfIz4KPutlqA+m9OYjVsmlwLx2UjJrAYKk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IfgBvxJrGxsZR5xYwilNvEoJfRN3Bh0FtmvTXJ3vipPzA7HmlrqkVHD8Wdyf8pyer
	 YqLQlLGQwahwyhNPrFb2a7ku9wh+7fvUUjSEwlyq5rlZdDoaqFJW8LAsf7nzEsY8GO
	 4uKVJqrc9MM16llgqXaNZy3Iz6hpTMma8ykcHTIMnshnweFeoQyW5cB9tFrMhNLXd9
	 NYs4j8xWouuv5h0+weX7gwkS9hU1poagWDZB631nCit1Hpyk6PACUPoh6Qtvb2FRSJ
	 53cNnOotNo/Q8dUqEuTBhZ8yeqe5orammUyInVm6dt5363qKvFh8cN2hEz4VOk84NR
	 ZyhB9kzoKR2LQ==
Date: Tue, 8 Jul 2025 15:10:02 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 08/13] dt-bindings: display: rockchip: Add rk3576 to
 RK3588 DW DSI2 controller schema
Message-ID: <175200540168.891369.12402940753218880108.robh@kernel.org>
References: <20250707164906.1445288-1-heiko@sntech.de>
 <20250707164906.1445288-9-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250707164906.1445288-9-heiko@sntech.de>
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, andyshrk@163.com, linux-rockchip@lists.infradead.org, mripard@kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, quic_jesszhan@quicinc.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Mon, 07 Jul 2025 18:49:01 +0200, Heiko Stuebner wrote:
> The rk3576 controller is based on the same newer Synopsis IP as the one
> found in the rk3588.
> 
> Its external setting bits in the GRF are different though, so it needs
> its own distinct compatible.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  .../bindings/display/rockchip/rockchip,rk3588-mipi-dsi2.yaml     | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
