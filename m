Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A0FDC47077
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jan 2024 15:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MmIkV1mmpb/a59HjB2Nb8M71xXnlFvZHRA+oH4J2T/Q=; b=Bj3n8S5MVizT/1
	90bYRi9I4iVxeotLSTuMJwtq1ehKYky90OE5fl3csBkxTP+rq7CUbD7FrlwL6Gd4/mdHT+THjksaC
	hpWa9EX3H3UtxDYrDm5awfvu8IsR3TETEPs9TrGmbj+Bj6txNZvS6OymwCRvhkd/SWlCqqfqyvY7/
	nwixtcBdF8Lny3h2fB3oUluRVu+IP3L1LaT94NcF/mAoAAps+MzyqIaxbwWjgeL1tBvGhvqbAAGiJ
	/P4cBwDJ4pdkUUk8o2r0U9bQtBROFLVZM05km7lDLTDzL/UceHvPjnC4zCs9aVFy2geVVJMv3uynI
	xUdn8Lzw75OXkC7Z1rmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rP28n-006sMt-2v;
	Sun, 14 Jan 2024 15:11:13 +0000
Received: from pv50p00im-hyfv10011601.me.com ([17.58.6.43])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rP28h-006sLt-2J
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jan 2024 15:11:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kyuhyuk.kr; s=sig1;
	t=1705245063; bh=qvAtBKFzunlr+pj2jJnMPpjsQvkroxkCD0slVQnw7hI=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type;
	b=a9hHG5F2QyjCjX4X124oYHXNftAb2AaXES9xpJxX0i5XSFDZE+yPa77+f6Dqn1zTr
	 qma0QhkluKMY87/nTuhSWR99ef/T1wQP7fKp7tKY4j9EXRoGnSTvx0A7nb88Duyb2A
	 t427PZq64fDAOmSS/EmN436GdHsWRSaVB2gXxV5CAoJRGEea6S/aVXdpswlyAyycLd
	 jLdOztn3JHwJigH8fAcuE+L2sxi2QS6nIQ4vG1NiKirudUKCvmY2jiDiTFCOwS57uD
	 kbmQfStSRWvKoKt/g2kx+8nvE1S2tdbmeBy4Jkih8lkJHvzTa64OwJER4Rutfmzaka
	 lxNQD5csTV3qA==
