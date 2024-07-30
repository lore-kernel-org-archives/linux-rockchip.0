Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7B71C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 16:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OtIGVw6yh5qnA6/CoK6CEJ3OgYVeHIpUgukR6cCptQE=; b=ZFFU3AJ5Ebaxbg
	D8ZUQDpRDnEcJ+xeBV7eU34MXKscCVR4Ias8kDGjJNSIr2gozZjet5SvgbIsBE3mOzOcddbXDJG9+
	8GSZbW2MQKDauzGiuhrGSWnOo5KDlzXqo4sgdymX0DSOx48Sk1nh/EXYhG9DJc8SZdmu1RE1TXRO7
	Ke1dxqDETWEgysKHKuQQT89zqrliTjERPvihYcFX3+sw7VPKOJC9h03FzO46v5SQaIGmUfEaJh7a0
	TnMvzOKA5s4fYMhXAqyZgbMHmLh2UtB+B3MJ5pY0aU1h4LaCNjb/OtHvop6Y3egemu+fjzWDZbN0R
	Bo133kQpYp2APkI0ezQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYprU-0000000Ftdp-3yy6;
	Tue, 30 Jul 2024 16:38:08 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYpqz-0000000FtVH-0EAH;
	Tue, 30 Jul 2024 16:37:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5BAA461FA5;
	Tue, 30 Jul 2024 16:37:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 403A6C32782;
	Tue, 30 Jul 2024 16:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722357456;
	bh=IZnrgju2UE3ttoRGRDJsGzu6kxTRyR3poGUPLXgoINI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DYx05w+lggKad+7kxiOgbr3aKEnJcYXVTcXpmJO1psJ0eXGxezWdzPfeQ7m7yfbnj
	 Odo7L/ufXiILOqVGaWgqQL57V/HWqSWUA1vEbTzj9YpeQyPNshVNDfvayjAhGeCFsn
	 ND2RFfavrtRypdFsjgj4KkbBGhryQi7ZXF2MpNVaAtoXXbkTubysnkO55Q0X6zAd+r
	 8kkWTaz4YmZzEAf2dAjeLq6ZylejpAeUaWIktYWkceR5d3H/+4X4E2PpSLeEZS8dIS
	 xrzwTH9EqndBn6IAMN+lH5U5+p+VF/ex0sngo2SoQ3nCrjkmjp8STkDkmWC9QwTwMR
	 2RaO6Vn/jjc0Q==
Date: Tue, 30 Jul 2024 17:37:30 +0100
From: Simon Horman <horms@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel@pengutronix.de, Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	David Jander <david.jander@protonic.nl>, linux-can@vger.kernel.org,
	netdev@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH can-next 11/21] can: rockchip_canfd: add functions to
 check if CAN-FD frames are equal
Message-ID: <20240730163730.GC1967603@kernel.org>
References: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
 <20240729-rockchip-canfd-v1-11-fa1250fd6be3@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240729-rockchip-canfd-v1-11-fa1250fd6be3@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_093737_179365_F9746D9B 
X-CRM114-Status: GOOD (  12.31  )
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

On Mon, Jul 29, 2024 at 03:05:42PM +0200, Marc Kleine-Budde wrote:
> Add a pair new functions to check if 2 struct canfd_frame are equal.
> The 1st checks if the header of the CAN frames are equal, the 2nd
> checks if the data portion are equal:
> 
> - rkcanfd_can_frame_header_equal()
> - rkcanfd_can_frame_data_equal()
> 
> This functionality is needed in the next patch.

nit: I would squash this into the next patch as
     rkcanfd_can_frame_header_equal() is defined but
     unused in this patch, which is flagged by
     allmodconfig W=1 builds.

...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
