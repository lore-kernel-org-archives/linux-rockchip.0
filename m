Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA376C83F27
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Jul 2025 10:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/scm+SQmxnwiVATeHRuiZX6n6oNs7C29JQ7aW0FNYls=; b=2zPx9xrre1OWdf
	3hxrZFmw77mPdNKFSSKKSfmIh+Rkyr25/CPdVGIK+bsdDKV/8wq7dlevYm9JsAuTpHaR0OX8UTbrR
	mO1D0oHuWyYbzUy7M/4SbXGfRiRkmRYmFBeOQW4VFTcn/CWmUBe+74bMVUA8j2ZLIIzt2zAHWiknp
	VxLRDDgvweQewMRx5sH5852tQe3s7+n2PpqpIco0lOG29kNP6W31cQGuFJ4PsNG3nabCq+IiAMs3m
	GSMmsBGh6KrdB/I5bIsD3+reUFT8cydAln08u49M88kkZXfqn0bLcZFPTIxU7eBiKBxwHhhkO8Tby
	0Y4CMpkPeVLYbOx/VU+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ud5C4-0000000E9eS-2tNU;
	Sat, 19 Jul 2025 10:53:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ud59a-0000000E9Ww-1wUq
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Jul 2025 10:50:56 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56J4LEmX027034
	for <linux-rockchip@lists.infradead.org>; Sat, 19 Jul 2025 10:50:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=8bWRC+nyUTbnELtrQkJApxVg
	RlBOEUvNmWuQElnY2wg=; b=hsd8+FBb47O/w+UmniIXkxeCpDvF7pKn7BFkHm0L
	jSVY0uFMYAc9Xe/AAubuo3x0atiOU+pLs8QeEiZGzvEXwsIQW9M5EzcKnIaB4z4o
	1HsAr+yidzY+1GC1JLLzuCnzHHsom3mjKXg0qNbpkJlKUH3m00jcqJC6ZxkB07/h
	rHjwaeWUnyIGfYrpGucBQue26DNN2osr01O7Juwq44hcqphZoqTR5Z38D8PlsMsz
	TPxIA4MmGX/xg8sr40c3K72dOxJ6F53bdUxnp1zv0drjwrIy5guTYqdHp3xxm3NE
	lWvWWkqx6cpbR3r1bdRMD8NXV+dHHvmtjLdJ3mWu+pjjjA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048rrh39-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Sat, 19 Jul 2025 10:50:52 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ab684d3b55so51065631cf.0
        for <linux-rockchip@lists.infradead.org>; Sat, 19 Jul 2025 03:50:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752922252; x=1753527052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8bWRC+nyUTbnELtrQkJApxVgRlBOEUvNmWuQElnY2wg=;
        b=sgJbqSQ454bPQ+WVAcbuYwn7rRAQbsl0wkOKzcvooBf3OoO+PGIQNRQTvktDWDVb8B
         S7aWsDlJJTn9c0vm75X8gnNTNPJNIKazDgnkNFTHZdhbya8URueoFDgl8bS/4Q12jGEL
         /ooa9X20RZ9ZI8qF40/9lYi55gCwkjr+cGBN1jIyTRm6aVGlQfqZ18qLL2ZWWAVGccq4
         tjI/TNI2lTFlwKkb73CogBS9HciNCI+sx3xELRpM5zkZE8VZghEpzyUusJIfZFctRNvh
         UzandmnkSSCG8I1/MRFdKAIIYJzHO0PNO8URC5Fh4VvAZptm+9y/da0GbiwEdI0RuBpa
         FsRg==
X-Forwarded-Encrypted: i=1; AJvYcCUQalP8UHG9rOLJKkaTNoGNZZUcA1Iq0PW43wq2NTkQN53vI5bWytU5EGvTWv9BMRoT+twDz6MhIqKPolI0SA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGHLPfJxI8ST4dsfKaPws/c/snAMPVlW2XODE4+vb694xn5fQX
	1t5Ch48kvOM1OUr5p1m6eCOLT20iFcCt6NmsA0Gm55STy+bxIS4DCnfoqv41Om58R9DqpneZq9F
	JYapefJxXEgiu/dUs/MgDm3lSQmjoumP92SovyTbbFdyuxI4mFnhNFljDn1x3G9PFBn9c/GnB1d
	U=
