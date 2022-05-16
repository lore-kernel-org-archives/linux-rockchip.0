Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3DA6C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 May 2022 15:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VrVsn2mM/AOgNkG7eIrEXGfoNumJX5Pfcu45fi3TfeE=; b=THngAgTNlCFzTk
	ZqA6BDenvqYw60vZqMPyAgH/xDVfyMDtxRcgWE+SPK1nwccn+Y6XHkolzcN+nY7YXLSO6vzWNWlJ0
	hGnq8mXpeQ8cR55X8tLPL879KAP3dysMvRHcQ5FBgix5VlhjFj53veygCEhVXOMyXjNjRUEFUtzuw
	wvDAsPqCnYhl8i2aDrsyy97MLPdUZwOGdbYtYyKXgUfMGgVGdG5Kj9hfWWTA6B0PmlgYwvm6YsdSn
	HC9IKzmJNOzy9/7q7JubjoowKRsSDfslyWiI8yir4XA3A264iWZoiDuUQx6KFhsMrlIZP4f+G0by6
	/d8B+dpoNV/SMkhO/dzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqccq-008e9N-Oz; Mon, 16 May 2022 15:27:12 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqccf-008e3w-9v; Mon, 16 May 2022 15:27:02 +0000
Received: by mail-oa1-x32.google.com with SMTP id
 586e51a60fabf-f165bc447fso10650638fac.6; 
 Mon, 16 May 2022 08:26:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=KHyeVKxqxatLeY3gDq4jdVF9Tt519Zk/h+VHXOLojzc=;
 b=KewvRBMJACjGiAlIKD93nIY5CDbfu7LGLi5U9OT3JumiPFbrpxe/9hLyeFkc/lrj9W
 nyGDOJdITBAxQzLjMsAtN3oVx6acR1EWDeCWuS5Bd76MnSfwqtGsu1op6ye4kfO5CSEg
 kyAvSbwiXB2Wctjrp7/yIbHPfXU8bo/c/Na8FsNDrd2IewsEeOUHsrgrbCChJFtxq4Xg
 IbIjbK0xHOfAtds8bB6vnnsS1hu/Zv0xIdI/oEbKwWOt7kdKS6i1efSkkS1/Yh+RkHIv
 AcFdJQl6YijSS3Vzpn7tqldQsxM+mtnHyKfaPlcsPcTq3aYi7vFD5B1VH2e5WXC3ddxO
 Mftw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=KHyeVKxqxatLeY3gDq4jdVF9Tt519Zk/h+VHXOLojzc=;
 b=A3jiGvSSVTfPDg3L4cHmF9wl5JLvpoPgfZlHiyc062kfLaBpeyqtc47aiLUsm51Hbl
 mELtavhau+UodCar2oBVDhQ7EvSWt8iGiBJ0VzcUtdK0LZ094Ky88dRP2Ll5OhulapLf
 ShDeKbAKJ7RZ8IsNSZnE8YhugxTEsPGBeXVFZr2AEeBFmu0LwZkvNpnL/3x3N+DgLHYx
 mTYvvXsVU2pYzVHZaa5kIX3ZdS/ICTVEPscdW7Sqw81DWZKj8Ao7V+r8aG68ZANpjzHL
 A+VpcNCEbUDVcHX3TEO5s/h76+UxC43bVSOzBqXLgtA3HfjGl1TXgSEbVQztAGLroMB0
 k94w==
X-Gm-Message-State: AOAM533Z4sfBw4PsGoYvtvPtghShlUDfBmVNokyNxXaXoy+hdDOi8ADF
 wdRob9JREtj+b+hTz1/svXI=
X-Google-Smtp-Source: ABdhPJzIjGJ8YJEvupAXFxrzzx+fCG8rregIbh6jLEAET5ITg4EypP6IKnXddR5n4Rh0gU+G8PeHrw==
X-Received: by 2002:a05:6870:c692:b0:e9:5368:10df with SMTP id
 cv18-20020a056870c69200b000e9536810dfmr9767194oab.182.1652714814852; 
 Mon, 16 May 2022 08:26:54 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 z30-20020a056870461e00b000e686d1389fsm5475774oao.57.2022.05.16.08.26.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 08:26:54 -0700 (PDT)
Date: Mon, 16 May 2022 10:26:51 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 6/6] arm64: dts: rockchip: enable sfc controller on
 Quartz64 Model A
Message-ID: <20220516152651.GA18461@wintermute.localdomain>
References: <20220511150117.113070-1-pgwipeout@gmail.com>
 <20220511150117.113070-7-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220511150117.113070-7-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_082701_384418_64DDFCEB 
X-CRM114-Status: GOOD (  18.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Wed, May 11, 2022 at 11:01:17AM -0400, Peter Geis wrote:
> Add the sfc controller binding for the Quartz64 Model A. This is not
> populated by default, so leave it disabled.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts      | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index 71df64655de5..6ec349e7e521 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -603,6 +603,22 @@ &sdmmc1 {
>  	status = "okay";
>  };
>  
> +&sfc {
> +	pinctrl-0 = <&fspi_pins>;
> +	pinctrl-names = "default";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "disabled";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <24000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <1>;

This isn't really a concern, just a comment. Did you test this with the
spi-tx-bus-width of 4 by chance? While I did have to use 1 for my
implementation (the Odroid Go Advance) the Rockchip engineer I worked
with couldn't replicate the issue on his end and we ended up chalking
my issues up to an implementation specific problem. I'm only commenting
here because I don't want you to think that for this device the tx
always has to be 1, of course if your implementation does have issues
with a tx of 2 or 4 that's different...

Thank you.

> +	};
> +};
> +
>  /* spdif is exposed on con40 pin 18 */
>  &spdif {
>  	status = "okay";
> -- 
> 2.25.1
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
