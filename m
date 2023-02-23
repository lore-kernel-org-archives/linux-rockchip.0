Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3FAAC61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Feb 2023 21:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X51aKI4wl/WNsmfkx8OU+GFmMRuXBTv7VK2fQcRS/SI=; b=DYuH3c8kuyKPYY
	f9UUbB88dKNWgO9kV1dLicOENFYUHNBNYSwdtSd6Q043jMBgDL42xb5WkO1D4OKx2oM+dkvtwQKJR
	5jilBqMnNlj05nr5ixy6dU7KSc+bYIXe1gSs+42kpSmudflJSac8f5KUU6slhUNru7S+aaHTZ/n1K
	ZKXifgZXb1e4Olv2mZFyHlY7iXBwwj9NNTu6abnLCAN8/Y3Fdr6V75dI0v3FktJrf9dDB7lpXjCVz
	lo6wToMYXI3VnHj8PUGypsCnjOs020JjrMKQZLkwQ6pWdHpeYpC3DmGhblivv3aEa2rxKqkfLptQv
	D0Y7Uoy1lrFeF2nBpgfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVJXi-000QR7-0g; Thu, 23 Feb 2023 21:54:22 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVJXX-000QOr-I1; Thu, 23 Feb 2023 21:54:13 +0000
Received: by mail-wm1-x329.google.com with SMTP id l2-20020a05600c1d0200b003e1f6dff952so704783wms.1;
        Thu, 23 Feb 2023 13:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cnf188iR/tvAsm2WYE+b4Ycz9c+bAZHE51WtPBLYK6Q=;
        b=MhW4haD4Lhbbin77nq10waiTDTz/XAwM3yIxnPpqoG6rxtyRhy7aaDuoOehGwWAl41
         8U/V5TSuHWNpvL/kz9e/A4V/6AXYmulmKZamzTNukbdVmHsh2xy1WnYBZ8XojDQrHi4G
         graY2OIRAUGPdNh/K2Cm3AAo6pFqTrPOaf21wrS+G0NV3CJV9WkzBWuDrpu6RVVrysWM
         KC1i2VA+2a/Y0O80EUjVeXUtw8jrl6ztXX5NJVphir4GSh/H85IOFVu3OQi4I7cO6Qos
         dyPWvckd1fBTTMNUSuljpIIZyBymCuL5dlLTieCpbf2hB5NzE6Uvo8nM3O3RMo4K+Pq8
         brmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cnf188iR/tvAsm2WYE+b4Ycz9c+bAZHE51WtPBLYK6Q=;
        b=bpQtgn+n6nK5lRjCjr1d5SEGIucGPJ9hwXbl2nAV/Ck7avD7YsUOby6hJ0G9H5nJc1
         KrFdlym7mDEjL5rzhfwBjkIkGrot+LDFF1Se0LKU05inf5xOYXkauYnEmgJ89Xc24ESz
         H9hJhvQdRKZQZh+yRqRYPSPqMwkK7DryeecZnTUQwK21gs4U6fYZFAPuYYjl5uhh8DoR
         UgxpHYt7YMccZPG5pIbYytCsFU8VGEIHvTadLVA12OrSdS7Oi8KWmMlxq4gHpcveQE5k
         jXO1Sp4dMDfSWl5F1LEd2ryUSNnpjNmuC4kY83GGzw+eVwiU8foGNmi312VV2hv2n3JM
         HiXw==
X-Gm-Message-State: AO0yUKVs2TvAwXAq09h8OFMj3Q0TTQl/hkKgwdpBaXdvNc3B74FcdS8x
	AbEET3JfXm4MwQntOUcMXH5LB6cDPxlVdsnB7Xk=
