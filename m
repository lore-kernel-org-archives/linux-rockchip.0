Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A5C4C4451B
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Jul 2026 15:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkl253C/fa9aZpxBs1p8ALD0Cahr5zpgjXkCAUaoneU=; b=NZrDNOcRxSh/UF
	bP/vflEI+Jy2Tksdg1MY793C2uOQOYz/FoZkBotQBY7gAeOc8lOqWB+cZgyMI/a7wdgrSL9liDES+
	8v1G5/o7Pun5toTtT4hygQmpvKApTe4UFR42f6nGegQNEZXg4n/yrUmW+he4HYW3D33r2PCRfyANO
	r4+INh9sj1k5xevEzRXtCQWSBbAHT3ML+Vz+JXaOJPCunZ5jf210bqF3ZWOllPTf3cc3z03SfQnky
	SBmTtaVFB4GaZQHIAcwpQGhXI5iSpq027QlXfVMXRtHK7NOpSgXaLQbKYvoVdU0eUI0CMjCTI1+ZX
	3Cb2H17/MLTbvMJj49zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlTY3-000000057vx-1JTo;
	Sun, 19 Jul 2026 15:35:23 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wlTY0-000000057vP-0uWT
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Jul 2026 15:35:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=QL3WAS6qAwfUzWShk/ZMh4Zf5wiO0S+HMW1AfZITg6U=; b=zUHEfQmz9m9Y0r2wTXye2upa4q
	Tb+SyVouGmQzHVR/kIZYaoLBiJW9QSlKzveqW8N2huj6fymzZVvMQa2h8KQuruRW+whVTYO6BFqX5
	cIwhBRwSC3U8CbkKnU0yHCVOkLvcAIScJWeGm5fmG5VxVbQZKwi0Ee+uisgpQuQHdln0=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1wlTXU-00D6GL-00; Sun, 19 Jul 2026 17:34:48 +0200
Date: Sun, 19 Jul 2026 17:34:47 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Frank.Sae@motor-comm.com, hkallweit1@gmail.com, linux@armlinux.org.uk,
	davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
	pabeni@redhat.com, netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org, maxime.chevallier@bootlin.com,
	heiko@sntech.de, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH net-next] net: phy: motorcomm: enable the reference clock
 for YT8531
Message-ID: <96f4db7b-70d7-49a1-a12e-7d7f22d59dd5@lunn.ch>
References: <20260719034555.3623003-1-gahing@gahingwoo.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260719034555.3623003-1-gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260719_083520_257546_C1C2B648 
X-CRM114-Status: UNSURE (   7.80  )
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

On Sun, Jul 19, 2026 at 03:45:55PM +1200, Jiaxing Hu wrote:
> The YT8531 needs a 25 MHz reference. On boards without a local crystal
> it is fed from the SoC, described as a clock on the PHY node. Get and
> enable it in probe so the PHY is clocked before its registers are
> accessed. The clock is optional, so crystal-clocked boards are
> unaffected.
> 
> Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
