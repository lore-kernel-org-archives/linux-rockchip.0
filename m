Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1A8AC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Nov 2022 14:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SBc70XVANS4u7Dnvl4e6tMRiF64NakiLgofRPwcSrUE=; b=0kVZEZTYw+eIze
	2Qo96Cr8gM3D8W3uZrwxcWrxWuK6ETOd5kAlhRL70MhE7CwZYM5W7tS6IADfOxfW2fFtv1k3WbrhW
	aKeFKxkGvq3RQ2sQe1dqICqynt/m4OsKDn8xwgBVxntz3+k3I7upiV+kCWrlxw2scVp4HKeoKMmfs
	57yUnf6WWm9kSz6cksaHg7GPMIE6jZEGv3NlJwprd9oKAp8NhtHdV5aELir1Q9qVVpix+3u7HnKZN
	JUzZfL1SX9QGW9YGwAHe2Bg2vcN33Fj41o0oSldTxvzTbm9K/j3MJDpZ366biWkCmy0Yygd2mS5H0
	1tgB6gTbdj0LSTYY+F+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxU9M-009vEl-Gn; Tue, 22 Nov 2022 14:21:24 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxU90-009v5u-Ep; Tue, 22 Nov 2022 14:21:04 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-13bd2aea61bso17453584fac.0;
        Tue, 22 Nov 2022 06:20:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SHX+r3o3V3envxmtyDAC/DiXE+gGNoPNrnRmBhYS2YA=;
        b=bzw6WcmW4gcZyahHz4St8lxqfPCy255jxjxESN3SysXIr3ahVwGGwNgvtfmVtfQu7R
         aXQnNpnA2TakLL5r4M4WVful2l4efeMrOwp78QWfyudl/8uGxO8SYnBMgbgfotwY8z0+
         AFgGQF2Xquo/YRPkvjrb9TpOYk4wU0dCTdfXq90kTbT3Gw8fLYZ1j4OJFPWFjBBDlzSZ
         I5KMuxeGO/t3Ev3FtX4K2mXEigYm87FlxmOH1bcarcQmILnzDi5vIoRUrysVB/Zs97kG
         Yf18mV4B9rf/6V4SwPNTg6Lfsv0O5kH/VfLLy19giFCkv56y8GxrTr87y9DVbi4cEHvp
         3PAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SHX+r3o3V3envxmtyDAC/DiXE+gGNoPNrnRmBhYS2YA=;
        b=Y3JpHoJWj6tFVOPC820uzaEFZN+EyBhIeWLqynROJblbzgbROvJXnM00vqlffsgWi1
         E24DKXkJbKIWXvk27bMi3DvsvDuvl0rrE+xfPZX0zg/wELK66zc/V5lBKc3lCG/lTeLJ
         h7qhTI6DdKDWNNWibCFKQ47UzyZd2Rk2F62hsgL42QED/dqMiBipALLWXGINVjeSZgxV
         3gqxZkvyGCnK3R2dTyUiu6Cd3gJnxcL2nzYXKLYznRExVASJkikiLVAj3TMEaVypBp6f
         enj3Rk1U5MO2otJ9uIer5ORSkwrusXs4QbPfUAJHbvry22cW+oroziPfc+lv4tgruXvq
         4gkA==
X-Gm-Message-State: ANoB5pkAjTnULaW6VItlMCzC12NKOjzGeNhg59rAANGI7knNz9TTcVcE
	vuH32De7UpHSTs32IEMrgair8BkvKsijCiCrfblBSNuZ
X-Google-Smtp-Source: AA0mqf46DIivwj4MjcutixW4t1k+fdnMvhiLdZIyjTe+CkRsiOunapEO2lBlDZ1ZUs6fVv4g65Fmd8S/IgGotj8Oq0o=
X-Received: by 2002:a05:6871:4407:b0:132:7fa0:41bb with SMTP id
 nd7-20020a056871440700b001327fa041bbmr12920126oab.260.1669126859346; Tue, 22
 Nov 2022 06:20:59 -0800 (PST)
MIME-Version: 1.0
References: <20221116200150.4657-1-linux.amoon@gmail.com> <20221116200150.4657-7-linux.amoon@gmail.com>
 <CAMdYzYo_DGiO0UxJEb3xues7Um=X9AgPvz+Xp_YWb9pp9HaScg@mail.gmail.com>
 <CANAwSgQJGH-+aXyUF18kGks4YKfBYvQ4-B7S2m8eaAr=yNS7vQ@mail.gmail.com>
 <99849c5e-5bd9-386b-99c5-fbc8c8df9656@arm.com> <CANAwSgT7rasp=QYdvukAO-y6NzsOfKsjdy0jAEubvMymmfDqWA@mail.gmail.com>
 <CAMdYzYqkHb0_Rwp+fAMwS=-VrNow6yFw1HErz28EGKd6bLzY4A@mail.gmail.com>
In-Reply-To: <CAMdYzYqkHb0_Rwp+fAMwS=-VrNow6yFw1HErz28EGKd6bLzY4A@mail.gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 22 Nov 2022 19:50:42 +0530
Message-ID: <CANAwSgR2h4tcuM2sNZt6QsporLuopkt2nCSHrbnTgT8r9iE3Cg@mail.gmail.com>
Subject: Re: [linux-next-v2 5/5] arm64: dts: rockchip: Add missing of
 ethernet-phy-id to reset the phy on Rock 3A SBC
