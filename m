Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 047A9C00140
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Aug 2022 11:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+0nom/TmayhOPXyXvUEX6/E+ggj0Z2nQs0aBTPjlSK8=; b=epOBksWX5poG4h
	bDVPRp29+oC2u0M893cBzz475C9fV82jtVmClOnoDZYgjlx/EO5a6efstjZMULBJ8DRK57nVQK24C
	XWVxF80tRNJk2ntkvxkaclRVmL/KOW4FDpsm6cu9Wmx+wpAhL+Hx5vxq6hAxe+5x2yYg/wq7q2Gjv
	AFsu0MuDVrbG2GZthVuNJv/0cQZltFzRw9JsxE3E0JG5uO1pa1grM4QTR5FPAaPDzVo2vAcP5Opwz
	OtwgBxc5Cp7BJVDl8KQLsXD5ma5QN74dha+S3IYyH8iZ3EMrs46YBb2GRH92qnTjMJTfqgdHIi2V0
	4dGPelBFeTMPDHS1DjbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL0gg-00D9Cf-Rc; Mon, 08 Aug 2022 11:12:46 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL0gV-00D96l-Dl; Mon, 08 Aug 2022 11:12:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1659957146; bh=UWohm+6mP1TOMfTF4FwgB5DFTznGL1J1NvMu49uc/og=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=djVar0/XKcNC3oeWSe7Xci7HnArn7LXTAmr93YEir7jxW7aF6UP9sVux0Nn1Cs9pg
	 EERa7EOmJv2OtWZ8zXSslgTZGg4TO1xnUac/BoQHzf2JtYMYdPbyv4lXvUONrmYzae
	 VZOcAFDsf5/ZfXFbzDyfS8dhiFDgINhcdV87inLo=
Date: Mon, 8 Aug 2022 13:12:25 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
	martijn@brixit.nl, ayufan@ayufan.eu, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Message-ID: <20220808111225.pslgct22eltiakiv@core>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
	martijn@brixit.nl, ayufan@ayufan.eu, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20220805234411.303055-1-tom@tom-fitzhenry.me.uk>
 <20220805234411.303055-4-tom@tom-fitzhenry.me.uk>
 <6461a695-171a-b160-5406-b8ac31c5ba0e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6461a695-171a-b160-5406-b8ac31c5ba0e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_041235_661550_E2606817 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
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

Hello,

On Mon, Aug 08, 2022 at 09:35:55AM +0300, Krzysztof Kozlowski wrote:
> On 06/08/2022 01:44, Tom Fitzhenry wrote:
> 
> [...]
>
> > +
> > +	/* Power tree */
> > +	/* Root power source */
> > +	vcc_sysin: vcc-sysin {
> 
> regulator-vcc-sysin

Interestingly, most DTS files in rockchip/ use a -regulator
suffix and none use regulator- prefix. And this is inconsistent
across the larger DTS tree, because outside of rockchip/ most
DTS use a prefix.

Checked by grep -R 'regulator.*{' | grep -v state-me

regards,
	o.

> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation
> 
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc_sysin";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +	};
> > +
> > +	/* Main 3.3v supply */
> > +	vcc3v3_sys: wifi_bat: vcc3v3-sys {
> 
> regulator-.....
> 
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcc3v3_sys";
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +		vin-supply = <&vcc_sysin>;
> > +	};
> > +
> > +	vcca1v8_s3: vcc1v8-s3 {
> 
> regulator-.....
> 
> > +		compatible = "regulator-fixed";
> > +		regulator-name = "vcca1v8_s3";
> > +		regulator-min-microvolt = <1800000>;
> > +		regulator-max-microvolt = <1800000>;
> > +		vin-supply = <&vcc3v3_sys>;
> > +		regulator-always-on;
> > +		regulator-boot-on;
> > +	};
> > +};
> > +
> Best regards,
> Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