X-Google-Smtp-Source: AK7set/Y607YByKtpt2CfjK1Grnqn9NwL8hFS+0E7zqzm/O5s4grTI4xHe+wh1+ct/hTKg5jMqICYlZ57I+vdf/+Ml4=
X-Received: by 2002:a05:600c:1c89:b0:3e2:669:f04e with SMTP id
 k9-20020a05600c1c8900b003e20669f04emr589797wms.2.1677189246968; Thu, 23 Feb
 2023 13:54:06 -0800 (PST)
MIME-Version: 1.0
References: <20230215010914.104754-1-frattaroli.nicolas@gmail.com>
 <CAMdYzYrZvHLFdhn_qYadYbDDnnC+16pkM_kWXiU16u_6XNHEMg@mail.gmail.com> <5650057.DvuYhMxLoT@archbox>
In-Reply-To: <5650057.DvuYhMxLoT@archbox>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 23 Feb 2023 16:53:53 -0500
Message-ID: <CAMdYzYrQRmOu_Q5n0t=TV2EZE9jh1OKqy5h5nnRt4NO+QDixJQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Always enable sd regulator on
 SOQuartz CM4IO
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_135411_622933_5278BF5D 
X-CRM114-Status: GOOD (  33.85  )
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

On Thu, Feb 23, 2023 at 12:53 AM Nicolas Frattaroli
<frattaroli.nicolas@gmail.com> wrote:
>
> On Thursday, 23 February 2023 01:29:39 CET Peter Geis wrote:
> > On Tue, Feb 14, 2023 at 8:09 PM Nicolas Frattaroli
> >
> > <frattaroli.nicolas@gmail.com> wrote:
> > > The 3.3V line coming from the SDMMC regulator is required for USB
> > > on the CM4IO board. Without it, the USB mux (U13 in the CM4IO
> > > schematic[1]) that's used likely remains unpowered, and no USB
> > > devices show up.
> > >
> > > The consequence of this was the behaviour of an inserted SD card
> > > allowing USB to work, while pulling it out turned off all USB
> > > devices.
> > >
> > > [1]: https://datasheets.raspberrypi.com/cm4io/cm4io-datasheet.pdf
> >
> > I disagree with this. According to the datasheet u13 and half a dozen
> > other devices are powered by 3.3v sourced from the SOM. sdmmc_pwr
> > triggers SD_PWR_ON which serves only to provide an enable signal to
> > u18, the regulator that powers the sdmmc slot from the same 3.3v. If
> > you are having problems with USB working, you likely have something
> > else going wrong here.
> >
> > Very Respectfully,
> > Peter Geis
>
> Hello,
>
> I don't see how else the observed behaviour would be triggered.
> As far as I can tell, the sdmmc_pwr regulator is the name of the
> 3.3V regulator on the SOM, which is what powers the 3.3V on the
> USB mux chip.
>
> Do you have an alternate explanation for why this patch works?

If you have the new variant of the SoQuartz, that pin is no longer
sdmmc power and now feeds nEXTRST. As the variant I built this device
tree from was not the final production version and is only operated by
a few individuals (such as myself) you should probably just adjust
this to the production variant.

On the production variant the sdmmc power pin is pulled high to 3.3v
and cannot be controlled, which lead to the issues observed with the
prototype model a baseboard.

Very Respectfully,
Peter Geis

>
> Kind regards,
> Nicolas Frattaroli
>
> >
> > > Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")
> > > Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > > ---
> > >
> > >  arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > > b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts index
> > > 263ce40770dd..88a61fa8a95c 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > > @@ -135,6 +135,12 @@ &sdmmc0 {
> > >
> > >  };
> > >
> > >  &sdmmc_pwr {
> > >
> > > +       /*
> > > +        * USB also needs this regulator to work on this board, so just
> > > enable +        * it unconditionally.
> > > +        */
> > > +       regulator-always-on;
> > > +       regulator-boot-on;
> > >
> > >         regulator-min-microvolt = <3300000>;
> > >         regulator-max-microvolt = <3300000>;
> > >         status = "okay";
> > >
> > > --
> > > 2.39.1
>
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
