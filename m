Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB17DC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jun 2024 22:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pcuwY8E6h9pAchj2Za/nKBpn/uqLl+d4FGM3UfrsyoM=; b=d4F9NiTqJnqTQKcsp20GEgjlLg
	EsCgp5wXfPV2qV+7h/ZYtYZB2vmJL0bqSntnlu3RsaixlPxPUsgULNwaEuEHuxjbRr2QEdOYAFplw
	BbXxvWh2gZYKZgmRgvZqwsStGeRAHQSMxLwOWpJQwnnzl6I26Z+MnWmI90v0dMeg8TPupETelHAtc
	UK4RicechZHt6ZufVBB7Q/a+w6SHo4Zdg8tOuK3KPlr1eC5fa5QARZtX5/TRdx3QYRHzlYcfD2S3O
	h9jrO4tOi18YxVZWh9hcOqV67J+YJlJP3AVB6Gq1OUeviCkhgHDUWqSXMpk+/LAchmYKK6zDYlOY7
	q58yfgHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNg97-0000000H1ZK-3iXM;
	Sat, 29 Jun 2024 22:02:13 +0000
Received: from out-177.mta1.migadu.com ([95.215.58.177])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNg8w-0000000H1Xk-2B5s;
	Sat, 29 Jun 2024 22:02:04 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1719698515;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=m1o1vsrZvTo7w5mqkqn99pIT4RNtcwpqiHGAg8MQ6WE=;
	b=GTCN+DWRgIZo/u+pWipknXtRkLAjdyUrwU+HdUc7083DraYzcL9bw6yzLoQpnRJoGGnwNb
	dc/nvykEyF4yotpKigjxNzlX4v84unJ0XqM+7wETRKKq/fQhSaLX3HxZv4G1aovakg2vL4
	ROr86QVDV9xNhDLR3QN/3VcwRL4VHVWup3JTVvf7uBnKD1q4SBdGKJCHhqhbYGc1eok9cm
	lbek1QJQP0HK0h25BHCwe5yEbpCoASQKeUK4s9wg2DYA4bjmrgsjMK3Ih3SgTRTOKI1TcJ
	emelpSSQpjggUSZSQBMyOLfjLZ8D35lAEypdk7kULY/zr1HraN/P/zrO19XwwQ==
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: heiko@sntech.de
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: robh@kernel.org
X-Envelope-To: krzk+dt@kernel.org
X-Envelope-To: conor+dt@kernel.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: jonas@kwiboo.se
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: linux-rockchip@lists.infradead.org, Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>, Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC
 dtsi
Date: Sun, 30 Jun 2024 00:01:41 +0200
Message-ID: <2442162.AJoTavkB1d@bagend>
Organization: Connecting Knowledge
In-Reply-To: <bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org>
References: <bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_150202_945029_88A09ED7 
X-CRM114-Status: GOOD (  21.64  )
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
Content-Type: multipart/mixed; boundary="===============5312127177242584092=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============5312127177242584092==
Content-Type: multipart/signed; boundary="nextPart1882325.2XYCnfxICR";
 micalg="pgp-sha256"; protocol="application/pgp-signature"

--nextPart1882325.2XYCnfxICR
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"; protected-headers="v1"
From: Diederik de Haas <didi.debian@cknow.org>
Date: Sun, 30 Jun 2024 00:01:41 +0200
Message-ID: <2442162.AJoTavkB1d@bagend>
Organization: Connecting Knowledge
MIME-Version: 1.0

On Saturday, 29 June 2024 18:39:02 CEST Dragan Simic wrote:
> Add support for voltage ranges to the GPU OPPs defined in the SoC dtsi for
> RK356x.  These voltage ranges are useful for RK356x-based boards that are
> designed to use the same power supply for the GPU and NPU portions of the
> SoC, which is described further in the following documents:
> 
>   - Rockchip RK3566 Hardware Design Guide, version 1.1.0, page 37
>   - Rockchip RK3568 Hardware Design Guide, version 1.2, page 78

That was interesting to read, thanks.
Now I understand the difference between rk809(-5) and rk817(-5).

But AFAIUI the above description described why there were separate tables for 
rk809 and rk817 in v1. But that was dropped in v2. So it seems to me the 
(commit) message should be updated accordingly?

I also expected that (for v1) there would be a similar construct as was 
recently added for rk3588. But I should interpret Heiko's comments as that 
strategy should not be applied to rk356x?

> The values for the exact GPU OPP voltages and the lower limits for the GPU
> OPP voltage ranges differ from the values found in the vendor kernel source
> (cf. downstream commit f8b9431ee38e ("arm64: dts: rockchip: rk3568: support
> adjust opp-table by otp")). [1][2]  

Why? In their latest update Rockchip changed it to the values as specified in 
the links. My assumption is that based on extensive testing they did and/or 
the feedback they got from the client/customers, they felt the need to change 
it to the values they did.

I think we should follow their values unless we have an explicit and very good 
reason to deviate from that.

> However, our values have served us well so far, so let's keep them for now,

And I don't think that qualifies as a (very) good reason.
I think it's reasonable to assume that far more (stress) testing has been done 
with the downstream code, then has happened with the upstream code.
Hopefully that'll change in the future, but I don't think we're there yet.

When we/upstream adds npu support, I think we should also follow downstream's 
OPP values, unless we have a very good reason to deviate from that.

> until we actually start supporting the CPU and GPU binning, together with
> the related voltage adjustments.

I may not fully understand what you mean by that, but I think it's (again) 
reasonable to assume that Rockchip has far more insight into this then we do.

Cheers,
  Diederik

> [1]
> https://github.com/rockchip-linux/kernel/commit/f8b9431ee38ed561650be7092ab
> 93f564598daa9 [2]
> https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650
> be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi

--nextPart1882325.2XYCnfxICR
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZoCERQAKCRDXblvOeH7b
bmLfAP0QPd2WlC4AazLxIQOIFkV2bx4wFpfRqdN+4AFpLEgYvAD5AQC+00IJVpXB
cFuaeWYS5g5ZLUCOXWd2dGxRo/CDVg4=
=tszs
-----END PGP SIGNATURE-----

--nextPart1882325.2XYCnfxICR--





--===============5312127177242584092==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============5312127177242584092==--




