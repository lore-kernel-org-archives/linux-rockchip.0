Return-Path: <SRS0=otL+=PH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54FACC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 16:19:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1AEFF61052
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Oct 2021 16:19:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1AEFF61052
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cQlilI7yEwh5EEzAq1y2xge4MFd1qPFX9C7vuWLt5sM=; b=XGFukU4KAuYvBR
	Dw53TM4y87rG6THf77KCOQVk28q1ypmcrLnqlUF77TV6elgRjy5EXyQ2QbRjvVPShaEk8w0/U19Nm
	KdjVXoKsa/4j4UmgLwMvCArgOL24glPI9FCs1p4Xk2CP6N0WitCoaL2EMHGNMBgvjRSrNTS0LZaPs
	WzPjFmpZ9YWMkhW0QHdM4ro9vBOmU/LH/Shk3FcId0QSspLvo5uKkW6Tw7NXqw4iMUa+stLI5JiWR
	3TpCuLZE/d7mPuvI+zn7o5I0KHkveHQkTpDWGK0Zmyys6JhikyhP+Ho2+BJ/f0dP/EqRUE79M1PRz
	7rqClC6QLbPrBOmQ4Jcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcrpb-001tr3-B8; Tue, 19 Oct 2021 16:19:15 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcrpY-001tpj-5c; Tue, 19 Oct 2021 16:19:14 +0000
Received: by mail-lf1-x12f.google.com with SMTP id t9so8730199lfd.1;
 Tue, 19 Oct 2021 09:19:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y/ir8B+CRjd7AbSm8xRiASD6VJaRvehWpboSeQHSKr0=;
 b=lDzUnE6R4ShOTmwd7+5L6htw4nTAhGpC0cd5bWY7sN+bsu/JAeJuFfcAb7Gf3wTSAh
 rHSQkgrvoBeDJmrcZozfmSpdUuTHCfBio/Nqr5hYuHqBZ6t0kG1bNIQ8Ndr3nwigHdOA
 4E/uXzEiDmjl0xBByI4RAclePvKwF8IKDWph9QDxcjjdRhan6NLKtdU4VjKlAwTsZH0H
 VOSulbosmdVsxQysWp+aPne9epy3FtIbaQhVb6HJ5Te5qdGo9kXIeQjmdclLXipBc5di
 Lp+JJOBf1qJbylh71cn9pgh3g9aukLvIw53GWDXq3nKzhfzLJdX8KRYjfGgm/eo75QqV
 pACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y/ir8B+CRjd7AbSm8xRiASD6VJaRvehWpboSeQHSKr0=;
 b=l+J7u93FPBKn+krVMb5SySKBUfnqeiRWycPBS2+/0ilLINmuTf/S7Vx6Gf5EL95Dgp
 6S3h6HCJ2qe1uHEaUTa4rIlehpVORYGuwDLISlHkGrfdW2TwHQCRdH6pjGA6b4y3alxP
 pVmw/Zo0MO26GNm01RqnfTzC03PIDRaPK2AaBwTd5MNQ8sEJ/lRR8KzQrB5ITMWDLPKj
 9HhTUblnLQEyYzXGfJDyfHTB3x2b5Gj3HAFtFTo7qZNaoHWyqhb+q3Xro+Ve6DXIjxED
 S5NaBa68JuDHvOoXTQlvuDehxZTEffadrKeJchbW54XeXQetwK4oLF4ad8O6elH3FbNd
 BK5g==
X-Gm-Message-State: AOAM531nkoj2DDjpsjZdwB/92XZjBD8xmZpevnl14YGiKhRddkhnsfv6
 6Ge2YianZf6fWrYeqHBSbaI=
X-Google-Smtp-Source: ABdhPJzaRZbIea0EpRKCfnXRs315sDhS9xgp2ZkNCyeepbohG9WUcKgb1KHDVnnOVqLetH1FZpxI9w==
X-Received: by 2002:a05:6512:228d:: with SMTP id
 f13mr6942682lfu.610.1634660350680; 
 Tue, 19 Oct 2021 09:19:10 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id w26sm2114545ljh.18.2021.10.19.09.19.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Oct 2021 09:19:10 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Alex Bee <knaerzche@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 David Wu <david.wu@rock-chips.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 Cameron Nemo <cnemo@tutanota.com>, Robin Murphy <robin.murphy@arm.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, Trevor Woerner <twoerner@gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rk3328: add gpu opp table
Date: Tue, 19 Oct 2021 18:19:08 +0200
Message-ID: <4362028.GryP8xLggj@archbook>
In-Reply-To: <5a667361-940e-4653-ac3e-ae26a70255a2@gmail.com>
References: <20211016154548.29555-1-twoerner@gmail.com>
 <3352474.ljgn2FL0hr@archbook>
 <5a667361-940e-4653-ac3e-ae26a70255a2@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_091912_263173_D36F01FD 
