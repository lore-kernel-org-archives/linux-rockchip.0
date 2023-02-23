Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3AA5BC61DA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Feb 2023 05:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GyHPWNhixqfVy92wuX17CSCqklTRmq8ml1QVTavK8X8=; b=0uszdTdJg5dq9j
	vHnUHCTLkYkrDm+jxPL0YefkyBPwl6mCOI8oZid8vp2bGQvwUfBYrnr0xtXhsUVFQfaFPMkkwzd+W
	IBuLMe47ZRvNmnWXlba5SIhn2hjI3ukZ+QbIeSY3UGG5PeW0FSlury2rmPt5LZC1ZXhfaa7yUmQj7
	5jQmFAqxabQTpX7K9KUVaI2/Ghl2sMwbdbQjCZ8/aDBRlN6y/miBh18VX8wFEvJcw0xLI6pHVeJsn
	/d+qusAQigoi5hLCGmD42FzzEosBbcbfqC1YnLe5kV0Bcv16+TRLt15briCzZyIa9dfT+9Dt5ITLG
	qsY/VMzEGfUrgmSIXscw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV4Xz-00FCgQ-0q; Thu, 23 Feb 2023 05:53:39 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pV4Xn-00FCcD-JP; Thu, 23 Feb 2023 05:53:29 +0000
Received: by mail-wm1-x32a.google.com with SMTP id m25-20020a7bcb99000000b003e7842b75f2so5318398wmi.3;
        Wed, 22 Feb 2023 21:53:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EIE7hufsSbKuNwaFsaytTS8k6a2M1BYo5pYvgxLxqXE=;
        b=I16GTOw4FM/vGX4+wCwDrLko7pcHTbGCtFJg8HBHe6UK5qOYL3PbXWr9IQNp0zauD3
         WqYzVw4MLNEq5ppf/N1YGhdTGJZS6Upcpg0jGc9W/eWgvESX/o2p7qomB0BUct+8ktRl
         7KL7lMzdlO7HGWQgbDD5sV2cf4tPR/eqB09irVAQ7u83RGvFhwQ1dHocuZLDO+HQogAq
         i10HhXcYnLA5zqSs6JRg0fXy6oujq8roOj2lsgqejpeG/wX57AKxOpPKJomPlwhhRPzX
         zieb9918GkfN5aNWQAaMymO2WDGQ+4RPztTDJ0fM5gJnaGaSZoLsJonzuVIQrROQ7oR2
         j65w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EIE7hufsSbKuNwaFsaytTS8k6a2M1BYo5pYvgxLxqXE=;
        b=rkE8tGs2d82R0a+HaJtaOaenmhseEVb09dLLafhtRBKrqu0qaxzC/9m6VRxdbTslNF
         NkRRzj9B064d5tf0AMGY1dCR+SEuCkC1sb5OhsuFEza4DxfWKR1CF87Pm6R8GxggMSu/
         l6ER+BheXK65WlsGOBUMjTC5+U8TV1sE5ebuDUonmRr4cSXIkHS9KrkcCJ5+wIrXPPv9
         vlPEzQj5yhkzRMbcv0CN5bfS6XT7yEXgDCIy4iAP02rMDS6OqcNaP0NWzMAEbbctKOQ/
         4So6srCIOYtA8LOnSIsEq9VruPRPLW3VBWBG5oKD5i+TMjkCimRKHCQ0g+fpcKAQ5JRO
         rWDQ==
X-Gm-Message-State: AO0yUKUI7S+wwD2Us3aQKSLBPvxXLyJFQBZw/ySoPbCb7NnoSvt1E8FS
	E0Q1roY0+fa2r8HzjpyNMqU=
X-Google-Smtp-Source: AK7set/AKL3By9kKMpvCotw3uE4y086FOyp2pYHkH2A/CxhsuP3GBnXDtH2yipsiGG8Mh3hm+IZCwA==
X-Received: by 2002:a05:600c:2e94:b0:3e0:6c4:6a38 with SMTP id p20-20020a05600c2e9400b003e006c46a38mr2149186wmn.33.1677131603059;
        Wed, 22 Feb 2023 21:53:23 -0800 (PST)
Received: from archbox.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c214a00b003e209186c07sm10039640wml.19.2023.02.22.21.53.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 21:53:22 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject:  Re: [PATCH] arm64: dts: rockchip: Always enable sd regulator on SOQuartz
 CM4IO
Date: Thu, 23 Feb 2023 06:53:21 +0100
Message-ID: <5650057.DvuYhMxLoT@archbox>
In-Reply-To:  <CAMdYzYrZvHLFdhn_qYadYbDDnnC+16pkM_kWXiU16u_6XNHEMg@mail.gmail.com>
References:  <20230215010914.104754-1-frattaroli.nicolas@gmail.com>
 <CAMdYzYrZvHLFdhn_qYadYbDDnnC+16pkM_kWXiU16u_6XNHEMg@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_215327_674304_DADB992F 
X-CRM114-Status: GOOD (  28.81  )
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

On Thursday, 23 February 2023 01:29:39 CET Peter Geis wrote:
> On Tue, Feb 14, 2023 at 8:09 PM Nicolas Frattaroli
> 
> <frattaroli.nicolas@gmail.com> wrote:
> > The 3.3V line coming from the SDMMC regulator is required for USB
> > on the CM4IO board. Without it, the USB mux (U13 in the CM4IO
> > schematic[1]) that's used likely remains unpowered, and no USB
> > devices show up.
> > 
> > The consequence of this was the behaviour of an inserted SD card
> > allowing USB to work, while pulling it out turned off all USB
> > devices.
> > 
> > [1]: https://datasheets.raspberrypi.com/cm4io/cm4io-datasheet.pdf
> 
> I disagree with this. According to the datasheet u13 and half a dozen
> other devices are powered by 3.3v sourced from the SOM. sdmmc_pwr
> triggers SD_PWR_ON which serves only to provide an enable signal to
> u18, the regulator that powers the sdmmc slot from the same 3.3v. If
> you are having problems with USB working, you likely have something
> else going wrong here.
> 
> Very Respectfully,
> Peter Geis

Hello,

I don't see how else the observed behaviour would be triggered.
As far as I can tell, the sdmmc_pwr regulator is the name of the
3.3V regulator on the SOM, which is what powers the 3.3V on the
USB mux chip.

Do you have an alternate explanation for why this patch works?

Kind regards,
Nicolas Frattaroli

> 
> > Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")
> > Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> > ---
> > 
> >  arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts index
> > 263ce40770dd..88a61fa8a95c 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
> > @@ -135,6 +135,12 @@ &sdmmc0 {
> > 
> >  };
> >  
> >  &sdmmc_pwr {
> > 
> > +       /*
> > +        * USB also needs this regulator to work on this board, so just
> > enable +        * it unconditionally.
> > +        */
> > +       regulator-always-on;
> > +       regulator-boot-on;
> > 
> >         regulator-min-microvolt = <3300000>;
> >         regulator-max-microvolt = <3300000>;
> >         status = "okay";
> > 
> > --
> > 2.39.1





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
