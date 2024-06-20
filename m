Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5D0AC27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 14:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uYmH1lMTbHLrTUxCznRV1eEywJ7xkuPOFxW7LXMv01o=; b=SSzxr1aypqg3s9
	8LHA0b6FPrb8vOaCPUbxtN0SpXIN60Un9KRzHmCWo6P4qreshPc+EJRHx1VOMeSjI0AQTOiV5/Xek
	uAu+54N9HBncaZ03yIbFo2R36KH5sa8xfjKZrQAxC0ekwoMvBh+gtV5hpYjWCFmu+yWZheFCgFkth
	g1CaSceXz8V1k9HxFoLh0H9P/UybAl47dKTmqXkG2HrQcbm4nvfN5VxccYKFEXwO3+yvE9JWhvSHz
	hfLxz04YyeKOCDWqoBNSkHtLVFe37A9UtAEE5dFfFs8iqQsfzh3LkhI6iy12XU8NhY5XOECQmguk3
	HsyiVyug2fL0NRlWji6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKIkH-00000005R3y-03My;
	Thu, 20 Jun 2024 14:26:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKIjw-00000005Qnn-20Xt;
	Thu, 20 Jun 2024 14:26:18 +0000
Received: from i5e860cc8.versanet.de ([94.134.12.200] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sKIjk-00065o-HX; Thu, 20 Jun 2024 16:26:04 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Paolo Abeni <pabeni@redhat.com>, Jakub Kicinski <kuba@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, davem@davemloft.net,
 edumazet@google.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/3] net: ethernet: arc: remove emac_arc driver
Date: Thu, 20 Jun 2024 16:26:03 +0200
Message-ID: <4777231.1oUyQt6lIG@diego>
In-Reply-To: <20240620063729.55702736@kernel.org>
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
 <7d208e8c8bb577cfc790fd24cf990684020ee7c5.camel@redhat.com>
 <20240620063729.55702736@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_072616_921722_C1A22C37 
X-CRM114-Status: GOOD (  11.29  )
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

Am Donnerstag, 20. Juni 2024, 15:37:29 CEST schrieb Jakub Kicinski:
> On Thu, 20 Jun 2024 15:19:24 +0200 Paolo Abeni wrote:
> > AFAICS this depends on the previous DT patch, which in turn should go
> > via the arm tree.
> > 
> > Perhaps the whole series should go via the arm tree?
> 
> FWIW Heiko said on patch 1 that the whole thing should go via netdev...

yep.

Reasoning is that the rk3066 is mostly inactive, so taking that dt-patch
through the net-tree won't create conflicts with other dt-changes here.

And of course both binding and driver changes are the bigger parts
of this series.





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
