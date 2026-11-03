Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68077606A32E
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 09:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=4klBQJOE;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=FJYe8WqC
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sMmlhH8wS+BfYSBVeIo6Fc7XzO6Yv91gmvbYpN2dlEM=; b=4klBQJOEZ3EZn5MMCXcyJz3LM+
	RRMCoSQJGAPb+WvMCsMTyYkowkEqdCOgViakY67kI667aV540T1OTDdM+hRXDUI16HEYDrdAemppg
	5I50t8DhmW+LQQ0TQK4TJXZ3JqNZdIPqv6F0xsHQa8G6y/QDHRl/D+qY5vVrVud9DRZ3HOQFbug5O
	TcECRkBrETWi1uhqmBHO1Kh/WXW+aSRfdVH21c0ZyapbT6Xdqi6Fq3r3mobFeHDVIGkWaP0supF8c
	bxbEakBrn7tPwvPJJNMUn5cKV1EdSEmldseaeGEhbxF0p9HF+G6L06Vr/BwNWzBacNoMVScrv7M+I
	UIgde4KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOAki-00000001k2B-3p5D;
	Tue, 03 Nov 2026 09:24:24 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOAkh-00000001k1X-0AnU
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 09:24:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B842D40315;
	Tue,  3 Nov 2026 09:24:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD25C1F00919;
	Tue,  3 Nov 2026 09:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793697862;
	bh=My5g1/hWyVtaqeuolzLXvupHyj8u+fkqRULATYn+MrE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FJYe8WqCtSr8oQHf9X68ndEXwg6FcOpCaXeFHLKH5ED3M6xW2ukecnW62dR5UVK15
	 C3ohnjh1E0IIr26thRh4mqpFvZj58WhTs6wsXu/9VGDxG/zNKzGv3d39fDtYfHVXj1
	 eojoPUc9z3TOEEWUFTEZ0gCFZKOfQrNvz5gqRYlEYDfTf4I9IitwXCNzSs33pI00e/
	 XY2yx+fBNy4Oe2fYzCCDGUhUUqYdRemRq+u0am4NZsFEWi3Mjr9lRXhg7ZYL7eQXsK
	 KXQPNwyZTgKo3nsIUlvWomMYeajy9wJSosHlOOxsKl9+W203wM659T4FAyjtxXdIkG
	 4Jy1FzHxTJsmA==
Date: Tue, 3 Nov 2026 09:24:17 +0000
From: Lee Jones <lee@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
	maccraft123mc@gmail.com, heiko@sntech.de, sre@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 0/4] Fix Incorrect State of Charge for RK817
Message-ID: <20261103092417.GG13023@google.com>
References: <20261102143942.305293-1-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261102143942.305293-1-macroalpha82@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Mon, 02 Nov 2026, Chris Morgan wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Users of the popular firmware RockNIX had identified a few bugs with
> accurately displaying the correct state of charge for RK817 battery
> devices. With the help of one user analyzing the code with Claude
> they were able to identify a few potential bugs along with potential
> solutions which I was then able to verify. These bugs are as follows:
> 
> 1) Incorrectly clamping a value with a max of 10000 instead of 100000.
> This bug caused the state of charge to sometimes read as 10% instead
> of 100% as it should have.
> 
> 2) Using the boot_voltage value to calibrate the battery in scenarios
> where it could not be trusted. The boot_voltage register populates
> immediately at power-on, and the driver would check if this value
> was older than 30 minutes before using it. Unfortunately when combined
> with the default behavior of the bootloader to turn the device off
> when plugged in (requiring a user to explicitly power the device on)
> the boot_voltage and boot_timer values were wrong. The boot voltage
> would not account for any voltage added while the device was off,
> and the boot_counter that tracks the time the device was off would
> be reset. To fix this we changed the behavior to (outside of first-boot
> scenarios) use a value saved to NVRAM, the value from the coulomb
> counter directly, and an OCV lookup from the live battery voltage,
> and then using those values provide an initial "guess" of the state
> of charge and recalibrate with the OCV voltage once it is available.
> 
> Included in this series is another fix that would cause the battery
> to drain while the system was shut down. This patch replicates the
> Rockchip BSP driver to clear a shutdown register. Unlike the BSP there
> is no behavior to bypass this since no boards have yet been observed
> using the SYS_CAN_SD bypass on the BSP kernel.
> 
> Changes Since V1:
>  - Dropped the sleep fixes, as I would like to test them a bit more
>    extensively first.
>  - Dropped the devicetree parameter, as since no boards have *yet*
>    needed to alter the default behavior there's no need for it.
>  - Changed the behavior of how we select the initial SOC and made
>    it its own function to ease in code readibility. This new method
>    was tested with various boot scenarios. The average error was less
>    than 5%, and in a worst case scenario where the device was
>    discharged to 0%, then left to charge at the bootloader the device
>    over-reported its state of charge by about 10%. When this occurred
>    the device reported its SOC as 100% but that it was charging, which
>    was corrected by the new OCV logic that kicked in once charging
>    completed.
>  - Scrapped the more complicated sleep fix in favor of simply telling
>    the battery to recalibrate at full after suspend, in case of a 
>    counting anomaly. 
> 
> Chris Morgan (4):
>   power: supply: rk817-charger: Fix NVRAM SoC Value
>   power: supply: rk817-charger: Resolve boot state of charge from the
>     coulomb counter
>   power: supply: rk817-charger: Clear SYS_CAN_SD register by default
>   power: supply: rk817-charger: Clear full charge cal on resume
> 
>  drivers/power/supply/rk817_charger.c | 313 ++++++++++++++++++++-------

>  include/linux/mfd/rk808.h            |   3 +

Acked-by: Lee Jones <lee@kernel.org>

>  2 files changed, 239 insertions(+), 77 deletions(-)

-- 
Lee Jones

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
