Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74F62C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Apr 2022 07:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ffh7584BS58T/pKw6okh+mKAa7adDeM4Eq/czMVvU10=; b=vLqdOZXHHdOWC0
	jjH8aA7yTOXxIbDTlr+5Nj5FVE964nRi0E+JeKcbYwl/cCvL9BN+S/5IX4NzppDRalb+cKeQyfIe8
	DsNe+3YM0KzPGbJiJJYf7XXqh/zLcgq7u7ArnpYPVWyZNqQMMNABd2H1OYpN/Vx7jGcSUX0BQR+4G
	SnAzTL2rA4gWa8HvmN0TIoV4d2/RXpy9NCMNxbPlvF/3bH+tcvYPzj+QUk2KIeGVgrmEOW4mNyiMa
	kpSLYN4xLlWfflIcu5oVPI2nvLRrouTK3vFCQPkMUMcD5j32nbDE04qZofCaMXZ8P6NiJBGTea/yW
	gD9z0k/I4bgfPdpz4J2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhQxL-00BxFk-2D; Thu, 21 Apr 2022 07:10:23 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhQxI-00BxEP-Ff; Thu, 21 Apr 2022 07:10:21 +0000
Received: by mail-ed1-x535.google.com with SMTP id v15so5256603edb.12;
 Thu, 21 Apr 2022 00:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nbjLblII7Z2uoGDQq4GfVdmFvR2bagmypp3+70OIo8I=;
 b=P6UpypImljS5OSfnMO9hdrzhulrB9Of8rz9z+jnrnUrobOmeQNpmMMtZIbS8XGleeC
 KanXbo8DdrB/5L5BYPR4FkBv9hSe3y81W9vKpxP4hUwxP1H+SsZO7e4E/taDSSs6AJw3
 NUp9eI5zLVOWaYtsZd7a6jShDZKODICVUm82gOzUKKgDdi8OKYJEWireg+gmLrEKoVko
 3Qx6A/V5Ewcv9tIsihoVIynQFQHMhkbLmhu7T7p93DIVy4htGM3Q1sJLkMcuQLT8D3L1
 xlxUPPZQgxnX7opM8A60mRBREcfxBgKfgcWMb7Rj7coziz0JY0ldoIwNVS4WlLhncyBl
 rt7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nbjLblII7Z2uoGDQq4GfVdmFvR2bagmypp3+70OIo8I=;
 b=0h7Grrf15Wb390cQKDN1CysPY1dLRKsdPU75+pr9Ix2l34al7HbhBIhhkW6niDV5O7
 gT2oQr95e42SlSoFtZHbRTBIYiXgK4xbLqsU+cou9TS9BovNl7GmLldCvJs/uzZPOYy1
 F13K3ZgEgj7eCpyFQ/hHKSrtRibPT1WE1K1zPrcRlwXJrXnqdw1xteKW3iA10xkfwl+9
 FizmXiXiWaRFmY0mt0QB3Le9F/Z7lugk2C5Y1cEW9u0J+tmLOQIdwj7xczTvPKi4i3sw
 oUUYRxyw+Cy0LD2vNA3jmsYkJbV42jycxEqsBgbQ+dqIDSbBYy2vPx9qc5YjAzRDfzzT
 hoPg==
X-Gm-Message-State: AOAM5314slao+3sjj1DrhSqfEiy7Acc+IFTNUXKtWKxqoPiQ2s88pVhs
 +aHf+KrCplXlGgTBGh2fmjE=
X-Google-Smtp-Source: ABdhPJzr84nRJtm+qBzUEfqcugaiD6jjrathMDD2cdUzX0mdEOEFkYF92L6clSwrVyD+XYRwdQG7kA==
X-Received: by 2002:a05:6402:3592:b0:423:d71e:41dc with SMTP id
 y18-20020a056402359200b00423d71e41dcmr25069151edc.402.1650525017140; 
 Thu, 21 Apr 2022 00:10:17 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84]) by smtp.gmail.com with ESMTPSA id
 n25-20020a1709062bd900b006e8766b7907sm7499660ejg.223.2022.04.21.00.10.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Apr 2022 00:10:16 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Samuel Holland <samuel@sholland.org>,
 Andreas Kemnade <andreas@kemnade.info>
Cc: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Alistair Francis <alistair@alistair23.me>,
 =?utf-8?B?T25kxZllag==?= Jirman <x@xff.cz>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Geert Uytterhoeven <geert@linux-m68k.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Sam Ravnborg <sam@ravnborg.org>, Thierry Reding <thierry.reding@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH 00/16] drm/rockchip: Rockchip EBC ("E-Book
 Controller") display driver
Date: Thu, 21 Apr 2022 09:10:15 +0200
Message-ID: <1790161.aHo8FjPgqx@archbook>
In-Reply-To: <20220421084338.084c4d6e@aktux>
References: <20220413221916.50995-1-samuel@sholland.org>
 <20220421084338.084c4d6e@aktux>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_001020_581375_13E5851E 
X-CRM114-Status: GOOD (  15.02  )
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

On Donnerstag, 21. April 2022 08:43:38 CEST Andreas Kemnade wrote:
> On Wed, 13 Apr 2022 17:19:00 -0500
> Samuel Holland <samuel@sholland.org> wrote:
> > Blitting/Blending in Software
> > =============================
> > There are multiple layers to this topic (pun slightly intended):
> >  1) Today's userspace does not expect a grayscale framebuffer.
> >     Currently, the driver advertises XRGB8888 and converts to Y4
> >     in software. This seems to match other drivers (e.g. repaper).
> > 
> >  2) Ignoring what userspace "wants", the closest existing format is
> >     DRM_FORMAT_R8. Geert sent a series[4] adding DRM_FORMAT_R1 through
> >     DRM_FORMAT_R4 (patch 9), which I believe are the "correct" formats
> >     to use.
> >
> hmm R=red? That sounds strange. I am unsure whether doing things with
> lower bit depths actually really helps. 

Hi,

for single-component formats, the name of the component plays
practically no role. Even if said component was really red,
it makes little difference to either side.

For example, the OpenGL straight up refers to all single component
image formats as only using the red component:

	OpenGL only allows "R", "RG", "RGB", or "RGBA"; other
	combinations are not allowed as internal image formats.

from https://www.khronos.org/opengl/wiki/Image_Format

In truth it would of course be nice if the world agreed on
not making the name of data structures imply some way they
are to be processed, but humanity hasn't gotten there yet.

> 
> Regards,
> Andreas
> 

Regards,
Nicolas Frattaroli



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
