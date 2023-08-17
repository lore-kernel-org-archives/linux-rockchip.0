Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4220C5479A
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Aug 2023 21:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bBle/sfkchDv9+SekONHInT1Jn5YKDrvI9LRY5u6420=; b=3CQwuAXqs+0V+i
	zzbqEl7yW4qYbkXSLeur6QIw91NDQd834tdNaOeB2UjMasD8oRca8RAI7MbcXjmkmi/RbJE10cQM3
	J7NW7Prf3EtDqDlJ3uujidBebjgEbjLd9afDPaarSSk5iR+Khtvp+22zpaRq46Xhh0KO61oEIQKqj
	vnWTqjpslzBq4cmHy8ej2L3MMLqQubA22EnMGJqYzBEUXefQQyTNqAQmfiG8kufymQMWKWO3rtdvU
	N1QE0SY0j+5+YY0X0sAtZnK8MTU+PZQxZ7ayZGxnAXN99PECThB1IfL60k2ECHSn2/1RkO1FNb3xy
	QoFohP3rzUQRmmpzuhrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWkBY-0079ND-2O;
	Thu, 17 Aug 2023 21:05:40 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWkBW-0079MM-0d
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Aug 2023 21:05:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=cyiHqxPewOUpiLCgGfyzAGcRUj6oFW1nQmFKoVsPlwg=;
	b=We1DvlBHISgTXv7m8zEcddU4iaI3+XfhW/TnucIxIffh7qASLlT8cIDlmR6a1o9WqrTD
	4PWhu9Nr49a3liMAglWKJUFKaojc6uYLbMg2EP+bgp/wbwfWOSINr5OpWB8cpVRRDNboLg
	2rAFk6X07A7TAuVnm5ugqUAecQ2cJF6h1PLkWgECQhoeYsPhgfH/dy7M6FRZ6mlJ1XWmrr
	i6f++GVH2FtdbPbuKQK7oXT/SoRzTtsWuzMFHFq3HB299n0EWxqlm9ucxegt2SviUA0P3S
	W2QH0d0uQ9bCSgKAjlQi3cncFgapqcytp6RdkTdIdFZV8j6kLZiYlzzzg4J3MV7A==
Received: by filterdrecv-65f68489c8-qxj4s with SMTP id filterdrecv-65f68489c8-qxj4s-1-64DE8B9E-3
        2023-08-17 21:05:34.1068273 +0000 UTC m=+8544571.152719573
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-4 (SG) with ESMTP
	id wpz1daj1Q02vwM5bH70FAA
	Thu, 17 Aug 2023 21:05:33.924 +0000 (UTC)
Message-ID: <c187cd65-b3fc-1ebb-86f9-cc41fe7512f3@kwiboo.se>
Date: Thu, 17 Aug 2023 21:05:34 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Orange Pi 5
Content-Language: en-US
References: <cover.1692102057.git.efectn@6tel.net>
 <a1eca379d151c3f91f4cd4e1751ba389096c4f13.1692102057.git.efectn@6tel.net>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <a1eca379d151c3f91f4cd4e1751ba389096c4f13.1692102057.git.efectn@6tel.net>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hyCiVY7Rd6FCVJxn9?=
 =?us-ascii?Q?YKn6BxeQGSlAokbdSAyYThKQkTnDSrOvFFgJA3p?=
 =?us-ascii?Q?LQHf163Os1yOJ8tkSFUilxG4VYIFwQsXsBzkKlT?=
 =?us-ascii?Q?H+Wv7y8244=2FMKCyDOlReuRr8F4uFlU+Wbmh32T5?=
 =?us-ascii?Q?majpb3TxS=2FArjQWdmW=2FIIswadE=2Fwxt0r5qWQ0e7?=
 =?us-ascii?Q?VNIr=2FvjGjhmMt8=2FkYSoVw=3D=3D?=
To: Muhammed Efe Cetin <efectn@6tel.net>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
	sebastian.reichel@collabora.com
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_140538_311751_36B7B73F 
X-CRM114-Status: GOOD (  12.40  )
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

On 2023-08-15 14:59, Muhammed Efe Cetin wrote:
> Add initial support for OPi5 that includes support for USB2, PCIe2, Sata,
> Sdmmc, SPI Flash, PMIC.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
> ---
>  .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 873 ++++++++++++++++++
>  1 file changed, 873 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> new file mode 100644
> index 000000000000..85071084a207
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dts
> @@ -0,0 +1,873 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +

[...]

> +
> +&sfc {
> +	pinctrl-0 = <&fspim0_pins>;
> +	pinctrl-names = "default";
> +	max-freq = <100000000>;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	spi_flash: spi-flash@0 {

Node should be named flash@0 to help SPI flash boot with U-Boot.

Regards,
Jonas

> +		compatible = "jedec,spi-nor";
> +		reg = <0x0>;
> +		spi-max-frequency = <100000000>;
> +		spi-tx-bus-width = <1>;
> +		spi-rx-bus-width = <4>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		status = "okay";
> +
> +		partitions {
> +			compatible = "fixed-partitions";
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			loader@0 {
> +				label = "loader";
> +				reg = <0x0 0x1000000>;
> +			};
> +		};
> +	};
> +};
> +

[...]


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
