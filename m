Return-Path: <SRS0=N1pG=CI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.5 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59D1FC433E6
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 00:16:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 03E8220776
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Aug 2020 00:16:49 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="JpjfpGdp";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ToMNYYut"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 03E8220776
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:Date:References:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=idUUAdz5neNQkSPB2+0rjGskxowmlOhyNk3RDFS8cC4=; b=JpjfpGdpTl7dQHucMA7tvRs++
	fF/YLd2ttAeppXpFclIjpSBKPGVMMP9Nzcx4A8uqzTJljjkLq5k1OmlHDGgkeealM1c6UZBrsad6T
	9TlzXs+xrxdWScEb8ZrlUotCM837S15IsMOJv6a39gpcz0BJ0rBlxifrLTrzcvg1/7bsHGkDj713s
	DlA2LmjYqQ0mdontdlmy2yQJjwnB0qr/WcHOwd3BUSWaTL6HlLM8pFIQzh2YsjagemE6JZtlXiAln
	AxdpsyEBf5smLicXnT6RlwWa373M+E6+muCNuiD3X4kHLZd12iXSRPJe/Bv/RYO/SIDKyJcUkjf78
	FMxfeN3+Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCB1R-0006XO-1x; Sun, 30 Aug 2020 00:16:37 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCB1P-0006X2-4b
 for linux-rockchip@lists.infradead.org; Sun, 30 Aug 2020 00:16:35 +0000
Received: by mail-pg1-x542.google.com with SMTP id l191so2289777pgd.5
 for <linux-rockchip@lists.infradead.org>; Sat, 29 Aug 2020 17:16:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:references:date:in-reply-to:message-id
 :user-agent:mime-version;
 bh=SO/05F8lh68P/kcpTsHPaM2LASHQt0Fg0sPIaMvKcqY=;
 b=ToMNYYutw3uoELJ4kafIn683bLAP15XaUDkYu7rBfbEohbdALvS0IMUfcziCyjIa3H
 j3Pe18JFZXci48ZdBOCNd9ZevcKSEzOr3FhriCqLXo+L4Lv4eQjl1T0HdCiaTK7ib7HW
 U/uVZDMNPsZkA2XX8CBp87gx3e3nGGFFit1l91F+lB+K0VIGq+y6WMw7tsG01eu0o0q4
 kb/g8jHw7w/vyFokxlkosD4uCZIlswXMfgd9xdvEVMeDFbbMudBsOJyEZ77BWjDWJGhZ
 zJfaME72fZFehq6eArZvZ1xzYx+OwGCKcZJnVG/Zr8zeRaS9OAoJcx1QyYZzqfUBDBaE
 D+qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:references:date:in-reply-to
 :message-id:user-agent:mime-version;
 bh=SO/05F8lh68P/kcpTsHPaM2LASHQt0Fg0sPIaMvKcqY=;
 b=YIvBQvu1aFutctsKFZovMgjZXRwcBaN6bpu2Hw8O+/pFTmCaMdjyhD/t9mkkplA4X/
 HX3mwitX5xvYmBttWWNGe55TSXe/KN2VPafx+CwmX2jS2g8VjgY8jJZvGUcTCJ3QOEA0
 HlM77xlpAsz28YNw96KZJ00V/kbt7mjQvR++Avmiy76f73noyXDeygLAv+012hiojTAz
 n42dN7MMWy8GMxWgQgOIvm7tfkKBdYN3VhrT2briS8lAWpHvbTdjbH5ynJ1ktkZ6mw6/
 PaxwROS+ThFx4GL2BWUtdpjqBJsSM9mDwJhRE3VvKl/EzryXKaOaAOctbo6EnYcggyxs
 U51g==
X-Gm-Message-State: AOAM5329DQSWO9DDFT/SHCujcJLvlwZvve2zHG2edSn1myNpDgz8TZSl
 2r+L65q+yOeS7VaoWeCoi+Y=
