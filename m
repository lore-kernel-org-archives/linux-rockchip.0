Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2375CAC58D
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Sep 2025 08:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:References:To:From:Subject:Message-Id:Date:Mime-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+VuQkmYpVeCpjiqpuN42jpwbtN5lTD/dBLrKHYx7v8Y=; b=ntXA6RP9oqyRfSC5wPO0MDlIDh
	EXJLXChBvA7jFPN+QB2NtGLETspuByd+ARw017gVKd5MdvVgEvOrx4BrRHiZ9cD7+O0eBczZRHk5n
	MC6FIuaGgthNyI8GUmXpHAuWaNS8f2o/e3yupn/Ove+7jhd982aWWXZ/GiItno3EIrLjmmhP9N2d2
	G/aiuAQBx0UE9mwR38p8OxbbOvQqVFdHt2uyV5Y0JwHVYvKLFIH2VxvQvpGwbKEths5uqsBBHqM58
	pDL+vRRTh9hk5uL1ZkWZGRUZhjk6ZVMnL7MxRtK+kUzsxZUSaYcD2TEGD0J2ykjshFOxZ5JQMDJiV
	/1aiTPEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwcdL-00000001oER-3TVU;
	Thu, 11 Sep 2025 08:26:23 +0000
Received: from out-176.mta1.migadu.com ([95.215.58.176])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwcdI-00000001oDa-3VG3
	for linux-rockchip@lists.infradead.org;
	Thu, 11 Sep 2025 08:26:22 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1757579176;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=E0lBJocEKP3lSk1wr86/mwJVJDEiyUS7mBzgQ49GMVs=;
	b=UvYXYB38THPhssZVA2dz5yQ7+FZptseAx24L6CpmC6aXfLG+i0gREKXUGr1xLnswZ8BFK3
	9qg9d9RV//SzyO141pSwtZgScqbmc7WjBjxO7XnI5SeIM3yVgvcdIFtj/tf7L9Vpp25go/
	ZS/NM/lk6h/aF250h9ERX+LRkFGSU05LOoJRp6BLWKhLszqWGMqSvVT+h7zTfEAkrAGTwa
	6l0BnycrBvwtpak1skf2bPZijXAMlDdPUp8ZK+/LNzDdHbnxGcvjHsAY+D1EN8sPrccYE2
	G6H8mURCIog9lY4PcjcXYBenx9rg91c0A626gPvm98UM+QISf/KvEorWpUma2A==
Date: Thu, 11 Sep 2025 10:26:03 +0200
Message-Id: <DCPTTD0NKOE6.1HKQ87ESFOT6D@cknow.org>
Subject: Re: [PATCH 0/5] pmdomain: Restore behaviour for disabling unused PM
 domains
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Geert Uytterhoeven" <geert@linux-m68k.org>
References: <20250909111130.132976-1-ulf.hansson@linaro.org>
 <DCPDDIZ3S1CM.3DJYY5U4T6V4U@cknow.org>
 <CAMuHMdVxjOLZsas4+nmAkZjbJsQjxdkZvZ8tTY9pq2zz3gvFNQ@mail.gmail.com>
In-Reply-To: <CAMuHMdVxjOLZsas4+nmAkZjbJsQjxdkZvZ8tTY9pq2zz3gvFNQ@mail.gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250911_012621_317365_63FED499 
X-CRM114-Status: GOOD (  23.05  )
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, "Rafael J . Wysocki" <rafael@kernel.org>, Tomi
 Valkeinen <tomi.valkeinen@ideasonboard.com>, Thierry Reding <thierry.reding@gmail.com>, Saravana Kannan <saravanak@google.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org, Konrad
 Dybcio <konradybcio@kernel.org>, Peng Fan <peng.fan@oss.nxp.com>, linux-pm@vger.kernel.org, Johan Hovold <johan@kernel.org>, Sebin
 Francis <sebin.francis@ti.com>, Michal Simek <michal.simek@amd.com>, linux-arm-kernel@lists.infradead.org, Maulik Shah <maulik.shah@oss.qualcomm.com>, Stephen Boyd <sboyd@kernel.org>, Bjorn
 Andersson <andersson@kernel.org>, Christian Hewitt <christianshewitt@gmail.com>, linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
Content-Type: multipart/mixed; boundary="===============1256971815544803344=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============1256971815544803344==
Content-Type: multipart/signed;
 boundary=c4d98de91abd6d1006b609cb4621827d77940c66045ae6e96f5d64cd32ef;
 micalg=pgp-sha512; protocol="application/pgp-signature"

