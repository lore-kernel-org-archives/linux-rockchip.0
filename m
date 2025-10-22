Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D3FACCD1BB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 13:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyAagMdHMKadAbU2tGB1QczePG8PpRnPMfHdbVQZ9NM=; b=kfwXyTsVishild
	FgmT5yWiqiNJGYRrzP/eDEw+qUpnW7Y4Pa0vjm3d/90ZOgTJRP8KW0NrJ1YRiOTHCUWJLtEZeGoOh
	B1p17JTXD2bXOlCZIPwjBK8wcTaZ16Ff8hrqb2WtmJU/GYddnlNQfNTsZT/hQxlojEiP9R+ug6Hss
	YBCnfyGNmcR0Ps0XuVslYJsJvORGDdgz5m2fPTH6yBa09CiHwBRjfDBrS+cSETXiyKq6pZn/EyaMK
	eJ/b9XJssJiAJ/PY1bmVj6PC5b0hPTFpjRWwwEyRELOo2GC35WUKdM7aiWV9+2pKlyZs6m53IzCOT
	gdEycclJGS1WZDuyoPQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZ6U-000000033SK-0mpA;
	Wed, 22 Oct 2025 13:42:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBZ6R-000000033Q3-2Dp9;
	Wed, 22 Oct 2025 13:42:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=1an8fnmht/cJNOgYrJWi07C4PsJe8h4fjBzZcExGXmY=; b=WgNMGG6XTQU2WbZcAIrxMCe2rK
	2ifohQQLPlNGT27W8iU6K4a2/rW+LROG/tqTQQgTe+Pj+H9kPtgE7CaUkVSt0Q7zdTIl+25barWC4
	G5dbW49G14wtULOG0CFJi8/Hr0YUbQ6w5pP2iCkqcvYxyWKr3yLmdZQEzKUf6drjNb4SdIiQFpCI7
	RWTIz0jwHB6/RdGkEv+3OVpybEKWRPAAvQXpp+oFBiDLh9X1DmlLtr2TgDiAwBsNT2/2janJWrpJE
	TVJHd7EXjg2sXtc/UI2uafTZEkD/sErbivsfIYSlQDoyv5AukSdjYbWc3Pvmse/YIAM64hhscfDay
	lYV4PdyA==;
Received: from vps0.lunn.ch ([156.67.10.101])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBYEi-00000000b0n-1tKU;
	Wed, 22 Oct 2025 12:46:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=1an8fnmht/cJNOgYrJWi07C4PsJe8h4fjBzZcExGXmY=; b=jGEhTocWzVhbz1bkUmSJiPWV9D
	XgMkodaWUCB+DipQk/ljACkDYyav47bcG6o1HvHm7cbY2SplxbOnaEGkXshpaL4bAmjgBk+bNzBKx
	xB0AdgPfSFlpYhcNmsC/793QWTwZYes77hbAUN+NqwZW3Ud7xQGDzC513Tc8jT8QVh0M=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1vBZ6J-00BlVf-8u; Wed, 22 Oct 2025 15:42:03 +0200
Date: Wed, 22 Oct 2025 15:42:03 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Heiko Stuebner <heiko@sntech.de>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: net: rockchip-dwmac: Add compatible
 string for RK3506
Message-ID: <09bc04f7-21f1-402d-98db-3a845a7c0099@lunn.ch>
References: <20251021224357.195015-1-heiko@sntech.de>
 <20251021224357.195015-4-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251021224357.195015-4-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_134640_729126_F8A307B4 
X-CRM114-Status: UNSURE (   7.84  )
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

On Wed, Oct 22, 2025 at 12:43:56AM +0200, Heiko Stuebner wrote:
> Rockchip RK3506 has two Ethernet controllers based on Synopsys DWC
> Ethernet QoS IP.
> 
> Add compatible string for the RK3506 variant.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
