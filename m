Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C630C5DF8C
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2026 09:30:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zsgvHhqxGo0BEVz6AgLxB7Y9LVZs7iBIPK7m5ofCuU=; b=ubrxUf7f0Mq9yD
	oxwbeSYOT8gDh8CBc/bRL1gayVOtEzH1I9SCHrZ43+jdfQaZqqTFQQb6QMh14ADIInY9r1JIZ2xn4
	zzMFIRM6UhCIAHc0+yHrA9naGxUbIy2q80WwJhFK8ipYIkbo/6a4YyPEPhvmSQqalkOnA+70hLt0L
	UhJviBURY3E+UyyOLQK6qlEn1Omi3fEp5UxvG+KXxN03dwZVSu735sD0wCi0xKHSUXXI7t0F1ylD6
	a5Lt1+VHGffUJJdHXhFUm38X9/yXKuxDZVrpySJ137ZIflD9RdBqQKdP0tE/ksplAU1/WjPGqHeRs
	Ih/C64JikwWZYY+HIC6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxLZk-0000000CvQO-3apW;
	Fri, 21 Aug 2026 09:30:12 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxLZh-0000000CvOu-187M;
	Fri, 21 Aug 2026 09:30:10 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 466D7C03D9;
	Fri, 21 Aug 2026 12:30:00 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1787304604; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=+UDivxkzUWm8jCVEzWimvw5QQQKBgJN2rUad2RA1A+g=;
	b=m/RN7abP1i3juYX1BEYCFHZNhP77sGhYzJVe8mgEF64OgNjrVjZ0IqEvVloMx/3LYZqf33
	W4K8qbuJDw/so2cdCrFwUZLx7HHFFbsD3ZimrzGHNn+qOpX4EcOTWijB6xp2vIbYA810dg
	OSu7DAgJOpLaDBZKzIm+xZDDaYreq+ztL7PEP9/3kkOJTYUp3U+l7uwgQfZqUnP34TcnoP
	ejXETsBjhFWPaYLidqzETMu4IIvEgzWj6DcvFspAPNBJ5wQpLvwqDav9tfjns/xp6rYLeu
	4ai+Mu+s0S9ctAK0wc7tVE00o5NyRPGPc3Rli3PIj0BX8PJrc+XXrOgCnLYCRQ==
From: "Vladislav Leonov" <vlad@zlab.su>
In-Reply-To: <20260821-bouncy-sticky-dalmatian-4f72c2@quoll>
References: <20260816113636.33635-1-vlad@zlab.su> <20260821-bouncy-sticky-dalmatian-4f72c2@quoll>
Date: Fri, 21 Aug 2026 12:30:00 +0300
Cc: "Jonathan Cameron" <jic23@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Andy Shevchenko" <andy@kernel.org>, "David Lechner" <dlechner@baylibre.com>, "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, "Rob Herring" <robh@kernel.org>, "Jonas Karlman" <jonas@kwiboo.se>, "Simon Glass" <sjg@chromium.org>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, =?utf-8?q?=D0=92=D0=BB=D0=B0=D0=B4=D0=B8=D1=81=D0=BB=D0=B0=D0=B2_=D0=9B=D0=B5=D0=BE=D0=BD=D0=BE=D0=B2?= <vlad@zlab.su>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
MIME-Version: 1.0
Message-ID: <9425cd59-7b78-7e0e-5d7f-aaff876ce8d6@zlab.su>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?dt-bindings=3A?==?utf-8?q?_iio=3A?=
 =?utf-8?q?_adc=3A?==?utf-8?q?_rockchip-saradc=3A?= Fix RV1106 compatible
User-Agent: SOGoMail 5.12.8
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260821_023009_498830_FF491081 
X-CRM114-Status: GOOD (  18.99  )
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

On Friday, August 21, 2026 10:27 MSK, Krzysztof Kozlowski <krzk@kernel.org> wrote:

> On Sun, Aug 16, 2026 at 02:36:36PM +0300, Vladislav Leonov wrote:
> > rockchip,rv1106-saradc was folded into the fallback enum together
> > with rockchip,rk3576-saradc, falling back to rockchip,rk3588-saradc.
> > The two IP blocks are not equivalent, though: per the RV1106 TRM v0.3,
> > chapter 20 (SAR-ADC), RV1106 only has 2 channels at 10-bit resolution,
> > versus 8 channels at 12-bit on RK3588. Documenting it as falling back
> > to rk3588-saradc allows device trees that would bind against the wrong
> > channel table and report an incorrect voltage scale.
> > 
> > Remove rockchip,rv1106-saradc from the RK3588 fallback enum and give
> > it its own standalone compatible entry, matching the dedicated match
> > table entry added by the driver patch.
> > 
> > Fixes: bdba14f6122c ("dt-bindings: iio: adc: rockchip-saradc: Add RV1106 compatible")
> > Link: https://lore.kernel.org/all/20260810090826.146758-1-vlad@zlab.su
> > Signed-off-by: Vladislav Leonov <vlad@zlab.su>
> > ---
> >  .../devicetree/bindings/iio/adc/rockchip-saradc.yaml         | 5 ++---
> >  1 file changed, 2 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> > index f0551d665916..dc56855527b8 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> > +++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
> > @@ -22,9 +22,7 @@ properties:
> >        - const: rockchip,rk3562-saradc
> >        - const: rockchip,rk3588-saradc
> >        - items:
> > -          - enum:
> > -              - rockchip,rk3576-saradc
> > -              - rockchip,rv1106-saradc
> > +          - const: rockchip,rk3576-saradc
> >            - const: rockchip,rk3588-saradc
> >        - items:
> >            - enum:
> > @@ -35,6 +33,7 @@ properties:
> >                - rockchip,rv1108-saradc
> >                - rockchip,rv1126-saradc
> >            - const: rockchip,rk3399-saradc
> > +      - const: rockchip,rv1106-saradc
> 
> So this goes to an enum with all the other single-entries.
> 
> Anyway, where is a driver binding to above compatible (see DT submitting
> patches). git grep on a week old next gave me nothing.
> 
> Best regards,
> Krzysztof
> 

Hi Krzysztof,

I will combine it into a single enum in v2.

The driver patch adding this compatible has been sent but is not merged yet:
Link: https://lore.kernel.org/all/20260810090826.146758-1-vlad@zlab.su

-- 
Regards,
Vladislav


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
