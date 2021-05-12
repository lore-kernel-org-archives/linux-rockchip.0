Return-Path: <SRS0=3kgl=KH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FEEC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:38:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2337D61400
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 12:38:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2337D61400
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YY4XCpIN3Nhr5AX9exI9L/MCiEb6tMVPx/uIPzSyYVU=; b=UgZjUeCmPUu3FHHunkOgOtJbI
	uXpzsSd7L70l9yifd4+thcKb+CXquaDgzO13mWoBrUE1UKo0twxBbRcWpnf6cUSwq5prWYO/i+p+x
	fL0G84VU7HwNqKX73DEWY3uYs8OXFsObe0vjiH0Dk7NU56Udep9NVHOfLH2HjFNcCfs305WXomaYW
	/1LKpAChHz0IUb2n5WtEjIjt0wX1MsBp+MDuwVXHku0mKthBlpIZ1Y1p4bpsCZwJ7slFxVovrNqwt
	i7xRA9EmM0evQzdmIugOnd7nd9j4hzT+vV4ixWM5pWy9gB1o7qK7cM74bAmVzUb4hGN21ZdvStk7d
	txZC1QMaQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgo8R-002lLm-PS; Wed, 12 May 2021 12:38:43 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgo8O-002lKy-Hx
 for linux-rockchip@desiato.infradead.org; Wed, 12 May 2021 12:38:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=OJJr8CZTbZhq52U3R30ulRa0ODzw83ZeiqAf+DqB3O0=; b=Dy6CI40QGcjCbj4bCc0m4Mleng
 vPdYlHv8VDXLiUCQJV3FwQKFvCtvaZDYzb4CTBiB7059Kw2ly8PGxlGscrrcY1XuGit1sQcku9TNo
 5U9lf6UOg4dSlJUBvYpDFmO/RCzbNzD7O0X1wmSdoRPzV+bfptintGbrvEwlcU2greJpLpagSmlSH
 BM65izReWqjNx9G0F1q0FMnZeYL6aXpU/q7EiWA8P0XRVqSDEo3obCvGejQrO/G76puYUUp621HpV
 Ptm9EqTGX0v/UfJjtPK9QSZKNAHjB+PIgwdLzxED9CSPzsOiNUQpltFRvaEvGR8yKzRa0Q1j99Fv0
 g9QQ2Ljw==;
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgo8M-00ALfb-4f
 for linux-rockchip@lists.infradead.org; Wed, 12 May 2021 12:38:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OJJr8CZTbZhq52U3R30ulRa0ODzw83ZeiqAf+DqB3O0=; b=pacQotNKRZo+ykt5hJEFh1OaoN
 GBg7Cp2d0smTSvP5G8drNk4rVT5ZLyKMmExcrltDv/1Zr3Clt/HPshs4fG6paFM1OdlWG/d4bEMiE
 4cTXPN0A1vgNikU5CbHSmFwFsgFMKCLFh2iowTpzEsvJJ2ocGsCNY9xIFu88OxqlG094=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1lgo89-003uFc-Dt; Wed, 12 May 2021 14:38:25 +0200
Date: Wed, 12 May 2021 14:38:25 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v2] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <YJvMQWPW1eT5Wo/4@lunn.ch>
References: <20210511225913.2951922-1-pgwipeout@gmail.com>
 <YJsl7rLVI6ShqZvI@lunn.ch>
 <CAMdYzYrbzk60=XvU4dEeb9QriKDXD1bDEbL86nD+yZjbik-E3g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYrbzk60=XvU4dEeb9QriKDXD1bDEbL86nD+yZjbik-E3g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_053838_202164_2AACB956 
X-CRM114-Status: GOOD (  13.82  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Peter

> A lot of items should be set up via the device tree, though it seems
> this is a relatively unused concept in the net phy subsystem.

Very little should be set up via device tree, since it does not
describe the hardware. The interface mode does describe the hardware,
so that is expected to be in DT, but not too much else.

> > Do you know which one of the four RGMII modes your setup needs? Is the
> > PHY adding the Rx and Tx delays? So "rgmii-id"?
> 
> By default it implements a 500ps delay internally on the txd clock and
> a 1.2 ns delay on the rx clock.
> The controller is the snps,dwmac-4.20a, and it implements a default
> delay as well.

O.K, that is confusing. We generally recommend that the MAC does not
add delays, the PHY does it. So maybe you can implement "rgmii-id" in
the PHY, and return -EOPNOTSUP for the other three RGMII modes, as a
minimum. However dwmac is one of the oddball drivers which does
sometime add the delays, and always sets the PHY to "rgmii" so it does
not add delays. Either way, is O.K, but please avoid having some of
the delay on one side, and the rest on the other.

	Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
