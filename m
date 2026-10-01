Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 447BACA5FB3
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Oct 2026 12:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MVahBghNvtugEQaib2nhPUICQMpJjyhA6GPo/x8ViXw=; b=jGxbPC9lS/w3QU
	BhAi4V7txV94bVFakG9gA0aEsKwsALqQ/f8gXPw7K6U11quJ2sqo8XcpuYpqMp49I/KDN0FaseNui
	U7NWXv4CivxpQJSjTQU5PI5ADuLPkSMMsJpfY9SBIhNWvNGHScRIw5H+05MWjBmLb3AkHxklav0jK
	o5dRLz9gAaonfijEKcjVy4dMzM81+9fy8+m4iJ5xv/rAo4jK4+Fl0nxQqaG5ti67Q0lCwuI9L8tE7
	W0F8s0eyk9KE3CUQpaUO1RctrxDkI3K1ejDkH7YxQ7TJdv6HhkJ7ARCDGUKoR8Y42m70Rm3Gu5E8E
	NDu1hjpZzR36hY5fYWkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCFbC-00000008yui-3tRZ;
	Thu, 01 Oct 2026 12:09:18 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCFZt-00000008vxF-0pZh;
	Thu, 01 Oct 2026 12:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=GyeCL9VLJDxMlJIwAhfIiiYyFP5Y9P0dKixR5n332YQ=; b=Ye8mKcwncV2q0EFynQY8I75wMz
	hVFo5KdGFWQZ0bX2vuoMzoFyHomXTilBCNrEZBPSOKO6AAPOezLJHjBYytN5NZtUxtBvAJ1xqcyuO
	cA90bJZ/zuyeV7RVEI2UONmcOjVw0YUcfLRhJ8igOhqIBDej3f85K5Mt4Zr6X+XNp1XM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1xCFZd-008N7b-Gy; Thu, 01 Oct 2026 14:07:41 +0200
Date: Thu, 1 Oct 2026 14:07:41 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Igor Velkov <iav@iav.lv>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Eric Dumazet <edumazet@kernel.org>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH net] net: stmmac: dwmac-rk: keep the GMAC powered when
 the PHY wakes the system
Message-ID: <1795d1c1-7103-4dcb-856f-8881521417e0@lunn.ch>
References: <20260930-dwmac-rk-phy-wol-v1-1-9fdc50bd9ae4@iav.lv>
 <1799630a-945e-49ca-b9d5-9e068c482cea@lunn.ch>
 <ab67bccd76b55d7252c5380a37809656.iav@iav.lv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ab67bccd76b55d7252c5380a37809656.iav@iav.lv>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_050757_345065_49516E67 
X-CRM114-Status: GOOD (  12.35  )
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

On Thu, Oct 01, 2026 at 06:11:09AM +0300, Igor Velkov wrote:
> On Wed, Sep 30, 2026 at 11:51:45PM +0200, Andrew Lunn wrote:
> > You have not answered the question why is hangs? Given the current
> > description, this just sounds like a workaround, not a fix.
> 
> It hangs because the PHY interrupt handler accesses the powered-down MAC.
> 
> stmmac sets mac_managed_pm, so mdio_bus_phy_suspend() returns before
> setting irq_suspended and phy_interrupt() runs the handler at once.

Why is the PHY interrupting? What interrupts are left enabled? Should
the mask be changed to disable everything except wol?

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
