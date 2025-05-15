Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9035C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 May 2025 11:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0DCcIBIC0xflzXtmCe4whNLuIzWYm/7trUFLgWxh1CM=; b=Axek2CoLdwLR95
	q0Dz5dTjqPVu0X3aXpIuTwyCgqcNzU0GrByqRhoUI7u6a+kQXYj7RaLtSBivJiTSDaSQhVJImGPdX
	rER7CsZKyQSFMZADys79jzt5YDp17oMKXHPP7fOpwRIzhwtZLFRvARYmMJfEk666rpOHPsFG6uDz5
	WSSqjFJ9pikz9xnz2/odTVZars149XL+7jctrvkdV0W6TOjRo1lTFWT/F7vPnuNz/OdtbNMZpjsWD
	fFNn3qoDMl9XHarS8ChVMGv5zeOYCjcwGpDWvLmlndSf0y1WiQbk9reZ2IXZHxVNEPLD0GOueyb5t
	SSoxgQF14c6kqdKZ6t1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFXAx-00000000T5j-2RJ3;
	Thu, 15 May 2025 11:54:59 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFX7F-00000000SaK-0UNj;
	Thu, 15 May 2025 11:51:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0E0A0A4E32B;
	Thu, 15 May 2025 11:51:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A541C4CEE7;
	Thu, 15 May 2025 11:51:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1747309867;
	bh=uzV7iVarlKgq0MA+9EScPwftRklHr0wRg/TqVeBJYIw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BCqr3+JKZNTQ2riFaJ5zZXWDSukWex3bIPuBaHTXfXsaS7uFIkp4EQyfgJSZjwF7F
	 IeQZ5Rb4WlvNX5MeciFZ+5UAiXJRRTex8f8Ep8M9RkRP2BKWr1pEJj3z+g4I3VaJEO
	 4oCgzwZNT2j5zxgEE/gmAizsxkTatohbU+GYPKxo=
Date: Thu, 15 May 2025 13:49:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Matthias Kaehlcke <mka@chromium.org>,
	Benjamin Bara <benjamin.bara@skidata.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Klaus Goger <klaus.goger@theobroma-systems.com>,
	Lukasz Czechowski <lukasz.czechowski@thaumatec.com>,
	linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, stable@vger.kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: usb: cypress,hx3: Add support for
 all variants
Message-ID: <2025051550-polish-prude-ed56@gregkh>
References: <20250425-onboard_usb_dev-v2-0-4a76a474a010@thaumatec.com>
 <20250425-onboard_usb_dev-v2-2-4a76a474a010@thaumatec.com>
 <3784948.RUnXabflUD@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3784948.RUnXabflUD@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_045109_226369_6067F2D6 
X-CRM114-Status: GOOD (  20.26  )
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

On Thu, May 15, 2025 at 01:43:59PM +0200, Heiko St=FCbner wrote:
> Am Freitag, 25. April 2025, 17:18:07 Mitteleurop=E4ische Sommerzeit schri=
eb Lukasz Czechowski:
> > The Cypress HX3 hubs use different default PID value depending
> > on the variant. Update compatibles list.
> > Becasuse all hub variants use the same driver data, allow the
> > dt node to have two compatibles: leftmost which matches the HW
> > exactly, and the second one as fallback.
> > =

> > Fixes: 1eca51f58a10 ("dt-bindings: usb: Add binding for Cypress HX3 USB=
 3.0 family")
> > Cc: stable@vger.kernel.org # 6.6
> > Cc: stable@vger.kernel.org # Backport of the patch ("dt-bindings: usb: =
usb-device: relax compatible pattern to a contains") from list: https://lor=
e.kernel.org/linux-usb/20250418-dt-binding-usb-device-compatibles-v2-1-b302=
9f14e800@cherry.de/
> > Cc: stable@vger.kernel.org # Backport of the patch in this series fixin=
g product ID in onboard_dev_id_table in drivers/usb/misc/onboard_usb_dev.c =
driver
> > Signed-off-by: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>
> =

> Looking at linux-next, it seems like patch1 of this series was applied [0=
].

It is in 6.15-rc6, not "just" linux-next

> The general convention would be for the binding (this patch) also going
> through a driver tree.
> =

> I guess I _could_ apply it together with the board-level patches, but
> for that would need an Ack from Greg .
> =

> @Greg, do you want to merge this patch ?

I thought a new series was going to be sent for some reason, which would
make this a lot easier.  But if you want to just take this one now,
that's fine with me as it's not in my queue.

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
