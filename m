Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3ADD7C83F17
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Jul 2025 13:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYJ5d81ZSactHOhyskEGBDiGl41V88lDMHH4yI/XlMs=; b=QUCsNr/KOAkldZ
	R7aEPyeJyITCeEod2a8d6Q3Hi4Sx8b6G29tS3V9YStskWK40Ixvodi8rYEqmpVIFM/gN7rFxia78X
	Q6fjYJfyGbEo8kAlC4Jc9O/1k8KtoajEj0unl8yMip84M2VXhx/jAQUjFzCMp9zS6LJJkz3qufHdU
	PoLCycGFxtZYFokikAfyXESwsFQEOyn39R8QlBY3j48KL7uFiYRY7h7qWO2QXkCpKE14TfjjTn7gY
	ygBjYyZLoIFR5u61iEeUD3XoRkUL5bs//aTdjFUsTGCebfScO++1vf6fKNiRNLGiVZ3h9XLYCLmUv
	I05jn+YqdGPA3S+8KjmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubfGK-000000058ar-1Lnf;
	Tue, 15 Jul 2025 13:00:00 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubeVp-000000052Gu-1fts
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Jul 2025 12:11:58 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F7aIhe030447
	for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 12:11:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=NIGACv/TQ7bqRyy/PxlnetvI
	UcYh9t4jJhtdvHTuDJE=; b=B5E23Pc1HCFS3LLj6OvBQSBZUOR4c6EY32SQlq3j
	MfFZd2iPNzvNtr5UWDWfDwIkHh2R+GjaWOa7Ht05lGxT26d8ATyYVP5kauOEajiC
	IuNOlHzt0uysHQYxLSKRFpfoaDYuSjL4BAV23GqruAUsQEATDdgOjFRPlyYGAj8e
	en2yTB2i0T0e/nuTG0ZnnX/+kyO4OnrNYLb+TctSXdG6MzWDHYECxI/XCQCnJCup
	81Iw0sVu0DX7pvCSVIp+p5HskR0kLIbS3lNjee7PguS7jZUGG0Rm7DgM5dB8Y/mf
	M5c54JeRLifbZimgU2nsKaM3XsM2j/GOHx4bUXtvqLQEkA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu8824g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 12:11:55 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d44a260e45so956178485a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Jul 2025 05:11:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752581514; x=1753186314;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NIGACv/TQ7bqRyy/PxlnetvIUcYh9t4jJhtdvHTuDJE=;
        b=PK24yfvBRGnJ7am0EXroOqQLNWvG2sYSpsHqPmJGYRsEF7JchjpiTs+yS5mFDee6hL
         rg8L9DCZwI1CyY8P1BjRPCBjrdwJyCYw4hvaARb9hgcU7fbSvaedN7umkN8ZHFECGjrl
         D4qBEmt4V3AAruGikoV3/vDcrcP+WoPsBsCl8FUBpUQr2aXzM7zo+wsYq6v1a5swlmmr
         oZDsmLMTMzGcL5PXHkpWLWFYb7eApOlgavuPDTx2jLRNjITfe2VclfKJDpVOPMpxDUjC
         AtJeawdDg+kAMJiE8kKuFtUgfkjHt52Fv+Ds8C45m6GIaUTYbrVpXrU7Y3DXgwnGfVNf
         jqDg==
X-Forwarded-Encrypted: i=1; AJvYcCW4ToOFq8BjYVLP+pCTszars/yWzQJurTOKG9nXfOVboJj9o+eZ03uPhndIyhrTftujqCjw6k5EOxQ2dlrw2A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx61ZQck9vbN7EL0DV31lwBaCO3wuyhN6ldtyJmz+jcbGbLTaqY
	Oh3PT+jxpfL44W4IGTb/P5u/FUAp33IzutBYkwLDGxNp2e+q/a6C6fBL0bKdgDI8/FJTLYuhDSD
	zs/WAD628VVMApLQ3qoSyOSqeybnoXUAfYX+Pd8rMSWjGWkDIAQOFUZhs90+Otv/ROGkDfJk59u
	I=
X-Gm-Gg: ASbGncuCtpbcEviyC+FOVRxxh1xgjm5clenSNVhswR92+0IAFedx84GtAmMJvr54kFx
	cp1j8vPySK1wL9LNo8xA3Lv3fj/bL8QtZ7lHY3J4xuZQ40mwbvEnRE6+TiZpgU46XRjeDVDgJaM
	ZYjMScHB7PsB2vplpVEXjUzuwSWVsZAXVjEjbzjCa1yWs/6GhM/lPqCilGhkp1KbFjiJl69/j7m
	prloK/oJm2QfGyzOaVdkdsbR8jRpTI/THVaSZDhueIFV3G+byLXVti6LmhcJZQtWimH9hCb/orU
	Fq+4EryJk8v0focLoJIX6lpXk2Y9C6HNfb5TmeNsTJVUYlBO7kvLpzSzXsKYpaSP3HX+Xy+k7ph
	2s6WnH1G1Z4ROdZ/QB621+ms+GybIeo+XRfneXJ0SlV9aXtyBgrek
X-Received: by 2002:a05:620a:4e9a:b0:7d3:a4fa:ee06 with SMTP id af79cd13be357-7e337b853a9mr367283785a.29.1752581514262;
        Tue, 15 Jul 2025 05:11:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEmF+y4l+jOb95aKZxJ7DfbPfnTn84DO87g2W9GzSKv0rFVZnPjZcECn3fW8CZwMFIojixCWQ==
