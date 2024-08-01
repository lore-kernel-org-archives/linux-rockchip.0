Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46739C3DA64
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 04:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4NlS3OfYJVtfsiBbVf+OrPdHHdvq0Rih+Ee72tBtG4=; b=gBdPvC/eRe07Lz
	evVlr1YqCuyoCRzyxBPf37xQDn4ylmok4tIPAiIr5znexCLDPyXhn4Q/MSe1/oc9ehN8bZTG6f9fj
	/ZDAPjmxvg4By0t4AGvwjV8/7MkpIvah9bDn24u45EJlsXshzCiBPTTNEPsjK1JL1OKrJq34VO+mN
	Hvuix4z3uYNTouX87D/Q2fC9GO0F2n0QKXZjPe8aOwGB64GWn6YVePRoOg05mcoccXCD01TSgvI8l
	+MBWL3zRsecUD7vSyoPwJbAM/9/jsOr47bNZdvpkks19ruIiSKIccHKG2InIYQr7UAd5nWpewKic1
	Cn948IT9jsNzYOmEW0PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZNnR-00000003hSc-3ar9;
	Thu, 01 Aug 2024 04:52:13 +0000
Received: from mail-oo1-xc2f.google.com ([2607:f8b0:4864:20::c2f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZNmw-00000003hNS-2tC9;
	Thu, 01 Aug 2024 04:51:44 +0000
Received: by mail-oo1-xc2f.google.com with SMTP id 006d021491bc7-5d5e97b84fbso2497349eaf.1;
        Wed, 31 Jul 2024 21:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722487900; x=1723092700; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=uYl8KsqqsE0s43ykwxuKRWn5cuWPZB/M4T0TSnaHMxU=;
        b=FK4tIVHI9ukOfeZfCj+rvmfUp22yQDt7fY2epp3ejL98uQodrpjD9J0oRyaNSsZQuT
         WOwTHxroSFOsGYx206Gea6JoDSPVEiwyQJUxGlSu/Yp4eeGXYEWmCqKBPCoWtwlttE85
         kjUFlmTYyW42L6tLQHbliXGWG+s2058TWQ+1AObhfEnmrw/oGiqhxcyyNgg8PLVvMMCX
         E3aqJ8ByJWWUY6wwi2qXrEMsCj84mXKwPsewNgcOORlN0nEkX04qK0aPp+/hsIyeOObs
         iqNo6NWLxFv5l7gGBekzBYkZxHTybK4DoW0B5zqy4pyMC9DnnD7A0OVQmDFC8e3b/AGB
         rgRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722487900; x=1723092700;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uYl8KsqqsE0s43ykwxuKRWn5cuWPZB/M4T0TSnaHMxU=;
        b=ssaJvd2Mm71Jc88U3GyrO3jqHc342WitoDKk7hhw3bwxKLFNdPWzT/cURHa0k5KL10
         p+2mG+EmK8GIIC20ZfnTaExGee6uVucfIPoG+egJ5ImZPSgKyFbfpCXFcnQ9PYl1aiaw
         XJcbPc6Fwuk/wm1jrDKe+v/vFGugJsBU2EcmeFowYtmAWH1vtkWM9cPefjJqWv3TZM0c
         +xhV/Pl7t9CedCZ78Ei3e0/RvG6qCo0tahDIKMGJfVEuVrK3uUvcQ+W2uLWkZe4ZgRd3
         qJhzkf7AQoCBLrW9HRB21Lkyc9OT9WOiWPKHcj/ZDO1Omz+D95LHN95glE/SgRgq+kkO
         0ZwA==
X-Forwarded-Encrypted: i=1; AJvYcCVjOWLmaJCgIkwuz2VbCXPlLj9s2GCE0xetb4+8IxBAK4S07OjWGmJ+m2iy/IyjUDx39GLb9ESHtgo6XiVCT7v9+O3MQMJC9oGy2dbPaVDklbP9+rVhAjn0PXg4sxl3mzVxzYZtY1m++KYLWWZ2iP9bVtpVv4sflro=
X-Gm-Message-State: AOJu0Yzs6uAT0SiH+Lld1JW1DOvZduN82KlEkbwth+iPmzL8eR8JIMC5
	1xaWu9SwptOVQ+QbGzHgJ/d1BqaFCk3dyE1sfrvktWQTp2mD/yj6+dTza44KhiT3N3jd7hWIPp6
	fOo8y2ZXINCb7GgQ6fZ6XzzEZvB8=
X-Google-Smtp-Source: AGHT+IHR6wMGuB5v7XhS+PnzipAe8hzpgVLf+p2PhmEa/mQGbTDi5yLyHZecqgk+hu4Rvv+XeufuWOp6u1zhwBo0v7k=
X-Received: by 2002:a05:6870:7021:b0:261:12a8:5b69 with SMTP id
 586e51a60fabf-2687a4ec9f1mr1553112fac.18.1722487900472; Wed, 31 Jul 2024
 21:51:40 -0700 (PDT)
MIME-Version: 1.0
References: <20240711060939.1128-1-linux.amoon@gmail.com> <a8c1f49e-bf25-4fd3-a16f-13088f75767f@kwiboo.se>
 <CANAwSgQCn3jgiruiLs0cu-C+DguLtnk=msboAh8jNSF4P28gjA@mail.gmail.com>
 <6250fa05-7a06-4fa1-a2be-9cb66a2d2822@kwiboo.se> <394ad670-c4ea-432b-8737-89720c526653@rock-chips.com>
In-Reply-To: <394ad670-c4ea-432b-8737-89720c526653@rock-chips.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Thu, 1 Aug 2024 10:21:24 +0530
Message-ID: <CANAwSgT+-UcjrH=hhD6fF1qoRMDHuudeKOi8fTpArJfhxy9Unw@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add missing pinctrl for PCIe30x4 node
To: Kever Yang <kever.yang@rock-chips.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_215142_759968_171D4C92 
X-CRM114-Status: GOOD (  49.33  )
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

Hi Kever, Jonas.

On Thu, 1 Aug 2024 at 07:53, Kever Yang <kever.yang@rock-chips.com> wrote:
>
> Hi Anand, Jonas,
>
> On 2024/7/11 17:44, Jonas Karlman wrote:
> > Hi Anand,
> >
> > On 2024-07-11 11:09, Anand Moon wrote:
> >> Hi Jonas,
> >>
> >> Thanks for your review comments.
> >>
> >> On Thu, 11 Jul 2024 at 14:13, Jonas Karlman<jonas@kwiboo.se>  wrote:
> >>> Hi Anand,
> >>>
> >>> On 2024-07-11 08:09, Anand Moon wrote:
> >>>> Add missing pinctrl settings for PCIe 3.0 x4 clock request and wake
> >>>> signals.Each component of PCIe communication have the following control
> >>>> signals: PERST, WAKE, CLKREQ, and REFCLK. These signals work to generate
> >>>> high-speed signals and communicate with other PCIe devices.
> >>>> Used by root complex to endpoint depending on the power state.
> >>>>
> >>>> PERST is referred to as a fundamental reset. PERST should be held low
> >>>> until all the power rails in the system and the reference clock are stable.
> >>>> A transition from low to high in this signal usually indicates the
> >>>> beginning of link initialization.
> >>>>
> >>>> WAKE signal is an active-low signal that is used to return the PCIe
> >>>> interface to an active state when in a low-power state.
> >>>>
> >>>> CLKREQ signal is also an active-low signal and is used to request the
> >>>> reference clock.
> >>>>
> >>>> Signed-off-by: Anand Moon<linux.amoon@gmail.com>
> >>>> ---
> >>>> V2: Update the commit messge to describe the changs.
> >>>>      use pinctl group as its pre define in pinctl dtsi
> >>>> ---
> >>>>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 +-----
> >>>>   1 file changed, 1 insertion(+), 5 deletions(-)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> >>>> index 2e7512676b7e..ab3a20986c6a 100644
> >>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> >>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> >>>> @@ -301,7 +301,7 @@ &pcie30phy {
> >>>>
> >>>>   &pcie3x4 {
> >>>>        pinctrl-names = "default";
> >>>> -     pinctrl-0 = <&pcie3_rst>;
> >>>> +     pinctrl-0 = <&pcie30x4m1_pins>;
> >>> Use of the existing pcie30x4m1_pins group may not be fully accurate for
> >>> the PERST pin. The use of reset-gpios indicate that the PERST pin is
> >>> used with GPIO function and the driver will implicitly change the
> >>> function from perstn_m1 to GPIO. So this may not be best representation
> >>> of the hw, hence my initial suggestion, something like:
> >>>
> >>>          pcie30x4_pins: pcie30x4-pins {
> >>>                  rockchip,pins =
> >>>                          <4 RK_PB4 4 &pcfg_pull_none>,
> >>>                          <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>,
> >>>                          <4 RK_PB5 4 &pcfg_pull_none>;
> >>>          };
> >>>
> >>> Similar change should probably also be done for pcie2x1l0 and pcie2x1l2,
> >>> not just pcie3x4.
> >>>
> >> Ok but it is better to update this in rk3588s-pinctrl.dtsi otherwise
> >> the pcie30x4m1_pins
> >> will not be used at all on all the boards
> > I agree that it is unfortunate that the PERST pin is included in the
> > groups in pinctrl.dtsi, however, for pcie ep mode the pins should more
> > than likely be using the perstn_m1 function and not GPIO, so there are
> > uses for the existing pin groups for ep mode.
> Please note that the pcie30x4m1_pins define in pinctrl.dtsi is somehow
> not correct due to the TRM.
> - The WAKE should always work in GPIO mode, this is totally support by
> SoC, not PCIe controller;
> - The PERST should always work in GPIO mode in PCIe RC mode; and for all
> the rk3588 EP mode
> hardware I have seem, the PERST from RC connect in to board POR instead
> of SoC PERST;
> The PCIe in most of boards works in RC mode, so we should make PERST
> default as GPIO;
> - CLKREQ, it depends on boards, if the board need to support L1SS or
> not, most of the boards
> does not support L1SS, which means CLKREQ works in GPIO mode instead of
> PCIe function.
>

As per the PCIe hardware pin description below,
it seems that PCIE_CLKREQN is NC (Not connected).

[1] https://docs.radxa.com/en/rock5/rock5b/hardware-design/hardware-interface#pcie

Thanks
-Anand

> Thanks,
> - Kever
> > In my opinion using pcie30x4m1_pins as-is and having implicitly changing
> > to GPIO function when driver/usage in the software require it is an okay
> > description of the hw.
> >
> > However, seeing how use of pcie ep is described using its own node in DT
> > I can understand that for rc mode the pin should be changed to GPIO to
> > properly describe the expected usage.
> >
> > When I tried to add similar implicit change to use GPIO function in
> > U-Boot to fix system freeze when improper pinctrl was used, it resulted
> > in some discussions, see [1] ;-)
> >
> > [1]https://lore.kernel.org/u-boot/20240511112821.1156519-1-jonas@kwiboo.se/t/#u
> >
> >> I will update the PERST pin to RK_FUNC_GPIO on all the pcie2x1l0,
> >> pcie2x1l2 and  pcie30x4
> >> is this ok for you?
> > This should probably be reworked in pinctrl.dtsi together with all
> > affected boards and/or use a group override in the board dts.
> >
> > Regards,
> > Jonas
> >
> >>> Regards,
> >>> Jonas
> >> Thanks
> >> -Anand
> >>>>        reset-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_HIGH>;
> >>>>        vpcie3v3-supply = <&vcc3v3_pcie30>;
> >>>>        status = "okay";
> >>>> @@ -341,10 +341,6 @@ pcie2_2_rst: pcie2-2-rst {
> >>>>        };
> >>>>
> >>>>        pcie3 {
> >>>> -             pcie3_rst: pcie3-rst {
> >>>> -                     rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
> >>>> -             };
> >>>> -
> >>>>                pcie3_vcc3v3_en: pcie3-vcc3v3-en {
> >>>>                        rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> >>>>                };
> >>>>
> >>>> base-commit: 34afb82a3c67f869267a26f593b6f8fc6bf35905
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