X-Gm-Gg: ASbGncsHwCZuluqO6AkTbK1lIFDnfYYBF3rrujDAUcUvlXLoTDeqJeksP5AxE6g2V49
	1QRFeAvyrroJp0aKps6ewZJ0NM/Zdnf9v2BUHDoS7i2e//b14z3o6hqI8QWRPaaJ/2q3PdZTqp9
	CbDTkkN8lek5SNLYZxxaszUdnMOx20TX5/DNzPH8FVXO/sqUhevCKqR4s7tmSr7feNEPtHlW34+
	Xr5DNSo34IUObr37tDyUo4W77dXFsbxkIV3scpBcWCtnUXt7NOQcxZGQzAPdBszJ8PwkXAoC4lv
	Dfjfa4x7JVpj9ZmdRYRJq0sUf3CHu1oGgo4NqCNkZggatKqwgmKLatpIH+iCuKHFe91ZyVTX3hQ
	QlcAXspjyTdHdXS6gKumZafz8UqEowmkpHaOua774my6SGZ/b0bTQ
X-Received: by 2002:a05:622a:4898:b0:4ab:622b:fffb with SMTP id d75a77b69052e-4abb078731emr123876271cf.5.1752922251463;
        Sat, 19 Jul 2025 03:50:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELvC0t2DoePnMMUcCjwnNp/NwYyNzJMw/LSjDMY6XQx3gX8ifMzX4kwnCHJthxZrRbYsOq9A==
X-Received: by 2002:a05:622a:4898:b0:4ab:622b:fffb with SMTP id d75a77b69052e-4abb078731emr123875991cf.5.1752922250968;
        Sat, 19 Jul 2025 03:50:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31d9122fsm667474e87.152.2025.07.19.03.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jul 2025 03:50:50 -0700 (PDT)
Date: Sat, 19 Jul 2025 13:50:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: rk3399-evb-ind: Add support
 for DisplayPort
Message-ID: <skvceiwrg77ysx74bmywp6buk6yp6dlllrwpkfea4brposrveh@2rqtawpiaikk>
References: <20250718062619.99-1-kernel@airkyi.com>
 <20250718062619.99-6-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250718062619.99-6-kernel@airkyi.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDEwNyBTYWx0ZWRfXxK/QDsEWetDN
 Rc0iSZ0j4q3Gn6619z6KwDWJh2o8phKfbnrTBlpRtcUp2yX8lxfG3Y0BVpW2iO0xMP15dPw9JgG
 56VruCRYe4z1jO4Dt8euVPmW2mgA52y5/A/kb2DR15px/3k/KzBUx0RYl41UMBcqNa6/TeryvH2
 f9EMzcApFUKV+kJH0fTmQWaOK/wQuVrenpU/lAyWqdYVfK/e8JKGWCY2ynCdkK/A9Z57y4dhq79
 oVaURhEMsx9f2SuTc01OZfYTYhjXuWQphpbSWEzI4cfgVEsl4Shm/n8IHFxO6umrvu6O7utKWGv
 xMp5bMIj3ZzlLpIN3DZOIIYmENvxjKzAPuGNwHrSb0ZNar9mKhxvCxW/dW8PmnZMPCoeu9QfUQF
 6y+VPCU9eDaXKUxKiH+y2zl0kaj924t7XY8PIJmksFR35qsag6xA6oK0YON4I3dH9lofuVBe
X-Proofpoint-ORIG-GUID: FIiPejrUOmgdaFGzFOrYrcJ1sfFPfTO3
X-Proofpoint-GUID: FIiPejrUOmgdaFGzFOrYrcJ1sfFPfTO3
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=687b788c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=ikJCsuYIIW8Wf-eC7T4A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507190107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250719_035054_618286_B03DFC9D 
X-CRM114-Status: GOOD (  24.98  )
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

