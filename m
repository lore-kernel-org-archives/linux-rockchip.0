Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7467CD3442
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 15:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9UIB/sPog16QWWP+LhbIXP9RW8MsxnMoPOlkLOaDVA=; b=muL2sD45JGD6/U
	bm7HupT4jM4IyaSDjbifUj6gvcO+11XONipmINTm6/MalMlvRbxaP80tvtvlztBcLCju0K41RvcI9
	20Gn0QTT++qt0NTgoTmXW+i492roxO/lYVazNH084QA8fP4YT3Udj3mtpRI6L9WdWVaZCjVAt7v6w
	es+kpOq/yfasgrHLy7XZ6MOZTpdQI6WGilF6RSSCSK5xs/SvIX+8fTiyWjmdm1wQRAmHpdgFF/a48
	XNP91B3p8KCiOWdOjVutxTY7rI2MjaHB72OePcybNxg5iAJChzcqYt8g9xGXzDSjGs7gYpk/Difvp
	k1Epo3tT4pyiKmp0ViNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVXc-00000000stj-3nIA;
	Tue, 03 Sep 2024 15:34:00 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slVOS-00000000peC-43T1;
	Tue, 03 Sep 2024 15:24:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E276AA437C8;
	Tue,  3 Sep 2024 15:24:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5EF3C4CEC4;
	Tue,  3 Sep 2024 15:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725377071;
	bh=kres4qmVQiUAC82Fw/U24MiMZlV5tGiD9Eik6aD/+iE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bznjIompBK9BA2TvhAJfHpGomtTx08S5A79wlP+DjMrapy4sMI9hKABBMwuIK5+WB
	 ocEXuRhP1YD1c5C7dM0gcQtVPYysdqeanMmeDfIeFxQHPY/AjRWKe7+Y8izi6x9j1c
	 LwseNG3OSBaTL5A9QUlu7QFU4g1P6MvuKRPlNooK5mmmhnfh61fMh4bSQeHlHLYcRq
	 5dEeMUEEb8cckFf/l7JcLonAN5w8GhSDlDexKnQD/2CW05vk5iRZvEkvxLhiWdZx7t
	 nrSfQ5tVQBTAk8pkBQYBd3k2mzZHVIka+uwO7iJpDGpQkl8wlrBppvpc5HFsjXYcip
	 +26x7Uj4G3Vuw==
Date: Tue, 3 Sep 2024 10:24:30 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
	David Jander <david.jander@protonic.nl>,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	"David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
	Simon Horman <horms@kernel.org>, linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jakub Kicinski <kuba@kernel.org>,
	Eric Dumazet <edumazet@google.com>, netdev@vger.kernel.org,
	linux-can@vger.kernel.org, Alibek Omarov <a1ba.omarov@gmail.com>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paolo Abeni <pabeni@redhat.com>, Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH can-next v4 01/20] dt-bindings: can: rockchip_canfd: add
 rockchip CAN-FD controller
Message-ID: <172537706995.1043806.8906202359220781954.robh@kernel.org>
References: <20240903-rockchip-canfd-v4-0-1dc3f3f32856@pengutronix.de>
 <20240903-rockchip-canfd-v4-1-1dc3f3f32856@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240903-rockchip-canfd-v4-1-1dc3f3f32856@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_082433_106833_51E3F2FD 
X-CRM114-Status: UNSURE (   9.64  )
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


On Tue, 03 Sep 2024 11:21:43 +0200, Marc Kleine-Budde wrote:
> Add documentation for the rockchip rk3568 CAN-FD controller.
> 
> Co-developed-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  .../bindings/net/can/rockchip,rk3568v2-canfd.yaml  | 74 ++++++++++++++++++++++
>  MAINTAINERS                                        |  7 ++
>  2 files changed, 81 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
