Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B324FD2502D
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jan 2026 19:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vLTMf5jNSCe9byouPTex7CVboXniOKFBBs1U1sjotaQ=; b=l891fyx5jpcKST
	YNNzs2nbZ2RMXhdx6soDuv8/+PvZe4INzXkmuywYYOldgpBsYarOVMQ3Tn41tJK3RtwloHSgT2Mls
	ScD962RCbAVZd5+Pt3HrmfhoZKnbOGxW4OHekzE80Z9yrKcBtAWwkAlVjnJsok277dK9Fdk+vyo5a
	Y3gI6zXX5vp/BWqul2FLKVONF8mPESxRo3Dj/ENiR4/xEF4O6o4ywEv23HfHQ0EaCYPOZDLdqDres
	iFZlGu1hfpCzvZlUkwNpsyC0dp1XRfbkfdw/BEd2C0GY2cwR9X+untbhyZabxM7Kr0XsSc5lo/nFZ
	7xhvt/scLspvlkW0PO5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf19j-00000004Re4-2uyX;
	Sun, 11 Jan 2026 19:31:19 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf19h-00000004RdV-3Hd3
	for linux-rockchip@lists.infradead.org;
	Sun, 11 Jan 2026 19:31:19 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-b871ba73f49so30341466b.1
        for <linux-rockchip@lists.infradead.org>; Sun, 11 Jan 2026 11:31:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768159875; x=1768764675; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6qkrUF2RLZLAfR72blD0obsNP0e+yMnfnNhdR4To/xk=;
        b=QyqumeVsp/5iMNUmfjnefKbvJHVZhkbGRDhQfzLSu+PCXrImkhsO/rnpokW+GH/df1
         yOcKMPNuXrC+07LosDRIzM0V73gzWLyNAkpmzXEFYvljE0KN34cwjHpqDmVmOSoywixG
         4tJXq3t/2of4VcAMsY5fiSEqkmlJM02BbMIHEMK3Xxff8LKBAeauv2JOPfoAFcjCgi2p
         s7UHaTTkclClCzjtdXH7SjcserG1Ct1PUpZ1JHowruSVIhEkmIBOgozrMN1Xkjox67K2
         nkhy45V7I0/3GktIV9Evy3hJNU4VwuWf5oPq0p3BsCDM0tP2J6iVeELBgAtYdhy9HWia
         TYPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768159875; x=1768764675;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6qkrUF2RLZLAfR72blD0obsNP0e+yMnfnNhdR4To/xk=;
        b=ZzcLj+VHMZ6Cpghm03ky08x3vY1iCQmxrPMDy+gmQwDVS5YI7IOdK/BE+3nH1/aBgE
         /3NWmQFhwUtwvi2c9vIIIv6yr+cI3GIJ1/CIfW0YHRK+y9Usr22eATP5d2OARaPrPpHz
         eJ69asdfiy4Z9p7iN5m5/lTTcxlwcHibKfCCXeHLwww2jjVrm5zYW4y6GFjq474ojwM6
         SdB3rLXFjzbjxBRebvdPvGs3/xsXrsB41opHMK/tjGOezYt+tUNiBMSN7NyLGFv48iaz
         /DmaJF3tbIhUSjt8M17MAloJ5UO7Pgnp4BXps6V9uiEkuwU21mp1mRPpr4actJ3o2Nku
         yz6Q==
X-Forwarded-Encrypted: i=1; AJvYcCUDNzMg+6xKd1yNKJU+BF/plSgzBFW08qsA31YTPeX7CBHL2iYoeUuyiBuUNPCCMdrBo9ZgccUTw5BRaodAMQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyb7Vl2/xJ2oj+25bN5W111a6seMijizOFiuDCcU+Sq7MtD56pm
	BcNIEVOteLqFgwwivmH4Dlm+KHGLOAhJbPBplL1Z5ZY4QN7SLd/rXU9LaFTuLDTvy5yJRu0PGa6
	iEyJ0TVAShBe6Oc0FooTCnw67PCwQebw=
X-Gm-Gg: AY/fxX6/tdt3AhtSJMuVMbvZNRCajHeWxOxduHfw3yPDwGgIQ6d4nxG4jLfOVmXYVgv
	yX46dr7vPJSknAu2R9YjCktEeCfIlXP2Cv7hGG7U0p6OSx9XNDmPnrXJwTmamJP/jZ0Xn0Qx/Vn
	9ifCX8UsUFogQl2DpjWe+SSXEjMwiuBCy0yOJ6M3McGYLkS4FX+kS8WKxRTUnA9ifH6AEIya5Gz
	CVwLMxelVMAjMDEQ/DEyj93cnSMg6hZTCrkh829j7UXQAxuVmcFouSaz2eEsgVHcbs=
X-Google-Smtp-Source: AGHT+IFWHn5dbPTd753DAc8rct7bCxMeL1qXuxz+hBvBFK6fMM9k25uVZu5YNTzZOJAyMEZFBK+guOsxRA7rnfdhq2c=
X-Received: by 2002:a17:907:97c1:b0:b87:1c20:7c68 with SMTP id
 a640c23a62f3a-b871c2089c4mr94188166b.16.1768159874510; Sun, 11 Jan 2026
 11:31:14 -0800 (PST)
MIME-Version: 1.0
References: <20260103083232.9510-1-linux.amoon@gmail.com> <20260103083232.9510-3-linux.amoon@gmail.com>
 <aVkfNBUDUumzV0-X@venus> <CANAwSgTmAbswY6scsxj40B7Y6QbnkqWPuCqyevRjdtHNemq0aQ@mail.gmail.com>
 <aWGLE-zcPUvQj3Q0@venus>
