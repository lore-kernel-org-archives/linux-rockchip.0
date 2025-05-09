Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9C7BC3ABCC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 20:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QZoIHHbdmEX+SfkbiPE/ElTl5UWagD2m1yXlEAR+o+U=; b=VSf483XRtAMbsmhFgsAb0HxE+A
	L8roFzkiuqSfuUshGL6eK9RBrRvQNsSThjXsLOUUfFChIfph4dKtn/Z06CfFc2kAvNwNmzcl422d2
	8zfndUUd59Gs/VaWXpd0GK0jOxr6bRZykTshq0mxw4Lztu6L6Vl0Yray5p3RCmh/+sAehdVwTgPY0
	TALRmU7fKJtZ0qt9902iugsI3CfHoNYxeHia6zPATS2vb3N+SE3L9i/MA6+C0uDsUyq3SSpdtlkp8
	mKC+ixdnlshiOrJHs5Fawo6FBZFJOk6/UHmXL0xu3inqIuTI18XvoTix+GKDC4920As3OKzQMXN6b
	BFhTVX4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDUHw-00000004mq2-0f8X;
	Fri, 09 May 2025 20:25:44 +0000
Received: from out-186.mta1.migadu.com ([2001:41d0:203:375::ba])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDQx7-00000004M5C-3DsD
	for linux-rockchip@lists.infradead.org;
	Fri, 09 May 2025 16:52:03 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1746809509;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ckl3vux5StOjvP2+47jrXU3fLRpLeSvxiApo1TU/VDQ=;
	b=P/NX0RgHit5EEJXk2v6IpDcc0CmX9jjuKGJ8J8O5RFsGJ+rX/Zfmu63/p9HRzmJ0SEju20
	pN/gP6SdukESlLnnl2aOcQMGBMKpLbRL94g/juVXzwRKDpD05cfRZQ8VUzJA29MnSUgMZo
	ZY4jHyKEEzcKFwwvHSoce0HjegXD/XQoC3oHYQxUqnMJtD5Job1emTRTCTV1VNsFpYqyB4
	jx8bXA/Cqycgs8BL93wm4v4emqKSe08tJV905bRCSeEdKjQlyHIPr69944V7VG5RAvu1H0
	GyRVpehpmWhks+9m0/OocqJs2C+FWFdssWbUkQJHyPXeEUX0eMh99gpsf78PVA==
Date: Fri, 09 May 2025 18:51:21 +0200
Message-Id: <D9RSA5K547DD.1LYPIZZM4XALS@cknow.org>
Cc: "Conor Dooley" <conor+dt@kernel.org>, "Krzysztof Kozlowski"
 <krzk+dt@kernel.org>, "Dragan Simic" <dsimic@manjaro.org>, "Rob Herring"
 <robh@kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH 0/1] arm64: dts: rockchip: rk3568: Move PCIe3 MSI to use
 GIC ITS
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Diederik de Haas" <didi.debian@cknow.org>, "Chukun Pan"
 <amadeus@jmu.edu.cn>, "Heiko Stuebner" <heiko@sntech.de>
References: <20250308093008.568437-1-amadeus@jmu.edu.cn>
 <D9RQN76VZXO8.T3I0046FNVG3@cknow.org>
In-Reply-To: <D9RQN76VZXO8.T3I0046FNVG3@cknow.org>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_095201_938285_71FA1557 
X-CRM114-Status: GOOD (  15.62  )
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
Content-Type: multipart/mixed; boundary="===============4847179678175237855=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4847179678175237855==
Content-Type: multipart/signed;
 boundary=3e23f8a3f7dd23a047277bc59f050a2e77210dee6735ec02b945a8d601bd;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--3e23f8a3f7dd23a047277bc59f050a2e77210dee6735ec02b945a8d601bd
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi again,

On Fri May 9, 2025 at 5:34 PM CEST, Diederik de Haas wrote:
> On Sat Mar 8, 2025 at 10:30 AM CET, Chukun Pan wrote:
>> For a long time, rk3568's MSI-X had bugs and could only work on one node=
.
>> e.g. [    7.250882] r8125 0002:01:00.0: no MSI/MSI-X. Back to INTx.
>>
>> Following commit b956c9de9175 ("arm64: dts: rockchip: rk356x: Move
>> PCIe MSI to use GIC ITS instead of MBI"), change the PCIe3 controller's
>> MSI on rk3568 to use ITS, so that all MSI-X can work properly.
>>
> I tested this patch on my NanoPi R5S with a 6.15-rc3 kernel + a number
> of [vcc|phy]-supply patches that have been accepted for 6.16 (and a
> small WIP LED patch).
>
> With this patch I get the following kernel warnings:
>
> pci 0001:10:00.0: Primary bus is hard wired to 0
> pci 0002:20:00.0: Primary bus is hard wired to 0
>
> If I 'unapply' this patch, I don't see those warnings.

I was pretty sure I had seen those messages before, but couldn't find
them before. But now I have: on my rk3588-rock-5b.

> It's possible that this patch only brought a(nother) problem to light,

So it looks indeed to be this.

Cheers,
  Diederik

>> Chukun Pan (1):
>>   arm64: dts: rockchip: rk3568: Move PCIe3 MSI to use GIC ITS
>>
>>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)


--3e23f8a3f7dd23a047277bc59f050a2e77210dee6735ec02b945a8d601bd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaB4yngAKCRDXblvOeH7b
btTxAP9xcOOm/DKb1fMqBqNcR6qUMiNnWv1MKSyU06BFXAH6LQEAocEqmFyRa4iT
xDj91oyTLTpAr8k0/xJZDB//WWhFPgs=
=V4q7
-----END PGP SIGNATURE-----

--3e23f8a3f7dd23a047277bc59f050a2e77210dee6735ec02b945a8d601bd--


--===============4847179678175237855==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4847179678175237855==--

