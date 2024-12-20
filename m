Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6030CE7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Dec 2024 05:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8z0CUtekgKEPCgtLjg65UuUtpL/wIHL+KirqJUCaDQ=; b=Rs48wCn1WQ2e2o
	+VWcl9DWoiaoLmbBxqw4IPddUd2JD1wGsHQZLdUPx11zmvDfCIuHqFgMbeUIKlBVrdilZyCzoLJqA
	ifY8vF7qn1xJ37fHoppKKxqXf4uIIPKReHxqJev4N21YVy/nkU+yK8f1DJRnBbZ/pog6rLVH1cq/p
	WaAy7gkKF6fajfYKa9564gksiPGZhUOJS5wn2g7rNG3XEBaiKhubn8nTddOODKy8EdxD/6M5xj4pd
	0ms3zAoqUpU+Pn1uKDXFrua3Qohm566rWN4DqcD2b9fHhQYk9j69BjgVKApIIeVe+uNUA65BeOqyC
	o5Yj/k8BbAzoqhgdc0Nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOVin-00000003zS6-3h6T;
	Fri, 20 Dec 2024 05:38:45 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOViS-00000003zLj-1alG
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Dec 2024 05:38:25 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-6eff5ad69a1so13919717b3.3
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Dec 2024 21:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734673103; x=1735277903; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rIKarjSguBzb5vvGdGEBWsVx805GOCvvnK6El20HXXg=;
        b=fgrR6kPc14ihgHj9rktWf21j+rybzmDT+pV3FrIwF46E/PrssuEhHcODLnWQto6l8A
         SM7wGz/bq6+t13rm5IkYmBY55IcSM0lRfghu+pAUPeD8wHolc3QY0NeYKuCtAoAFMC4+
         bUCKvf0ZAuxcx0a2n6Bw+Y1e8g6Y05VN9MfDrpEEs2m7Uw9ONi+GPPfR1fFJfcGIwx3L
         LQJKqKA6pLCd1UUT/hM0spPZe47qaiS9MPZq++BcdG0Rr0YAfBC3dma2QhZdP5X1mF7n
         nJ5ihKgZZY2CmfO3h8LE0VMF0mHEUTpLTkB+S98+hpESrQbeWuuGK9ZjiV0um1hJT2gc
         4YRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734673103; x=1735277903;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rIKarjSguBzb5vvGdGEBWsVx805GOCvvnK6El20HXXg=;
        b=N7yA9xC5ZeVyFCeMHmosCRMnNqteeVeftQ2JXZ+bK5YoeXr1w3tFU0kyStcbyzRGfW
         SmgpPmnFG49scEf+0IsZcsoap7PkU6N3VgL5Wsy3xdNKFMb1vczQvDwCr7iiOUHqeN1t
         1XlmNnPEQFntg4RxUBGbnCyP+0ii/KyHqzYznrI0rvNfR3xM3ENn7KPjLScbU7BWng2a
         oSXdk6FSS/LLBLxRXLfqpxxs56Vpg76zP2ekEQ7mTkszJKOYIEU3by+QP4AlxkJocAwj
         L8GCpzWRyEqu4XGK8YxLVDsQ8H5EUXvDJs8DAEJMvXV9DmDqP7Y3mb6/eqvPnz3dJD6R
         juEA==
X-Forwarded-Encrypted: i=1; AJvYcCU/51RdMECChOl4raqI77YFkystMdeswRDoCnzyTker+pO6GfZPBGTiLGjzZafpzMiO6DJBzvjJXfb6QfMzRg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzF3SgS0UmR3rI6dYCtbhu8aph6Yvlwnb24IxFXtA5z6Oex8eaD
	jM13PGxGiV4lUS6asOf0MFkD8Mhlhuk2EDpzYD0Y+atVXJci8ZghxA5LdBfnIPCB9asQ7WFTVeV
	kKXJ7aye4MLEVY/ir3aWXoIEAmUTxNzo6dhhsUA==
X-Gm-Gg: ASbGncsG0Z65hobC2lWTRw7EX+d0XnR7A6YL1vZj+g7A3Gn3im1F8pJ5XRdlYeaWRld
	efYWVFS+3v9Yo4wALTSXDyGevRIPjQ5H6jp270G7iZ3ja2lbw83mp
X-Google-Smtp-Source: AGHT+IFzw4UTk3bYJjTLjWStSiQBoWV4fWweBYuliIxs6rVCPb45P2NhqG9sK5ndMaNn705CQufJ7trl8MkIav7ihTk=
X-Received: by 2002:a05:690c:6e0d:b0:6e5:9cb7:853c with SMTP id
 00721157ae682-6f3f822204cmr13331197b3.31.1734673103176; Thu, 19 Dec 2024
 21:38:23 -0800 (PST)
