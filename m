Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C043C021B5
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Feb 2025 08:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Cc:Message-Id:Date:Mime-Version:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BLe+U3IoQiguxGkK7vZ2WoCiMpewUhpatB/bDoADyg8=; b=xZ/m3J10QUf6W7GbYIr4dssMPS
	vB1KLUTH6hyxVdH8kVlEyo7maylcxxbF/6y1nDptJMJ78OK6MHwFzRYnQj/ghyV9dMlF+yf7SGFOF
	so6gV7Z7jxMzk11x6fNRnJEeH3LLjWawxNok7MMxMBfxFnYbXXUuPMm3xiPbbKzsxU6ufzJfJ0pUT
	VboQJSA6rdXMSCqUV5y66Uev+1X4y+WVSfK8GMKTIbV8k4DEX297IqGzQkS61KxWUKICnSmHFG9g/
	8+yEXjr9dnlGlGd9I67UKf+bL98WZ5xy02ztK9wDE9pKzS/5BNGe+abrw4AAv2HS5Zsxu+LuB9d+t
	+vHwGRfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlOqr-00000004oC3-0fXz;
	Fri, 21 Feb 2025 08:57:41 +0000
Received: from out-179.mta1.migadu.com ([2001:41d0:203:375::b3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlOqo-00000004o9v-0tei
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Feb 2025 08:57:40 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1740128252;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ptMvqBkUwZrolxZJc9519N5cAklfWd2ezc61uzEJHZA=;
	b=gE0Pt1blbpbAPFxRS/bKRMrivKdpBXa2QMDSrpiH61pu6ds8O/vnsT6hKsOdeIcS8RyNLj
	QTA/i53abyk7Q66m2v+eJS/6YadfPEZ9KVeYRbpnvy80QBcwax47rxs8Eden3o2bMCQxqo
	kdc3gwczMSOw6a/hKD5nB2niOHmO3ZS1/LYmcpDXgPKxP11T7uLfs5JMFX2w+atB2tAfrG
	KJOPeCga0DdWQFJGTEb+faRZLRsb+S6Qdad6o+Tv6CYnDLItKo3769rF05sLSA2rXFXrL+
	7ZEumCt/skoivVn/G8zKILbinpzXm1oU/KvrC2xDwm2T/g1h5MSczJziKc/KMg==
Date: Fri, 21 Feb 2025 09:57:14 +0100
Message-Id: <D7XZZ70KM9NT.14VSJDFUTH0H5@cknow.org>
Cc: "Valentin Kleibel" <valentin@vrvis.at>, "Vinod Koul" <vkoul@kernel.org>,
 "Chukun Pan" <amadeus@jmu.edu.cn>, "Heiko Stuebner" <heiko@sntech.de>,
 "Philipp Zabel" <p.zabel@pengutronix.de>, "Kishon Vijay Abraham I"
 <kishon@kernel.org>, "Jianfeng Liu" <liujianfeng1994@gmail.com>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, "Jonas Karlman" <jonas@kwiboo.se>
Subject: Re: [PATCH v2 0/1] phy: rockchip: naneng-combphy: compatible reset
 with old DT
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Salvatore Bonaccorso" <carnil@debian.org>
References: <20250106100001.1344418-1-amadeus@jmu.edu.cn>
 <173831716590.670164.5196739962949646746.b4-ty@kernel.org>
 <f64ee4ee-7e56-4423-813e-b87e023e893d@vrvis.at>
 <D7VJOFXU540M.2PAC1RFXAH19B@cknow.org> <Z7gosm7PJMR0zCg4@eldamar.lan>
In-Reply-To: <Z7gosm7PJMR0zCg4@eldamar.lan>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_005738_957346_1C459392 
X-CRM114-Status: GOOD (  18.65  )
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
Content-Type: multipart/mixed; boundary="===============4860592503123421435=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============4860592503123421435==
Content-Type: multipart/signed;
 boundary=bb0d416b7a86ddc7225644bd7fccfe77947520006e455b4b349d45e7250f;
 micalg=pgp-sha256; protocol="application/pgp-signature"

--bb0d416b7a86ddc7225644bd7fccfe77947520006e455b4b349d45e7250f
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Fri Feb 21, 2025 at 8:18 AM CET, Salvatore Bonaccorso wrote:
> On Tue, Feb 18, 2025 at 12:45:34PM +0100, Diederik de Haas wrote:
>> On Tue Feb 11, 2025 at 2:03 PM CET, Valentin Kleibel wrote:
>> >>> Chukun Pan (1):
>> >>>    phy: rockchip: naneng-combphy: compatible reset with old DT
>> >>=20
>> >> Applied, thanks!
>> >>=20
>> >> [1/1] phy: rockchip: naneng-combphy: compatible reset with old DT
>> >>        commit: bff68d44135ce6714107e2f72069a79476c8073d
>> >
>> > Thanks for your work!
>> > We found your patch after NVMes stopped working on a rock 3A with newe=
r=20
>> > kernels and successfully applied it to kernel 6.1.128 (currently in de=
bian).
>>=20
>> FTR: I've reported it in Debian here: https://bugs.debian.org/1098250
>>=20
>> I confirmed it (also) broke on kernel 6.12.8-1.
>
> FWIW, we have several users in Debian reporting the problem, so if it
> can be applied to mainline and then flow down to one of the next round
> of stable series down to 6.1.y that would be highly appreicated.
>
> Diederik, if you were able to test the fix, you might contribute a
> Tested-by (although as I undestsand its not strictly needed at this
> point as commit should be on way to mainline and stable series)?

AFAIK a Tested-by could increase the chances of the maintainer accepting
the patch, but that has already happened (commit date: 2025-02-04).
The patch was already verified to fix the problem before submission:
https://lore.kernel.org/all/20250103171109.2726312-1-liujianfeng1994@gmail.=
com/

So AFAICT another Tested-by would either have no effect or a delaying
effect (adding it would change a bunch of commit IDs probably triggering
various CIs to run again).
I'm not aware of anything (else) I could do wrt this patch.

Cheers,
  Diederik

--bb0d416b7a86ddc7225644bd7fccfe77947520006e455b4b349d45e7250f
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ7g/9QAKCRDXblvOeH7b
bnRDAP9IYwH1LfihZ3pGIVB+pL5ZDzXlBKKNwHBNmJle70hhwwEA1xo5LOIrFy9u
tmsN/WVn+DJq0WWtQrSDQ4JpbQ3F4g4=
=1hY3
-----END PGP SIGNATURE-----

--bb0d416b7a86ddc7225644bd7fccfe77947520006e455b4b349d45e7250f--


--===============4860592503123421435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4860592503123421435==--

