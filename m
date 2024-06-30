Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CDDCC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 09:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zJLFbCqir+DWAa9TFTy1kOsR5mnBnnOhNI/9q6Iwg80=; b=y528IakuXPSJum
	lLzc0JNEyd7wapUB33ng7s55/zqvhpp3DHVSMlId8VEqaxGVQGXYGlXsEicJbxbPHwj/oYKwBxMXt
	2Qbp0yXQIIf9WVLg6GFf+tfark2ySb6G1XKqjgRkii9gS6o+AURsxV2mCG5z65wi6d45AZ+FojW0D
	hLkhhQnm/oOY+5NHwQogpf40MnEsdbBW82sBy2qvEINmS6KkVzoLw0lwFucOpMISH6UBI+9VViirP
	nKRrk7PfMkuVwEbaOJ517ru85/SARBc734b6pDqVkzKJOXNEpTqvSc59TPb76MMrerhs9inqPodjh
	AByBe+YDBWZ3KllekyCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNqXN-000000007Zd-35V7;
	Sun, 30 Jun 2024 09:07:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNqXH-000000007Z1-25gT;
	Sun, 30 Jun 2024 09:07:53 +0000
Received: from i53875a16.versanet.de ([83.135.90.22] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sNqXE-0002Nw-OK; Sun, 30 Jun 2024 11:07:48 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC
 dtsi
Date: Sun, 30 Jun 2024 11:07:47 +0200
Message-ID: <1894199.CQOukoFCf9@diego>
In-Reply-To: <2442162.AJoTavkB1d@bagend>
References: <bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org>
 <2442162.AJoTavkB1d@bagend>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_020751_573774_E8A038D3 
X-CRM114-Status: GOOD (  36.58  )
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

Am Sonntag, 30. Juni 2024, 00:01:41 CEST schrieb Diederik de Haas:
> On Saturday, 29 June 2024 18:39:02 CEST Dragan Simic wrote:
> > Add support for voltage ranges to the GPU OPPs defined in the SoC dtsi for
> > RK356x.  These voltage ranges are useful for RK356x-based boards that are
> > designed to use the same power supply for the GPU and NPU portions of the
> > SoC, which is described further in the following documents:
> > 
> >   - Rockchip RK3566 Hardware Design Guide, version 1.1.0, page 37
> >   - Rockchip RK3568 Hardware Design Guide, version 1.2, page 78
> 
> That was interesting to read, thanks.
> Now I understand the difference between rk809(-5) and rk817(-5).
> 
> But AFAIUI the above description described why there were separate tables for 
> rk809 and rk817 in v1. But that was dropped in v2. So it seems to me the 
> (commit) message should be updated accordingly?
> 
> I also expected that (for v1) there would be a similar construct as was 
> recently added for rk3588. But I should interpret Heiko's comments as that 
> strategy should not be applied to rk356x?

The issue I had was more about the #ifdef'ery and then having a board define
a constant to enable one or the other.

As far as I understood the description, the OPP itself is the same in
terms of frequency and voltage, just the regulator can't fully realize
that target voltage, so the solution is to allow a voltage range, to
also support the less-exact regulator.

On the rk3588 on the other hand the soc variants have different OPP
tables themselfs, because the soc itself only supports different
frequencies+voltages. So the solution here is the split of the OPPs so
that we don't mess around with /delete-node/ edits of one OPP table.

So TL;DR separate OPP tables are the way to go if the user needs different
freq+voltage values and voltage ranges allows boards to use less-adapted
regulators.


> > The values for the exact GPU OPP voltages and the lower limits for the GPU
> > OPP voltage ranges differ from the values found in the vendor kernel source
> > (cf. downstream commit f8b9431ee38e ("arm64: dts: rockchip: rk3568: support
> > adjust opp-table by otp")). [1][2]  
> 
> Why? In their latest update Rockchip changed it to the values as specified in 
> the links. My assumption is that based on extensive testing they did and/or 
> the feedback they got from the client/customers, they felt the need to change 
> it to the values they did.
> 
> I think we should follow their values unless we have an explicit and very good 
> reason to deviate from that.

Correct.
Values from some "random" Radxa kernel would also not be my
selection of choice.

In the mainline-kernel we always want the save choice - which in for me
is Rockchip's. If people want to experiment with other values on their own
boards to sort of overclock their chips, that's their prerogative.


Heiko


> > However, our values have served us well so far, so let's keep them for now,
> 
> And I don't think that qualifies as a (very) good reason.
> I think it's reasonable to assume that far more (stress) testing has been done 
> with the downstream code, then has happened with the upstream code.
> Hopefully that'll change in the future, but I don't think we're there yet.
> 
> When we/upstream adds npu support, I think we should also follow downstream's 
> OPP values, unless we have a very good reason to deviate from that.
> 
> > until we actually start supporting the CPU and GPU binning, together with
> > the related voltage adjustments.
> 
> I may not fully understand what you mean by that, but I think it's (again) 
> reasonable to assume that Rockchip has far more insight into this then we do.
> 
> Cheers,
>   Diederik
> 
> > [1]
> > https://github.com/rockchip-linux/kernel/commit/f8b9431ee38ed561650be7092ab
> > 93f564598daa9 [2]
> > https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650
> > be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
