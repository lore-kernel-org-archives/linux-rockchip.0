Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B1A6C28B28
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Mar 2025 00:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LBCivR2hkAu3vMICkORXd7Jv5rawSRpfG34UHHGsXK0=; b=XAx0oj4idN4sRu
	wQWAMSvmLczbGd+8qiKosMQsBGY+Bj9cJJRf9/ZKR3HscaFAU6WazgFGlwnfn6h1d8frxKpJWrhro
	iljZvXTCmr6ekUg40+qo4jDU7U5ezXGDGc/3c6jBWcw7Ranzx8CfnVcpDnsvDbvB5Nlg8ta/ke47x
	DEyC6Z3YUGiK+JTaQpoPlUrwgBrhDIN4tj7ulE/7ALmS5vs68GwwK7PVa2WwmQcBDltvJeeSvRH/X
	h3K4muazfzTflXHFffbOCyRsfCuY0FK+VgcK2u09yT84iJdvpwfyoelhzVkCyV73akd5WVbimD4Gz
	HJlxNGCNqH2ZMY15adBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsWXR-00000009p8C-2ugs;
	Thu, 13 Mar 2025 00:35:05 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsWVl-00000009p2J-1rDL;
	Thu, 13 Mar 2025 00:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=AB2GUHSL2k8vU974ZJtogILKP8rhMHvKGHGeZ+pVxWQ=; b=O
	0WDE/MkX+VL2kULTxRHxI8f5O4zX5KcccF9Pc75nJE9dAr7HoUTj3oFSdOD0ipfV
	4mdv68a85oNF7bxNT+HMz5mO+Lu3lOrxPRloYrptfdCaX8JY9J90WwXlAi+rj5eI
	Sof4FTDtSOcod0qqa92c9KE1osByLNkUtqztGxcNi8=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-123 (Coremail) ; Thu, 13 Mar 2025 08:32:55 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Thu, 13 Mar 2025 08:32:55 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Dmitry Baryshkov" <lumag@kernel.org>
Subject: Re:Re: [PATCH v2 7/7] arm64: dts: rockchip: Enable DP2HDMI for ROCK
 5 ITX
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <q3y36jgswj4xa2g3hnptc6kgzphbqfg675r5paa2lwvdseytio@jysj4f2i6osu>
References: <20250312104214.525242-1-andyshrk@163.com>
 <20250312104214.525242-8-andyshrk@163.com>
 <q3y36jgswj4xa2g3hnptc6kgzphbqfg675r5paa2lwvdseytio@jysj4f2i6osu>
X-NTES-SC: AL_Qu2fA/SZukEs4yKdYOlSyjNW+7xfHKv6+qRChMQvQtsqqTHr9T0KcVtuP1XR3//r4kRAiu7dpbs5Jch8KvJm
MIME-Version: 1.0
Message-ID: <5858d492.44b.1958ceb23dd.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: eygvCgD3H4e3J9JnFCt9AA--.21925W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkAMPXmfSI2pHYgACsZ
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_173321_785944_28040E87 
X-CRM114-Status: GOOD (  14.25  )
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
Cc: neil.armstrong@linaro.org, sebastian.reichel@collabora.com, heiko@sntech.de, devicetree@vger.kernel.org, "stephen@radxa.com" <stephen@radxa.com>, hjc@rock-chips.com, mripard@kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, yubing.zhang@rock-chips.com, dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hi Dmitry,

At 2025-03-12 20:39:17, "Dmitry Baryshkov" <lumag@kernel.org> wrote:
>On Wed, Mar 12, 2025 at 06:42:08PM +0800, Andy Yan wrote:
>> From: Andy Yan <andy.yan@rock-chips.com>
>> 
>> The HDMI Port next to Headphone Jack is drived by
>> DP1 on rk3588 via a dp2hdmi converter.
>> 
>> Add related dt nodes to enable it.
>> 
>> Note: ROCKCHIP_VOP2_EP_DP1 is defined as 11 in dt-binding header,
>> but it will trigger a dtc warning like "graph node unit address
>> error, expected "b"" if we use it directly after endpoint, so we
>> use "b" instead here.
>> 
>> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>> ---
>> 
>> (no changes since v1)
>> 
>>  .../boot/dts/rockchip/rk3588-rock-5-itx.dts   | 37 +++++++++++++++++++
>>  1 file changed, 37 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> index 67b886329248..29f10ec9f0c1 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> @@ -57,6 +57,18 @@ analog-sound {
>>  			  "Headphone", "Headphones";
>>  	};
>>  
>> +	dp-con {
>> +		compatible = "dp-connector";
>
>You've written that it is an HDMI connector. Could you possibly clarify,
>why is it being registered as a DP connector? Is there any kind of
>a bridge between the DP controller and the HDMI connector?

When I was preparing this patch at that time, I also had some doubts. 
Whether it should be registered as a DP connector or an HDMI connector. 
There is a DP2HDMI conversion chip between the DP of RK3588 and this hdmi 
interface, but this conversion chip does not require a software driver. 
If the current writing is incorrect, I will change it to hdmi-connector in the next version.

Thanks
>
>> +		label = "DP OUT";
>> +		type = "full-size";
>> +
>> +		port {
>> +			dp_con_in: endpoint {
>> +				remote-endpoint = <&dp1_out_con>;
>> +			};
>> +		};
>> +	};
>> +
>>  	gpio-leds {
>>  		compatible = "gpio-leds";
>>  		pinctrl-names = "default";
>> @@ -268,6 +280,24 @@ &cpu_l3 {
>>  	cpu-supply = <&vdd_cpu_lit_s0>;
>>  };
>>  
>> +&dp1 {
>> +	status = "okay";
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&dp1m0_pins>;
>> +};
>> +
>> +&dp1_in {
>> +	dp1_in_vp2: endpoint {
>> +		remote-endpoint = <&vp2_out_dp1>;
>> +	};
>> +};
>> +
>> +&dp1_out {
>> +	dp1_out_con: endpoint {
>> +		remote-endpoint = <&dp_con_in>;
>> +	};
>> +};
>> +
>>  &gpu {
>>  	mali-supply = <&vdd_gpu_s0>;
>>  	status = "okay";
>> @@ -1262,3 +1292,10 @@ vp1_out_hdmi1: endpoint@ROCKCHIP_VOP2_EP_HDMI1 {
>>  		remote-endpoint = <&hdmi1_in_vp1>;
>>  	};
>>  };
>> +
>> +&vp2 {
>> +	vp2_out_dp1: endpoint@b {
>> +		reg = <ROCKCHIP_VOP2_EP_DP1>;
>> +		remote-endpoint = <&dp1_in_vp2>;
>> +	};
>> +};
>> -- 
>> 2.34.1
>> 
>
>-- 
>With best wishes
>Dmitry
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