To: Peter Geis <pgwipeout@gmail.com>
Cc: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Michael Riesch <michael.riesch@wolfvision.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_062102_623016_A6BEBEB5 
X-CRM114-Status: GOOD (  37.59  )
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

Hi Peter,

On Fri, 18 Nov 2022 at 00:40, Peter Geis <pgwipeout@gmail.com> wrote:
>
> On Thu, Nov 17, 2022 at 9:56 AM Anand Moon <linux.amoon@gmail.com> wrote:
> >
> > Hi Robin
> >
> > On Thu, 17 Nov 2022 at 16:24, Robin Murphy <robin.murphy@arm.com> wrote:
> > >
> > > On 2022-11-17 05:57, Anand Moon wrote:
> > > > Hi Peter,
> > > >
> > > > On Thu, 17 Nov 2022 at 02:16, Peter Geis <pgwipeout@gmail.com> wrote:
> > > >>
> > > >> On Wed, Nov 16, 2022 at 3:02 PM Anand Moon <linux.amoon@gmail.com> wrote:
> > > >>>
> > > >>> Add MDIO description with ethernet-phy-id compatible string
> > > >>> which enable calling reset of the phy. The PHY will then be probed,
> > > >>> independent of if it can be found on the bus or not,
> > > >>> and that probing will enable the GPIO.
> > > >>>
> > > >>> ethernet-phy-id is read from ethenet register dump reg2 and reg3.
> > > >>>
> > > >>> Fix following warning.
> > > >>> [   12.323417] rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
> > > >>> [   12.324078] rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
> > > >>> [   12.324099] rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)
> > > >>>
> > > >>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
> > > >>> ---
> > > >>> V2: new to the patch series.
> > > >>>
> > > >>> alarm@rock-3a:~$ sudo ethtool -d eth0
> > > >>> [sudo] password for alarm:
> > > >>> ST GMAC Registers
> > > >>> GMAC Registers
> > > >>> Reg0  0x08072203
> > > >>> Reg1  0x00000000
> > > >>> Reg2  0x00000404
> > > >>> Reg3  0x00000000
> > > >>> Reg4  0x00000002
> > > >>> ---
> > > >>>   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
> > > >>>   1 file changed, 1 insertion(+), 1 deletion(-)
> > > >>>
> > > >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > > >>> index 9f84a23a8789..fe36156a5017 100644
> > > >>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > > >>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > > >>> @@ -585,7 +585,7 @@ &i2s2_2ch {
> > > >>>
> > > >>>   &mdio1 {
> > > >>>          rgmii_phy1: ethernet-phy@0 {
> > > >>> -               compatible = "ethernet-phy-ieee802.3-c22";
> > > >>> +               compatible = "ethernet-phy-id0000.0404", "ethernet-phy-ieee802.3-c22";
> > > >>>                  reg = <0x0>;
> > > >>>                  pinctrl-names = "default";
> > > >>>                  pinctrl-0 = <&eth_phy_rst>, <&eth_phy_int>;
> > > >>
> > > >> Have you tried instead moving the reset to the mdio bus? I've had
> > > >> success with this, though you'll need to change the reset assert and
> > > >> deassert timing handles, they are different for the bus.
> > > >>
> > > > No can you share some examples?
> > > > If you got a better way to solve this issue please let me know.
> > > > I will give this a try.
> > >
> > > Note that the Rock 3A schematic says the phy is configured for address
> > > 1, not 0. From what I remember of adding the MDIO node for NanoiPi4,
> > > that didn't work if I got the address wrong, despite the fact that the
> > > auto-detection when the MDIO node is omitted claimed to find the same
> > > phy on both addresses 0 and 1.
> > >
>
> From the net-dev folk, mdio address 0 is a broadcast address. All
> functional phys we have on the mdio bus should respond to it. The
> problem I've run into is with the reset on the phy node the reset
> triggers too late for the dwmac to detect the phy correctly. However
> moving it to the mdio bus node makes the reset happen at roughly the
> same time as the depreciated dwmac reset and the phy detects without
> any weird hacks.
>

This is not a hack, we are already using mdio bus node.
&gma1 {
   phy-handle=ethernet-phy
}
mdio1 {
   ethernet-phy {
   }
}

Actually, *ethernet-phy-id* is one of the binding properties (see below).
we can find many examples in the device tree that used this property in
the linux kernel and u-boot.

[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/net/ethernet-phy.yaml?h=v6.1-rc6#n31

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/net/ethernet-phy.yaml?h=v6.1-rc6#n211

Please check this phy reset section below.

[2] https://wiki.st.com/stm32mpu/wiki/Ethernet_device_tree_configuration#RMII_with_25MHz_on_ETH_CLK_-28no_PHY_Crystal-29-2C_REF_CLK_from_PHY_-28Reference_clock_-28standard_RMII_clock_name-29_is_provided_by_a_PHY-29

If you have some other input please share I have tried but failed.

Thanks

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
