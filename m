Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBDB3C61CE8
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jun 2025 21:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rp6pH8UlPsuDyPiTd3XY8WDKx4Dhtpz4DImWkj5qc+M=; b=ArJ3UFbSkrixKY
	xJ/PneNp9rTcrPsD40k/9L5R9UVBcjAIPxtacfHTAPl1iL4TRaI8MB/IW/OOrUv9N3XzIa2LTHOuu
	x+3hKvp9FG0tUkhm3SLICQv10Nx8DTvDjxx2ydjVh+ORC2hbgREhNYIgDR4mSUsQyN2/Oo0E1el5K
	h1ENlQ0/xhe4Aiw7SKu6Wn+VuzvdyVygLxyTjSu/BZ1V6OI8LNtamGeO1EpUcFAy+7QmppqjAWBZB
	f+47at4kHv9HhFKsZl2xf0JXbNqjqKkO6TtIPBjvUQlpaiRARTzsLNhUR/edIbvRbxtcdKOLS5z2i
	RfCMcQzQwQ/Mu4w8lq7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPpB3-0000000EcoY-2DUZ;
	Thu, 12 Jun 2025 21:09:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnyH-0000000EQQ3-0DPc;
	Thu, 12 Jun 2025 19:52:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=z7xi4YJKAUkKxYZRl9SSrq8Evyr8Lkvoed++01daD1s=; b=HofWb6cAOhMPiV58F/k1vzQNjO
	pjrnoRpgAe/xRpmMSJqfGcpccu70bTh+zkDG7x7mVB7zxuq4M0jXBe6Csl2ayndJiuTNeuBkq/RWv
	w5bv5pFazg+Ro0q4eM+6gdJWNJj5vr2Vh2Nkd5kvBpIn9OxGcyZQzFngG+HFZeC8opf9l0+VKuxy6
	Uz31dxbLsoh8VLS71wkvvphkQZwDnYRH0oOpRZPFEGt5lbJk4iNMJpJJXwm2sW9PASRifuQDQO58K
	8iSSP1uSg8WTZUhCr938HAyEdeAvGGA9xnyiwyTmlTEJwFqma47ofF9XmCoJ+KyfRfhexT9xBWPOv
	lJs6ur7w==;
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPnyB-00000002efH-1cyp;
	Thu, 12 Jun 2025 19:52:18 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-7424ccbef4eso1343127b3a.2;
        Thu, 12 Jun 2025 12:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749757932; x=1750362732; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=z7xi4YJKAUkKxYZRl9SSrq8Evyr8Lkvoed++01daD1s=;
        b=G4+qOICyjKIPBxJR/qR+3SQoVt2KWSzPAozrBqPFn+nBT35kPG0/g/uqns8ODX7aqm
         MJrzDnAjflbFwXXkQy2GI3anqBPMGfRBLRR5RpjO4MYLf+/K0aHj9HdaHl8kOmg6g0Y1
         akK90auOjiOCLRhxbSbed9zPtR/dtEu+k+6EEqqUH86WDsKXoc/98N051Ra9JHBtUDJ1
         hWNZnm9dAX3kuVRD1dGVfOqevaAyVynovU/bHiQLEloJp7EAhXvmZTmQwmia9D7/6iS3
         XpXfk3rlMCs6TqiWXVbuay/AOLdsZRD52+Qjy3jW+UCK3b58aqpjOKHzfIv7GR6/fpPw
         hnkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749757932; x=1750362732;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z7xi4YJKAUkKxYZRl9SSrq8Evyr8Lkvoed++01daD1s=;
        b=Z1mKKGJH++B6CESOKmh3JTkCg4rp5A1FovY3O0qaccnPlyPKhRRM1wPI/hRkokm1m6
         9MD0HDtDyPOQK5lETi6MOYY2LMT9wZcojT6w+rixEmstOV17UcuPuSLfQjCBjTWCtXqc
         2UvQl3mQzJ73xZN/Ldl8hOFJV65Adq6DZUrP6zWP4zMp1Aa8pldRPdwxJGeTjuJubNjx
         MWbDjC9ZaGBy9mR7zDdv8X7s3MGkOuUs7K9esDar/oy62BpQo0Mn2rDNg0pbVYj3MbAL
         mMpylZ/+m9VA6dA+qew10zTwLpRTZxr+Hc00MH0PF2mp1ze1pk+h1lwUvrP4ouSnmPTI
         gUKg==
