Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99754C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jul 2024 05:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGXwFuat7VQ5NxNtRuzDerlHEPR4NJIMQl4IRY9l6ns=; b=VoKmUYAjhu7/Ie
	ldyovOwY5QGInZBeGfZC/Yb3Do02E3gCotpW/YH1KA3gIYiIPMcIAe+272sDrjDIvUiN6MMGLzAGH
	u3wAv9XYlFZEXuGdK6LHuEBfn9aP9l3ganTFSdb+/Z/+zyMWMc52rROIcymVmyxvugy8G7dY58JvX
	7aiqG253LttTEHRGvscpXJUXrbyQJAC5LyQ/Lm480+KF51qki/PkvNfnY7X10bnPPMFBL4qNVqf5E
	x9jjvwpJIs2arUz8ci/9DWfTVBgokP5bS1GQX90RihvTbII58maVJnSUA+q59tVATMzMBQwUXHfLL
	LZOA9FL3YAQy3MvmjZGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRmLZ-0000000CmG7-2beA;
	Thu, 11 Jul 2024 05:28:01 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRmLH-0000000CmC1-0sxq;
	Thu, 11 Jul 2024 05:27:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1720675663; x=1752211663;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=HSsX0RnRuDFdjgHKzOQtBjgv2nX0He6FmULrIZgV2do=;
  b=fgy+Zd0iS0dXazc7wMR0vBWtjcYR/5nMl5HsdL5ptdKW2x/qW9FjyTpZ
   WrDp7HYPLO1HrSmMeFdojSWXBXvHLBB2FqrisYnavWlxupysXj7d8CAG8
   PBXq8SBtgOscVe7mSkziLxyPzJmMAdYGXYFfYADcd8rhNB+Atl72u6NJQ
   51vb5+KED9LJ1751IZXJWkXP3oZWVmIJtgSNLOSOIt4fAD8v+Oiyl+e/d
   ig41jz2+Lxq50s0deusgkc2kfHO9LjlPKc3qRTMKhkh3mGyrWe7Vp/mXK
   liT5+8DxrGFCLvYsf49ISa/OUxT1wO9huV8vWYwOZHdrhyB0t633Pw6V6
   g==;
X-CSE-ConnectionGUID: 4R+YyxF4TvuAdyuF6HKwhg==
X-CSE-MsgGUID: Fn3IlePpQkWP6bFs1b+N/A==
X-IronPort-AV: E=Sophos;i="6.09,199,1716242400"; 
   d="scan'208";a="37850448"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 11 Jul 2024 07:27:40 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id A54FD16337A;
	Thu, 11 Jul 2024 07:27:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1720675656;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=HSsX0RnRuDFdjgHKzOQtBjgv2nX0He6FmULrIZgV2do=;
	b=CSwpWI6Lf4xrqzWYv5+Hmj2pkBU90Gz5eSk8N1mrQhjPh9iid9DEuc3WNe/CBO2vvRCExT
	hjwwRzC+dNFp3HjXY1mfa1T4re9x2giweXhnmJhZTtfGmzLUZIRf7NdRIoxcLlIfRFGzE0
	ejAQfvXWaP1AWJ5im+lmoYtF4QDEU3kuUJZdBcfY3L2gJPWXUgJh3qBIAI02iTxLQHL1mT
	RBAQi/t5pPQONzWEOqokoAVFyiLLeCUIx3R0QESg0Z1SQ70S5oweDGm22Ibw6H/xQaVuIC
	sztdr1U8B/GpEW3FoKO8JmKS146OS9hgGNJ2Udwkn35e9BV3xH+AqJ7iGjfaCw==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, mturquette@baylibre.com, Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/6] dt-bindings: clocks: add binding for generic clock-generators
Date: Thu, 11 Jul 2024 07:27:40 +0200
Message-ID: <1899010.tdWV9SEqCh@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <68f6dc44a8202fd83792e58aea137632.sboyd@kernel.org>
References: <20240709123121.1452394-1-heiko@sntech.de> <21244242.0c2gjJ1VT2@diego> <68f6dc44a8202fd83792e58aea137632.sboyd@kernel.org>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_222743_948039_71C62947 
X-CRM114-Status: GOOD (  15.85  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Donnerstag, 11. Juli 2024, 01:21:15 CEST schrieb Stephen Boyd:
> Quoting Heiko St=FCbner (2024-07-10 00:45:17)
> > Am Mittwoch, 10. Juli 2024, 09:02:34 CEST schrieb Alexander Stein:
> > > =

> > > So essentially only enable-gpios and vdd-supply is added in compariso=
n to
> > > fixed-clock. Does it make sense to add that to the fixed-clocks inste=
ad?
> > > Similar to fixed-regulator.
> > =

> > I wasn't that sure which way to go in the first place.
> > The deciding point was reading that line about the fixed clock not
> > being gateable, so I opted to not touch the fixed-clock.
> > =

> > But you're definitly right, this _could_ live inside the fixed-clock
> > as well, if we decide to get rid of the not-gateable thing above.
> =

> It's probably more complicated to combine it with the fixed-clock
> binding after making properties required like vdd-supply. I'd just make
> a new binding and look at combining later.

Maybe I am missing something IMHO adding optional vdd-supply and
enable-gpios doesn't seem a big deal.
Anyway I don't have a hard opinion here. To me fixed-clocks still
seems very appropriate for having a controlling GPIO and power supply.
I just would get rid of the (comment only) hint they are ungatable.

Best regards,
Alexander
-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