Received: from kyuhyuk.kr (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-hyfv10011601.me.com (Postfix) with ESMTPSA id 106E4C80146;
	Sun, 14 Jan 2024 15:10:57 +0000 (UTC)
Date: Mon, 15 Jan 2024 00:10:45 +0900
From: KyuHyuk Lee <lee@kyuhyuk.kr>
To: Tim Lunn <tim@feathertop.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Tianling Shen <cnsztl@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>, Ondrej Jirman <megi@xff.cz>,
	Andy Yan <andyshrk@163.com>, Jagan Teki <jagan@edgeble.ai>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Hardkernel ODROID-M1S board
Message-ID: <ZaP5de5wchr/b9WM@kyuhyuk.kr>
References: <20240112135004.28907-1-lee@kyuhyuk.kr>
 <5774eb3f-dfdc-4e4d-985e-3ec4b69ad206@feathertop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5774eb3f-dfdc-4e4d-985e-3ec4b69ad206@feathertop.org>
X-Proofpoint-GUID: X9K8esLsFtU9kyWzM7X5UUUF9oIpxu5u
X-Proofpoint-ORIG-GUID: X9K8esLsFtU9kyWzM7X5UUUF9oIpxu5u
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-01-14_08,2024-01-12_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 spamscore=0 mlxlogscore=999
 phishscore=0 mlxscore=0 malwarescore=0 suspectscore=0 clxscore=1030
 bulkscore=0 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2401140118
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240114_071108_634184_8D23E70F 
X-CRM114-Status: GOOD (  25.28  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Jan 14, 2024 at 11:01:32PM +1100, Tim Lunn wrote:
> Hi Lee,
> =

> On 1/13/24 00:50, KyuHyuk Lee wrote:
> > This patch is to add a device tree for new board Hardkernel ODROID-M1S
> > based on Rockchip RK3566, includes basic peripherals uart/eMMC/uSD/i2c
> > =

> > Signed-off-by: KyuHyuk Lee <lee@kyuhyuk.kr>
> > ---
> >   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >   .../boot/dts/rockchip/rk3566-odroid-m1s.dts   | 388 ++++++++++++++++++
> >   2 files changed, 389 insertions(+)
> >   create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts
> > =

> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dt=
s/rockchip/Makefile
> > index a7b30e11beaf..0cc7360a6120 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -76,6 +76,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-anbernic-rg35=
3ps.dtb
> >   dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-anbernic-rg353v.dtb
> >   dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-anbernic-rg353vs.dtb
> >   dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-anbernic-rg503.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-odroid-m1s.dtb
> >   dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-pinenote-v1.1.dtb
> >   dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-pinenote-v1.2.dtb
> >   dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3566-powkiddy-rgb30.dtb
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts b/arch/=
arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts
> > new file mode 100644
> > index 000000000000..c6c4f573535f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-odroid-m1s.dts
> > @@ -0,0 +1,388 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * Copyright (c) 2024 KyuHyuk Lee <lee@kyuhyuk.kr>
> > + *
> > + */
> > +
> > +/dts-v1/;
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include <dt-bindings/leds/common.h>
> > +#include <dt-bindings/pinctrl/rockchip.h>
> > +#include "rk3566.dtsi"
> > +
> > +/ {
> > +	model =3D "Hardkernel ODROID-M1S";
> > +	compatible =3D "rockchip,rk3566-odroid-m1s", "rockchip,rk3566";
> > +
> > +	aliases {
> > +		i2c0 =3D &i2c3;
> > +		i2c3 =3D &i2c0;
> > +		spi0 =3D &spi1;
> > +		spi1 =3D &spi0;
> > +		mmc0 =3D &sdmmc0;
> > +		mmc1 =3D &sdhci;
> > +		serial0 =3D &uart6;
> > +		serial1 =3D &uart0;
> > +		serial6 =3D &uart1;
> > +	};
> I suppose these mismatched aliases are here to keep compatibility with the
> Odroid M1? However thats going to be super confusing to anyone following =
the
> actual Odroid M1S connector pinout (even the pin card that came with my
> Odroid M1S doesnt show these mappings, but the actual real ports)?
> > +
> > +	chosen {
> > +		stdout-path =3D "serial2:1500000n8";
> > +	};
> > +
> > +	leds {
> > +		compatible =3D "gpio-leds";
> > +
> > +		led_power: led-0 {
> > +			gpios =3D <&gpio0 RK_PC6 GPIO_ACTIVE_HIGH>;
> > +			function =3D LED_FUNCTION_POWER;
> > +			color =3D <LED_COLOR_ID_RED>;
> > +			linux,default-trigger =3D "default-on";
> > +			pinctrl-names =3D "default";
> > +			pinctrl-0 =3D <&led_power_pin>;
> > +		};
> > +		led_work: led-1 {
> > +			gpios =3D <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
> > +			function =3D LED_FUNCTION_HEARTBEAT;
> > +			color =3D <LED_COLOR_ID_BLUE>;
> > +			linux,default-trigger =3D "heartbeat";
> > +			pinctrl-names =3D "default";
> > +			pinctrl-0 =3D <&led_work_pin>;
> > +		};
> > +	};
> > +
> > +	vcc_sys: vcc-sys-regulator {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "vcc_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt =3D <5000000>;
> > +		regulator-max-microvolt =3D <5000000>;
> > +	};
> > +
> > +	vcc3v3_sys: vcc3v3-sys-regulator {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "vcc3v3_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt =3D <3300000>;
> > +		regulator-max-microvolt =3D <3300000>;
> > +		vin-supply =3D <&vcc5v0_sys>;
> > +	};
> > +
> > +	vcc5v0_sys: vcc5v0-sys-regulator {
> > +		compatible =3D "regulator-fixed";
> > +		regulator-name =3D "vcc5v0_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt =3D <5000000>;
> > +		regulator-max-microvolt =3D <5000000>;
> > +		vin-supply =3D <&vcc_sys>;
> > +	};
> > +};
> > +
> > +&cpu0 {
> > +	cpu-supply =3D <&vdd_cpu>;
> > +};
> > +
> > +&cpu1 {
> > +	cpu-supply =3D <&vdd_cpu>;
> > +};
> > +
> > +&cpu2 {
> > +	cpu-supply =3D <&vdd_cpu>;
> > +};
> > +
> > +&cpu3 {
> > +	cpu-supply =3D <&vdd_cpu>;
> > +};
> > +
> > +&i2c0 {
> > +	status =3D "okay";
> > +
> > +	vdd_cpu: regulator@1c {
> > +		compatible =3D "tcs,tcs452x";
> This compatible seems to be from the Rockchip kernel, for mainline it sho=
uld
> be=A0 "tcs,tcs4525"?
> > +		reg =3D <0x1c>;
> > +		fcs,suspend-voltage-selector =3D <1>;
> > +		regulator-name =3D "vdd_cpu";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt =3D <712500>;
> > +		regulator-max-microvolt =3D <1390000>;
> > +		regulator-init-microvolt =3D <900000>;
> > +		regulator-ramp-delay =3D <2300>;
> > +		vin-supply =3D <&vcc5v0_sys>;
> I had checked schematics for this and they seem to show that this is
> vin-supply =3D <&vcc3v3_sys>?
> > +
> > +		regulator-state-mem {
> > +			regulator-off-in-suspend;
> > +		};
> > +	};
> > +
> > +	rk809: pmic@20 {
> > +		compatible =3D "rockchip,rk809";
> > +		reg =3D <0x20>;
> > +		interrupt-parent =3D <&gpio0>;
> > +		interrupts =3D <3 IRQ_TYPE_LEVEL_LOW>;
> > +		#clock-cells =3D <1>;
> > +		pinctrl-names =3D "default";
> > +		pinctrl-0 =3D <&pmic_int_l>;
> > +		rockchip,system-power-controller;
> > +		vcc1-supply =3D <&vcc3v3_sys>;
> > +		vcc2-supply =3D <&vcc3v3_sys>;
> > +		vcc3-supply =3D <&vcc3v3_sys>;
> > +		vcc4-supply =3D <&vcc3v3_sys>;
> > +		vcc5-supply =3D <&vcc3v3_sys>;
> > +		vcc6-supply =3D <&vcc3v3_sys>;
> > +		vcc7-supply =3D <&vcc3v3_sys>;
> > +		vcc8-supply =3D <&vcc3v3_sys>;
> > +		vcc9-supply =3D <&vcc3v3_sys>;
> > +		wakeup-source;
> > +
> > +		regulators {
> > +			vdd_logic: DCDC_REG1 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <500000>;
> > +				regulator-max-microvolt =3D <1350000>;
> > +				regulator-init-microvolt =3D <900000>;
> > +				regulator-ramp-delay =3D <6001>;
> > +				regulator-initial-mode =3D <0x2>;
> > +				regulator-name =3D "vdd_logic";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vdd_gpu: DCDC_REG2 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <500000>;
> > +				regulator-max-microvolt =3D <1350000>;
> > +				regulator-init-microvolt =3D <900000>;
> > +				regulator-ramp-delay =3D <6001>;
> > +				regulator-initial-mode =3D <0x2>;
> > +				regulator-name =3D "vdd_gpu";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc_ddr: DCDC_REG3 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-initial-mode =3D <0x2>;
> > +				regulator-name =3D "vcc_ddr";
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +				};
> > +			};
> > +
> > +			vdd_npu: DCDC_REG4 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <500000>;
> > +				regulator-max-microvolt =3D <1350000>;
> > +				regulator-init-microvolt =3D <900000>;
> > +				regulator-ramp-delay =3D <6001>;
> > +				regulator-initial-mode =3D <0x2>;
> > +				regulator-name =3D "vdd_npu";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vdda0v9_image: LDO_REG1 {
> > +				regulator-boot-on;
> > +				regulator-always-on;
> > +				regulator-min-microvolt =3D <900000>;
> > +				regulator-max-microvolt =3D <900000>;
> > +				regulator-name =3D "vdda0v9_image";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vdda_0v9: LDO_REG2 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <900000>;
> > +				regulator-max-microvolt =3D <900000>;
> > +				regulator-name =3D "vdda_0v9";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vdda0v9_pmu: LDO_REG3 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <900000>;
> > +				regulator-max-microvolt =3D <900000>;
> > +				regulator-name =3D "vdda0v9_pmu";
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt =3D <900000>;
> > +				};
> > +			};
> > +
> > +			vccio_acodec: LDO_REG4 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <3000000>;
> > +				regulator-max-microvolt =3D <3000000>;
> > +				regulator-name =3D "vccio_acodec";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vccio_sd: LDO_REG5 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <1800000>;
> > +				regulator-max-microvolt =3D <3300000>;
> > +				regulator-name =3D "vccio_sd";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc3v3_pmu: LDO_REG6 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <3300000>;
> > +				regulator-max-microvolt =3D <3300000>;
> > +				regulator-name =3D "vcc3v3_pmu";
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt =3D <3300000>;
> > +				};
> > +			};
> > +
> > +			vcca_1v8: LDO_REG7 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <1800000>;
> > +				regulator-max-microvolt =3D <1800000>;
> > +				regulator-name =3D "vcca_1v8";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcca1v8_ddr: LDO_REG8 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <1800000>;
> > +				regulator-max-microvolt =3D <1800000>;
> > +				regulator-name =3D "vcca1v8_pmu";
> > +				regulator-state-mem {
> > +					regulator-on-in-suspend;
> > +					regulator-suspend-microvolt =3D <1800000>;
> > +				};
> > +			};
> > +
> > +			vcca1v8_image: LDO_REG9 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <1800000>;
> > +				regulator-max-microvolt =3D <1800000>;
> > +				regulator-name =3D "vcca1v8_image";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc_1v8: DCDC_REG5 {
> Maybe its just me, but seems odd that DCDC_REG5 is out of order with the
> other DCDC regulators above.
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-min-microvolt =3D <1800000>;
> > +				regulator-max-microvolt =3D <1800000>;
> > +				regulator-name =3D "vcc_1v8";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc_3v3: SWITCH_REG1 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-name =3D "vcc_3v3";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +
> > +			vcc3v3_sd: SWITCH_REG2 {
> > +				regulator-always-on;
> > +				regulator-boot-on;
> > +				regulator-name =3D "vcc3v3_sd";
> > +				regulator-state-mem {
> > +					regulator-off-in-suspend;
> > +				};
> > +			};
> > +		};
> > +	};
> > +};
> > +
> > +&pinctrl {
> > +	leds {
> > +		led_power_pin: led-power-pin {
> > +			rockchip,pins =3D <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		};
> > +		led_work_pin: led-work-pin {
> > +			rockchip,pins =3D <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		};
> > +	};
> > +
> > +	pmic {
> > +		pmic_int_l: pmic-int-l {
> > +			rockchip,pins =3D
> > +				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> > +		};
> > +	};
> > +};
> > +
> > +&pmu_io_domains {
> > +	pmuio2-supply =3D <&vcc3v3_pmu>;
> > +	vccio1-supply =3D <&vccio_acodec>;
> > +	vccio3-supply =3D <&vccio_sd>;
> > +	vccio4-supply =3D <&vcc_3v3>;
> > +	vccio5-supply =3D <&vcc_3v3>;
> > +	vccio6-supply =3D <&vcc_3v3>;
> > +	vccio7-supply =3D <&vcc_3v3>;
> > +	status =3D "okay";
> > +};
> Did you miss pmuio1 and vccio2 here? the latter of which is the eMMC doma=
in.
> =

> Are you planning to add additional patches for usb, gmac etc? I had been
> working through cleaning up these device tree files with a view to
> submitting them soon also.
> =

> Regards
> =A0=A0 Tim

Hello Tim. Thank you for your reviewing.

I'll check you said above.

Yes, I am planning additional patches like usb, gmac as you said.
May I understand that you cleaned up my patch?
I look forward to your reply.

Thank you,
KyuHyuk Lee.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
