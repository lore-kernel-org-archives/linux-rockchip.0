Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63B0DD19512
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jan 2026 01:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MgSStphQuSREHQUaIcQ2E+CPKmQnPIHIFtl1EPaHTao=; b=FG69xrGr9NMqLe
	Bn70rlCTpIJof9UMf6zLZlWeuyJ6QxLSe6qpjNW1N8xNNhoDGg5sArKxB878oldDQb/We/15lTWj/
	Qkec2QINWJ5EPmWiwSS4hT+3n5mmHj577jXWtGUOroLvATxrCaxM9GJ9Lz9l+vBKv9/gUI60JmVDl
	dP0WjtBC9TLTOplh0HzjBEk+iuJLjQCHqqPdkF0VqBTI2f7cByeCcCRukUD/bL8dMHieSnDyUOGCS
	hAZJ+KWGFXstCnX9QGz6dC/1Qnv0sK4SKEN6ivhlIdi3blFBkmWaiFGvwoDOvdtESygiKF9mUeY67
	dPPNrbhU/DOK2ESVy5iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkXgi-0000000DQJW-18fM;
	Tue, 27 Jan 2026 01:16:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkXgf-0000000DQJ4-18Jl;
	Tue, 27 Jan 2026 01:16:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 8239440184;
	Tue, 27 Jan 2026 01:16:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D8FBBC116C6;
	Tue, 27 Jan 2026 01:16:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769476568;
	bh=PWUrFDaZymwHGwAF/jInaMszPNXRgniP+HW2yijeOLU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=dmxrjDsL4BXwTxbaXPruNdQTZilZ/Es6cUwSrTDI19LNLLlOVul/Eg/QnBdhGLH0V
	 1Y/GOeFtRavJcbwq3NjPxWKjX/zIteq4DJdVmSwFyw16zeyoGGO3WchvvWOWVHJTIt
	 clBGn5qiuEfaQzlx0itO79PSMDK0dHYIHcKUb99YwyQ6kKIKZ+t+E10aDKxoPVBUiF
	 WCGimFuhpZyqOdeiEEJurPrVRvuycnoiaw3KCN2VI0CMFFUSgGTCQjOObWQq5GZ5sn
	 MFYSdTzI6xhw5iR34dRNtCiAKypxeHHLd5tpbgRHvVj3diZJOlj+QpTTlk1/fD1VgI
	 Kvwol6/iDxGoQ==
Date: Mon, 26 Jan 2026 17:16:06 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Andrew Lunn <andrew@lunn.ch>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David
 S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Heiko
 Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, netdev@vger.kernel.org, Paolo
 Abeni <pabeni@redhat.com>
Subject: Re: [PATCH net-next v2 06/22] net: stmmac: rk: add SoC specific
 ->init() method
Message-ID: <20260126171606.6153aa1a@kernel.org>
In-Reply-To: <aXgN2UjiI_OxWHH-@shell.armlinux.org.uk>
References: <aXdTi4ViCkhhXvFI@shell.armlinux.org.uk>
	<E1vkL28-00000005usi-30YC@rmk-PC.armlinux.org.uk>
	<aXd7aSk7KIxlQd5z@shell.armlinux.org.uk>
	<20260126165144.25055591@kernel.org>
	<aXgN2UjiI_OxWHH-@shell.armlinux.org.uk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_171609_345090_5BCB443C 
X-CRM114-Status: GOOD (  18.03  )
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

On Tue, 27 Jan 2026 00:59:05 +0000 Russell King (Oracle) wrote:
> > > and there's no way to find out for about 9 hours (more like 19 hours
> > > for me because of the timezone) as the AI reviews are not accessible
> > > until then.  
> > 
> > The patchwork checks are for maintainers. If someone wants to build
> > a public CI for contributors that'd be great. We can even provide
> > funds from the netdev foundation. But let us be clear that the current
> > setup is until now maintained primarily by me for me on the weekends.
> > Unless you make an effort to actually help I don't think it is in good
> > taste to complain.  
> 
> This sounds like my contributions to netdev aren't valued, and if that's
> the case, I will stop.

Quite the opposite, what I'm saying is that your complaints make me
feel like the weekends spent on trying to make this project come out 
of stone age testing-wise are not appreciated. Of course your
contributions are appreciated.

The AI code reviews on existing buggy code are indeed very painful.
Not sure what we can do here to make the contributing easier.
It costs us around $2 now to review a single patch so we can't afford
public access. I think Google is working on making Gemini code reviews
public and free, hopefully that materializes.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
