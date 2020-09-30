Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35042C47420
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 22:52:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D07D42075F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 22:52:06 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="J+B7WqD6";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErCOiYuE"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D07D42075F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=ZFkyU5Xhxwki8Br7Sft9rka1ghxsNdOz+D444QaZKFs=; b=J+B7WqD6V4J2bPVAAGmtMFDcJ
	kgQyn6RGhhR5PRZFHJT2X6juxEV9n7MHoFaGowAPIXriWq39w1R6PlL2RszgLYDLWzZWEayv1m2Sa
	xDyb4HGzND8hySEKC/3/+iiI1ZLoScjfroYcGcf+jeOQVErVXlnofYcqjYjrEWF3t/jR6b60Kv3b/
	KSnZxuihHuihTcS3KGHkOqOktSNCA16gC5QEPE2JBaeRwd5RfenWc22Unpr6UUL/ikrp3u8PxKa4X
	nud6qrUP890R4FSeLWSRrGSB58gcGeyyos4m/aCfPA95THPOXBbTsVfWz0JA2YwzG11aTEwr8SMn5
	ecRQJ3jLw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNkx6-0003JN-Dp; Wed, 30 Sep 2020 22:52:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNkx2-0003I0-MB; Wed, 30 Sep 2020 22:51:57 +0000
Received: from localhost (170.sub-72-107-125.myvzw.com [72.107.125.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C272F20719;
 Wed, 30 Sep 2020 22:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601506316;
 bh=KFmouRsvBVZ3Y/PYT9xJnwdLHua2k27n0cu1H9BZ6l8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=ErCOiYuE3T/ukx2QVvOYx3P0p85+8zd+cviA6M2gceIzSfDLjPA9npAn6qBYwnZ64
 D8WZF8dQV6bbmloxOP+jC9nRt+BSSIUUmr/oIZ34jAPvXpKNwOIl5kUOFbSrvWE/mR
 Z4k8wm4xr98IWOFHxbMljjMiI7xM95LPcjIeY/qk=
Date: Wed, 30 Sep 2020 17:51:54 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2] of: address: Work around missing device_type property
 in pcie nodes
Message-ID: <20200930225154.GA2631019@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+xBKbYXWipwmZ=ZidorsMUFDw2NpUyxobx4FCTn+8Hmg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_185156_796276_17BDAFC4 
X-CRM114-Status: GOOD (  29.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Samuel Dionne-Riel <samuel@dionne-riel.com>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Marc Zyngier <maz@kernel.org>,
 Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>,
 Android Kernel Team <kernel-team@android.com>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Sep 30, 2020 at 03:34:10PM -0500, Rob Herring wrote:
> On Wed, Sep 30, 2020 at 12:37 PM Niklas S=F6derlund
> <niklas.soderlund@ragnatech.se> wrote:
> >
> > Hi Marc,
> >
> > On 2020-09-30 18:23:21 +0100, Marc Zyngier wrote:
> > > Hi Niklas,
> > >
> > > [+ Samuel]
> > >
> > > On 2020-09-30 17:27, Niklas S=F6derlund wrote:
> > > > Hi Marc,
> > > >
> > > > I'm afraid this commit breaks booting my rk3399 device.
> > > >
> > > > I bisected the problem to this patch merged as [1]. I'm testing on a
> > > > Scarlet device and I'm using the unmodified upstream
> > > > rk3399-gru-scarlet-inx.dtb for my tests.
> > > >
> > > > The problem I'm experience is a black screen after the bootloader a=
nd
> > > > the device is none responsive over the network. I have no serial co=
nsole
> > > > to this device so I'm afraid I can't tell you if there is anything
> > > > useful on to aid debugging there.
> > > >
> > > > If I try to test one commit earlier [2] the system boots as expecte=
d and
> > > > everything works as it did for me in v5.8 and earlier. I have worked
> > > > little with this device and have no clue about what is really on th=
e PCI
> > > > buss. But running from [2] I have this info about PCI if it's helpf=
ul,
> > > > please ask if somethings missing.
> > >
> > > Please see the thread at [1]. The problem was reported a few weeks ba=
ck
> > > by Samuel, and I was expecting Rob and Lorenzo to push a fix for this.
> >
> > Thanks for providing a solution.
> >
> > >
> > > Rob, Lorenzo, any update on this?
> =

> The fix is in Bjorn's tree[1].
> =

> Bjorn, going to send this to Linus before v5.9 is out?

Definitely, thanks for the reminder.  I'm assuming the fix in question
is https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git/commit/?=
h=3Dfor-linus&id=3De338eecf3fe79054e8a31b8c39a1234b5acfdabe

> [1] https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git/log/?=
h=3Dfor-linus

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