--c4d98de91abd6d1006b609cb4621827d77940c66045ae6e96f5d64cd32ef
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi Geert,

On Thu Sep 11, 2025 at 9:18 AM CEST, Geert Uytterhoeven wrote:
> On Wed, 10 Sept 2025 at 21:33, Diederik de Haas <didi.debian@cknow.org> w=
rote:
>> On Tue Sep 9, 2025 at 1:11 PM CEST, Ulf Hansson wrote:
>> > Recent changes to genpd prevents those PM domains being powered-on dur=
ing
>> > initialization from being powered-off during the boot sequence. Based =
upon
>> > whether CONFIG_PM_CONFIG_PM_GENERIC_DOMAINS_OF is set of not, genpd re=
lies
>> > on the sync_state mechanism or the genpd_power_off_unused() (which is =
a
>> > late_initcall_sync), to understand when it's okay to allow these PM do=
mains
>> > to be powered-off.
>> >
>> > This new behaviour in genpd has lead to problems on different platform=
s [1].
>> >
>> > In this series, I am therefore suggesting to restore the behavior of
>> > genpd_power_off_unused() along with introducing a new genpd config fla=
g,
>> > GENPD_FLAG_NO_STAY_ON, to allow genpd OF providers to opt-out from the=
 new
>> > behaviour.
>>
>> Is it expected that I'm still seeing this on a Rock64 (rk3328), just
>> like before [1]?
>>
>>   [   17.124202] rockchip-pm-domain ff100000.syscon:power-controller: sy=
nc_state() pending due to ff300000.gpu
>>   [   17.129799] rockchip-pm-domain ff100000.syscon:power-controller: sy=
nc_state() pending due to ff350000.video-codec
>>   [   17.140003] rockchip-pm-domain ff100000.syscon:power-controller: sy=
nc_state() pending due to ff360000.video-codec
>
> Yes, as the sync state is still blocked on them.
> Disabling unused PM Domains is done independently of sync state.
>
>> This is with a 6.17-rc5 kernel with this patch set applied.
>> And it also has this patch from Christian Hewitt added, now in v3:
>> https://lore.kernel.org/linux-rockchip/20250906120810.1833016-1-christia=
nshewitt@gmail.com/
>>
>> When I boot into a 6.17-rc5 kernel without any patches applied, I do get
>> the 2 for ff350000.video-codec and ff360000.video-codec, but not the
>> ff300000.gpu one.
>>
>> Interestingly:
>> ff300000.gpu -> power-domains =3D <&power RK3328_PD_GPU>;
>> ff350000.video-codec -> power-domains =3D <&power RK3328_PD_VPU>;
>> ff360000.video-codec -> power-domains =3D <&power RK3328_PD_VIDEO>;
>>
>> I would be surprised if that was a coincidence.
>
> Fw_devlinks ignores the index cell (RK3328_PD_*), hence all links are
> created pointing to the pmdomain controller (in case it has a platform
> driver) or the first pmdomain (in case it has not). thus blocking the
> sync state call and power-down for _all_ pmdomains managed by the
> controller.

I don't think I fully understand this (not your problem due to lack of
knowledge on my part), but you mentioning 'fw_devlink' rang a bell.

Some time ago Nicolas Frattaroli and I worked on an image for PINE64's
*Quartz* devices and that added ``fw_devlink=3Doff`` to cmdline.
I've been using it on all my Rockchip based devices, without
understanding that parameter ... but (apparently) on my 'rock64-test'
device, where I tested it with, I had removed that parameter.
Putting that parameter back ... and those warnings are gone!

Thanks a LOT for that hint!

Groetjes,
  Diederik

--c4d98de91abd6d1006b609cb4621827d77940c66045ae6e96f5d64cd32ef
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaMKHoQAKCRDXblvOeH7b
bo6/AQDBs8RXL9MZybJJhHinLOCxYw9QduO4Nxl/I3V6lRVjfgD/cp0KvoFONOMG
zBh0Hr6do6+m3BaFnV2rsF15IgfvlAg=
=3jJl
-----END PGP SIGNATURE-----

--c4d98de91abd6d1006b609cb4621827d77940c66045ae6e96f5d64cd32ef--


--===============1256971815544803344==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============1256971815544803344==--