On Fri, Jul 18, 2025 at 02:26:19PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The RK3399 EVB IND board has a Type-C interface DisplayPort.
> It use fusb302 chip as Type-C controller.
> 
> fusb302 chip ---> USB/DP PHY0 <----> CDN-DP controller
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
> 
> Changes in v2:
> - Add endpoint to link DP PHY and DP controller.
> - Fix devicetree coding style.
> 
>  .../boot/dts/rockchip/rk3399-evb-ind.dts      | 133 ++++++++++++++++++
>  1 file changed, 133 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts
> index 70aee1ab904c..997b822a57ff 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts
> @@ -4,6 +4,7 @@
>   */
>  
>  /dts-v1/;
> +#include <dt-bindings/usb/pd.h>
>  #include "rk3399.dtsi"
>  
>  / {
> @@ -19,6 +20,21 @@ chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
>  
> +	sound: sound {
> +		compatible = "rockchip,rk3399-gru-sound";
> +		rockchip,cpu = <&i2s0 &spdif>;
> +	};
> +
> +	vbus_typec: regulator-vbus-typec {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vcc5v0_typec0_en>;
> +		regulator-name = "vbus_typec";
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
>  	vcc5v0_sys: regulator-vcc5v0-sys {
>  		compatible = "regulator-fixed";
>  		enable-active-high;
> @@ -31,6 +47,11 @@ vcc5v0_sys: regulator-vcc5v0-sys {
>  	};
>  };
>  
> +&cdn_dp {
> +	phys = <&tcphy0_dp>;
> +	status = "okay";
> +};
> +
>  &cpu_b0 {
>  	cpu-supply = <&vdd_cpu_b>;
>  };
> @@ -55,6 +76,12 @@ &cpu_l3 {
>  	cpu-supply = <&vdd_cpu_l>;
>  };
>  
> +&dp_out {
> +	dp_controller_output: endpoint {
> +		remote-endpoint = <&dp_phy_in>;
> +	};
> +};
> +
>  &emmc_phy {
>  	status = "okay";
>  };
> @@ -341,6 +368,63 @@ regulator-state-mem {
>  	};
>  };
>  
> +&i2c4 {
> +	i2c-scl-rising-time-ns = <475>;
> +	i2c-scl-falling-time-ns = <26>;
> +	status = "okay";
> +
> +	usbc0: typec-portc@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usbc0_int>;
> +		vbus-supply = <&vbus_typec>;
> +
> +		usb_con: connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			data-role = "dual";
> +			power-role = "dual";
> +			try-power-role = "sink";
> +			op-sink-microwatt = <1000000>;
> +			sink-pdos =
> +				<PDO_FIXED(5000, 2500, PDO_FIXED_USB_COMM)>;
> +			source-pdos =
> +				<PDO_FIXED(5000, 1500, PDO_FIXED_USB_COMM)>;
> +
> +			altmodes {
> +				displayport {
> +					svid = /bits/ 16 <0xff01>;
> +					vdo = <0xffffffff>;

I don't think that this VDO is correct. Please adjust it according to
the spec.

> +				};
> +			};
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +
> +					usbc0_orien_sw: endpoint {
> +						remote-endpoint = <&tcphy0_orientation_switch>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +
> +					dp_mode_sw: endpoint {
> +						remote-endpoint = <&tcphy_dp_altmode_switch>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +};
> +
>  &i2s2 {
>  	status = "okay";
>  };
> @@ -354,6 +438,16 @@ &io_domains {
>  };
>  
>  &pinctrl {
> +	usb-typec {
> +		usbc0_int: usbc0-int {
> +			rockchip,pins = <1 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		vcc5v0_typec0_en: vcc5v0-typec0-en {
> +			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	pmic {
>  		pmic_int_l: pmic-int-l {
>  			rockchip,pins = <1 RK_PC5 RK_FUNC_GPIO &pcfg_pull_up>;
> @@ -400,10 +494,48 @@ &sdmmc {
>  	status = "okay";
>  };
>  
> +&sound {
> +	rockchip,codec = <&cdn_dp>;
> +	status = "okay";
> +};
> +
> +&spdif {
> +	status = "okay";
> +};
> +
>  &tcphy0 {
>  	status = "okay";
>  };
>  
> +&tcphy0_dp {
> +	mode-switch;

But not an orientation-switch? Shouldn't it also note the SBU pins
orientation? Or DP lanes orientation?

> +
> +	port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		tcphy_dp_altmode_switch: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&dp_mode_sw>;
> +		};
> +
> +		dp_phy_in: endpoint@1 {
> +			reg = <1>;
> +			remote-endpoint = <&dp_controller_output>;
> +		};
> +	};
> +};
> +
> +&tcphy0_usb3 {
> +	orientation-switch;


Hmmm.

> +
> +	port {
> +		tcphy0_orientation_switch: endpoint {
> +			remote-endpoint = <&usbc0_orien_sw>;
> +		};
> +	};
> +};
> +
>  &tcphy1 {
>  	status = "okay";
>  };
> @@ -461,6 +593,7 @@ &usb_host1_ohci {
>  };
>  
>  &usbdrd_dwc3_0 {
> +	usb-role-switch;

This is an SoC-level property.

>  	status = "okay";
>  };
>  
> -- 
> 2.49.0
> 
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
