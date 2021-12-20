Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0579EC433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 16:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuoHWbqB4yGTPYbiFDHDsIqrg1OQBbtmG2Q5w7kxpB8=; b=VoqJ1Lr0RM8Wes
	QznHT5txSeQnu0HKh1S1L+36W0XSB2oulwj+01Xx49M19VcXuH0juj17uxAa9eQPPKIKbrjxhEk2P
	GIX5deiXOHZs51EWPfesBsR+qkU4WAfaA5mYi3tuE5vVcDk3cjeCRHzZOsKARt2JElNTgmNUSHsbx
	5QJAuW/38DAPwY65oJi4CW3rjY3eGwf+zGsnMLC5Pt6C12ils16dNLQlWwaT608e04wZhS8UNbUqn
	eDDZ3f6EvPHHt9ML9S8IDsW8y9IySF74EJY6Fb0T0HHGhmxFUxOOuFGVTlBk8FZmT6dpn5ta7LqwV
	lmM9YgCB4E4x0Hvbvo/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzLua-003P4q-VD; Mon, 20 Dec 2021 16:53:21 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzLuX-003P2M-Ir; Mon, 20 Dec 2021 16:53:19 +0000
Received: by mail-wr1-x42e.google.com with SMTP id r17so21032939wrc.3;
 Mon, 20 Dec 2021 08:53:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p9Tx2wH4HEpVybdHYcjlhyrX2v7ZfIvmca5PPAdXN6k=;
 b=fVQb2iOMp+8XdAiBh3r7/dK9kp/+EyrvqmRClEZfDbVqB1PzXufL4v8IiRsF7HLpoa
 QLHjSmC4jwYBjekVzIfT47xjwmABDFEr6RRI32lF/f3xa0RBFoXeTK9lAIbfd0SvZIOg
 DFWeNf1n9jX2+Z4rAPCkuwTUhyDDAOQ1AWLLIesGzavACAbtKZOhjOi61EoF31P5zJ/4
 WTk+KRcyYo03rcn4y+nGMJN7FFKPE6biCgCWC2+e3Rgll9+DBMqQhi7fHPQWFFfzoUYc
 xqJ4k4Ls9vbAbILV0NZI1x1TmEWN4Os/2cvIVhloyPulUbql7QwH+tp3BjZ62/KXWNuS
 d09g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p9Tx2wH4HEpVybdHYcjlhyrX2v7ZfIvmca5PPAdXN6k=;
 b=XpPWTOMh0WIWBcHwQHA+P132P7+MBo+/cckne2Bi1uY6VJ4ui95KiHlxvmYNBCBR1n
 u5qnawTZ2foPOFhJBCiVMo4x2KUB/jgTS41ZwYeonMZsNQoGFRNhI16sa922GmJAxxEO
 kcivZ0VyeOVvihAxbTDc5kgjlx4oxWwy0wagS+RZv6xJNoU53EsCP/YclVw1yDb9MLCf
 p+T5zGuiaSPG6oHtQvCTm2OExU52IIzarZaofdq9qBJisXN13UUgzZ3Uua6dPa0ldAQH
 J93YzAFfxACQw08wYFzbobALAJJdyG2Ck/4rx3R/N86yenNg3HTtk+ZU+B70wGMhS4ls
 TCPw==
X-Gm-Message-State: AOAM5321a+cAgABCqrF09Hhh1w4gs9lVtZDC6VlRh3oiLn+fvMspCE3M
 xHAHbWHIa736+cxVYKBfjbQ=
X-Google-Smtp-Source: ABdhPJx79HzNYw/1/E19mQIiwB8X0jLmD92oBdZER7LrTtQNdGGa5D09PBIWyP79Cz4iHMPyrQd8fA==
X-Received: by 2002:adf:9cc2:: with SMTP id h2mr13387161wre.464.1640019196095; 
 Mon, 20 Dec 2021 08:53:16 -0800 (PST)
Received: from archbook.localnet ([217.151.114.10])
 by smtp.gmail.com with ESMTPSA id p1sm155802wrr.75.2021.12.20.08.53.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Dec 2021 08:53:15 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Subject: Re: [PATCH 22/22] drm: rockchip: Add VOP2 driver
Date: Mon, 20 Dec 2021 17:53:14 +0100
Message-ID: <2517243.oazWQlOnO6@archbook>
In-Reply-To: <5637649.G3HFo5JPcS@archbook>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <20211220110630.3521121-23-s.hauer@pengutronix.de>
 <5637649.G3HFo5JPcS@archbook>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211220_085317_718771_69C3F9EF 
X-CRM114-Status: GOOD (  26.60  )
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

On Montag, 20. Dezember 2021 15:16:55 CET Nicolas Frattaroli wrote:
> On Montag, 20. Dezember 2021 12:06:30 CET Sascha Hauer wrote:
> > From: Andy Yan <andy.yan@rock-chips.com>
> > 
> > The VOP2 unit is found on Rockchip SoCs beginning with rk3566/rk3568.
> > It replaces the VOP unit found in the older Rockchip SoCs.
> > 
> > This driver has been derived from the downstream Rockchip Kernel and
> > heavily modified:
> > 
> > - All nonstandard DRM properties have been removed
> > - dropped struct vop2_plane_state and pass around less data between
> >   functions
> > - Dropped all DRM_FORMAT_* not known on upstream
> > - rework register access to get rid of excessively used macros
> > - Drop all waiting for framesyncs
> > 
> > The driver is tested with HDMI and MIPI-DSI display on a RK3568-EVB
> > board. Overlay support is tested with the modetest utility. AFBC support
> > on the cluster windows is tested with weston-simple-dmabuf-egl on
> > weston using the (yet to be upstreamed) panfrost driver support.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> 
> Hi Sascha,
> 
> sadly I'm getting
> 
> [    1.668856] rockchip-drm display-subsystem: [drm] *ERROR* failed to get vop2 register byname
> [    1.669621] rockchip-drm display-subsystem: failed to bind fe040000.vop (ops vop2_component_ops): -22
> [    1.670584] rockchip-drm display-subsystem: master bind failed: -22
> [    1.671164] dwhdmi-rockchip: probe of fe0a0000.hdmi failed with error -22
> 
> on a Quartz64 Model A.
> 
> 
> > +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "regs");
> > +	if (!res) {
> > +		drm_err(vop2->drm, "failed to get vop2 register byname\n");
> > +		return -EINVAL;
> > +	}
> 
> This seems to be the code that triggers it.
> 
> Any ideas as to what could be causing this?
> 
> Regards,
> Nicolas Frattaroli
> 

A small follow-up:

We're trying to get IORESOURCE_MEM by the name "regs", but nothing
has a reg-names property in the device tree changes you sent in.

How did you test this on your system?

Also, adding the reg-names = "regs"; to the vop node doesn't make
it probe, it just fails with

[    1.668560] rockchip-vop2 fe040000.vop: can't request region for resource [mem 0xfe040000-0xfe044fff]

then.

We're also trying to get gamma_lut the same way, but your cover letter states

> drop unnecessary gamma_lut registers from vop2

which makes me wonder: is this the correct series of patches you sent in?

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