X-Forwarded-Encrypted: i=1; AJvYcCVTNN+gpLRuj3DUkI2hmFn1+PNKdq5/M2xR9E+j6Xqn2VgVTMLjNCUytl+BpKS+ckSJZzWeR4XtJJcB@lists.infradead.org, AJvYcCWmJP06SotfFyc6C6DVCH+sicwjfahLAkHVVOJUsKcUcMwoEUwy/Y7/UBrKkO+63JkMkK1CyQOvcUJ5I0iQIqY=@lists.infradead.org, AJvYcCX/DENeLJo27GqvpJPRdjL0uWkAYqt4KBwaYroZLzLbE90O3U8dN24ZB2SjV/91cqe38lhaGNTar2E3bwXsx2Zb@lists.infradead.org
X-Gm-Message-State: AOJu0YwCYLoJ36kO0VG6V5GkbWWY6/HaZSqcy/6KoA1gNONj7DEFO0Ag
	8rm8N/8ZLv3NC0D8RwDlTSb566A+nbl6jYmWK8QwlmmFy0IOYYgxZlw6
X-Gm-Gg: ASbGnctD3YYG/MtRINrJeTUgofIpWY4Q2vuZM07iBgqsXYdZqwiWsDDQuQeJvgSOvCW
	akbB+WvC2LKk/g7LthsIpNlVk4SXDM6BkS75EGnwgHov3Au09oAE2l8XnqTEtMk6AHYi0+Ug5wi
	li+UXY0HqQmmOY8yNKp+7dxvwPRWI6hZ52FyhrEQ/KNPm0AdABSf9fpCJuPexBSO75xSxLkuEqc
	UTDgpCByoUj1Ur23+7gIhvBbW97qYmylWmueWUyqUZ7bDbRL314QYiqZBvwnw0CGIEwKNDxqkuC
	d9V2simQtituig4VU0QOHqR5TUIbEi4tmjNuvZ4VtyZ2UGaHVi58isLNfIHccA==
X-Google-Smtp-Source: AGHT+IEU8m2F+5mxJ4HQROetGJB4LGA8zrpWrZ/HojR3rTDhNg8kjwUPP475HlXQvhwtX4Onlx73lw==
X-Received: by 2002:a05:6a00:b87:b0:736:450c:fa54 with SMTP id d2e1a72fcca58-7488f6c9155mr687345b3a.6.1749757932319;
        Thu, 12 Jun 2025 12:52:12 -0700 (PDT)
Received: from localhost ([216.228.127.129])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7488ffeca70sm123370b3a.21.2025.06.12.12.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jun 2025 12:52:11 -0700 (PDT)
Date: Thu, 12 Jun 2025 15:52:09 -0400
From: Yury Norov <yury.norov@gmail.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 16/20] PCI: rockchip: switch to HWORD_UPDATE* macros
Message-ID: <aEsv6X5JSQkpmwvP@yury>
References: <20250612-byeword-update-v1-16-f4afb8f6313f@collabora.com>
 <20250612193728.GA924118@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250612193728.GA924118@bhelgaas>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250612_205216_912385_7C5CFE30 
