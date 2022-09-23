Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1A2FC04A95
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 17:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrNgi1b9HL7owIDTnXjID3ag+XRbexwTB9k0C4awH0g=; b=u4HNrdqR2GMioq
	N2f+rwXHcKEYj03unDom1v8iZ502AioDH/qOto33Egn1IGbY9Y/PihftYx/i24IJFMq/TouWDY9pD
	Q3EN+j2ZbpgBY6YMu02JwL/NhXFsRfkMTXDXUb4E4HfIPqbuedhDHkc1nTAmPZPtXugW4+DMzhIP7
	4NoFP9f9AanKopX786k9giygmFKX+BLmT5QaiUW1ZQ+5e7m3/fYkdcALTrUAgKog4kL4rlfZ5EayF
	2LDXL+gX4r5BRJDeHfF988V1Fs3Oj48Tem/Amal0G2M5CNIA/vcfnI/I2ybTfPCqaAoh5nCtx67Lv
	EqWw57jh61l4hBTO1yQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obmPW-0057V3-7f; Fri, 23 Sep 2022 17:24:22 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obmPL-0057TW-9o; Fri, 23 Sep 2022 17:24:13 +0000
Received: by mail-pj1-x1033.google.com with SMTP id g1-20020a17090a708100b00203c1c66ae3so802306pjk.2;
        Fri, 23 Sep 2022 10:24:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date;
        bh=xTYuVXV88Jq9ejH0VawRokchu21QkIYwoPcA6s17uZE=;
        b=kdYsPnOjS7++52BiayFILwNtWpd9oL6kJMfLDqXm/YLYohzKOo3hhMvrPhYHlFfkG+
         pQA6wBWu0GxJGXzOkZdmi8JEbsIEFVNHYiMworiL8hYkSw2Jy/3I4diDvaVHJA3zFBpD
         QFtBHLbzrvWtG+o472wzYC5KZbXFmLQah/ZJ1dc/PkyQ5FQaaATkOrvg6BHT0W8YLFTQ
         X/73lrhlgd5OSjSVmIbxT2tG1iwwb62GAzeP/Uc8mKWs9F632nbwZcOj1+pcmAQQRiod
         dFRJu9f9bfJYlsMyBJ2Obym3+btF7TJH3UFgLqPKh1g6i6vo8wmYaYNJ79DvFzr6Nq4r
         NnOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=xTYuVXV88Jq9ejH0VawRokchu21QkIYwoPcA6s17uZE=;
        b=swc2CctMz8TOnereN8S4BhXtn7E9k4mmOdfbPyxqydQqiLEf404vOMCPmHY7HNJuWI
         LVoIRdWp+GkaojLNhlSdlE2KvExNOz8CySUpQsZ7Er4gO8mntmD9XYThsFQQZm09QHA2
         N2O9Ti+B/ox0rggNduDM7Z7IYnVoHIye2AfPoLvCCyTc7cGyShrOju9b44aM8CRCsqdA
         PJO3RKufpxOEiKKz8jyPwy5NctoSAd1u+tPHR10uHzh50M/Zgd8polNiHp7NV3HcGa3R
         sNwitDRAhzj62RJqpAC37FS+kknocUXGSZci5YW5+LZ3R0zEfSc0H1fsr11lBXonCRD5
         9lVg==
X-Gm-Message-State: ACrzQf0ffimo+p+7XTU3OfKLBOm75b1rPjMdyGlcKZVgTan7gZvUUMbS
	CaJloS/KgJ+jdcEoIjS+Bi8=
X-Google-Smtp-Source: AMsMyM7u6qs/ypTIsuDG6S4wht/tB4kVLXASTqOz/D3hpMJ7xIvfjWM2Srkl7PySgcpJVo+iUCv3hg==
X-Received: by 2002:a17:90b:164b:b0:202:d347:2512 with SMTP id il11-20020a17090b164b00b00202d3472512mr10713163pjb.185.1663953849226;
        Fri, 23 Sep 2022 10:24:09 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:8b46:be3c:2c54:68a5])
        by smtp.gmail.com with ESMTPSA id f3-20020a170902ce8300b00178650510f9sm6315838plg.160.2022.09.23.10.24.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 10:24:08 -0700 (PDT)
Date: Fri, 23 Sep 2022 10:24:05 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Jeff LaBundy <jeff@labundy.com>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Quentin Schulz <foss+kernel@0leil.net>, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
	klaus.goger@theobroma-systems.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-input@vger.kernel.org
