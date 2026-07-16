Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C527C44501
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 10:35:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3yYnrgAvDaiEjURErg4/+MltzyngySM8EgbSVDvp/io=; b=dYZtc+1hCw3aUS
	M1O30zYnxI/sFBag1vDqvhDyAMeZei7iHsmf5FbluDe3Lr1tlxMosdNFl+ekfKMRIQTKhDd9kAsrQ
	3dzoLCD5AidD0ZXFRrX1fKxqZcBB+yWOOkghZ5dnxK8uJmHC6xkqY6+WHUBuGtyWqN2DStdD8HZxa
	+67pC9xtR+CWpwmDZY8EwAgQ08RvipzH4Rul2UBA8r2JjrkgTaYsi6yIg1gEzqAFZ4lrCmnBmInDW
	K6VSLtCyF1W8Y7EujE9eyCN6/xE5hGRUgAkSZuybd9g4LnwTdmturWyt6HQVz8spB9vwVEIT7SNhu
	2kIw+zuMSF+/zUb1XzvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkJR6-0000000H1u8-3Lax;
	Thu, 16 Jul 2026 10:35:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkJR5-0000000H1tl-2146;
	Thu, 16 Jul 2026 10:35:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9D24260054;
	Thu, 16 Jul 2026 10:35:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 257321F000E9;
	Thu, 16 Jul 2026 10:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784198122;
	bh=XZ9neGSTZv0tRZ93sQ9W4RHlZGFSNmTmyLUpPYeswWY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BkpHrTRTQT75v0uMFSewydd/owJ6qBCoAG5UY1ioioKVsH5yQth9Bxoh4lAkzkHRc
	 NJA14urfKi711qp5hkcEZt4Ng+7oeOXrLAonuzhVVqAmWJK5dzAq1jae5v0+pK/Opp
	 xahRoQrykXPo7nAMmlwsNq/g9LJW+TplC3EkGQd+P7ZijU25AZCIsYIB4ufX1a0Da9
	 xor42r0e/e/X/SAuW4HNVBoa7qLXRI09/+nEnlxrx6+2KNyVcDY5xyFLfHMLeq1GYS
	 MDM76mBUU8A6gxO193nizg30o+pNhbDC84KUGp3jBXxnHJLC7IV6OHsc882KzNt586
	 D+gbeD4t6lThw==
Date: Thu, 16 Jul 2026 11:35:17 +0100
From: Lee Jones <lee@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>, Samuel Holland <samuel@sholland.org>,
	Pavel Machek <pavel@kernel.org>, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: leds: Document "gpio" trigger
Message-ID: <20260716103517.GA1260374@google.com>
References: <20260711192842.845048-1-samuel@sholland.org>
 <20260711192842.845048-2-samuel@sholland.org>
 <5188715.0VBMTVartN@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5188715.0VBMTVartN@phil>
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

On Wed, 15 Jul 2026, Heiko Stuebner wrote:

> Hi Samuel,
> =

> Am Samstag, 11. Juli 2026, 21:28:25 Mitteleurop=E4ische Sommerzeit schrie=
b Samuel Holland:
> > The "gpio" trigger is used to control LEDs by the level of a GPIO input
> > referenced by the trigger-sources property. This is already documented
> > in the trigger-sources property description and is used in at least one
> > devicetree (am335x-regor.dtsi). Document it so validation of those and
> > future DTs will pass.
> > =

> > Signed-off-by: Samuel Holland <samuel@sholland.org>
> =

> having Lee only in Cc in a longer patch series might make it difficult
> to notice this change.

It's okay.  I don't pay any attention to To:, Cc:, or Bcc.

> I guess this patch needs to be applied or at least "Acked-by" by them.

Applied.

-- =

Lee Jones

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
