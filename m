Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 851AECA5FF0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 17:11:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8nLBtyCI6fvQeFW+My12p5kAUgWcGUCD9UQKtyJbF0=; b=0WvYxC4o4OjDoM
	2oH4vvWgIO/Fz3SePvcSGTrB32/ZliBHSxqdygNoT+vkjWeLzhM+MQsmcAIvcFmE/ndqxIZS1LXKZ
	CwoYeVVR0Oh/XiP036pvq3ucIjMQFYfg3Z8VSbxKqPC/o3xuqmLDJPFpd3UQEgDhxJxjtLO6brJhu
	6Z+v/JKQMoABKYvzJwKuuhVv0/YdKUdwFD5JSw+yeKUqbltqRCLAmb2FmOWb0dxmmolCtsdpFCzc+
	9/GdKIOO/R6hNm6IdRMEGk4Y29U+QvEA6fKwfFhXIS5h6Joa5tYmUMyDBTwmvOg2/5/4u2MIEdtID
	LJ5PSY+HR7aT7Nnkn/qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDmDE-0000000GtS0-1UG5;
	Mon, 05 Oct 2026 17:10:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDmDA-0000000GtOK-0VJo;
	Mon, 05 Oct 2026 17:10:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4D26160008;
	Mon,  5 Oct 2026 17:10:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CE0191F00899;
	Mon,  5 Oct 2026 17:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791220247;
	bh=pcvFt8xaY1kshFcWy65cU/yZDcnefoUceheITFLU38M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Sp/nthARaDOMjoH02Vmvq6AJz2REe8NjSXrS3e+tDA0R1Z7IyUyo8EO8HzR4wua8T
	 ra6CuJJWxeZ9xMHZ64SYb4/Lqiau9XUIeP0nlxZOtdUYHAiIHZH5NisHJ6xvBBXh7B
	 16l/XKFKxkm5m0C5qqG8uQMSwGDFL6Pevn2nkI71mG2S/8B6vr+IiEwVLAU1Ee44pJ
	 4TWwJpWX4o8UxjYTO3kbTE07me/t51c02PTGFxTGIKHrxwmLDP1eYrbq/xNgjB5cCn
	 XPNLWSDUfLivS0xurAG4/yvsvQfdqCPwTI5vVRDTYSBS2FEPpLdvEBBUSyg4zC36iy
	 4y6Ad24GnhzxA==
Date: Mon, 5 Oct 2026 12:10:46 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	Brian Masney <bmasney+clk@redhat.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jerome Brunet <jbrunet+clk@baylibre.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Kyungmin Park <kyungmin.park@samsung.com>, kernel@collabora.com,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 1/7] dt-bindings: clock: rk3576: add more DFI clocks
Message-ID: <179122024560.1035833.2113322065800192734.robh@kernel.org>
References: <20260921-b4-rockchip-dfi-rk3576-support-v2-0-04f847016321@collabora.com>
 <20260921-b4-rockchip-dfi-rk3576-support-v2-1-04f847016321@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-b4-rockchip-dfi-rk3576-support-v2-1-04f847016321@collabora.com>
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


On Mon, 21 Sep 2026 23:15:03 +0200, Sebastian Reichel wrote:
> From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> When the RK3576 CRU DT binding got upstreamed, some DFI clocks
> were missed. Add identifiers for them.
> 
> Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  include/dt-bindings/clock/rockchip,rk3576-cru.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
