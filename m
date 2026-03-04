Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ECADEFCE4D
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 22:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxwjAmQfJv5E+4q1am0ekLEhlz4IHNb9wZtSgNZmu30=; b=TfLCq8eiAD4gvL
	iKP2sJtvLVEUQ3ipTZFgrcytZ16Y5YW0Kmq0iroy03REoXlq1dDNOoJQTql8gpuE6GaIblwIIiSGJ
	9Yp5/XF6Lbw8ZIvcErHGRJr91Psy6wn7k9N84ZhjPguTCWTNVrDrxeJ/xqrSRYNJugaq1lVX3TWrC
	G3EpP6nzaPia9Nz+SUNcMb9V4Pvd9n/9kV9X2/AgNTApZNL+l7GKm91guW9LWBVXOlaT5sA8n9nGe
	88rjsORmGFO1UlDGZzwMglWn5Lcsjxyzkn1deetHy1nJDKz5QAvEPrv/8Zy12VS/Z/1zSh2WK2cU1
	g51qGDbIxo5uejm89BmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxuiZ-00000000aS0-3krY;
	Wed, 04 Mar 2026 22:29:23 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxuiX-00000000aQC-0Qtu;
	Wed, 04 Mar 2026 22:29:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ndwHByA9+rPpcw7aenooep5yaqS0L412XpVw3mJ5S2Y=; b=n2HElQtP92EIhUCnCa6CVlf3pY
	qxyCOpqdiH2QBUshhls/62Vq1l7ycd4FOoPGXh2Vb/+9jUbdsHKLKOCqrX5QRHHAXc1928LyimG1A
	3o2UK3eYpUmBdotImYqAhQ5xtRaVAPnyrQ1X8+1isNr0xbZO1dN05ATmXsjomU9lYL2Y=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vxuiH-00ABPT-Mx; Wed, 04 Mar 2026 23:29:05 +0100
Date: Wed, 4 Mar 2026 23:29:05 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Fan Wu <fanwu01@zju.edu.cn>
Cc: netdev@vger.kernel.org, davem@davemloft.net, kuba@kernel.org,
	edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch,
	heiko@sntech.de, romain.perier@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH] net: ethernet: arc: fix use-after-free in probe error
 path
Message-ID: <b6ac1471-e33a-41d3-9e67-e6463612f05b@lunn.ch>
References: <20260304025303.145493-1-fanwu01@zju.edu.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260304025303.145493-1-fanwu01@zju.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_142921_140887_B439306B 
X-CRM114-Status: UNSURE (   9.40  )
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

On Wed, Mar 04, 2026 at 02:53:03AM +0000, Fan Wu wrote:
> The arc_emac_probe() function calls devm_request_irq() with the
> net_device as the dev_id. However, in the error path of
> emac_rockchip_probe(), free_netdev(ndev) is called before the devm
> cleanup happens. This creates a race window where an interrupt can
> fire and the ISR (arc_emac_intr) will access the already freed
> net_device structure.

It looks like interrupts are only enabled in arc_emac_open(). Have you
seen interrupts before this?

     Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