X-CRM114-Status: GOOD (  32.25  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, llvm@lists.linux.dev, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Alexandre Torgue <alexandre.torgue@foss.st.com>, dri-devel@lists.freedesktop.org, Sandy Huang <hjc@rock-chips.com>, Eric Dumazet <edumazet@google.com>, Bill Wendling <morbo@google.com>, Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, linux-phy@lists.infradead.org, kernel@collabora.com, David Airlie <airlied@gmail.com>, linux-stm32@st-md-mailman.stormreply.com, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, Simona Vetter <simona@ffwll.ch>, Jaehoon Chung <jh80.chung@samsung.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, Kyungmin Park <kyungmin.park@samsung.com>, linux-clk@vger.kernel.org, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>, Michael Turquette <mturquette@baylibre.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, linux-media@vger.kernel.org, Kishon Vijay Abraham I <kishon@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>, linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Mark Brown <broonie@kernel.org>, linux-sound@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>, Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org, Qin Jian <qinjian@cqplus1.com>, Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org, linux-mmc@vger.kernel.org, Takashi Iwai <tiwai@suse.com>, "David S. Miller" <davem@davemloft.net>, Andrew Lunn <andrew+netdev@lunn.ch>, Vinod Koul <vkoul@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Justin Stitt <justinstitt@google.com>, Andy Yan <andy.yan@rock-chips.com>, Shreeya Patel <shreeya.patel@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, Jun 12, 2025 at 02:37:28PM -0500, Bjorn Helgaas wrote:
> On Thu, Jun 12, 2025 at 08:56:18PM +0200, Nicolas Frattaroli wrote:
> > The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
> > drivers that use constant masks.
> > 
> > The Rockchip PCI driver, like many other Rockchip drivers, has its very
> > own definition of HIWORD_UPDATE.
> > 
> > Remove it, and replace its usage with either HWORD_UPDATE, or two new
> > header local macros for setting/clearing a bit with the high mask, which
> > use HWORD_UPDATE_CONST internally. In the process, ENCODE_LANES needed
> > to be adjusted, as HWORD_UPDATE* shifts the value for us.
> > 
> > That this is equivalent was verified by first making all HWORD_UPDATE
> > instances HWORD_UPDATE_CONST, then doing a static_assert() comparing it
> > to the old macro (and for those with parameters, static_asserting for
> > the full range of possible values with the old encode macro).
> > 
> > What we get out of this is compile time error checking to make sure the
> > value actually fits in the mask, and that the mask fits in the register,
> > and also generally less icky code that writes shifted values when it
> > actually just meant to set and clear a handful of bits.
> > 
> > Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
> 
> Looks good to me.  I assume you want to merge these via a non-PCI tree
> since this depends on patch 01/20.  PCI subject convention would
> capitalize "Switch":

Hi,

I'd like to take patch #1 and the explicitly acked following patches in
my bitmap-for-next.Those who would prefer to move the material in their
per-driver branches (like net, as mentioned by Andrew Lunn) can wait
till the end of next merge window, and then apply the patches cleanly.

Thanks,
Yury

>   PCI: rockchip: Switch to HWORD_UPDATE* macros
> 
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> 
> > ---
> >  drivers/pci/controller/pcie-rockchip.h | 35 +++++++++++++++++-----------------
> >  1 file changed, 18 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
> > index 5864a20323f21a004bfee4ac6d3a1328c4ab4d8a..5f2e45f062d94cd75983f7ad0c5b708e5b4cfb6f 100644
> > --- a/drivers/pci/controller/pcie-rockchip.h
> > +++ b/drivers/pci/controller/pcie-rockchip.h
> > @@ -11,6 +11,7 @@
> >  #ifndef _PCIE_ROCKCHIP_H
> >  #define _PCIE_ROCKCHIP_H
> >  
> > +#include <linux/bitfield.h>
> >  #include <linux/clk.h>
> >  #include <linux/kernel.h>
> >  #include <linux/pci.h>
> > @@ -21,10 +22,10 @@
> >   * The upper 16 bits of PCIE_CLIENT_CONFIG are a write mask for the lower 16
> >   * bits.  This allows atomic updates of the register without locking.
> >   */
> > -#define HIWORD_UPDATE(mask, val)	(((mask) << 16) | (val))
> > -#define HIWORD_UPDATE_BIT(val)		HIWORD_UPDATE(val, val)
> > +#define HWORD_SET_BIT(val)		(HWORD_UPDATE_CONST((val), 1))
> > +#define HWORD_CLR_BIT(val)		(HWORD_UPDATE_CONST((val), 0))
> >  
> > -#define ENCODE_LANES(x)			((((x) >> 1) & 3) << 4)
> > +#define ENCODE_LANES(x)			((((x) >> 1) & 3))
> >  #define MAX_LANE_NUM			4
> >  #define MAX_REGION_LIMIT		32
> >  #define MIN_EP_APERTURE			28
> > @@ -32,21 +33,21 @@
> >  
> >  #define PCIE_CLIENT_BASE		0x0
> >  #define PCIE_CLIENT_CONFIG		(PCIE_CLIENT_BASE + 0x00)
> > -#define   PCIE_CLIENT_CONF_ENABLE	  HIWORD_UPDATE_BIT(0x0001)
> > -#define   PCIE_CLIENT_CONF_DISABLE       HIWORD_UPDATE(0x0001, 0)
> > -#define   PCIE_CLIENT_LINK_TRAIN_ENABLE	  HIWORD_UPDATE_BIT(0x0002)
> > -#define   PCIE_CLIENT_LINK_TRAIN_DISABLE  HIWORD_UPDATE(0x0002, 0)
> > -#define   PCIE_CLIENT_ARI_ENABLE	  HIWORD_UPDATE_BIT(0x0008)
> > -#define   PCIE_CLIENT_CONF_LANE_NUM(x)	  HIWORD_UPDATE(0x0030, ENCODE_LANES(x))
> > -#define   PCIE_CLIENT_MODE_RC		  HIWORD_UPDATE_BIT(0x0040)
> > -#define   PCIE_CLIENT_MODE_EP            HIWORD_UPDATE(0x0040, 0)
> > -#define   PCIE_CLIENT_GEN_SEL_1		  HIWORD_UPDATE(0x0080, 0)
> > -#define   PCIE_CLIENT_GEN_SEL_2		  HIWORD_UPDATE_BIT(0x0080)
> > +#define   PCIE_CLIENT_CONF_ENABLE		HWORD_SET_BIT(0x0001)
> > +#define   PCIE_CLIENT_CONF_DISABLE		HWORD_CLR_BIT(0x0001)
> > +#define   PCIE_CLIENT_LINK_TRAIN_ENABLE		HWORD_SET_BIT(0x0002)
> > +#define   PCIE_CLIENT_LINK_TRAIN_DISABLE	HWORD_CLR_BIT(0x0002)
> > +#define   PCIE_CLIENT_ARI_ENABLE		HWORD_SET_BIT(0x0008)
> > +#define   PCIE_CLIENT_CONF_LANE_NUM(x)		HWORD_UPDATE(0x0030, ENCODE_LANES(x))
> > +#define   PCIE_CLIENT_MODE_RC			HWORD_SET_BIT(0x0040)
> > +#define   PCIE_CLIENT_MODE_EP			HWORD_CLR_BIT(0x0040)
> > +#define   PCIE_CLIENT_GEN_SEL_1			HWORD_CLR_BIT(0x0080)
> > +#define   PCIE_CLIENT_GEN_SEL_2			HWORD_SET_BIT(0x0080)
> >  #define PCIE_CLIENT_LEGACY_INT_CTRL	(PCIE_CLIENT_BASE + 0x0c)
> > -#define   PCIE_CLIENT_INT_IN_ASSERT		HIWORD_UPDATE_BIT(0x0002)
> > -#define   PCIE_CLIENT_INT_IN_DEASSERT		HIWORD_UPDATE(0x0002, 0)
> > -#define   PCIE_CLIENT_INT_PEND_ST_PEND		HIWORD_UPDATE_BIT(0x0001)
> > -#define   PCIE_CLIENT_INT_PEND_ST_NORMAL	HIWORD_UPDATE(0x0001, 0)
> > +#define   PCIE_CLIENT_INT_IN_ASSERT		HWORD_SET_BIT(0x0002)
> > +#define   PCIE_CLIENT_INT_IN_DEASSERT		HWORD_CLR_BIT(0x0002)
> > +#define   PCIE_CLIENT_INT_PEND_ST_PEND		HWORD_SET_BIT(0x0001)
> > +#define   PCIE_CLIENT_INT_PEND_ST_NORMAL	HWORD_CLR_BIT(0x0001)
> >  #define PCIE_CLIENT_SIDE_BAND_STATUS	(PCIE_CLIENT_BASE + 0x20)
> >  #define   PCIE_CLIENT_PHY_ST			BIT(12)
> >  #define PCIE_CLIENT_DEBUG_OUT_0		(PCIE_CLIENT_BASE + 0x3c)
> > 
> > -- 
> > 2.49.0
> > 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
