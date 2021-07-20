Return-Path: <SRS0=CXDZ=MM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 334EAC07E95
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jul 2021 16:20:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE30060FE7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jul 2021 16:19:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EE30060FE7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VmbsTspaT4qlLQjC2Rstzor3Upmo9MVonmucDmnLdY=; b=QkKVBWpAekCo7p
	qMxaP+bto1YLwTE1CNmsITtSBvpN+OPIMDGv5GoFcnsyFfAvA3WmpSzfSMepXYejmHn1/c5N+atYw
	6rWXc3MhDK5+wrVSZleP2rG5orTTD+dRJZlx85fuVZL4F6rGvUgMbxDJ1jR6a1xA1cwjMeMgFekCc
	RjU24Q5ahIT0yA+l+76oBpxXt6PyPyeKnrjijew3rFlU5iEHofnO/AR2pL9CZzeLb6AxEXVNXzVHF
	Uza2F81fgmsSoPrekIBC7Fka5c0Yj9M+M5rr3ho0y570nyPZrjRHMbHEPnz/O1NI707WC/qke45pM
	JZ62fY304Sk4ZyoFfBmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5sTL-00DXEa-IW; Tue, 20 Jul 2021 16:19:55 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5sTJ-00DXDr-JJ; Tue, 20 Jul 2021 16:19:54 +0000
Received: by mail-yb1-xb36.google.com with SMTP id g5so33470035ybu.10;
 Tue, 20 Jul 2021 09:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nMW7QBUIc/uDC2jb5O45C3Qll6tdxJ+z7OX5wmkMw7g=;
 b=Q4UxPB6017TkNDUlu96WZV4WEHOBpzJ+89Eh0JNRitvJD5X/GX4ogW1MJeJzjCkhMY
 AxOQU3HVBdXTXwtF61lcXnNkOASFi0o/30oFMWe8rPjhqC6wahIMZfjpaK5IPpjSLDWC
 FtmLW7obp3B4wYCxHVd98Q9xZrjbCxkHkVORCynQ1SKG2vlef3GTIIqGcI+i/5lO5151
 wManlFm/TAlP26oGaJbmNjCY77j3uKob9yi0cRllFsDOAX9/HdDDkwk57ePNBjSjx7Ek
 TPS/Y92Cn3TPvO19KM3RjN9MhOTbdLW+52xR/e/cvPcdybALLF2B9ZQHqIxKwwLnI++e
 umCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nMW7QBUIc/uDC2jb5O45C3Qll6tdxJ+z7OX5wmkMw7g=;
 b=nensYTjRoKnCehP9VabrUgmhTTkghDiUaLy9uccu70ZTUYQjAk9dv7MknHfI7Qsa2L
 GK1FErwuw11aBSQWsVg+sYtsBAr8XWARVkOsMNEjWN1bzLaWhluqqmoukWfpJIibaaSD
 nFvYfHHGJMPOeKkaLiwTMSieGUS+Aqh5MGBsohz1q7Ec3Nu2rIpjUF4f3vAW+Q8kFXEa
 3B49EkZeFJHhdl3n7sEXIEuC4Oj+PMy8wQvCfGAX8N9mxjKM8eIlYjPzhMpkWD+r+hpS
 pYSlWakfWru3gHtMz3TJUVcdLzUKry7AgBd6qxUhbJM7u/z0OVgQ3J8OQSKu00QhL6sW
 j45g==
X-Gm-Message-State: AOAM530hVJd96V/QUUR/bnsXm9GMR+OmiGfiRz7xBqzL8r1PJ6mt2Asr
 0ThdbJ8jwTMxcytSiOFn7r2EwOugtCiYJ3EFlOE=
X-Google-Smtp-Source: ABdhPJzR4XdNVwzV7TKxaqvAxwEUOvvE4adIQZkFpm5PJxC9fP7zQf5S1/gxJJQ58sE09rAZMdpjjLkcd6uA7x4DPEk=
X-Received: by 2002:a25:b706:: with SMTP id t6mr40461892ybj.174.1626797992258; 
 Tue, 20 Jul 2021 09:19:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210710151034.32857-1-pgwipeout@gmail.com>
 <20210710151034.32857-5-pgwipeout@gmail.com>
 <20210715162131.GA1184545@robh.at.kernel.org>
In-Reply-To: <20210715162131.GA1184545@robh.at.kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 20 Jul 2021 12:19:39 -0400
Message-ID: <CAMdYzYpXNdmHKBOOgC6DL-_7qrZyifnDPB=WuU0vAY8qPj1_ww@mail.gmail.com>
Subject: Re: [RFC PATCH 4/4] arm64: dts: rockchip: add basic dts for Pine64
 Quartz64-A
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Liang Chen <cl@rock-chips.com>, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210720_091953_675632_590970E7 
X-CRM114-Status: GOOD (  14.35  )
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

On Thu, Jul 15, 2021 at 12:21 PM Rob Herring <robh@kernel.org> wrote:
>
> On Sat, 10 Jul 2021 11:10:34 -0400, Peter Geis wrote:
> > Add a basic dts for the Pine64 Quartz64 Model A Single Board Computer.
> > This board outputs on uart2 for debug.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 321 ++++++++++++++++++
> >  3 files changed, 327 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> >
>
> Acked-by: Rob Herring <robh@kernel.org>

Thank you!
I need to split the dt-bindings out into a separate patch, and the
quartz64-a dts has some mild changes.
Are you okay with me using your ack still?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
