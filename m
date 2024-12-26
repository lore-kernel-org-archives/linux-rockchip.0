Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C784E77188
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 20:27:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iMu388jk8aoHmiyW/v0c4o4jF5G6++hWHrl9p0gz6Nw=; b=r7yXNAOBgGYBDY
	BsWAfWvMeBoVN6RWCjevmhwyT7WTuMSTBqqVrfSQAZqHe865A3QB5jhsLVIWwMDR9x6zPYsGOGkH8
	QhEkh6+8/EEdIXOqzTdxwMauLH4b1pO8qTr2dsIb3TZqWwoDDU8rZvcmcia0YhLRgzioGuFv9PSpF
	xML2sWMkutNpWFXWTEJXosUfxjZsucjA+VIrFkJf5fI9+k6zPdg7/5qvkXEqz8I+3yLZZhKk7UjD/
	cdPvgEcaAcTePFqXE7RuuajQyUITshUhhSbKDTXsC7XSlryO+7QHj/vPCjrJTRP2Bm3VJ3i3L+NoM
	306KEx1V8DQhvvbUL0lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQuRn-0000000GMvY-3USQ;
	Thu, 26 Dec 2024 20:27:07 +0000
Received: from mail-yb1-xb30.google.com ([2607:f8b0:4864:20::b30])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQuRk-0000000GMu1-2Vig
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Dec 2024 20:27:05 +0000
Received: by mail-yb1-xb30.google.com with SMTP id 3f1490d57ef6-e46ebe19489so6544532276.2
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Dec 2024 12:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735244823; x=1735849623; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FPKRoDpify9h+IqEe2EG1BoGb8mJ4mV8pWzFyX2ts3w=;
        b=kpWxqhvFGnsS0iYnRMYCrOzVljOppldlkOFtrpA7T0FyCi+5UvzSg9fPhyO1FnkYEc
         YymVkXJOuJ3Ps19uYFco6edoqe0xGBVXOG8LVeAmzXj2SlAXqFumi7XUDd3rSzoYCRXh
         YR6A1fWtX2JN74lojdptDGs8DtgLICa8BKtb5Kk78Wavy+NjvajiDFOC8B6wVd19UH/5
         7oMDbxkhgn3QrydxgW7g1NgFnOsmJv9Sr/F5DmqPjEhgfSE2h38yvWrRQODPFRMnHhrh
         AC6P7QevGwS/DDM+iZj9VlDMszXyqNHQHn1sTKisWrNAqOfD+7l9qsjhOu3VPU91TUZt
         tncQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735244823; x=1735849623;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FPKRoDpify9h+IqEe2EG1BoGb8mJ4mV8pWzFyX2ts3w=;
        b=dP90eXkd58hM7/x6RZb+eU9UltvsjeGQjOm2AhjzwkCHHgATd20x7e0LpfOL3bZ58n
         1fnpxqyXQlkK2zqopc/ZHiIwynr0CtLRewzh5Aq6Iox/KqA40BnZPK+DplTt192pDrJu
         InCi3GFQybOoqEcPP+iSI1xQEhQ13J90/YfNWkTSfBKrZcgIvSLbD1e6GwkQ99Aq/apj
         1sDEqOxyXah9ZmLFlz8PEonWolGIsXj0Hxy4hCx7RT4mtd+/uVP90/nZK2erczgKGvPI
         8fzOeXHf1h/0PI18RNmuU+3basZIs+BTcZubyBTvIWGeh7N6gsL7meldOW/AeZZjCWuB
         tF2g==
X-Forwarded-Encrypted: i=1; AJvYcCW2m5xqWZMrBvxxSkYYcoYZ69mCPODwhk6jCa9JK+3KcnNuLiLTXCvfWyFCacfslHXRrIb+UYzY3i/7Pe7kCQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1Hvry2laVEbvU6XxVvSvOrO8ViJxOQ14px2Rky+hFu4RyhwUF
	H+/IDyJA60kfP/74aRIltVO7QtDJ8xQ3SvglTltL3xmaywEsLQvfEmdE0iE8j8dOGMOmIwc1fo1
	dX/qvREyCGVxMb65aAhQxp9d5DmidXsTN7XJ+QA==
X-Gm-Gg: ASbGncv4J5Bgr2FQ0wsiByzpIy6oeNmXYNHf0R+ATLBd5qkXvRjKtISEvSBFJuyPrZo
	KfIZBdx1mgK8yetzKr5rKWSzDJHYRw2baslj82RfzfOKEFfTYnH7bHyUVvYyOi+zkW6/2pA==
X-Google-Smtp-Source: AGHT+IHDUZL5Eg2UGPvFlhghbyzwMvFDpOHMklFDUf4MZxRXkdzrV37grJ0wXkgFU3RiQ0B52ASFNrZDlpN/T8sXHhM=
X-Received: by 2002:a05:690c:7489:b0:6ef:8122:282f with SMTP id
 00721157ae682-6f3f8134f5emr177842837b3.24.1735244821935; Thu, 26 Dec 2024
 12:27:01 -0800 (PST)
MIME-Version: 1.0
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-15-damon.ding@rock-chips.com> <cg7bnhol4gvzji7agxazas7nkxy7zammzy67rjvhp35yqyraju@73daepsbmuae>
 <d2b47813-45fa-4148-8a4a-6cf4a18ee7ca@rock-chips.com> <CAA8EJpp0Smtqx7VQ5zdg9x3EhuLpk4u4vGv=rv8DHJ0rhei18w@mail.gmail.com>
 <32c7ef0a-8da6-449a-8f2d-59965aa622ec@rock-chips.com>