X-Received: by 2002:a05:620a:4e9a:b0:7d3:a4fa:ee06 with SMTP id af79cd13be357-7e337b853a9mr367279885a.29.1752581513627;
        Tue, 15 Jul 2025 05:11:53 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b736d5sm2263762e87.213.2025.07.15.05.11.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 05:11:52 -0700 (PDT)
Date: Tue, 15 Jul 2025 15:11:51 +0300
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
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: rk3399-evb-ind: Add support
 for DisplayPort
Message-ID: <2bfaqx6unfejlqg53jaw47s6qzymdcvyiy6wuqgua43mnitzbt@5wfqp6ucxcsx>
References: <20250715112456.101-1-kernel@airkyi.com>
 <20250715112456.101-6-kernel@airkyi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250715112456.101-6-kernel@airkyi.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDExMSBTYWx0ZWRfX1Ji/sH+xKNZM
 iQ0rUsFGxzFpOr3WhAxXsBEU6Y19XQN86wzSBjcSNIYGWuMS1qn5JcqbxIw9HPEWRsBUgz5vsZg
 k67moUBCjb7vYoz0EZNYVrXqS6T6z+NbI+HgxQJjZswn1Vhwh0ua2fTl26QswLhbTn5/bQ4K+8X
 C7OYXRdQ5zuK5KvS3px7lLu5rO14H3Sftal3KAQds7dXeyr8s1LTGiUuEOLpOVYal4rWnfkYH2N
 Hza8ZKsGD8KoUoV/xr2PmD3V19cN7g1oPOcN0DI3ogkh1oqpeNMwxlkQdIpkaNIHqloe7v1TzGF
 PoWethWyPiKUA17YczevGXQFB7pgTdtDAi7eSfrTAAZKRC6mrwaVlhl7Oz27kqHjG7cDpHQsXwC
 aRfMH9mK3HKTPOt7C/TI79id7mvsLwIa5rAO16waPuboOaVRvJritoDjqLpJn9FLKH1lI18v
X-Proofpoint-ORIG-GUID: -luOMauF2GdZtruRHgYPUS0Xy8maBZ8y
X-Proofpoint-GUID: -luOMauF2GdZtruRHgYPUS0Xy8maBZ8y
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=6876458b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=ikJCsuYIIW8Wf-eC7T4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250715_051157_551882_F583113E 
X-CRM114-Status: GOOD (  21.95  )
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

On Tue, Jul 15, 2025 at 07:24:56PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> The RK3399 EVB IND board has a Type-C interface DisplayPort.
> It use fusb302 chip as Type-C controller.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  .../boot/dts/rockchip/rk3399-evb-ind.dts      | 119 ++++++++++++++++++
>  1 file changed, 119 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts b/arch/arm64/boot/dts/rockchip/rk3399-evb-ind.dts
> index 70aee1ab904c..9ceda32456a0 100644
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
> @@ -19,6 +20,16 @@ chosen {
>  		stdout-path = "serial2:1500000n8";
>  	};
>  
> +	vbus_typec: vbus-typec-regulator {
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
> @@ -29,6 +40,16 @@ vcc5v0_sys: regulator-vcc5v0-sys {
>  		regulator-max-microvolt = <5000000>;
>  		regulator-min-microvolt = <5000000>;
>  	};
> +
> +	sound: sound {
> +		compatible = "rockchip,rk3399-gru-sound";
> +		rockchip,cpu = <&i2s0 &spdif>;
> +	};
> +};
> +
> +&cdn_dp {
> +	status = "okay";
> +	phys = <&tcphy0_dp>;
>  };
>  
>  &cpu_b0 {
> @@ -341,6 +362,66 @@ regulator-state-mem {
>  	};
>  };
>  
> +&i2c4 {
> +	i2c-scl-rising-time-ns = <475>;
> +	i2c-scl-falling-time-ns = <26>;
> +	status = "okay";
> +
> +	usbc0: fusb302@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio1>;
> +		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usbc0_int>;
> +		vbus-supply = <&vbus_typec>;
> +		status = "okay";
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
> +			displayport = <&cdn_dp>;
> +
> +			altmodes {
> +				displayport {
> +					svid = /bits/ 16 <0xff01>;
> +					vdo = <0xffffffff>;
> +				};
> +			};
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {

Which signals are described by these ports? port@0 should be used for
USB HS lines.

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
> @@ -354,6 +435,16 @@ &io_domains {
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
> @@ -400,8 +491,35 @@ &sdmmc {
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
> +	mode-switch;
> +	orientation-switch;
>  	status = "okay";
> +
> +	port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		tcphy0_orientation_switch: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&usbc0_orien_sw>;
> +		};
> +
> +		tcphy_dp_altmode_switch: endpoint@1 {
> +			reg = <1>;
> +			remote-endpoint = <&dp_mode_sw>;
> +		};
> +	};
> +
>  };
>  
>  &tcphy1 {
> @@ -461,6 +579,7 @@ &usb_host1_ohci {
>  };
>  
>  &usbdrd_dwc3_0 {
> +	usb-role-switch;
>  	status = "okay";
>  };
>  
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
