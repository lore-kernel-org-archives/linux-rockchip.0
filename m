Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8DECC46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 15:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lm12zS6Eati/B+66PnHRfDOXNWLCT39mYVxHcITxPw0=; b=Flkfw5FEYJRYtB
	q9YNln3w+QZZRrIX5crXrLDZfYhl9Ws8Bhp0abL77XXZeA6feDy+iZiQf8NrVpfDda+YphCwZYcoi
	17L+Isv1oSqnmefXt9z/TWRvCgWSGt8qqx6NfInphdbV05hmPI7DpFjok5F+6DMwJv8C05trZS0nm
	zQtlTtsBmX3bDyxZ/x9GCD23KCqcuxO2Qpv6gQ3/yMNfYr4KPIalRfUJShX3apV9aUmzolcA0W6uW
	7H8C+hKCsDrxjFXwdV3dIMAPX4KBEvx3uhpi+7W/KX7tvsXLf1zxElTknoBwFRBiZM+d2Eb4SufHo
	TvgJB3p6yfM3bfP8begg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHRC9-00B43K-6l; Mon, 16 Jan 2023 15:14:45 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHRC5-00B42F-MQ; Mon, 16 Jan 2023 15:14:43 +0000
Received: by mail-wm1-x330.google.com with SMTP id j34-20020a05600c1c2200b003da1b054057so8114026wms.5;
        Mon, 16 Jan 2023 07:14:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uZq7KZ5es/oVm07Mu/lqqsKw8XYpJdtTEoce2xEIrxo=;
        b=dIOeuulv+g0l0G+UNWjumOycCO6uwEpnPCGFt9OIFg2WEPVrIugyGOWgbYjZ1yoW/o
         DzYFob7z/jZaNY/JyJ0dVeaMjbwDGfEq+bqPEV72fc+Uxge9MaqFbTD8DfVdVIXs3Vrd
         BsggeADbJgJj4n9p4xwfwk40fsyWqvapc4Vs5EQp9jEYzeqsaxWlflUYXiFdz4LrCNf+
         vsFIO/5tDtPZbDUZituTFFk0JBeW4H2yYFHGJGcU1IjelcAivPMOcLQVk5Tolw9WGDPJ
         A33wsMM+ekC6wnIjz9miDjBKuRucGfkJnxNClGDZ4XIDc59vAbzf7YcJRCgzkv5Jk3nm
         XllA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uZq7KZ5es/oVm07Mu/lqqsKw8XYpJdtTEoce2xEIrxo=;
        b=eY30XnruwJE5cDBu5nGQDOlFw4lw8oeQGhHPpVzUXXrtgKUzaHjTMKtUt91Akxo69U
         AK6iL1Au8szVYe6QsftS1KROwKuCeexsejO7vNOU8S3Phskjtdwg0bHb3ab0F3nkYBCL
         zlN1/Y5rGpazhKcW4BqnePm3kUDyvei0tLfw1QmSTp5PoE1wbxodmqVi/SGAVUqkFwfg
         2RnooW5mHSddk/fm8JNnT6nQrnecW8EH0/GVcqKGmkJqDbYXG/H7JTbEAPlp2zhtcQ9p
         bMQKmYRiFmISz9FHxGqGK1S1TkZMW8dj2JyFrf5RiDXgJL53NnSaIs3R3rUiu9rOUjWP
         lxww==
X-Gm-Message-State: AFqh2kq/BH7rP2QZ/yHIi+sy8UvqEs1iUI1eYU64tP8/XKDIc8KxwArR
	pQoq3WwWT4nI8oRuc2Bn1Hw=
X-Google-Smtp-Source: AMrXdXtupPOYy5yRRdXlMsUe8LgeR85RjB2tixi2DxqOhg5gOTkUx2jmGFM1uPIUJDNQB68i8wJC4A==
X-Received: by 2002:a05:600c:35d4:b0:3d2:2d2a:d581 with SMTP id r20-20020a05600c35d400b003d22d2ad581mr66489602wmq.30.1673882077019;
        Mon, 16 Jan 2023 07:14:37 -0800 (PST)
Received: from archbox.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id k9-20020a05600c1c8900b003dafbd859a6sm3857272wms.43.2023.01.16.07.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 07:14:36 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject:  Re: [PATCH] arm64: dts: rockchip: fix probe of analog sound card on rock-3a
Date: Mon, 16 Jan 2023 16:14:35 +0100
Message-ID: <4802111.31r3eYUQgx@archbox>
In-Reply-To: <7caeb07b-8465-6bdd-d90d-06a905b56f37@wolfvision.net>
References:  <20230115211553.445007-1-jonas@kwiboo.se>
 <7caeb07b-8465-6bdd-d90d-06a905b56f37@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_071441_780772_892EF560 
X-CRM114-Status: GOOD (  26.59  )
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

On Monday, 16 January 2023 09:41:50 CET Michael Riesch wrote:
> Hi Jonas,
> 
> On 1/15/23 22:15, Jonas Karlman wrote:
> > The following was observed on my Radxa ROCK 3 Model A board:
> >   rockchip-pinctrl pinctrl: pin gpio1-9 already requested by
> >   vcc-cam-regulator; cannot claim for fe410000.i2s ...
> >   platform rk809-sound: deferred probe pending
> > 
> > Fix this by supplying a board specific pinctrl with the i2s1 pins used
> > by pmic codec according to the schematic [1].
> > 
> > [1] https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf
> > 
> > Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> 
> Makes sense to me, but...
> 
> > ---
> > 
> >  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts index
> > 00d873a03cfe..a149c8b83f94 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
> > @@ -573,6 +573,8 @@ &i2s0_8ch {
> > 
> >  };
> >  
> >  &i2s1_8ch {
> > 
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 
&i2s1m0_sdo0>;
> 
> ... shouldn't this include i2s1m0_mclk as well?

You can totally use i2s without an mclk, but I don't have a specific
explanation as to why this is lacking in this particular pinctrl, as
I cargo-culted it from downstream.

> For some reason this has been omitted in the pinctrl defined in
> rk356x.dtsi. But then rk356x.dtsi also claims
>  - both i2s1m0_sdo1 and i2s1m0_sdi3
>  - both i2s1m0_sdo2 and i2s1m0_sdi2
>  - both i2s1m0_sdo3 and i2s1m0_sdi1
> which are mapped to the same respective pins. Therefore it seems that
> there might be something wrong with this pinctrl altogether.

This is actually correct, I believe. The driver has a feature called
"io multiplex" which fiddles with the GRF to dynamically set the pin
directions depending on the hardware parameters. As it happens, for
example sdo1 and sdi3 are on the same pin mux, and can be switched
between like this.

I don't know how well that meshes with upstream's understanding of
pinctrl but in this case the two functions really can use the same
pin.

> 
> Cc: Nicolas Frattaroli, maybe he can provide some clarification.
> 
> Best regards,
> Michael
> 
> >  	rockchip,trcm-sync-tx-only;
> >  	status = "okay";
> >  
> >  };

Cheers,
Nicolas Frattaroli





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