In-Reply-To: <32c7ef0a-8da6-449a-8f2d-59965aa622ec@rock-chips.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 26 Dec 2024 22:26:51 +0200
Message-ID: <CAA8EJpqFwQGT=wYWuSf8izw9V=zJJ-YVA40i3f8L7wnZfPjyTA@mail.gmail.com>
Subject: Re: [PATCH v3 14/15] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241226_122704_634155_33B7FBBA 
X-CRM114-Status: GOOD (  28.36  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 25 Dec 2024 at 11:34, Damon Ding <damon.ding@rock-chips.com> wrote:
>
> Hi Dmitry,
>
> On 2024/12/20 13:38, Dmitry Baryshkov wrote:
> > On Fri, 20 Dec 2024 at 04:38, Damon Ding <damon.ding@rock-chips.com> wrote:
> >>
> >> Hi Dmitry,
> >>
> >> On 2024/12/20 8:20, Dmitry Baryshkov wrote:
> >>> On Thu, Dec 19, 2024 at 04:06:03PM +0800, Damon Ding wrote:
> >>>> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
> >>>> - Add edp-panel node
> >>>> - Set pinctrl of pwm12 for backlight
> >>>> - Enable edp0/hdptxphy0/vp2
> >>>>
> >>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >>>>
> >>>> ---
> >>>>
> >>>> Changes in v2:
> >>>> - Remove brightness-levels and default-brightness-level properties in
> >>>>     backlight node.
> >>>> - Add the detail DT changes to commit message.
> >>>>
> >>>> Changes in v3:
> >>>> - Use aux-bus instead of platform bus for edp-panel.
> >>>> ---
> >>>>    .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 52 +++++++++++++++++++
> >>>>    1 file changed, 52 insertions(+)
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >>>> index bc4077575beb..9547ab18e596 100644
> >>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >>>> @@ -9,6 +9,7 @@
> >>>>    #include <dt-bindings/gpio/gpio.h>
> >>>>    #include <dt-bindings/input/input.h>
> >>>>    #include <dt-bindings/pinctrl/rockchip.h>
> >>>> +#include <dt-bindings/soc/rockchip,vop2.h>
> >>>>    #include <dt-bindings/usb/pd.h>
> >>>>    #include "rk3588s.dtsi"
> >>>>
> >>>> @@ -238,6 +239,41 @@ &combphy2_psu {
> >>>>       status = "okay";
> >>>>    };
> >>>>
> >>>> +&edp0 {
> >>>> +    force-hpd;
> >>>> +    status = "okay";
> >>>> +
> >>>> +    aux-bus {
> >>>> +            panel {
> >>>> +                    compatible = "lg,lp079qx1-sp0v";
> >>>
> >>> Why do you need the particular compat string here? Can you use the
> >>> generic "edp-panel" instead? What if the user swaps the panel?
> >>>
> >>
> >> The eDP panels used in conjunction with the RK3588S EVB1 have broken
> >> identification, which is one of the valid reasons for using a particular
> >> compat string. So the generic_edp_panel_probe() can not return success
> >> when using the "edp-panel".
> >
> > Broken how? I don't see such info in the commit message.
> >
>
> The log related to the broken identification may be like:
>
> [    0.623793] panel-simple-dp-aux aux-fdec0000.edp: Unknown panel ETC
> 0x0000, using conservative timings

According to [1] the ETC / 0x0000 is a correct identification for that
panel. I'd suggest adding the timings to the driver instead.

[1]  https://www.elecok.com/data_sheet/107657/LP079QX1-SP0V_7.9%22_a-Si_TFT-LCD%2CPanel_for_LG_Display(EN).pdf?download=true

>
> The eDP panel used in RK3588S EVB1 is indeed the LP079QX1_SP0V model, it
> should be also reasonable to use the "lg,lp079qx1-sp0v".
>
> And I will mention all of the above in the commit message for the next
> version.
>
> >>
> >>>> +                    backlight = <&backlight>;
> >>>> +                    power-supply = <&vcc3v3_lcd_edp>;
> >>>> +
> >>>> +                    port {
> >>>> +                            panel_in_edp: endpoint {
> >>>> +                                    remote-endpoint = <&edp_out_panel>;
> >>>> +                            };
> >>>> +                    };
> >>>> +            };
> >>>> +    };
> >>>> +};
> >>>> +
> >>>> +&edp0_in {
> >>>> +    edp0_in_vp2: endpoint {
> >>>> +            remote-endpoint = <&vp2_out_edp0>;
> >>>> +    };
> >>>> +};
> >>>> +
> >>>> +&edp0_out {
> >>>> +    edp_out_panel: endpoint {
> >>>> +            remote-endpoint = <&panel_in_edp>;
> >>>> +    };
> >>>> +};
> >>>> +
> >>>> +&hdptxphy0 {
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>>    &i2c3 {
> >>>>       status = "okay";
> >>>>
> >>>> @@ -399,6 +435,7 @@ usbc0_int: usbc0-int {
> >>>>    };
> >>>>
> >>>>    &pwm12 {
> >>>> +    pinctrl-0 = <&pwm12m1_pins>;
> >>>>       status = "okay";
> >>>>    };
> >>>>
> >>>> @@ -1168,3 +1205,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
> >>>>               };
> >>>>       };
> >>>>    };
> >>>> +
> >>>> +&vop_mmu {
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&vop {
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&vp2 {
> >>>> +    vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
> >>>> +            reg = <ROCKCHIP_VOP2_EP_EDP0>;
> >>>> +            remote-endpoint = <&edp0_in_vp2>;
> >>>> +    };
> >>>> +};
> >>>> --
> >>>> 2.34.1
> >>>>
>
> Best regards
> Damon
>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