Subject: Re: [PATCH 1/3] Input: add `SW_BOOT_ALT`
Message-ID: <Yy3rtQxvOjWoKwry@google.com>
References: <20220922101211.3215888-1-foss+kernel@0leil.net>
 <20220922101211.3215888-2-foss+kernel@0leil.net>
 <YyyZRt5j180KzGqc@nixie71>
 <7add41ad-2cff-adef-08c4-dbc02f7c7c31@theobroma-systems.com>
 <Yy3qj432McMJ/5rl@nixie71>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yy3qj432McMJ/5rl@nixie71>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_102411_381034_AA53C42D 
X-CRM114-Status: GOOD (  51.29  )
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

On Fri, Sep 23, 2022 at 12:19:11PM -0500, Jeff LaBundy wrote:
> Hi Quentin,
> 
> On Fri, Sep 23, 2022 at 10:25:58AM +0200, Quentin Schulz wrote:
> > Hi Jeff,
> > 
> > On 9/22/22 19:20, Jeff LaBundy wrote:
> > > Hi Quentin,
> > > 
> > > On Thu, Sep 22, 2022 at 12:12:09PM +0200, Quentin Schulz wrote:
> > > > From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > > > 
> > > > This event code represents the firmware source to use at boot.
> > > > Value 0 means using "standard" firmware source, value 1 means using
> > > > "alternative" firmware source.
> > > > 
> > > > For example, some hardware has the ability to force the BOOTROM to load
> > > > the bootloader from a secondary firmware source (say SD card) instead of
> > > > trying with the standard first and then the secondary. This event allows
> > > > the userspace to know which firmware source was requested *in hardware*.
> > > > 
> > > > Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > > 
> > > This does not seem like the right approach, especially since the switch
> > > can easily be flipped after the state is already latched.
> > > 
> > > If the bootloader needs to pass information to the kernel (boot source or
> > > otherwise), a safer and more flexible approach is to share some variables
> > > in eMMC, or pass information using the kernel cmdline.
> > > 
> > 
> > I made a terrible job at explaining what this switch is for, sorry.
> > 
> > Obviously, the state of the switch cannot represent which firmware boot
> > source was used as only the bootloader will be able to tell (since it
> > usually tries storage media in a specific order and the primary boot source
> > could get corrupted at one point in time). Anyway, like you rightfully
> > stated, this is useless "info" and the important one would be passed by the
> > bootloader to the kernel (possibly via Device Tree fixup in case of
> > Aarch64). U-Boot does this to set the memory node so this could be done
> > again with a different property or something like that. Anyways, not
> > something I'm really interested in.
> > 
> > I have a switch on my devkit which implements the BOOT_ALT#/BIOS_DISABLE#
> > functionality from the Q7 standard, see section 3.1.17 Miscellaneous Signals
> > in the specs:
> > https://sget.org/wp-content/uploads/2018/09/Qseven-Spec_2.1.pdf
> > 
> > """
> > BIOS_DISABLE#
> > /BOOT_ALT#
> > Module BIOS disable input signal. Pull low to disable
> > module's on-board BIOS. Allows off-module BIOS
> > implementations. This signal can also be used to disable
> > standard boot firmware flash device and enable an alternative
> > boot firmware source, for example a boot loader.
> > """
> > 
> > This is basically the configuration of the firmware boot source to use for
> > *the next boot*. It does not represent which boot source was used, nor which
> > one will effectively be used.
> > 
> > In our case, this switch electrically disables eMMC and SPI flashes and only
> > allow to boot from SD card (this switch is then electrically overridden by
> > another GPIO at runtime by the bootloader/Linux kernel, but the state of the
> > switch is still available to the user via another GPIO).
> 
> Thanks for the additional detail and the use-case is quite clear; I just
> don't think input is the right home for this. Input makes more sense for
> switches that a user may change during runtime with the expectation that
> an event handler effects some sort of response.
> 
> Such is the case for lid open/close and headphone insertion, but here we
> are just interested in the state of a muxed GPIO.
> 
> > 
> > I have this switch on the board and I want to expose its state to the user,
> > if this new event code is not possible/a good idea what would you suggest we
> > could use?
> > 
> > Note that we already support the same switch but in a different way: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts#n167
> > We are just configuring the GPIOs into the GPIO mode with a pull-up, and
> > then it's up to the user to use gpiod or gpio-sysfs to check the state of
> > the GPIO used for this switch. I don't like this, very not user-friendly and
> > was looking for something better :)
> 
> Actually, that's exactly what I was going to suggest. What in particular
> is not user-friendly about it?
> 
> Of course, this is just my opinion as a fellow customer of input and it
> is ultimately up to Dmitry.

I agree with Jeff that input subsystem is not the right place for this
one-off platform feature. Just having userspace piece observing some
GPIO state should be fine for this. The layers dealing with it and
layers dealing with typical user interaction will be quite different,
so I do not see the reason for including the boot mode into the list
of input switches.

Thanks.

-- 
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
