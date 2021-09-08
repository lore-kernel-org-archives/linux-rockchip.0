Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADF0C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 15:10:16 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 632BA611C7
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 15:10:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 632BA611C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJbuw49fDvhQkJh6BtW8BGcPpQ3l5igggN/yTPMgWrs=; b=2R7e+/hmtkzP15
	MkGT431qoZE/o50qn+8jeEC29U8MtDaavqBol5laLju6IgDB4HFdEJw833Nt75NpduaXYf1yF3Hjo
	RGZ9nrUiraT+ymejhqXnTCtaxXkGXc7UeyCBzF9SYveG/Sh9U/+8MzxTSCX8JT4DMb7XxH6ycGyxu
	dqDSGdNVirbf1wMMuRVpZhq2SHJiUVv5EuAm3iZHffTBLX5hob2DZEGKNubXCOPXdDFgRsJ5FQ7IP
	iUDvb6NwmiQh99brFkH5SYUo7tEgOprskGGEwMJrc1MHWO5J1oZU+j5L+bKZnmfoKTFwkgwsUWyJf
	hIlyJaLpyzx2YyuHJtGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNzDH-0071TW-TR; Wed, 08 Sep 2021 15:10:11 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNzD5-0071S6-Ft
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 15:10:00 +0000
Received: by mail-io1-xd36.google.com with SMTP id g9so3662136ioq.11
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 08:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yRPp5IHtHZbh2VaC3A/pPLLamUQg+uMH0n8xJchofN8=;
 b=I2IrUovC0NAik8gQxEeKQbBh/+E3r1Ftc2iriNrtCYRmaOT/WfeH2y3O4YSWdUy8sq
 6jAWU0V6WXZyy9beh89xVm0hzWeWloejNkfBnlYCfYncR05Lt/w1j02hKERMBtQ0dJe9
 1rPWIKVprNObr/nlryClStiA51vf+aQWK6+as=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yRPp5IHtHZbh2VaC3A/pPLLamUQg+uMH0n8xJchofN8=;
 b=68u6n4H5XmKwc4aaNG/R9tA7Nv4vvSGtbmApTCItstxrVg8YvcIFMCtK+/U2HjHW3D
 c/czSI+VWLtKL9qq/mZyPJef5JxmaM/7ySzf4xWU6z2XNJ+SwKxoP1sSg89I0Ag4zUV0
 lM+dvfmssI+VvPXhmmeseXDX/8m4KvmnzdWiR51hUtj0ZSF7ijNIYI6vbWjEuQz8I+X7
 16VVtBcIRael5BZIyfeoPYseaFW2Pl4bmcxoHoNRbRvW2u3QmjtTlDx7nvO48IEW1Tzh
 PFNVA2JyzolZV9/DxbHgTknZORXR71bA4F8yOZcmcuk8jhQ2p/RGQTEk6zC33cBVYNd1
 X64Q==
X-Gm-Message-State: AOAM531v/eByAVOmkgGl65a/XhZa8bACiuPjA29OzSpSijQLO9qbiafs
 ECXLBWdQzs7lWaEIqvmTlEuEZO9RH8AuoQ==
X-Google-Smtp-Source: ABdhPJywP4DfNGSg1x4Zc49K7K0F83xsye+R+TKAv1GfIH37OSk8VT1+G2brm26IjmDVlwfV+8N0Bw==
X-Received: by 2002:a05:6638:59:: with SMTP id
 a25mr4158343jap.111.1631113797306; 
 Wed, 08 Sep 2021 08:09:57 -0700 (PDT)
Received: from mail-il1-f169.google.com (mail-il1-f169.google.com.
 [209.85.166.169])
 by smtp.gmail.com with ESMTPSA id e13sm1279982iod.36.2021.09.08.08.09.56
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Sep 2021 08:09:56 -0700 (PDT)
Received: by mail-il1-f169.google.com with SMTP id b4so2646554ilr.11
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 08:09:56 -0700 (PDT)
X-Received: by 2002:a92:cb52:: with SMTP id f18mr274812ilq.120.1631113795742; 
 Wed, 08 Sep 2021 08:09:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210907094628.RESEND.1.If29cd838efbcee4450a62b8d84a99b23c86e0a3f@changeid>
 <20210907094628.RESEND.2.Ibc87b4785709543c998cc852c1edaeb7a08edf5c@changeid>
In-Reply-To: <20210907094628.RESEND.2.Ibc87b4785709543c998cc852c1edaeb7a08edf5c@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 8 Sep 2021 08:09:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uo7oK6a8X69KGneP8CvXE127ZxU7U59Rrz+_Dv6D5t3g@mail.gmail.com>
Message-ID: <CAD=FV=Uo7oK6a8X69KGneP8CvXE127ZxU7U59Rrz+_Dv6D5t3g@mail.gmail.com>
Subject: Re: [RESEND PATCH 2/2] arm64: dts: rockchip: add Coresight debug
 range for RK3399
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-clk <linux-clk@vger.kernel.org>, 
 Chen-Yu Tsai <wenst@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_080959_558096_D6AB9D4B 
X-CRM114-Status: GOOD (  15.80  )
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

Hi,

On Tue, Sep 7, 2021 at 9:46 AM Brian Norris <briannorris@chromium.org> wrote:
>
> Per Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt.
>
> This IP block can be used for sampling the PC of any given CPU, which is
> useful in certain panic scenarios where you can't get the CPU to stop
> cleanly (e.g., hard lockup).
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 48 ++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 3871c7fd83b0..c8c62637b600 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -433,6 +433,54 @@ usbdrd_dwc3_1: usb@fe900000 {
>                 };
>         };
>
> +       debug@fe430000 {

I think your sort order is wrong? 0xfe430000 comes before 0xfe900000?

Other than that this looks good to me.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
