Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 684E8E7718D
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Dec 2024 09:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SRt0aJ0r8vK67Q0CikLtILC7GJn937MC5CuWzpzsZNE=; b=exmeUDRUtjgKjGK2cZ+ZlCNXxu
	21By71aCFDmGykSCoFvejpRcfV+A0Ih4B5xeqagn9JQwGGR2y+TEbm9nRQGn0MT/G+nfUOE2qwnv0
	+U/WRCt1S0EcrFsplrLe4gGzGpnlzvAZ7cWh7XcyOXYq3SF9K7xeileW7v/x1IDtSI370xNTBHS+v
	qp/suk8HKfVeGqjyZI+8NZk9B10tzgof04HgXJ1dviC2C1rHL/rGuhsF9hH4oa82KpL2q1sTNYHDF
	VrtaM3pVUNQ/LB04a8g7qff1wHHIleVDBsSda6QHGPSlz17OmtJyhDX8N/vUKfCHmddT1Tvqekdx1
	WvlwLWuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQNmg-0000000DYpf-0iyo;
	Wed, 25 Dec 2024 09:34:30 +0000
Received: from mail-m21471.qiye.163.com ([117.135.214.71])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQNmc-0000000DYoT-3cOy;
	Wed, 25 Dec 2024 09:34:28 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 6c6e1666;
	Wed, 25 Dec 2024 17:34:17 +0800 (GMT+08:00)
Message-ID: <32c7ef0a-8da6-449a-8f2d-59965aa622ec@rock-chips.com>
Date: Wed, 25 Dec 2024 17:34:17 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 14/15] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
References: <20241219080604.1423600-1-damon.ding@rock-chips.com>
 <20241219080604.1423600-15-damon.ding@rock-chips.com>
 <cg7bnhol4gvzji7agxazas7nkxy7zammzy67rjvhp35yqyraju@73daepsbmuae>
 <d2b47813-45fa-4148-8a4a-6cf4a18ee7ca@rock-chips.com>
 <CAA8EJpp0Smtqx7VQ5zdg9x3EhuLpk4u4vGv=rv8DHJ0rhei18w@mail.gmail.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <CAA8EJpp0Smtqx7VQ5zdg9x3EhuLpk4u4vGv=rv8DHJ0rhei18w@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUweGVYeQk1KSx1MHR9OTEhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93fd2abf9b03a3kunm6c6e1666
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODY6Ehw4NjIcNk4LOEswEgEB
	KDhPCxJVSlVKTEhOSkpCSU5CSUhKVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFPSk1INwY+
DKIM-Signature: a=rsa-sha256;
	b=kaQs319TgZLgE3daBx/HJEGlYlzgtVyLFOX29FOzekUTHT2VO0cM3Rtl3ZVhJA+lzlxZk0zUL2BKuKKG4P8vmv29QCBtfzvhrskZJiATdGo4/HQ9nqRotKayLndUOxQ8Dww+D7xUD3qnxGbJptgP0wpZI0e4HT7SiKdehVWUlMg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=pWriVfSDH2sEpg8pcOmkXvybXUKi737yhk7CRzVorzU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_013427_568208_A51D22C6 
