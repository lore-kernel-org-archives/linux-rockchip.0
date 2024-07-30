Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E763C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 16:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=teGfNUpZF44XxS6KxE37OQQ2SVpkHGmIrbcRlkMg9Wo=; b=U+wJucqwAEZzII
	Ecw0jLLAMhjpl6wQV+D4vxGtWZU3ZpaNA5nzp8AVFFQtPcwNXYukQgAqt2ri3nm1HPs93Ueuz5XDL
	TKCALSV5SpuHkrVFbO/l2LxmOWKshYmdpficfIC+8CK4YlMZ7DwvtS/SBzt0hHUeN/17Uf8MNCWgO
	g8IsEW+IqLyuHSzRC8VDGgUQBxlbV+5XiD7niDIidmCkeepF9k4HT9bRe1sC32X2f3X8Fs9oI68jO
	ksD8JBgTnDfA0Y3+LHW5zWtmsyQlq5uoBLlBtyLVJW81LltK7Y52ovBPyqw6jWby4TmSDfjEifjjp
	C9eT1E6ys5BySOHD1WdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYpkT-0000000Fs9L-3uya;
	Tue, 30 Jul 2024 16:30:53 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYpk1-0000000Fs1V-089q;
	Tue, 30 Jul 2024 16:30:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1FEB1CE113D;
	Tue, 30 Jul 2024 16:30:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D675CC4AF0A;
	Tue, 30 Jul 2024 16:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722357020;
	bh=lhNcZ8ZEN5axq+CHqFJ7t45r9e7XQ0fIr4cY5Y/XNZI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L1/ysDqurtwedhyL2BI5lr4jACXoOR7RkG3q1LQ0Mt8chwVcNtO3dpKsOTH3YNYY3
	 q9M8YFUT6zqNswbQgxugD9D9IDziuZNP4nKZD2V2nhsrkNDP0D8Z1c1ZnAVKg2xBuo
	 yuIhLuhquJGC/eSxVqxJYKQvrp1baRY/n66TGzb97Ei7Y+NZArkn3t8Ma9jIPuQPsp
	 JXypy/Uf5ZHtmPNIoNC59tfmA25QgasPj/tWs4BHOtWTptZsPa1lSzehYQ5ngw4vsZ
	 JeVlu0uR1SyUu69PG78cGazGnYYNdK3ZGVQDzMt+4h5v2OoE84NyCag8LcmdGJOKH5
	 /CyLOjWq5LKhw==
Date: Tue, 30 Jul 2024 17:30:14 +0100
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
Subject: Re: [PATCH can-next 19/21] can: rockchip_canfd: add hardware
 timestamping support
Message-ID: <20240730163014.GC1781874@kernel.org>
References: <20240729-rockchip-canfd-v1-0-fa1250fd6be3@pengutronix.de>
 <20240729-rockchip-canfd-v1-19-fa1250fd6be3@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240729-rockchip-canfd-v1-19-fa1250fd6be3@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_093025_361297_C7310819 
X-CRM114-Status: GOOD (  10.94  )
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

On Mon, Jul 29, 2024 at 03:05:50PM +0200, Marc Kleine-Budde wrote:
> Add support for hardware based timestamping.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>

Hi Marc,

This patch seems to break allmodconfig builds on (at least) x86_64
when applied to net-next.

In file included from drivers/net/can/rockchip/rockchip_canfd-ethtool.c:9:
drivers/net/can/rockchip/rockchip_canfd.h:471:29: error: field 'cc' has incomplete type
  471 |         struct cyclecounter cc;

...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
