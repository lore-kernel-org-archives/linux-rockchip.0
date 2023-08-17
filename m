Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6056EC5479A
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Aug 2023 21:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:From:References:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yk7PqzCl4QYOeUPtYdBjAyJqgCUE8ycFTp8wqTlmnsE=; b=2iTOFoq8g4+rto
	iq266y69N2LcFeApeprH9Pm4+PfGddOQOr11f1Qn1sDAm76e8dHdvIEzKDNe7OtgcwhqI0wjyps9t
	7g+YiGAjlfMrBuneKVUcEC+T9Wpo9igtk+l5UFoWMcnxFJNSFrKYIlHA30SiX7WMusgYDgXApg6HB
	FD3cNdSG4tMDals/bpxREAVjc/AUzWgta4pQY3TOPZlQs+m2f9526L9LrdF79dexmh7P6eIVyTaxn
	O/k1K1ekOVseSuoRQMEKBDfZu+QwW/kNlZ5YpbfLNG8V51XiFIXFatPyqLEUA8tNa95RDglGikNHc
	z3nwyxfiN0wPE5Dm0ojQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWkAM-0079F7-39;
	Thu, 17 Aug 2023 21:04:26 +0000
Received: from s.wrqvtbkv.outbound-mail.sendgrid.net ([149.72.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWkAJ-0079E5-2k
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Aug 2023 21:04:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=mime-version:subject:references:from:in-reply-to:to:cc:content-type:
	content-transfer-encoding:cc:content-type:from:subject:to;
	s=s1; bh=TcEEszJfjlCHwKsFpwnWm1d65Qo4xi+W36wwjFhVKOo=;
	b=oDOPIB5D/fL5/fWe3ME9vleCXenp1V7YZDIoGspzOJ2/iWYvxSyEHpVuBoSxTspVvOtu
	1RBmvL0ThLdbBHQY88xK0TZ9SCHWBOyhP6hdJHAhF+IpKf0dWyRoB8ViAo1r/UR0m8KETi
	VfA08g9KcWsgpL4tJL9L6XNoexsB6rKC9fGAmvjeRfPt9deZPM+hHGa8oGm+GamRXjcygT
	xlrfwU/0WJ7hgl5x1A6r2hG8u0q/Po5xtDEjqSTjEIh5T5Wwxr5sERRn3foE8M1c1nldab
	87M0Qi5nG4S00FsMs/VJW8o7Zn6Wu6HC94rhyQPvHTabj5QPAgoZov8TzyZFapIA==
Received: by filterdrecv-66949dbc98-r7x9c with SMTP id filterdrecv-66949dbc98-r7x9c-1-64DE8B54-15
        2023-08-17 21:04:20.267440901 +0000 UTC m=+8544276.233978210
Received: from [192.168.1.50] (unknown)
	by geopod-ismtpd-5 (SG) with ESMTP
	id 4A2qnn0eRB6lO0Onw9U5kw
	Thu, 17 Aug 2023 21:04:19.902 +0000 (UTC)
Message-ID: <86c92a80-38ac-bd5d-2f31-fd003f13d2ed@kwiboo.se>
Date: Thu, 17 Aug 2023 21:04:20 +0000 (UTC)
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add sfc node to rk3588s
Content-Language: en-US
References: <cover.1692102057.git.efectn@6tel.net>
 <b96e8d517d431d13eedd9c9606523076d72033bf.1692102057.git.efectn@6tel.net>
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <b96e8d517d431d13eedd9c9606523076d72033bf.1692102057.git.efectn@6tel.net>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h7He8qHGjMdPut1pE?=
 =?us-ascii?Q?dkn9+=2F2DGDvT=2FkkNZp68DzJlYASbgkv9+xcggGU?=
 =?us-ascii?Q?r3Cd2hy7EWNayQYq5V0=2F3cCs2E5vkKxCNVGyen5?=
 =?us-ascii?Q?Ue1jMIO5OW9qeOBCEfDXKcAM4mNHDXmlu4uscuK?=
 =?us-ascii?Q?RCRI=2F=2FoxxWlpWkSU8t8Cl4tNulX1Tj7zhfIUQVu?=
 =?us-ascii?Q?NbGbvEojQCLOL7Bfwfjnw=3D=3D?=
To: Muhammed Efe Cetin <efectn@6tel.net>, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
	sebastian.reichel@collabora.com
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_140423_973628_DB6A05A0 
X-CRM114-Status: GOOD (  11.56  )
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
> Add sfc node to rk3588s.dtsi from downstream kernel.
> 
> Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 5544f66c6ff4..a38a0158fce0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -1424,6 +1424,19 @@ sata-port@0 {
>  		};
>  	};
>  
> +	sfc: spi@fe2b0000 {
> +		compatible = "rockchip,sfc";
> +		reg = <0x0 0xfe2b0000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH>;

gic use 4 interrupt-cells, should be:

  interrupts = <GIC_SPI 206 IRQ_TYPE_LEVEL_HIGH 0>;

> +		clocks = <&cru SCLK_SFC>, <&cru HCLK_SFC>;
> +		clock-names = "clk_sfc", "hclk_sfc";
> +		assigned-clocks = <&cru SCLK_SFC>;
> +		assigned-clock-rates = <100000000>;

You should not need to assign clock rate here, do it in your board dts
if you really must.

Regards,
Jonas

> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		status = "disabled";
> +	};
> +
>  	sdmmc: mmc@fe2c0000 {
>  		compatible = "rockchip,rk3588-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xfe2c0000 0x0 0x4000>;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
