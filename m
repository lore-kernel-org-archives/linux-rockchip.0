Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B53CCD3431
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 09:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U2h9Jowl1hqpDMWUqYTj/4Kikbxl+fV5nyPslxyiZNE=; b=LG+J7qw4KxH0PG
	kpH7tJoqPHRxKALBj/nJ2uOHu1Nw2AfdyzBSuJ3xpep1vnGII5iZo3e237F3BO6X24fK3TsDdhkIC
	GaT18RtXu/C+UTlSlKAxkufGDy2BeN9KkZ0BVNQEe1GFk+eH/nxtlyCT7WCIFs/MR771VQVoYYoCu
	pMtBHQk22RtlXGuIXHcdjdo+BGzXfz8AuRfJzYrPa5fCNg2UI7k3cLa9NxUzPSdTdBEAZMUt0LugB
	4xjNpJT3hngY96TSmbTcm3U6w4OlDutPNEIdMwppO/p9cgPeDnxTcwNH5Y2ElED259oNfQGooFsQg
	F/1OkjHTdaSk+VNeP8+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmDp-00000003eVK-1MA9;
	Wed, 04 Sep 2024 09:22:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllhZ-00000003VpM-2MY7;
	Wed, 04 Sep 2024 08:49:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=64Jy7Anr49mmXZNGV3iO4Xkyk9gN0bNX/x2F4h/amIA=; b=XI+3BHKkmeSYSxudJttkjn+QY6
	0lgJBVa1nlNtFNhR+YTCrDl8ZAI+5S3SdHjveyAcb6bYLic7L2rQjEs0w7ZiCJEECh3IB2i4h1et/
	Oy9dGhztMKznM9Xu8t6vmjxZBvO9vuL7ZL3sh0uvKAYHnIJK+YsxkHpnYlcFB2ABh36nQNkXg8DVC
	+Wh1SMHzCVZcJzjrZ31V3E073ho0JuSs3Ok1Dsj4vkSkgJePSe5izJQrKlyv3YQyLiNa9JEhpxM9X
	K76Sdl+OhPnw5STBApwkKNzT385Vt96fb6CBdlxVI5v4g+8fsob2CpSBN7k5neckjtwvUpWQphIyc
	GqW+39iA==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sllhQ-0006YS-QX; Wed, 04 Sep 2024 10:49:12 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: kernel@pengutronix.de, Alibek Omarov <a1ba.omarov@gmail.com>,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 David Jander <david.jander@protonic.nl>,
 Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Simon Horman <horms@kernel.org>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>,
 David Jander <david@protonic.nl>
Subject: Re: [PATCH can-next v5 02/20] arm64: dts: rockchip: add CAN-FD controller
 nodes to rk3568
Date: Wed, 04 Sep 2024 10:50:57 +0200
Message-ID: <3673727.WbyNdk4fJJ@diego>
In-Reply-To: <20240904-rockchip-canfd-v5-2-8ae22bcb27cc@pengutronix.de>
References: <20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de>
 <20240904-rockchip-canfd-v5-2-8ae22bcb27cc@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_014921_647672_A6355C13 
X-CRM114-Status: GOOD (  11.62  )
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

Am Mittwoch, 4. September 2024, 10:12:46 CEST schrieb Marc Kleine-Budde:
> From: David Jander <david@protonic.nl>
> 
> Add nodes to the rk3568 devicetree to support the CAN-FD controllers.
> 
> Signed-off-by: David Jander <david@protonic.nl>
> Tested-by: Alibek Omarov <a1ba.omarov@gmail.com>
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