X-CRM114-Status: GOOD (  16.01  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Dmitry,

On 2024/12/20 13:38, Dmitry Baryshkov wrote:
> On Fri, 20 Dec 2024 at 04:38, Damon Ding <damon.ding@rock-chips.com> wrote:
>>
>> Hi Dmitry,
>>
>> On 2024/12/20 8:20, Dmitry Baryshkov wrote:
>>> On Thu, Dec 19, 2024 at 04:06:03PM +0800, Damon Ding wrote:
>>>> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
>>>> - Add edp-panel node
>>>> - Set pinctrl of pwm12 for backlight
>>>> - Enable edp0/hdptxphy0/vp2
>>>>
>>>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>>>
>>>> ---
>>>>
>>>> Changes in v2:
>>>> - Remove brightness-levels and default-brightness-level properties in
>>>>     backlight node.
>>>> - Add the detail DT changes to commit message.
>>>>
>>>> Changes in v3:
>>>> - Use aux-bus instead of platform bus for edp-panel.
>>>> ---
>>>>    .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 52 +++++++++++++++++++
>>>>    1 file changed, 52 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>>>> index bc4077575beb..9547ab18e596 100644
>>>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>>>> @@ -9,6 +9,7 @@
>>>>    #include <dt-bindings/gpio/gpio.h>
>>>>    #include <dt-bindings/input/input.h>
>>>>    #include <dt-bindings/pinctrl/rockchip.h>
>>>> +#include <dt-bindings/soc/rockchip,vop2.h>
>>>>    #include <dt-bindings/usb/pd.h>
>>>>    #include "rk3588s.dtsi"
>>>>
>>>> @@ -238,6 +239,41 @@ &combphy2_psu {
>>>>       status = "okay";
>>>>    };
>>>>
>>>> +&edp0 {
>>>> +    force-hpd;
>>>> +    status = "okay";
>>>> +
>>>> +    aux-bus {
>>>> +            panel {
>>>> +                    compatible = "lg,lp079qx1-sp0v";
>>>
>>> Why do you need the particular compat string here? Can you use the
>>> generic "edp-panel" instead? What if the user swaps the panel?
>>>
>>
>> The eDP panels used in conjunction with the RK3588S EVB1 have broken
>> identification, which is one of the valid reasons for using a particular
>> compat string. So the generic_edp_panel_probe() can not return success
>> when using the "edp-panel".
> 
> Broken how? I don't see such info in the commit message.
> 

The log related to the broken identification may be like:

[    0.623793] panel-simple-dp-aux aux-fdec0000.edp: Unknown panel ETC 
0x0000, using conservative timings

The eDP panel used in RK3588S EVB1 is indeed the LP079QX1_SP0V model, it 
should be also reasonable to use the "lg,lp079qx1-sp0v".

And I will mention all of the above in the commit message for the next 
version.

>>
>>>> +                    backlight = <&backlight>;
>>>> +                    power-supply = <&vcc3v3_lcd_edp>;
>>>> +
>>>> +                    port {
>>>> +                            panel_in_edp: endpoint {
>>>> +                                    remote-endpoint = <&edp_out_panel>;
>>>> +                            };
>>>> +                    };
>>>> +            };
>>>> +    };
>>>> +};
>>>> +
>>>> +&edp0_in {
>>>> +    edp0_in_vp2: endpoint {
>>>> +            remote-endpoint = <&vp2_out_edp0>;
>>>> +    };
>>>> +};
>>>> +
>>>> +&edp0_out {
>>>> +    edp_out_panel: endpoint {
>>>> +            remote-endpoint = <&panel_in_edp>;
>>>> +    };
>>>> +};
>>>> +
>>>> +&hdptxphy0 {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>>    &i2c3 {
>>>>       status = "okay";
>>>>
>>>> @@ -399,6 +435,7 @@ usbc0_int: usbc0-int {
>>>>    };
>>>>
>>>>    &pwm12 {
>>>> +    pinctrl-0 = <&pwm12m1_pins>;
>>>>       status = "okay";
>>>>    };
>>>>
>>>> @@ -1168,3 +1205,18 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
>>>>               };
>>>>       };
>>>>    };
>>>> +
>>>> +&vop_mmu {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>> +&vop {
>>>> +    status = "okay";
>>>> +};
>>>> +
>>>> +&vp2 {
>>>> +    vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
>>>> +            reg = <ROCKCHIP_VOP2_EP_EDP0>;
>>>> +            remote-endpoint = <&edp0_in_vp2>;
>>>> +    };
>>>> +};
>>>> --
>>>> 2.34.1
>>>>

Best regards
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