X-CRM114-Status: GOOD (  37.78  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Dienstag, 19. Oktober 2021 17:52:05 CEST Alex Bee wrote:
> Am 18.10.21 um 18:49 schrieb Nicolas Frattaroli:
> > On Samstag, 16. Oktober 2021 17:45:44 CEST Trevor Woerner wrote:
> >> Add an operating-points table and cooling entry to the GPU on the
> >> RK3328 SoC to improve its performance. According to its datasheet[1]
> >> the maximum frequency of the Mali-450 MP2 GPU found on the RK3328 SoC
> >> is 500MHz.
> >>
> >> On my rock64 device, under x11, glmark2-es2 performance increased from
> >> around 60 to just over 100. Same device running glmark2-es2 under
> >> wayland/weston improved from just over 100 to just over 200.
> >>
> >> [1] https://rockchip.fr/RK3328%20datasheet%20V1.2.pdf
> >>
> >> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> >> ---
> >>   arch/arm64/boot/dts/rockchip/rk3328.dtsi | 26 ++++++++++++++++++++++=
+-
> >>   1 file changed, 25 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> >> b/arch/arm64/boot/dts/rockchip/rk3328.dtsi index 8c821acb21ff..5e1dcf7=
1e414
> >> 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> >> @@ -532,7 +532,8 @@ map0 {
> >>   					cooling-device =3D <&cpu0
> > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> >>   							 <&cpu1
> > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> >>   							 <&cpu2
> > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> >> -							 <&cpu3
> > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> >> +							 <&cpu3
> > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> >> +							 <&gpu
> > THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> >>   					contribution =3D <4096>;
> >>   				};
> >>   			};
> >> @@ -617,6 +618,29 @@ gpu: gpu@ff300000 {
> >>   		clocks =3D <&cru ACLK_GPU>, <&cru ACLK_GPU>;
> >>   		clock-names =3D "bus", "core";
> >>   		resets =3D <&cru SRST_GPU_A>;
> >> +		operating-points-v2 =3D <&gpu_opp_table>;
> >> +		#cooling-cells =3D <2>;
> >> +	};
> >> +
> >> +	gpu_opp_table: gpu-opp-table {
> >> +		compatible =3D "operating-points-v2";
> >> +
> >> +		opp-200000000 {
> >> +			opp-hz =3D /bits/ 64 <200000000>;
> >> +			opp-microvolt =3D <1100000>;
> >> +		};
> >> +		opp-300000000 {
> >> +			opp-hz =3D /bits/ 64 <300000000>;
> >> +			opp-microvolt =3D <1100000>;
> >> +		};
> >> +		opp-400000000 {
> >> +			opp-hz =3D /bits/ 64 <400000000>;
> >> +			opp-microvolt =3D <1100000>;
> >> +		};
> >> +		opp-500000000 {
> >> +			opp-hz =3D /bits/ 64 <500000000>;
> >> +			opp-microvolt =3D <1100000>;
> >> +		};
> >>   	};
> >>
> >>   	h265e_mmu: iommu@ff330200 {
> > =

> > As for whether this works as described on a ROCK64 for glmark2-es2-wayl=
and:
> =

> The probably most "convenient" and also future-proof solution upstream =

> for that is to define voltage ranges =E1 la
> =

> =

> =

> opp-200000000 {
> =

> 		opp-hz =3D /bits/ 64 <200000000>;
> =

> 		opp-microvolt =3D <950000 950000 1150000>;
> =

> =

> =

> };
> =

> and so on.
> =

> And then adapt the regulator-min-microvolt of the logic regulator like
> =

> vdd_logic: DCDC_REG1 {
> =

> 	regulator-name =3D "vdd_logic";
> =

> 	regulator-min-microvolt =3D <1050000>;
> =

> ...
> };
> =

> That way all opp-points will be taken, but its ensured, that vdd_log =

> never goes below 1.05 V
> =

> > =

> > Tested-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > =

> > There is some stuff worth noting that LibreELEC does on this SoC[1]:
> > =

> > 1. they use 1.05V for all OPPs up to and including 400 MHz
> > 2. they run 500 MHz at 1.15V instead (though 1.10V seemed to work for b=
oth of
> > us)
> =

> That might be true for your boards, but note that the required voltage =

> is per "leakage level" defined in efuse bits - something we do not =

> support for Rockchip upstream currently - see [1]

Thank you for the insight.

If we had the efuse bits, is there an already existing mechanism to only
enable the 500 MHz OPP if the chip happens to be one of those able to do
it at 1.10V?

Something like only having opp-microvolt-L1 defined and having the opp
be ignored if we're not an L1 chip.

> =

> > 3. they disable 500 MHz because 1.15V was apparently too high for rkvde=
c.
> > =

> > 3 is currently not very relevant because mainline Linux has no rkvdec n=
ode in
> > the rk3328 dtsi, and we're not running at 1.15V.
> > =

> > I've decided to add their rkvdec dtsi patch[2] on top anyway, and saw no
> > complaints from the rkvdec module while glmark2-es2-drm was running. Ho=
wever,
> > it's not like I tried to actually hardware decode video while it was ru=
nning
> > because the userspace situation still won't let me without compiling en=
tirely
> > too much stuff from git. Though the rkvdec module was loaded and presen=
t.
> You will see no complaints from the module , but you will see the SoC =

> crashing if both is running at the same time - see rkvdec-opp-table =

> downstream [2]

I did end up finding an old arm64 build I had of a patched ffmpeg that works
for the current kernel, and

  ffmpeg -hwaccel drm -i file -f null -

was running stably with glmark2-es2-drm running at the same time, though I
also did not have an rkvdec OPP table.

Either way, thank you for clearing things up. I guess the easiest way to
get more useful clocks on mainline right now is to disable the 500 MHz
OPP and define them all in the way you've suggested.

Regards,
Nicolas Frattaroli

> =

> [1] =

> https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm64/boot=
/dts/rockchip/rk3328.dtsi#L750-L751
> =

> [2] =

> https://github.com/rockchip-linux/kernel/blob/develop-4.4/arch/arm64/boot=
/dts/rockchip/rk3328.dtsi#L840-L867
> =

> Alex
> =

> > [1]: https://github.com/LibreELEC/LibreELEC.tv/commit/
> > 9a6be0d36ba7ff3c3d5df798682d47a1de594ac0
> > [2]: https://github.com/LibreELEC/LibreELEC.tv/blob/master/projects/Roc=
kchip/
> > patches/linux/default/linux-1001-v4l2-rockchip.patch#L860-L935
> > =

> > =

> > =

> > =

> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> > =

> =

> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
