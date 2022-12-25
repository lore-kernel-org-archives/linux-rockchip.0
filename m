Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32109C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Dec 2022 12:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hezp1BMk7716QxBhqAv44GAyfJpkgqQBNq+VTu0UoNk=; b=vItrtTzROCB3rt
	L0CLXHD+tEabfHNxh7J+ObaT57D1LqTahDYTN1ykN24LKBM7UpO4pT4clw65B7bRzuaa/gDPsT/Ut
	i2Cni+3BJMdX1A5iD89SIWbnbJ0DFDds2u3SxysrYziq6kQVFIAfuU3ZwjVDEwpfIhVyFfmKJaNU5
	h240+HjTa2U1/5rhOZhQStNJFbrhf4u2gb7rdymzRn9lrRT4H/spmr7SsiFOsumlU7dlSJelKvsHH
	NtbEakjXiTJEvc8zEW2SJ4VBOI2ZhXe+gX/fmPKvlU5su9Z7ul2jPT3gJY1KS/Jiy2Bi4oUQQwDTM
	D17+6Dvt/qXzswUadjUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9PnF-00AjsN-Rf; Sun, 25 Dec 2022 12:07:53 +0000
Received: from mail-yw1-x1134.google.com ([2607:f8b0:4864:20::1134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9Pn2-00Aji0-Hm
	for linux-rockchip@lists.infradead.org; Sun, 25 Dec 2022 12:07:42 +0000
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-381662c78a9so123016357b3.7
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Dec 2022 04:07:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=UKTQU6JpYT/i5Ge3ms9B5Uj7VN4LVhAh6fCSSObj+sc=;
        b=t3E2z8YQO7Chfw3KwTr+LNsg7PTaNF52eqrqdBYBkzM1tA4UQrsAclrqVSDjXCuD3O
         y5kjlu2dfzHHhfK3NwbUMG7U2XZFrFXl3MhCwWTvZCcoATjtSUfYkILJSqfA6JD4lX67
         T3KQv9/+BH2C4+stqsYdcez2W300sxdvo1PrXTgJg98Bi2Fz+K7wjUY6DU0CPKioTJm+
         2BUIYFZfXGe717FXUA50jUcjFI2AoA4NmI2KYHYQcYVLFiC8z8fArRUZ1FI6yoRYwEgQ
         iVZJeu58k0B+DM3QioyTSx6WHidCkuXcBXKHNN4ZGuRDyvj4oaV87FpWPPDSt+HbumVJ
         +3UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UKTQU6JpYT/i5Ge3ms9B5Uj7VN4LVhAh6fCSSObj+sc=;
        b=C8NVpqswtYcRNuopq/sWcr/R+3fkKbs4dAdN7SP1tVZSwoZElyHTWEu4+Ct4qYUz0r
         A6ry5GVprsvuMVWg32HGLAiv6954DACXBlif1GGkVAbmTeK12ydZN1fbXkHi/A2k3hZR
         eOPIJdmAEhZh9XtSySkzm3LZfpuTzyo3F9DCBZPWshWptUzMTHH2kxLuki8feP1iCCQI
         Sym2OhTQ+ErQyoDW7+xXPEuy2F9svVPNuHGtANNZEbuMUUEE4nGNQPW2yV2Bcxc84QVJ
         DjmK/yIlqrMsLcWsREuMTYxEk7tnGa+P/ifgTABG7v89ge6CqJ98x6PYgpY3A0HOZl3K
         bV1w==
X-Gm-Message-State: AFqh2krTouWdGdCXL2Ryaq0D4vuYxYILLasGzn4Zm+w5WBBLBH7JxyNx
	3VGMu6FOOT07LxB1ag0QONFg6amVZzOP1BLO168UPg==
X-Google-Smtp-Source: AMrXdXu9DkaN9Y80+F8H02K1xM663fXeLzgYkxqYtnCcRfU0jLJ0G9d/MxK3qm5Et9wUWnmTmGnB26hq2K567oTY0Ys=
X-Received: by 2002:a05:690c:80c:b0:46d:89d7:498f with SMTP id
 bx12-20020a05690c080c00b0046d89d7498fmr613972ywb.461.1671970057918; Sun, 25
 Dec 2022 04:07:37 -0800 (PST)
MIME-Version: 1.0
References: <20221223132235.16149-1-anand@edgeble.ai> <CA+VMnFz8nQ2DnD6L9cPmoRqk+uohRqTEpak9g=WGJnSBoONmrA@mail.gmail.com>
 <CA+pv=HP8ckG8dsh-uZ6=k2nMGDGbw3gnh2b1ZWV31mzuYsjNig@mail.gmail.com>
In-Reply-To: <CA+pv=HP8ckG8dsh-uZ6=k2nMGDGbw3gnh2b1ZWV31mzuYsjNig@mail.gmail.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Sun, 25 Dec 2022 17:37:27 +0530
Message-ID: <CA+VMnFwGHk9OEZWjxWUqGqzwrxgRqy9VZ+tP2Ada5ErPo_dSVw@mail.gmail.com>
Subject: Re: [PATCHv1 linux-next 1/4] dt-bindings: net: rockchip-dwmac: fix
 rv1126 compatible warning
To: Slade Watkins <srw@sladewatkins.net>
Cc: Anand Moon <anand@edgeble.ai>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	David Wu <david.wu@rock-chips.com>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_040740_831742_7EE1F08D 
X-CRM114-Status: GOOD (  13.21  )
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

On Sun, 25 Dec 2022 at 02:54, Slade Watkins <srw@sladewatkins.net> wrote:
>
> On Sat, Dec 24, 2022 at 9:30 AM Jagan Teki <jagan@edgeble.ai> wrote:
> >
> > On Fri, 23 Dec 2022 at 18:55, Anand Moon <anand@edgeble.ai> wrote:
> > >
> > > Fix compatible string for RV1126 gmac, and constrain it to
> > > be compatible with Synopsys dwmac 4.20a.
> > >
> > > fix below warning
> > > arch/arm/boot/dts/rv1126-edgeble-neu2-io.dtb: ethernet@ffc40000:
> > >                  compatible: 'oneOf' conditional failed, one must be fixed:
> > >         ['rockchip,rv1126-gmac', 'snps,dwmac-4.20a'] is too long
> > >         'rockchip,rv1126-gmac' is not one of ['rockchip,rk3568-gmac', 'rockchip,rk3588-gmac']
> > >
> > > Signed-off-by: Anand Moon <anand@edgeble.ai>
> > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > ---
> >
> > Please add Fixes above SoB.
>
> That and, shouldn't the Signed-off-by: tags be reversed if Anand is
> sending this?

Agreed, Anand will resend the patch with SoB removed. thanks.

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
