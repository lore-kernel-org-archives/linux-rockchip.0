Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F735C197A0
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wGSQbfl3XJsYb69b+MUNo87Xd3esp+AhMQhO14sPsE=; b=WJOM+w5AQi5exT
	mUMwqypw+/InFjtpOL/iKfGqHhE2PPyd1eiqMIAOeeIiDsvRrT1bkPhzB/yPzsxdWYvnuYb7PEeH7
	lJNTqcb3NOv76F3WUXjmRMxAChXdAuaRNmRHe1J9YIPzu/i6/MBNI4+hqvW875KpFY8xjy3nM1C0E
	XtIaNWxrkOwY4cEzXhIhSl6Tx5xndy1jsWrWMeAmWkIbpRcQOVQbubliHJGSu/HVihtO6tjfI5YAo
	10v94jota0Lq6NEQIcGH8dPizxBm4nau5OSeOivSabGNzcCSNAf47xje3v9gyIEMSPOnFyKFxp1Vg
	5uVmCOpLaZcts/o20Tpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r53Z3-00C1QY-38;
	Mon, 20 Nov 2023 12:39:45 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r53YB-00C1BC-0N
	for linux-rockchip@bombadil.infradead.org;
	Mon, 20 Nov 2023 12:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=21JXa3IgbFfFrhusieTfDaVvLPguIDs8AX7F4fH0rno=; b=ph05Jcig0Cs7ScpNgDYxJMWynF
	82FpZz310kdbA7vHZvWBQsrCPKtS/aIVwfD3H7ZrXbq+6mw/15/OKIaBnC6faiynIsM4CR5E4azwb
	a7mf3HYpgj8pFwJAAAMskeRI6Yht4rNc5K93bU2W8ruaTyVfUXEpZPZO2x70JyI259UtbmvxzAx5a
	RWAV6zJJ5ouRY7oNvMzw55B6fUPKl0/ZgXk/vEJd9rf6mSDQiH4ZPDMnak+F9P9SdshMdZTBA3MoT
	50YHM9FIvmtYWJS36+NaJDgecfBLiy8OWBCyjnAspGjXi3pi4STeJGn6LGqts4dA+alTblWSqByhP
	mIR9JH5A==;
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r53Y7-00AxPo-1v
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 12:38:49 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-408425c7c10so15606415e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 04:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700483923; x=1701088723; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=21JXa3IgbFfFrhusieTfDaVvLPguIDs8AX7F4fH0rno=;
        b=NpUksQsinjxFvw2MIPNJdp6cm6J3FTvwIZotZrYhBpWmXE4S6nPGHH5BN1qDwEqVma
         abPkdn6R8EC/O2bv2qXevTQXTk3tn1FRvEb7pui+/4QjNITWgw/nH91V6p54PVvscqeW
         6n0jvd6N3l4YFUSMiUAb1d+VjFDvPE/gf3PZGhk3Mc5L+xCVoWbGFzOOlAGCA6PNadXF
         bYRcBR1f2QlmEBMI0xqfBH3g5PbDHLQBXfoT/PMrQsuniyjrFmOzAw7soYy1METvNxdp
         pPxQL1xaxbeR6jlCqdj0PSCqh2Heb0GX6dAgxK75MPpxSrzKQNLCHmIdU6Z7qGKsHHsS
         QoTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700483923; x=1701088723;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=21JXa3IgbFfFrhusieTfDaVvLPguIDs8AX7F4fH0rno=;
        b=NSBZ4yktaP3kIjnt8bCvqeJ7UpQGsVy6EmdEv/XI6ox7AoTqbqb3mVICJNYt5tiK6i
         hHLtjVMt8JogJ8waC2mmwOeWSkfqnxwT2y+RRBYuKXYjBOIYeCE5LLdgv5bGMdmHDgD+
         z5Duw4pdV049qQFa9ltTdI/+vL9KVE6/EPmqtbxd7jIWb/pcycyMOUQGWppX5lzRjIxg
         HPYSYB0/h8K/zpkOQscbdNh9o8PepdOkCKGM+lNLyr1PmQoAkWShShjW46ymhnlmfYRn
         tGROfRqqHODmfB0g9HgwrQEEhzOShDNMw/e0JNzoGQYONTVmUivhM4oqmbolKtq0GFcl
         HY6A==
X-Gm-Message-State: AOJu0Yx2dRQKBv+n7ct0+gO2XxJGYsP9VsvElOFs2Uixw25eUjriGVss
	9GNy8QJrBjEyT0XIhqOhVzVxET/L3Ipzvm6wsgM=
X-Google-Smtp-Source: AGHT+IHFdwla/AebbJRKAe6qLN7wbT/Dy8ebAETdnKPj+2uOwE60Iw1i6eDQ1rAO0ap81eJ5l4hFjA==
X-Received: by 2002:a05:600c:4592:b0:402:bcac:5773 with SMTP id r18-20020a05600c459200b00402bcac5773mr5555019wmo.38.1700483923322;
        Mon, 20 Nov 2023 04:38:43 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:4a02:2aff:fe07:1efc])
        by smtp.googlemail.com with ESMTPSA id c20-20020a7bc854000000b0040a43d458c9sm17392081wml.25.2023.11.20.04.38.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 04:38:43 -0800 (PST)
Date: Mon, 20 Nov 2023 13:38:41 +0100
From: Corentin LABBE <clabbe@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
	p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
	ricardo@pardini.net, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/6] ARM64: dts: rk3588: add crypto node
Message-ID: <ZVtTUT_6fxCAvyYk@Red>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-4-clabbe@baylibre.com>
 <e049bbd3-c5df-4220-b2b5-c73dfe5c798b@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e049bbd3-c5df-4220-b2b5-c73dfe5c798b@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_123848_032878_AC29FD2D 
X-CRM114-Status: GOOD (  16.42  )
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

Le Tue, Nov 07, 2023 at 05:20:59PM +0100, Krzysztof Kozlowski a =E9crit :
> On 07/11/2023 16:55, Corentin Labbe wrote:
> > The rk3588 has a crypto IP handled by the rk3588 crypto driver so adds a
> > node for it.
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > =

> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boo=
t/dts/rockchip/rk3588s.dtsi
> > index 7064c0e9179f..a2ba5ebec38d 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> > @@ -1523,6 +1523,18 @@ sdhci: mmc@fe2e0000 {
> >  		status =3D "disabled";
> >  	};
> >  =

> > +	crypto: crypto@fe370000 {
> > +		compatible =3D "rockchip,rk3588-crypto";
> > +		reg =3D <0x0 0xfe370000 0x0 0x2000>;
> > +		interrupts =3D <GIC_SPI 209 IRQ_TYPE_LEVEL_HIGH 0>;
> > +		clocks =3D <&scmi_clk SCMI_CRYPTO_CORE>, <&scmi_clk SCMI_ACLK_SECURE=
_NS>,
> > +			 <&scmi_clk SCMI_HCLK_SECURE_NS>;
> > +		clock-names =3D "core", "aclk", "hclk";
> > +		resets =3D <&scmi_reset SRST_CRYPTO_CORE>;
> > +		reset-names =3D "core";
> > +		status =3D "okay";
> =

> Drop.
> =

> Best regards,
> Krzysztof
> =

I will do it
Thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
