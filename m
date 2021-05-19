Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E61C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 08:18:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 618CB6109F
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 08:18:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 618CB6109F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JO9dHH5dJFK4Zf+AoWwtm5GfNtkz0fwncXfrXeGPYfk=; b=bPlFM77j2cEDdM0VIAVqLG7bX
	oiPUC/PF7VnBFbEXGJxtZYTVYpKPeJ7d/JWG6Jf7mCa6LJNO/9qNKVxXflinfvgQSORbx5Iads5au
	zt219iMrEytTID1U66RVIUIEAPqqc9ojR5yGmBfl6+SssXGIr+qdm3piU4pNPmb6X5dtP8KEu3MYM
	aHsP0JxCO0KNWPc5V1BUEYZ4ObzcUykMrqRyyEmO+VWKDJWlZUEvjvfrSZqF9icALtEkLFQZDYP7i
	Bmb/vfaguCru+dORCY8Y0TXt0bgipZlXvFXNkvmJEJEtf0yP8fPdjQC11oF3Rg7sIZDglxgC5nXFf
	AOEkqlsUQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljHPH-003JPE-6e; Wed, 19 May 2021 08:18:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljHPF-003JOu-Ua
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 08:18:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=RX37GXPCypgvcoWlbbN4gkZ51LJCuj2wgpC5xKSPX+Y=; b=QmlIKscISz1LARTPEG1sK9pbQ3
 xO+F/V+cH0GH2sz3wEFylRNGmVVLjAEKHpZPM749p7DVkdC6V//5WcQGZuyx86ALQZTrT9bGasdMM
 SwMJGbP/LoA4HOKhmkwvJ/1sGBk1ThWhJavfel2cKY53puIe6196d3JBbnswQpOzxmBXZuLg3t6V3
 ridYRU+wyaWN3vnuegL2apcuK9ieAmk68NBUwQVfkJYZW5uanWtbUigrabxtSo9tVuIproHTIUQUi
 ygWetzbiZBpMKRnRFU8HNvqgaGUEvQdhvVPGyqlQXpXB5XuF0tzgvWyzjV+yYY+NziSrLrEKX0sW8
 /VBdvpZQ==;
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljHPD-00FGgM-BD
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 08:18:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5242F6109F;
 Wed, 19 May 2021 08:18:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1621412295;
 bh=dsuOfWqUpLG6TYxzvoXLt4qolVX3EH9WyyCF/m4rDZ4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EQbXTObvr4x6HAPKQDoLEy0KFrcDnhjLY8AEw8oTzi3gN4Vs+VRCV6AFyeQelvllV
 g7FQDiVNV1aMFbB08/om6u+SFsGATw4xd/E1IWj1nNP+7QGnmMQgTHDP73a6MZlPKN
 4CTNyy7iJg7hyfZyaQndlExHDjKrESngZQANz877ewTF7cdWmkF1JW65LPxXHlyIXm
 WBoHjxPDxIcwRxjKNYCRY/8IugEb3NXKLKm3xOlDRzfYqpZq3mpp3M7cCrukUEuptw
 ytvniQq3569YdALX5OqkbaPBiGm/NzWJ+flxWSvvhZAlp33KfgP/EaRsznquTe/hfD
 dJQo2kLayKxmQ==
Date: Wed, 19 May 2021 11:18:10 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <YKTJwscaV1WaK98z@unreal>
References: <20210511214605.2937099-1-pgwipeout@gmail.com>
 <YKOB7y/9IptUvo4k@unreal>
 <CAMdYzYrV0T9H1soxSVpQv=jLCR9k9tuJddo1Kw-c3O5GJvg92A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYrV0T9H1soxSVpQv=jLCR9k9tuJddo1Kw-c3O5GJvg92A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_011815_428466_01DD7E79 
X-CRM114-Status: GOOD (  22.52  )
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

On Tue, May 18, 2021 at 08:20:03PM -0400, Peter Geis wrote:
> On Tue, May 18, 2021 at 4:59 AM Leon Romanovsky <leon@kernel.org> wrote:
> >
> > On Tue, May 11, 2021 at 05:46:06PM -0400, Peter Geis wrote:
> > > Add a driver for the Motorcomm yt8511 phy that will be used in the
> > > production Pine64 rk3566-quartz64 development board.
> > > It supports gigabit transfer speeds, rgmii, and 125mhz clk output.
> > >
> > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > ---
> > >  MAINTAINERS                 |  6 +++
> > >  drivers/net/phy/Kconfig     |  6 +++
> > >  drivers/net/phy/Makefile    |  1 +
> > >  drivers/net/phy/motorcomm.c | 85 +++++++++++++++++++++++++++++++++++++
> > >  4 files changed, 98 insertions(+)
> > >  create mode 100644 drivers/net/phy/motorcomm.c
> >
> > <...>
> >
> > > +static const struct mdio_device_id __maybe_unused motorcomm_tbl[] = {
> > > +     { PHY_ID_MATCH_EXACT(PHY_ID_YT8511) },
> > > +     { /* sentinal */ }
> > > +}
> >
> > Why is this "__maybe_unused"? This *.c file doesn't have any compilation option
> > to compile part of it.
> >
> > The "__maybe_unused" is not needed in this case.
> 
> I was simply following convention, for example the realtek.c,
> micrel.c, and smsc.c drivers all have this as well.

Maybe they have a reason, but this specific driver doesn't have such.

Thanks

> 
> >
> > Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