In-Reply-To: <aWGLE-zcPUvQj3Q0@venus>
From: Anand Moon <linux.amoon@gmail.com>
Date: Mon, 12 Jan 2026 01:00:57 +0530
X-Gm-Features: AZwV_Qg69Yw4dYa-ixw5oGHgx-Nm67dcEorw3Ehevd0t63RHaOwAygX9fHLU11Y
Message-ID: <CANAwSgRi+STUapakKV4XrGVD8B6LSetGC8Ya+Ubiki7dOQyGUg@mail.gmail.com>
Subject: Re: [PATCH v1 2/3] arm64: dts: rockchip: rk3588-rock-5b-5bp-5t: Fix
 USB host phy-supply on Rock 5b-5bp-5t SbC
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_113117_853626_DD49FCE5 
X-CRM114-Status: GOOD (  24.70  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, FUKAUMI Naoki <naoki@radxa.com>, Yongbo Zhang <giraffesnn123@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

I am having difficulty articulating my thoughts clearly right now;
please bear with me as I try to explain.

On Sat, 10 Jan 2026 at 05:03, Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:
>
> Hi,
>
> On Thu, Jan 08, 2026 at 12:25:12PM +0530, Anand Moon wrote:
> > Thanks for your review comments.
> > On Sat, 3 Jan 2026 at 19:35, Sebastian Reichel wrote:
> > > On Sat, Jan 03, 2026 at 02:01:18PM +0530, Anand Moon wrote:
> > > > The USB host USB2 and USB3 on the Rock 5B, 5BP, and 5T is powered by the
> > > > USB_HOST_PWREN_H gpio pin which is used to enable vcc5v0_host host
> > > > regulator which ensures proper power sequencing and management for onboard
> > > > Double-USB-HOST.
> > > >
> > > > Update the u2phy2_host node to reference the correct phy-supply.
> > > >
> > > > Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > > Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > > ---
> > >
> > > u2phy2_host is connected to an onboard USB hub chip, which is
> > > powered by &vcc5v0_sys as the comment says.
> > >
> > > You can see this on page 9 of the v1.45 ROCK 5B schematics (page
> > > name USB2HUB). The usb hub chip uses VCC5V0_SYS + VCC_3V3_S0 and is
> > > connected to USB20_HOST0_DP, USB20_HOST0_DM. The related USB
> > > controller for that in the upstream DT is &usb_host0_ehci, which
> > > in turn is using &u2phy2_host. Thus at least for the ROCK 5B the
> > > existing DT is correct. Properly describing the downstream port
> > > VBUS regulator would require something like the following series:
> > >
> > > https://lore.kernel.org/all/20250911-v6-16-topic-usb-onboard-dev-v4-0-1af288125d74@pengutronix.de/
> > >
> > Actually, the Radxa Rock 5 B doesn't have an onboard USB hub chip.
>
> Seriously? I provided the exact page for the hub chip in the
> schematics and it's easily visisble in lsusb too.
>
My apologies for the confusion. To clarify, this board lacks a USB hub
chip that matches the
detected USB IDs and is capable of powering both USB 2.0 and USB 3.0 interfaces.

[1] https://github.com/torvalds/linux/blob/master/Documentation/devicetree/bindings/usb/microchip%2Cusb2514.yaml

This is the reason we have a separate power regulator for USB 2.0 and
USB 3.0 ports
and Type-C controllers.

There is a USB2HUB -> U90078 FE1.1s_QFN chip (page 27) in the schematics,
It's probably connected to the PCIE M.2 NGFF for Bluetooth

[2] https://www.snapeda.com/parts/FE1.1s-BQFN24B/Terminus-Tech/datasheet/

$ lsusb -tv
/:  Bus 001.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
    ID 1d6b:0002 Linux Foundation 2.0 root hub
    |__ Port 001: Dev 002, If 0, Class=Hub, Driver=hub/4p, 480M
        ID 1a40:0101 Terminus Technology Inc. Hub
        |__ Port 003: Dev 003, If 0, Class=Wireless, Driver=btusb, 12M
            ID 8087:0a2b Intel Corp. Bluetooth wireless interface
        |__ Port 003: Dev 003, If 1, Class=Wireless, Driver=btusb, 12M
            ID 8087:0a2b Intel Corp. Bluetooth wireless interface
/:  Bus 002.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M
    ID 1d6b:0001 Linux Foundation 1.1 root hub
/:  Bus 003.Port 001: Dev 001, Class=root_hub, Driver=ehci-platform/1p, 480M
    ID 1d6b:0002 Linux Foundation 2.0 root hub
/:  Bus 004.Port 001: Dev 001, Class=root_hub, Driver=ohci-platform/1p, 12M
    ID 1d6b:0001 Linux Foundation 1.1 root hub
/:  Bus 005.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
    ID 1d6b:0002 Linux Foundation 2.0 root hub
/:  Bus 006.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
    ID 1d6b:0003 Linux Foundation 3.0 root hub
/:  Bus 007.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 480M
    ID 1d6b:0002 Linux Foundation 2.0 root hub
/:  Bus 008.Port 001: Dev 001, Class=root_hub, Driver=xhci-hcd/1p, 5000M
    ID 1d6b:0003 Linux Foundation 3.0 root hub

> I don't want to waste my time and expect a certain level of quality
> and this is certainly way below it...

Please accept my apologies for the miscommunication.

Could you check the enable status of the USB_HOST_PWREN_H pin in the schematics?

USB_HOST_PWREN_H -> VCC5V0_USB20_HOST0 / VCC5V0_USB20_HOST2
USB_HOST_PWREN_H -> VCC5V0_USB30_HOST0 / VCC5V0_USB30_HOST1

My current patch is trying to address this issue.

>
> -- Sebastian

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