X-Google-Smtp-Source: ABdhPJyWPj+I2k9tzNqJtT9KfhIsWHUdcOkYZDRB7C9OTpYIKahYqBJWbHGPAHluEcfj84ktet22Mw==
X-Received: by 2002:a63:4451:: with SMTP id t17mr3670625pgk.92.1598746592957; 
 Sat, 29 Aug 2020 17:16:32 -0700 (PDT)
Received: from localhost ([2405:6580:31a1:500:a00:27ff:fe82:e36e])
 by smtp.gmail.com with ESMTPSA id s8sm3812841pfc.167.2020.08.29.17.16.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 29 Aug 2020 17:16:32 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: Bin Meng <bmeng.cn@gmail.com>
Subject: Re: NVMe boot issues on RockPro64
References: <87a6yepa3j.fsf@tinker>
 <CAEUhbmV3fAa-j6-QR1Y3NvmfGRX38PmvjtVpUUtxZehuABN_yg@mail.gmail.com>
Date: Sun, 30 Aug 2020 09:16:30 +0900
In-Reply-To: <CAEUhbmV3fAa-j6-QR1Y3NvmfGRX38PmvjtVpUUtxZehuABN_yg@mail.gmail.com>
 (Bin Meng's message of "Sat, 29 Aug 2020 15:03:02 +0800")
Message-ID: <87o8mtyom9.fsf@tinker>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.3 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200829_201635_242219_4C00FD69 
X-CRM114-Status: GOOD (  23.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Patrick Wildt <patrick@blueri.se>, linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, Aaron Williams <awilliams@marvell.com>,
 U-Boot Mailing List <u-boot@lists.denx.de>,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Bin,

Bin Meng <bmeng.cn@gmail.com> writes:

> Hi Punit,
>
> On Sat, Aug 29, 2020 at 8:30 AM Punit Agrawal <punitagrawal@gmail.com> wrote:
>>
>> Hi,
>>
>> I get the following errors when booting Linux from an ADATA XPG SX8200
>> NVMe on a RockPro64.
>>
>> [    3.705205] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
>> [    3.705226] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
>> [    3.705247] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
>> [    3.705331] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
>> [    3.705352] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
>> [    3.705373] rockchip-pcie f8000000.pcie: unexpected IRQ, INT0
>>
>> At which point boot hangs. Has anybody come across these errors when
>> using NVMe?
>>
>> Using an alternate device (sd card) to load the kernel / initrd doesn't
>> cause the issue and the drive works fine when used as a root device in
>> Linux subsequently.
>>
>> On digging further, I found that uboot exits with the NVME interrupt
>> line (PCI legacy interrupt) active when making any access to the
>> device. Even just running "nvme scan" leads to the active interrupt
>> line.
>>
>> After sprinkling some prints in the uboot NVMe driver, it seems that the
>> interrupt goes active right at the beginning of setting up the IO queues
>> (nvme_setup_io_queues). This is also the first time the admin queue is
>> used; when issuing the command to setup the number of queues
>> (NVME_FEAT_NUM_QUEUES). For some reason, updating the CQ head doorbell
>> doesn't clear the interrupt.
>>
>> The active interrupt doesn't bother uboot as it ignores the device
>> interrupt but causes an issue latter when linux boots.
>>
>> Has anybody faced similar issues with NVMe and uboot? Any idea on how to
>> stop the interrupt line from triggering? Or de-activating it on exit?
>>
>> Let me know if there's anything I can provide to help debug the
>> problem. Also, happy to try any patches or suggestions.
>>
>
> Is this a specific behavior of the NVMe card you are using? Could you
> please switch to another card for testing?

I suspect this behaviour is down to the ADATA NVMe card but I don't have
any others at hand to test. Bought this as a reasonably priced addition
to personal computing environment - I was hoping to avoid having to buy
another one.

Thinking about it, I can try hacking the Linux driver to use legacy
interrupts. Maybe it can help identify hardware vs software issue. I
will give this a shot.

Let me know if you think of anything else I should try.

Thanks,
Punit

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