MIME-Version: 1.0
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-15-damon.ding@rock-chips.com> <cg7bnhol4gvzji7agxazas7nkxy7zammzy67rjvhp35yqyraju@73daepsbmuae>
 <d2b47813-45fa-4148-8a4a-6cf4a18ee7ca@rock-chips.com>
In-Reply-To: <d2b47813-45fa-4148-8a4a-6cf4a18ee7ca@rock-chips.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 20 Dec 2024 07:38:12 +0200
Message-ID: <CAA8EJpp0Smtqx7VQ5zdg9x3EhuLpk4u4vGv=rv8DHJ0rhei18w@mail.gmail.com>
Subject: Re: [PATCH v3 14/15] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
To: Damon Ding <damon.ding@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_213824_432735_F50DF503 
X-CRM114-Status: GOOD (  23.92  )
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

On Fri, 20 Dec 2024 at 04:38, Damon Ding <damon.ding@rock-chips.com> wrote:
>
> Hi Dmitry,
>
> On 2024/12/20 8:20, Dmitry Baryshkov wrote:
> > On Thu, Dec 19, 2024 at 04:06:03PM +0800, Damon Ding wrote:
> >> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
> >> - Add edp-panel node
> >> - Set pinctrl of pwm12 for backlight
> >> - Enable edp0/hdptxphy0/vp2
> >>
> >> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >>
> >> ---
> >>
> >> Changes in v2:
> >> - Remove brightness-levels and default-brightness-level properties in
> >>    backlight node.
> >> - Add the detail DT changes to commit message.
> >>
> >> Changes in v3:
> >> - Use aux-bus instead of platform bus for edp-panel.
> >> ---
> >>   .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 52 +++++++++++++++++++
> >>   1 file changed, 52 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >> index bc4077575beb..9547ab18e596 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> >> @@ -9,6 +9,7 @@
> >>   #include <dt-bindings/gpio/gpio.h>
> >>   #include <dt-bindings/input/input.h>
> >>   #include <dt-bindings/pinctrl/rockchip.h>
> >> +#include <dt-bindings/soc/rockchip,vop2.h>
> >>   #include <dt-bindings/usb/pd.h>
> >>   #include "rk3588s.dtsi"
> >>
> >> @@ -238,6 +239,41 @@ &combphy2_psu {
> >>      status = "okay";
> >>   };
> >>
> >> +&edp0 {
> >> +    force-hpd;
> >> +    status = "okay";
> >> +
> >> +    aux-bus {
> >> +            panel {
> >> +                    compatible = "lg,lp079qx1-sp0v";
> >
> > Why do you need the particular compat string here? Can you use the
> > generic "edp-panel" instead? What if the user swaps the panel?
> >
>
> The eDP panels used in conjunction with the RK3588S EVB1 have broken
> identification, which is one of the valid reasons for using a particular
> compat string. So the generic_edp_panel_probe() can not return success
> when using the "edp-panel".

Broken how? I don't see such info in the commit message.

>
> >> +                    backlight = <&backlight>;
> >> +                    power-supply = <&vcc3v3_lcd_edp>;
> >> +
> >> +                    port {
> >> +                            panel_in_edp: endpoint {
> >> +                                    remote-endpoint = <&edp_out_panel>;
> >> +                            };
> >> +                    };
> >> +            };
> >> +    };
> >> +};
> >> +
> >> +&edp0_in {
> >> +    edp0_in_vp2: endpoint {
> >> +            remote-endpoint = <&vp2_out_edp0>;
> >> +    };
> >> +};
> >> +
> >> +&edp0_out {
> >> +    edp_out_panel: endpoint {
> >> +            remote-endpoint = <&panel_in_edp>;
> >> +    };
> >> +};
> >> +
> >> +&hdptxphy0 {
> >> +    status = "okay";
> >> +};
> >> +
> >>   &i2c3 {
> >>      status = "okay";
> >>
> >> @@ -399,6 +435,7 @@ usbc0_int: usbc0-int {
> >>   };
> >>
> >>   &pwm12 {
> >> +    pinctrl-0 = <&pwm12m1_pins>;
> >>      status = "okay";
> >>   };
> >>
> >> @@ -1168,3 +1205,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
> >>              };
> >>      };
> >>   };
> >> +
> >> +&vop_mmu {
> >> +    status = "okay";
> >> +};
> >> +
> >> +&vop {
> >> +    status = "okay";
> >> +};
> >> +
> >> +&vp2 {
> >> +    vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
> >> +            reg = <ROCKCHIP_VOP2_EP_EDP0>;
> >> +            remote-endpoint = <&edp0_in_vp2>;
> >> +    };
> >> +};
> >> --
> >> 2.34.1
> >>
> >
> Best regards,
> Damon



-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
