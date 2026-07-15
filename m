Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2147C44508
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 05:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmrTxdDnTKlMFu8tfHetGojDUe23Xqi7ESeQRMagEY4=; b=r+3+8KMuAYHNuT
	x515X0DcC97tSYM5ZXv38Asa/+mYW8D0772qV2DwpKes3Kvo2zqJg/KLHzacW7rjwfU+QNVYEjP17
	E+0xRjBzP/XB8d2dE8pRvUdzYOtyz4Gqz04r1XN1b1XEqicZbjOknj583DpUoRt2MZKWvVdUvsf2+
	0K0tHTiouNjqNS0Wc3nX4HtnS4TQj/d4u5MxBDKspGYMfXPqaBVa1Rvqa2P5Om6zU7xbVLfOthPxP
	nmMt07d1CduWkhvDKNUkmuRtGMiZ9mFQF8BNES6S+rgLTODnvEkKGXbXj13heHFVTmy7h7NceGr43
	USwYTNN2z/GdHu49/gFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjsYE-0000000Dpin-34yV;
	Wed, 15 Jul 2026 05:52:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjsYD-0000000Dpie-3ksY
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 05:52:57 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EC909600FF;
	Wed, 15 Jul 2026 05:52:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A794B1F000E9;
	Wed, 15 Jul 2026 05:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784094776;
	bh=BPqTWtMWRZnaTjMyesIoBK4WlRuWrOqcwpIjcyFXNQg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Utt6IdhRDKg05d8s6Wqci+sxf2/QZusGgRUISuACOOqhymszH0lfpUwvJC/F8UkZA
	 YB0Rwz1EEn75kyk3gJq37yj4lKL/4+lYzI+RTmCSbiTZ/XO8A3m/xE0uMEVLt2X+NS
	 vOOkpj9JllYMX2gbWsTnbV8vshdOeVLQUC/weqySTW0+DOr/utgpnkBUFUVx2UNqKJ
	 78d9wG2nqwRvEKhfMHP3t4CprbGoLf+gweMtwzortCOuFmBggiaB5HM+bGQrJbihRf
	 OdJHv8V4RCjGRsSAh+Hy/Sys4OH9Iai41im21ic2KolMhv6YUlg8L1v9PPWU9+wm6w
	 YfzjDBfqfCdQg==
Date: Wed, 15 Jul 2026 07:52:52 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com, 
	dlechner@baylibre.com, jic23@kernel.org, jean-baptiste.maneyrol@tdk.com, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com, 
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v16 02/10] dt-bindings: iio: imu: icm42600: Remove
 interrupts from required
Message-ID: <20260715-mottled-uncovered-mastodon-6c08be@quoll>
References: <20260713215842.69097-1-macroalpha82@gmail.com>
 <20260713215842.69097-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260713215842.69097-3-macroalpha82@gmail.com>
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

On Mon, Jul 13, 2026 at 04:58:32PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Interrupts are almost never required for IIO devices per upstream
> maintainers. Remove interrupt as a required parameter for the
> devicetree binding.

That's an odd statement. We do require interrupts when the hardware
requires them. We do not require interrupts, not because we have such
policy, but because hardware does not require them.

Plus, we do require interrupts when software implementing ABI requires
them.

Above commit msg is simply inaccurate and misleading. Instead, please
use actual hardware arguments or how ABI is actually used. You must not
introduce changes to ABI just "because" while for example making that
ABI conflicting with existing implementation.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
