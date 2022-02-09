Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8523EC43217
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 17:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2Zw4Q8e8gKaQuCsJMb0IuwfuWo0FLHNCypcqk247ts=; b=EfBwy40wxOpXgX
	PbjQXMhek8hhAl/vh6BP94rbfItQ9rA7IXbPfhOBuSRTibROM7SJbl1O4zz+bRqyH1o6yHuOYv+Ss
	gxP/Hpn1WOauvgkS7uAKt6DWTPdYI1NYnsswBUZHUp8ZZKNCMweASO8CKBpICicljnNirbMpzuyQu
	JrWa1/sUkwqYAjD+xmnxo6PqamdcOUPPdzCsDSS3T0K+WtC0HhPQ6Vw7DN/CGBcOU2xHBxme5KUOM
	Gj4P8bOBvTmcLyU+KmlflCMdSqQ0uptOe3zV+FqhCPS+5Z5r2dY60WFavrY91Qgwu6k1aV7iny8mE
	pSXETOJtD/VeFzjKiLsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHr5T-0010GK-Gi; Wed, 09 Feb 2022 17:49:03 +0000
Received: from mail-oo1-f42.google.com ([209.85.161.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHr5F-00109w-E5; Wed, 09 Feb 2022 17:48:50 +0000
Received: by mail-oo1-f42.google.com with SMTP id
 p190-20020a4a2fc7000000b0031820de484aso3294958oop.9; 
 Wed, 09 Feb 2022 09:48:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=9Q2I/VP+XFwXy/Za9m82QJTmUqxQOQNrGnI8flFPCzE=;
 b=iSkbyGSUfsFhVga8k8ywlf7gK2hKK+6Oqy4OrQ+ZweEjVcZC6aDQV7fu9Y/abhE/8P
 HQZS5CQZdzfBiP99WJsfNDbNgM1pHJ3fXl17uEjmdwHDGOJKKh7L20jUZXRoARKWA+ur
 HfkzVELwhxG15u78eX2dgYD49NL5j05aDkVUqH4gw4BPe1xpvNqX8BaUFaR7YRvnRM7o
 GNcwGN085c1jEG5LjHKi2wgpJ72h90xYDgsmRoRISfrIcNDvD+o9cnhaJTUSWPd7TsE2
 20ioxTeVqdjPXWYGxTfxN8+aG319+EJhiDK68Mvigd6bAIOnzYmGbNoFUyrnlDII6+nz
 nixg==
X-Gm-Message-State: AOAM5308VYfqWbFdbuRrRhsvyXsO5a9XkUY/gqAcWx1nmDo9HVbHmjNK
 MBEFrpZcSNV7xL7TAJO2Aw==
X-Google-Smtp-Source: ABdhPJxLVUkyLr5K9Jth1KPAM7TMJsJ9wGQtyn4evi3+a6WwLPinzkeFbOB9l+rfCrvEzu15f2MLgg==
X-Received: by 2002:a05:6870:6296:: with SMTP id
 s22mr1124414oan.338.1644428928376; 
 Wed, 09 Feb 2022 09:48:48 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id r41sm6103687oap.2.2022.02.09.09.48.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 09:48:47 -0800 (PST)
Received: (nullmailer pid 581562 invoked by uid 1000);
 Wed, 09 Feb 2022 17:48:46 -0000
Date: Wed, 9 Feb 2022 11:48:46 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Michael Riesch <michael.riesch@wolfvision.net>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Peter Geis <pgwipeout@gmail.com>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, linux-kernel@vger.kernel.org,
 Liang Chen <cl@rock-chips.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Alex Bee <knaerzche@gmail.com>
Subject: Re: [PATCH v5 1/5] dt-bindings: gpu: mali-bifrost: describe clocks
 for the rk356x gpu
Message-ID: <YgP+ftqvBcpLg6im@robh.at.kernel.org>
References: <20220209085110.3588035-1-michael.riesch@wolfvision.net>
 <1644420908.380944.391811.nullmailer@robh.at.kernel.org>
 <01b78d95-fdf3-060a-831d-dae2abbc7109@wolfvision.net>
 <3297396.uCXnvZdJcx@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3297396.uCXnvZdJcx@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_094849_502653_F676BBCB 
X-CRM114-Status: GOOD (  26.15  )
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

On Wed, Feb 09, 2022 at 05:28:05PM +0100, Heiko St=FCbner wrote:
> Hi Michael,
> =

> Am Mittwoch, 9. Februar 2022, 16:46:28 CET schrieb Michael Riesch:
> > Hi Rob,
> > =

> > On 2/9/22 16:35, Rob Herring wrote:
> > > On Wed, 09 Feb 2022 09:51:06 +0100, Michael Riesch wrote:
> > >> From: Alex Bee <knaerzche@gmail.com>
> > >>
> > >> The Bifrost GPU in Rockchip RK356x SoCs has a core and a bus clock.
> > >> Reflect this in the SoC specific part of the binding.
> > >>
> > >> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> > >> [move the changes to the SoC section]
> > >> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> > >> ---
> > >>  .../devicetree/bindings/gpu/arm,mali-bifrost.yaml | 15 ++++++++++++=
+++
> > >>  1 file changed, 15 insertions(+)
> > >>
> > > =

> > > My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_ch=
eck'
> > > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > > =

> > > yamllint warnings/errors:
> > > ./Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml:173:12:=
 [warning] wrong indentation: expected 12 but found 11 (indentation)
> > =

> > D'oh! Sorry for the stupid mistake, I found that yamllint was indeed
> > missing.
> > =

> > Lines 173 and 174 need an extra space. In the case that a v6 is required
> > I'll fix this. But of course I wouldn't say no if this could be fixed
> > when the patch is applied :-)
> =

> My guess is, Rob's bot filters out the easy wrongs, so I'm not sure if he
> actually looks at these in person.

I do because there are sometimes false positives. It's not a free =

testing service. (Well, it might be free beer for you, but that's =

because I'm buying. :) ) For just indentation I will still review them =

(eventually).

> So doing a v6 might actually be better for a Review :-)

Resending just moves you to the back of the line (usually). =


Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
