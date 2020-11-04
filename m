Return-Path: <SRS0=eRos=EL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 083CCC4741F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 05:23:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 97BCA2083B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2020 05:23:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cPW5shSi";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="MDLeiFkM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 97BCA2083B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZHKLU1RGdXJXmr7ynei8Pf7WVn58Vu7DMg9wuTcYDO0=; b=cPW5shSizfa60QxBugOozcpJq
	mha5JwOa79I2WFB6E1WipbTQ60oqNOjzri1PZDBLJX2e1lNX7XpKOsZXKTNkiEqdcEPHBVU2Lp7Gi
	slKWqAQg3pw2OsK361EMwhgdLjNEEyFrPvxtBHuhtbk/P2vlImqkTSjChuizRd3sdDSb7mVKhnO93
	wyHq56fheUi7LNsZnwZm9aUqQ+uByaCbFKRoqAO7Qq7Q/oxOmVk2hAV3qpxY8OVZxvSyMVzO0TTnf
	bgrzFKhTP8XuiUzKfHYmJUJDVu3X8OpIXeqBYwae3kGrUgl7uSPh/HXXr/RZ+1rFVa3+O33ieqGY+
	+TxlKp9Lg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kaXkS-0004ga-3Q; Thu, 05 Nov 2020 05:23:48 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaW71-00016k-AS; Thu, 05 Nov 2020 03:38:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description;
 bh=qdJ3FZ5tTq02XWSmKUP8MghmabyaxMoOqrKyZH04+6o=; b=MDLeiFkMfQ/ued2gnhHPZo+CKz
 D/pSHvwlO+mHhZFGnM/rcTU3xC5wq852YMTu8tCyROareKuisVmZEfutmtmJjqCOkZrW56swV0IYS
 ES8WfLX+a1UtRwI2jB9+qm95BOe3GdsL5x3jHaHENv+fKosYmZ96LZkT7nrTtSzrOmC6seeIybdJI
 3VWtEJVveEiX95+kLzjx5LMTVR7lXY73qj0X3sVstbNu+1Z4fVIF4wl1CkFt2OUHBUv4+Yv5Q20r0
 xf45XXrT+MqKLwaB1qebq1paj6GEm5K7D1FE2rGqmlXqhqHdn65Lm090FrQbaMWfW+7S+abE4D/kw
 Z75+Szxg==;
Received: from gloria.sntech.de ([185.11.138.130])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaQkX-0004GL-G6; Wed, 04 Nov 2020 21:55:28 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kaQkK-0004Zn-T8; Wed, 04 Nov 2020 22:55:12 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v4 0/7] arm64: dts: rockchip: Add Engicam PX30.Core
Date: Wed, 04 Nov 2020 22:55:10 +0100
Message-ID: <3599415.KCJOEREoO8@diego>
In-Reply-To: <CAMty3ZCib5TiQdzU95WS1Xiq1tAQ7FHEQcbf5JhUZYYvofb_MQ@mail.gmail.com>
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
 <CAMty3ZDHDC5TMF=8HJRmZd7HijOM6RP-k4y9JkdWVQGgPKyGvg@mail.gmail.com>
 <CAMty3ZCib5TiQdzU95WS1Xiq1tAQ7FHEQcbf5JhUZYYvofb_MQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201104_215525_812589_E5ADBC7E 
X-CRM114-Status: GOOD (  24.30  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 4. November 2020, 20:54:40 CET schrieb Jagan Teki:
> On Thu, Oct 22, 2020 at 12:27 AM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > Hi Heiko,
> >
> > On Tue, Sep 29, 2020 at 2:02 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> > >
> > > PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.
> > >
> > > PX30.Core needs to mount on top of Engicam baseboards for creating
> > > complete platform boards.
> > >
> > > Possible baseboards are,
> > > - EDIMM2.2 Starter Kit
> > > - C.TOUCH 2.0 Carrier Board
> > >
> > > Changes for v4:
> > > - collect Rob A-b
> > > Changes for v3:
> > > - resolved Johan comments about sorting node properties
> > > - add copyright to Amarula Solutions
> > > - update px30 dtsi author
> > > Changes for v2:
> > > - include C.TOUCH 2.0 carrier board
> > > - skip 10" OF LCD as it requires separate dts with panel support.
> > >
> > > Note: These baseboards can be used for i.MX8 SOM's as well. So having
> > > baseboard on respective SoC seems to be easy rather than making it
> > > common across all.
> > >
> > > Any inputs?
> > > Jagan.
> > >
> > > Jagan Teki (6):
> > >   dt-bindings: arm: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
> > >   arm64: dts: rockchip: px30: Add Engicam EDIMM2.2 Starter Kit
> > >   arm64: dts: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
> > >   dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
> > >   arm64: dts: rockchip: px30: Add Engicam C.TOUCH 2.0
> > >   arm64: dts: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
> > >
> > > Michael Trimarchi (1):
> > >   arm64: dts: rockchip: Add Engicam PX30.Core SOM
> > >
> > >  .../devicetree/bindings/arm/rockchip.yaml     |  12 +
> > >  arch/arm64/boot/dts/rockchip/Makefile         |   2 +
> > >  .../dts/rockchip/px30-engicam-common.dtsi     |  39 +++
> > >  .../dts/rockchip/px30-engicam-ctouch2.dtsi    |   8 +
> > >  .../dts/rockchip/px30-engicam-edimm2.2.dtsi   |   7 +
> > >  .../dts/rockchip/px30-px30-core-ctouch2.dts   |  22 ++
> > >  .../dts/rockchip/px30-px30-core-edimm2.2.dts  |  21 ++
> > >  .../boot/dts/rockchip/px30-px30-core.dtsi     | 232 ++++++++++++++++++
> > >  8 files changed, 343 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-common.dtsi
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-ctouch2.dtsi
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-engicam-edimm2.2.dtsi
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-ctouch2.dts
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core-edimm2.2.dts
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/px30-px30-core.dtsi
> >
> > Any further comments?
> 
> Gentle ping.

on my list to untangle :-)


Heiko




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
