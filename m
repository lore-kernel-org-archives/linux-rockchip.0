Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D256CD41C04
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 12:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wxo9i1oa6zf9SZZL+9bgFQXdSMsTlVSoinbUlMHbqSs=; b=KKIIDgWIQEbYdk
	9bjZ8WwBv9WMHZUDTyYb4vIkvRUZQU5E3Qpdx0oY9o53sp7q0RfQG9VHdWx2j9hX+H8u3XmihjMiX
	TXT6636Y5x933OBmPzZy+72pvUTwcZCsMa+hP83Lvj2aDynLpP3W9boGJrYQ9fYKJGXyRfKEFCRKv
	R7wn3BVNEv7svTXL+nafwrNL29Jhqb3L0JJWtRgp2BlTBFtgdEGBL+Y6//zipA+OpK+i92pF625Ls
	+hPxjZ/So3ANe+8TC/GEQOJj5DXrQsKrdv/HEMZeI+k1AuAf0Hyrwe6LCh1ZXFJneenhin8Je6TwA
	O5EF6nxRewMAuwitKelA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBCVf-00000006lsL-01uP;
	Wed, 13 Nov 2024 12:30:11 +0000
Received: from smtpbgbr2.qq.com ([54.207.22.56])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBCQo-00000006l0K-1pj3
	for linux-rockchip@lists.infradead.org;
	Wed, 13 Nov 2024 12:25:13 +0000
X-QQ-mid: bizesmtpip4t1731500523tjk1ooz
X-QQ-Originating-IP: XWngibuMDvg8U1yUdhLwje9nLR1oZ7nJY4Hsfh0Wj10=
Received: from [IPV6:240f:10b:7440:1:290:9858: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 13 Nov 2024 20:21:58 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18288062523072362147
Message-ID: <0898AF7003499F15+cae4d484-39ee-489b-a697-2da021458b92@radxa.com>
Date: Wed, 13 Nov 2024 21:21:57 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] arm64: dts: rockchip: fix eeprom for Radxa ROCK 5A
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org,
 jbx6244@gmail.com, krzk+dt@kernel.org, dsimic@manjaro.org
References: <20241113081258.2745-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241113081258.2745-1-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OCYbvBDBNb9rA/xylsjiMSKMmsiDPS1AporEtPO2/r8KF4ri4Yll3mFr
	HgI85cBgdMgseUpLrFKuUTmrE4f17TEP3i4ZEv40p8srdBQkwqrLSsRtXNrvjxSSx8mj6R4
	COJbURZ/YReg6buujEtfgiRxE4l612tIDv17Sadft9zG4tq2+W7haBsqqZAq7Nx7286WBB1
	1R4BWmazb403c5XsDGHdgzyIPK6W5f6zGwPEzj2EqLGdQUaO+Q2mGeKAYVRlEoHrRrKV3IV
	BkZNCxyJ2sd7qBtHtLb2QSTR4Oy8z2JXQrPhS3G4tAbdOWMU62sZJaxE2Aa8+S+vUF1+a5/
	YgnfKN0IC+7VCVzB5FXGX+0Un5nHSaKmpBuCyoql1rHJLi0ZX++++6mwHI9IM9A2wfASVkL
	Q/X7XuaPrWS0LAtEwybCTE3xd0iLisPTOALzRw0xAO8v+U3ZpJARXzsAEjH8RusgCRAYa34
	Q5K/4wkFSK81m5l8asxpey3nSmya2WQqFEwOWc/u8z7hbF+z9jzEXiNpD8NDmdaSLVXSGVe
	Op5/4RyyAAkj2MiAPDL6SwNM/xhEX5Qffkjgy+ZqEV5+voaiE3jUb7q/oFRuk5NoUfZicZ0
	WU1KACzM/FYYoin8NIkzSOCRoENhWXlvljnKhs+VgB2lqYX3fEiTh2jLpnxHb/ONgqQ0U4A
	94imfpWElEdR6QBeaXhjJA66nMs7j2FdgOo6Pz3Q3yyuYDE1TgdLdStmXEAr+4gd24A9knW
	D8IKoILutmes0kTHvS3IjjGFkHlpcJJLytdq0fTnaWKD0ESJmH3aFQpcuffU5Iiw1yr7450
	cYF8/VuTi5h55FdfoRTivCEaOs/FZPYTib2cMzxmJP+pQcE6nRD5i7bfcS1lppakv/SwA7s
	VB0588vvLqN/Je6EkPqIbSnSYBDz0qCv6L/ueAxDat639XxkMCyjvfu51n3xUncUMjJERGC
	GxuiXiQiHXIN4aw==
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_042511_344498_552023F0 
X-CRM114-Status: GOOD (  14.31  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

please ignore this patchset for Radxa ROCK 5A.

ROCK 5C is slightly updated version of ROCK 5A, and they are 99% 
identical from the perspective of device tree.

(if you want, you can use rk3588s-rock-5c.dts(dtb) for ROCK 5A)

I'll update ROCK 5C patchset to make commin .dtsi, then convert both 
ROCK 5A and 5C dts to use common (and up-to-date) .dtsi.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/13/24 17:12, FUKAUMI Naoki wrote:
> - move eeprom from i2c2 to i2c0 to match with schematic[1]
> - add vcc_3v3_pmu regulator and use it as vcc-supply for eeprom
> 
> [1] https://dl.radxa.com/rock5/5a/docs/hw/radxa_rock5a_V1.1_sch.pdf
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 23 ++++++++++++++-----
>   1 file changed, 17 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 70a43432bdc5..56c818c45dc0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -113,6 +113,16 @@ vcc5v0_sys: regulator-vcc5v0-sys {
>   		vin-supply = <&vcc12v_dcin>;
>   	};
>   
> +	vcc_3v3_pmu: regulator-vcc-3v3-pmu {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc_3v3_pmu";
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_3v3_s3>;
> +	};
> +
>   	vcc_5v0: regulator-vcc-5v0 {
>   		compatible = "regulator-fixed";
>   		regulator-name = "vcc_5v0";
> @@ -221,6 +231,13 @@ regulator-state-mem {
>   			regulator-off-in-suspend;
>   		};
>   	};
> +
> +	eeprom: eeprom@50 {
> +		compatible = "belling,bl24c16a", "atmel,24c16";
> +		reg = <0x50>;
> +		pagesize = <16>;
> +		vcc-supply = <&vcc_3v3_pmu>;
> +	};
>   };
>   
>   &i2c2 {
> @@ -242,12 +259,6 @@ regulator-state-mem {
>   			regulator-off-in-suspend;
>   		};
>   	};
> -
> -	eeprom: eeprom@50 {
> -		compatible = "belling,bl24c16a", "atmel,24c16";
> -		reg = <0x50>;
> -		pagesize = <16>;
> -	};
>   };
>   
>   &i2c3 {



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
