Return-Path: <SRS0=vbLC=C2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1EF78C433E2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 06:41:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C3DB620707
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2020 06:41:22 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="nwiVoVJZ";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="b1Tl65St"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C3DB620707
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PPzJ2UZ1mwYHT72Yuo0q50ZqRXRsj+I4E39Fk0dPyHw=; b=nwiVoVJZiiSc8HxTqThL+uc0I
	kuSBegyR/7y0TuGituIqZrhv2+02jYBvc/Fh9NUOktTvjLIac7XPs4QMTaTgFiGel6lq4ki7rfogO
	D95PM01HD8OZI7K3g9QippC592jQhMAIVvVSwef51w7vGNkf8N2/AhHlJh0muP8zlt5XCNXdSN1qE
	epo8P6g2M2u8+G1JvaDNmboEDNWlfol8iFlVjZiimdDqbei9Isb96R8nPCWEptgvoWMouJfZsjirh
	o8z4cJgELhcKct/5rFmt+0E0yGWVnwFa7zcX8EpUoGGG5FyboZKcYm24ZkMPbesR2v7h9rjiP0jJr
	acDJHYo0w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kInbZ-0005br-Cd; Thu, 17 Sep 2020 06:41:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kInbU-0005Zu-B2; Thu, 17 Sep 2020 06:41:13 +0000
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E11F21D7F;
 Thu, 17 Sep 2020 06:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1600324871;
 bh=gTdZKSX6NgS308trS+0JD2GfHaXkhosgKfxozY4cd/g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=b1Tl65StLVPpR2Yl3IZ1RY6XfXzE4ybHiRueZCD/PjFAmE76n9BxSME04p87xrnz5
 ZFOSyyjfQCNGGzSj1c8YwUnd+9xcBoyXLuY0gh1pB4EiNsVtwlR0gBZ8mcFoE7eyNj
 w1LgRGpPDO6/nr09+uJkOsiYG2A01bfFirqnNpbU=
Received: by mail-ej1-f43.google.com with SMTP id p9so1633138ejf.6;
 Wed, 16 Sep 2020 23:41:11 -0700 (PDT)
X-Gm-Message-State: AOAM532AW7FCHZNgALNW9MELs6RitNdsjgUu6WxMdNhevOwftdgR2mak
 COsBr+eRDi4kSpQwbJckXZm4dXKbpJu2AWV0Bz8=
X-Google-Smtp-Source: ABdhPJwT9pc66JXvXrI1tZ2stBeP+SeOm2JL4s7jgRmwKi39beZJM27SYqdw3mYmThUvsSUuM1YzS0U/hvcyOvNsbaY=
X-Received: by 2002:a17:906:4046:: with SMTP id
 y6mr30579927ejj.148.1600324869747; 
 Wed, 16 Sep 2020 23:41:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200908150241.5771-1-krzk@kernel.org>
 <20200913023152.GH25109@dragon>
In-Reply-To: <20200913023152.GH25109@dragon>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Thu, 17 Sep 2020 08:40:57 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeQ8ZV5H4KY3dTacggyNbWxZRJoyMYNwevmTVjZ+bmHfA@mail.gmail.com>
Message-ID: <CAJKOXPeQ8ZV5H4KY3dTacggyNbWxZRJoyMYNwevmTVjZ+bmHfA@mail.gmail.com>
Subject: Re: [PATCH 1/8] ARM: dts: imx6qdl: Correct interrupt flags in examples
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200917_024112_445743_8CC4C541 
X-CRM114-Status: GOOD (  18.44  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>,
 Kever Yang <kever.yang@rock-chips.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 Robin Gong <yibin.gong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Adam Ford <aford173@gmail.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org,
 Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
 Tim Harvey <tharvey@gateworks.com>, Rob Herring <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>, Alifer Moraes <alifer.wsdm@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Vitor Massaru Iha <vitor@massaru.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, 13 Sep 2020 at 04:32, Shawn Guo <shawnguo@kernel.org> wrote:
>
> Add Tim who is the board owner.
>
> On Tue, Sep 08, 2020 at 05:02:34PM +0200, Krzysztof Kozlowski wrote:
> > GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> > These are simple defines so they could be used in DTS but they will not
> > have the same meaning:
> > 1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
> > 2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING
> >
> > Correct the interrupt flags, assuming the author of the code wanted some
> > logical behavior behind the name "ACTIVE_xxx", this is:
> >   ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> The subject prefix could be a bit more specific, like 'ARM: dts:
> imx6qdl-gw5xxx'.  Also, I do not quite understand meaning of 'in
> examples' in subject.

That's my copy-paste error. I'll resend with a proper subject.

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
