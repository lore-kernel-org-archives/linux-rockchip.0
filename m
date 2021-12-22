Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4E7CC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 19:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57Nd4t7+iR27BsEDgHV3xbJ7m3fneJdCCiTrsjhmz8E=; b=fwIyHP4UilAIFk
	rk9U5Y4gq2pqhIgM7vmhM5Kq4bNFf8o2bY471RfY5J1moeiuR0NKnVTMEEpHOUsjFnIvNxasj1n1c
	rYh3kuciyiIaCjqpP+f23YHZvOiNt/HzJDUhhafQWe/F6BJxxNq4lENZm4quYWVfDOU9KmzbWXFRN
	Qj4gyzxVBz6Rsoxc7pbm0l9pT7OdLtyGl22T6xocK5Xr3VhIKfiSBUJ0IT+m7499saj9NMF3xOtHE
	8XWsCZcykkazajrw3bZgWD69R1BVbqCh1VM1dv9IO8gBDEoF+v9cVrEUsHtfUkuKsegdclRTJvPn4
	kLBa4vbPNgf0NJdCnJlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n07XO-00BGHu-Nn; Wed, 22 Dec 2021 19:44:34 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n07XL-00BGGt-E5; Wed, 22 Dec 2021 19:44:32 +0000
Received: by mail-wr1-x430.google.com with SMTP id q16so6988738wrg.7;
 Wed, 22 Dec 2021 11:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dCjrHpXu1Vo7I4rx8GmbmN8hEJq/k/PZV1K6n27kXVk=;
 b=bSSlZ3aH9FEGWUVzYQG9mKEMOxBNE7/T2bXPlBKZbxzhO9S2Z2J32F3JFPCuIQlfOo
 EzrW5Jny6H9NBAtnOPhBYd/fChsO41sQZTUqOwakHc82gQIbDAhx/X1HSxxosyTSelGe
 tmFMyNIS7xYEpcBviehq5HF+3xR13K2+oypvqo3B/VkYOSiakjCY3J+Ba6RwVJtEDnOP
 W6GbxzjxMNm/RoJl2lc19aPi4qEjgRrZi9sG+No47w/CiY+zYqMPsrFW929Q+EkH7KL5
 CC8H2VOEXZ5YSjeRIfPJOBAuArrMR28tvtDuuS/xzLUPnSLHNr9/A+/zvxu7LVAhQiPo
 glnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dCjrHpXu1Vo7I4rx8GmbmN8hEJq/k/PZV1K6n27kXVk=;
 b=qjdJoVZRn5V1k1vfurfL5LennkjknA1hyH1YA4+tKGeGksJHQvwIN7TzkwGlFohk5g
 IaE8apRiKHdHpUIYtDz0cUJuDVtCxZmpq00+LCqC7kSQScKKkMtT+aCd7YcWC2fO9mZT
 YcWkvxTB7paJEwCG9cuhgaDtSxjfYQCHHiucx3sQMlgEi1UzXYlzZYk5ZtA56vIHOtyC
 iGzBZyTw36vG8COy/mbNyWHa6ZuZFsZU/Gh1Qn1BGaz7j2IKOBamEJKtq+g5xrlG8SH6
 UU/X032ZvvOg7tU9aSCwW0A0vdPAlLOiNPx7s+ugcO/DWpjMwgM1vlaghk0mTQvls9WK
 hoCw==
X-Gm-Message-State: AOAM532k1kPM2XoJ/bwbDAXDLBBnaQZ8VAFk6Q4k9wIBHc6PKu4Wa3ka
 k9fzBtx6G/bPO/Y8x1KbSig=
X-Google-Smtp-Source: ABdhPJxSwX0RyZXV/YBXj2EFbWxkfPas2TAbhpbHVlzdZLmZZ8hRCF0UKBxVVneoMV+Rl/taQPV5XA==
X-Received: by 2002:a5d:59a6:: with SMTP id p6mr1126955wrr.559.1640202269582; 
 Wed, 22 Dec 2021 11:44:29 -0800 (PST)
Received: from archbook.localnet ([217.151.114.10])
 by smtp.gmail.com with ESMTPSA id m12sm2991540wrp.49.2021.12.22.11.44.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 11:44:29 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>,
 linux-rockchip@lists.infradead.org
Cc: dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 08/22] dt-bindings: display: rockchip: dw-hdmi: use "ref"
 as clock name
Date: Wed, 22 Dec 2021 20:44:22 +0100
Message-ID: <2487063.3NWx74C5WQ@archbook>
In-Reply-To: <8156864.jFcTpQmkuZ@diego>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <CAL_Jsq+jhaE7DWNu1=n9JX+oNp8XRW7mNi--8moDU6RYNyBgBw@mail.gmail.com>
 <8156864.jFcTpQmkuZ@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_114431_499659_0F7AEB6C 
X-CRM114-Status: GOOD (  24.54  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mittwoch, 22. Dezember 2021 20:39:58 CET Heiko St=FCbner wrote:
> Am Mittwoch, 22. Dezember 2021, 14:52:51 CET schrieb Rob Herring:
> > On Wed, Dec 22, 2021 at 6:47 AM Sascha Hauer <s.hauer@pengutronix.de> w=
rote:
> > >
> > > On Tue, Dec 21, 2021 at 10:31:23AM -0400, Rob Herring wrote:
> > > > On Mon, Dec 20, 2021 at 12:06:16PM +0100, Sascha Hauer wrote:
> > > > > "vpll" is a misnomer. A clock input to a device should be named a=
fter
> > > > > the usage in the device, not after the clock that drives it. On t=
he
> > > > > rk3568 the same clock is driven by the HPLL.
> > > > > To fix that, this patch renames the vpll clock to ref clock.
> > > >
> > > > The problem with this series is it breaks an old kernel with new dt=
. You
> > > > can partially mitigate that with stable kernel backport, but IMO ke=
eping
> > > > the old name is not a burden to maintain.
> > >
> > > As suggested I only removed vpll from the binding document, but not f=
rom
> > > the code. The code still handles the old binding as well.
> > =

> > The problem is updating rk3399.dtsi. That change won't work with old
> > kernels because they won't look for 'ref'. Since you shouldn't change
> > it, the binding needs to cover both the old and new cases.
> =

> is "newer dt with old kernel" really a case these days?
> =

> I do understand the new kernel old dt case - for example with the
> dtb being provided by firmware.
> =

> But which user would get the idea of updating only the devicetree
> while staying with an older kernel?
> =


Side-by-side installations of LTS kernels with new kernels. LTS kernel
uses same DT as new kernel because distribution set it up this way.

Other scenario: user wants to modify their device tree. They download
the latest kernel sources from kernel.org because they can't use over-
lays and they don't want to fiddle with decompiled device trees.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
