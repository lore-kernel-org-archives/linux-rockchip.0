Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C587DC07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 13:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2vY2sRyPEFYXKsc9hSmVPkKdGPOwyLZeaEAIZRal/R0=; b=CBeDZWHHjAo7nh
	KWqMAT5YYInwV2kSQ4euK7rjP0PFKCsF4GGg4AYHolD/7i1cY/IeoeEeWLOIST8Gzw4rahf7goJtK
	K1M7iRLM3jkghCK3OqPv6jZIfm8I7hlNQrCDSWrqpVXyo6mOyxjkLmD+3vxY2atLuTqVusELFKo8E
	wEalIoNBPHoBWytVZn1glabQxBTRm9VlBdAM9hZMjgFe2iDOMU1Rv01JB+4Z0bhXHFpLiSgl6CDGV
	C5OmVJuLSEh8+xT8eP4WI8V5il2JybYZSPzidRGZOyOja2sEITNdE8ZjZnZCys7QG/cQXjxwh/2VZ
	vjZxUmldNU0Knm5aBYtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAv8-00B42O-2J; Tue, 27 Sep 2022 13:46:46 +0000
Received: from mail-il1-x12e.google.com ([2607:f8b0:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odAv5-00B41Q-55; Tue, 27 Sep 2022 13:46:44 +0000
Received: by mail-il1-x12e.google.com with SMTP id l4so5124492ilq.3;
        Tue, 27 Sep 2022 06:46:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=JYhubVsYX6ouoh07xHct6JKDa2u34ATcTX+f9kydsg0=;
        b=SFNBETuy+YwSF+Q5f3FRDqDN/eaViyqw5he3UZgTk4MtyJF6NRCFNYIKYJPmlsEAMt
         DeyMJfFPjEHThTWRJp3rwRQNYq+ZP2jaZRHsnPQUIIDoSjEnb2J9Ee7Ql7vsi1f3j6o/
         jljy4aCW1hQFLl0pqMecxtsOTvbgdYBKABSzUnLo1vpbsoWJhvmEPoLD5bs7HSEIMWBU
         wuvLfswFLjp0hC6zhxiQcY5dIDIbYgEDKhQ9j0i+rprfbNfGwV1WpoNmxVOp4RQ0vso/
         Md84BYiwvupF5tMaidkzgxgcpXnhMJk0px5c/qoGPkjlQ7myoI/dmvljGCU6pWvZLAl2
         eVMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=JYhubVsYX6ouoh07xHct6JKDa2u34ATcTX+f9kydsg0=;
        b=DCRLxXg0zPkt/J6e6GlT9FY5+ykh9dmx0ogm6SrLPQQ8KWV3uEk4gDpgX4k1fN0zUh
         jQf2qhg6YvaTdYBmU4iNCt8UiEDIOAF++qrTX3Y06H9jicZOlZrB3BmBiKBr98e26RDY
         q2yi5n3pQHyWGlvKDzFGT3xioVSptVyYNOKMOuodA+htE51YJaiiI46qEvWvnhSC6Ycs
         zuFYA5kl95+mRfeK2tYAGIxbHn//LySk0mnyfsm7aj7Rl9z9uDgljrbWqZfO4Ra1psb2
         4zvFf7X1lQVezImX+DcWUerGk95wE4FxHIpcNzeJM++kO7It5Xkk8jqxs/hKEkb0LeH1
         IrSA==
X-Gm-Message-State: ACrzQf0sJieGIRyoIaMEk4ENJFv2YJNuPWN3Jhqn/7qj+SrD2SNOPA2p
	OQv5d0FhtZPPPzoKmU4yeHOfLoTVYzdvyNjW1+s=
X-Google-Smtp-Source: AMsMyM74SUeo8HFBuN8kt3k2EUdmy5YSQU9ffddju6d2f4+EfiQh0gzO1dPkP75z7a8X/jcoAFX7j9B59EvRj65nyGI=
X-Received: by 2002:a92:360c:0:b0:2f6:33ed:e2a2 with SMTP id
 d12-20020a92360c000000b002f633ede2a2mr13076960ila.29.1664286401415; Tue, 27
 Sep 2022 06:46:41 -0700 (PDT)
MIME-Version: 1.0
References: <20220926061420.1248-1-linux.amoon@gmail.com> <20220926180102.37614-1-amadeus@jmu.edu.cn>
In-Reply-To: <20220926180102.37614-1-amadeus@jmu.edu.cn>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 27 Sep 2022 19:16:25 +0530
Message-ID: <CANAwSgTyt2D-aEMMowO6d+0ddTQb46o0pWMahnr7ny2rjY7iaQ@mail.gmail.com>
Subject: Re: [PATCH-next v1] arm64: dts: rockchip: Enable NVM Express PCIe
 controller on rock3a
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	michael.riesch@wolfvision.net, robh+dt@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_064643_209595_F5E425CF 
X-CRM114-Status: GOOD (  17.70  )
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

Hi Chukun,

On Mon, 26 Sept 2022 at 23:31, Chukun Pan <amadeus@jmu.edu.cn> wrote:
>
> Hi,
>
> On 26-09-22, 06:14, Anand Moon wrote:
>
> > +     pcie30_3v3: gpio-regulator {
> > +             compatible = "regulator-gpio";
> > +             regulator-name = "pcie30_3v3";
> > +             regulator-min-microvolt = <100000>;
> > +             regulator-max-microvolt = <3300000>;
> > +             gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> > +             gpios-states = <0x1>;
> > +             states = <100000 0x0>, <3300000 0x1>;
> > +     };
>
> This is actually no different from vcc3v3-pcie regulator?
>
> > +&pcie30phy {
> > +     data-lanes = <0 1 2 3>;
> > +     phy-supply = <&vcc3v3_pi6c_03>;
> > +     status = "okay";
> > +};
>
> It seems that there is no need to define additional data-lanes when
> the pcie3x1 node is not enabled, and phy-supply seems unnecessary on
> this board.
>
As per the schematic below pice support with 2 regulators

VCC3V3_PCIE        (SCT2250FPA)
VCC3V3_PI6C_03  (PI6C557-03 is a spread spectrum clock generator
supporting PCI Express and Ethernet requirements)

[0] https://dl.radxa.com/rock3/docs/hw/3a/rock3a_v1.3_sch.pdf

> Excuse me, can you try the patches I posted? Lspci can recognize
> pcie3x2 normally, but I don't have a spare nvme hard drive right
> now to test if it works.
>

No, it did not work on my board, see bool logs.
[0] https://pastebin.com/Lk93VFxg

[ 0.725985] phy phy-fe8c0000.phy.4: lane number 0, val 1
[ 0.726975] phy phy-fe8c0000.phy.4: rockchip_p3phy_rk3568_init: lock
failed 0x6890000, check input refclk and power supply
[ 0.728172] phy phy-fe8c0000.phy.4: phy init failed --> -110
[ 0.728704] rockchip-dw-pcie: probe of 3c0800000.pcie failed with error -110
[ 0.745193] ALSA device list:

Thanks
-Anand

> Thanks, Chukun
>
> ---
> Chukun Pan (3):
>   arm64: dts: rockchip: Add regulator suffix to ROCK3 Model A
>   arm64: dts: rockchip: Rename pinctrl label of pcie2x1 on rock-3a
>   arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a
>
>  .../boot/dts/rockchip/rk3568-rock-3a.dts      | 36 ++++++++++++++-----
>  1 file changed, 27 insertions(+), 9 deletions(-)
>
> --
> 2.25.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
