Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E43B8C02181
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jan 2025 09:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0ZXd+Hjr3+MRqgHadvf9DpimJ5InOgb0nq7L08mlInU=; b=HNFazA33JQ9l+Ql39qKhdvlsYs
	eQ1lRLYf+QpyW95yWxrSHRQYnSREt0dlw/f4Qtt2OuqBV4YdZeyQZVkLFjnIvT1Ly5s+3X29ie4Ro
	ItIE21wiCgvAZz9TzLAtan0ggqqn7FM9eDPKcp6vcsQ7cav7yRoc0rrbnYm+hJ3G9lI7Vb4Sp4EzP
	/Ag4X4s/plTD9PTRRBuz6zVo7ObjO8add0rPZdzbsKOaoKHgUoOFxLVqzs5QayJqc/KYo7LC9Mrda
	ZZZh0w1q904vRygkHrY+zCVVcwNYRDrMcby7JO93UtR8u9XHejvFSKSK/uXl8Jg5G3OfY9CIUSAZu
	mV/JJpog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1taWgC-00000009lEz-08mU;
	Wed, 22 Jan 2025 09:05:44 +0000
Received: from mail-m49215.qiye.163.com ([45.254.49.215])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1taWg9-00000009lDw-2Yre;
	Wed, 22 Jan 2025 09:05:42 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 96647672;
	Wed, 22 Jan 2025 17:05:37 +0800 (GMT+08:00)
Message-ID: <26c55255-2671-4bb1-aaee-c3145f8698f7@rock-chips.com>
Date: Wed, 22 Jan 2025 17:05:36 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 20/20] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
To: Andy Yan <andyshrk@163.com>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-21-damon.ding@rock-chips.com>
 <8927876.291e.19454e86e8f.Coremail.andyshrk@163.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <8927876.291e.19454e86e8f.Coremail.andyshrk@163.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkIdHlZMTx4eGRlIGh9LTUxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a948d42906703a3kunm96647672
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NxQ6Iio4STIXEi9IPh5LDBYV
	KTAaCQ5VSlVKTEhMTkhNTEhCSkpLVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFISkxMNwY+
DKIM-Signature: a=rsa-sha256;
	b=CG+gEnx+XPdVro1zdFzCtUaeVySUsXtaffUl3mFF+lfs47HUrqfKK/fVH37Afw5wPC0Kqr4qZ/Iy2hmAuSnfp6ix+7g6MKIZ7LKrZ7eR1gKfBCu5oy7Kgp7rXs1q97nz1ATOSJb8cQyspPDbsna3Iaagk6FtyLDygDm6807jCQw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=hsQBhgtpgyLUVlhj2uOdXGpB5uzrnxpQS3g2lRTQAn8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250122_010541_855469_526F106F 
X-CRM114-Status: GOOD (  13.42  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, dmitry.baryshkov@linaro.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Andy,

On 2025/1/11 18:28, Andy Yan wrote:
> 
> Hi Damon,
> 
> At 2025-01-09 11:27:25, "Damon Ding" <damon.ding@rock-chips.com> wrote:
>> Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
>> - Set pinctrl of pwm12 for backlight
>> - Enable edp0/hdptxphy0/vp2
>> - Add aux-bus/panel nodes
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>>
>> ---
>>
>> Changes in v2:
>> - Remove brightness-levels and default-brightness-level properties in
>>   backlight node.
>> - Add the detail DT changes to commit message.
>>
>> Changes in v3:
>> - Use aux-bus instead of platform bus for edp-panel.
>>
>> Changes in v4:
>> - Add comments related to the use of panel compatible "lg,lp079qx1-sp0v"
>>   in the commit message.
>>
>> Changes in v5:
>> - Use "edp-panel" instead of "lg,lp079qx1-sp0v"
>> - Remove unnecessary comments in commit message
>> - Assign the parent of DCLK_VOP2_SRC to PLL_V0PLL
>> ---
>> .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 54 +++++++++++++++++++
>> 1 file changed, 54 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>> index bc4077575beb..a8c151b41e21 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>> @@ -9,6 +9,7 @@
>> #include <dt-bindings/gpio/gpio.h>
>> #include <dt-bindings/input/input.h>
>> #include <dt-bindings/pinctrl/rockchip.h>
>> +#include <dt-bindings/soc/rockchip,vop2.h>
>> #include <dt-bindings/usb/pd.h>
>> #include "rk3588s.dtsi"
>>
>> @@ -238,6 +239,41 @@ &combphy2_psu {
>> 	status = "okay";
>> };
>>
>> +&edp0 {
>> +	force-hpd;
>> +	status = "okay";
>> +
>> +	aux-bus {
>> +		panel {
>> +			compatible = "edp-panel";
>> +			backlight = <&backlight>;
>> +			power-supply = <&vcc3v3_lcd_edp>;
>> +
>> +			port {
>> +				panel_in_edp: endpoint {
>> +					remote-endpoint = <&edp_out_panel>;
>> +				};
>> +			};
>> +		};
>> +	};
>> +};
>> +
>> +&edp0_in {
>> +	edp0_in_vp2: endpoint {
>> +		remote-endpoint = <&vp2_out_edp0>;
>> +	};
>> +};
>> +
>> +&edp0_out {
>> +	edp_out_panel: endpoint {
>> +		remote-endpoint = <&panel_in_edp>;
>> +	};
>> +};
>> +
>> +&hdptxphy0 {
>> +	status = "okay";
>> +};
>> +
>> &i2c3 {
>> 	status = "okay";
>>
>> @@ -399,6 +435,7 @@ usbc0_int: usbc0-int {
>> };
>>
>> &pwm12 {
>> +	pinctrl-0 = <&pwm12m1_pins>;
>> 	status = "okay";
>> };
>>
>> @@ -1168,3 +1205,20 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
>> 		};
>> 	};
>> };
>> +
>> +&vop_mmu {
>> +	status = "okay";
>> +};
>> +
>> +&vop {
>> +	assigned-clocks = <&cru DCLK_VOP2_SRC>;
>> +	assigned-clock-parents = <&cru PLL_V0PLL>;
> 
> It's necessary to explain why we need to  assign V0PLL for DCLK_VOP2_SRC in commit message.
> 
> 

I will add relevant explainations in next version.

>> +	status = "okay";
>> +};
>> +
>> +&vp2 {
>> +	vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
>> +		reg = <ROCKCHIP_VOP2_EP_EDP0>;
>> +		remote-endpoint = <&edp0_in_vp2>;
>> +	};
>> +};
>> -- 
>> 2.34.1
>>

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
