Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9EA8105F781
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 09:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OxBmLBvTuy64bciO36OD7RwoF271bNpHBNz0hPY9iM8=; b=qtZA8xTT4M4Ou/
	spna8Efe89H2iBFE/vzAEANqS7Df0llEomJpw8JY0ffyjUSXxULADYIUMXXSMQxLeFcj1jU1vn3q+
	phqwMW4AxzdJpGb2eSnBRSKQy8pxHNHnsvSkdr6DVF3j07GPryk5pyM2XQ/KvWmUZF3TDiaCc+xAp
	Y7I5HwB+A/ZHVziushd9tZSr4EkgHgBot5c+o+IKbbHG3JqPxRY5ohnh5fu6dlYHFwqXq8hp7W+6V
	9HWS/VriozqfyXw3YE6Q+2Gz9OlA+a7O+rvVx9gB2gBevj0wEd0AdG+SBjcI6ripe75pMocHLNZp8
	kueJgp7loKiKk25peeiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ym8-0000000HNjS-3Zz7;
	Fri, 13 Mar 2026 09:25:44 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0ym7-0000000HNi2-1FTD
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 09:25:44 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-b9704cd6951so199806766b.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Mar 2026 02:25:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773393941; cv=none;
        d=google.com; s=arc-20240605;
        b=A7wFb7o74SMC8PJz/q7Y860TnzZklICGoHOjiexRJPi0oDNkI/Yc9v6AIa9SmuCMAy
         MbheMAmFxJh408QwGVgt5cr4n4kYaIEuSNAp9j9ZmpFMBltHpgZeXAcLj62rHL/edCpM
         DwnTtrFmRXL92oalSLfrFnGX3UOQ8miABeNLCLxd7OXjORbO9Wnp695PsN6qWWjSu6nR
         DHjrsBiXENPFPBA+KMlJm064UMbieNLEfxixRv2opjjXktxNeNG2s0oDyMXNPXLnJuwM
         boc9pwPpmy3wq221Tjv07dcGWaDiCXT7+VZQUdRO0rXcx3gVE3/sbf92nLa0eP75ci/5
         602Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=skapIsZV+2WP9UcczRrFkVT7zb1t6DskdiJBKEA1lOE=;
        fh=/8BEuR9o0JTTF5sy4p+rpPdImnYklqj4xrEv7IpYiUs=;
        b=SSk6Z7cXTw3k6JdlXWqFGdhKjvHp8yzhoLmkJJsfdf7DVX3XHXOBEn/8/VZdv8v3XD
         ZbxxhBp3OAXQmrxccYrIOVKfoYcXS5iwVuyYe4A9mazOfBmKG1FLf3VGhBEHW+suCpS1
         G5wNZpZzqBfwVoQ6irDWsjHVv6LA/Lb7AMXUlYrIzhmCbqHVtb87g0XKVpTDYB7fgtZw
         j7r5uQM9w8vJuhLciQiS1R3IT43OedEptsslqtomEtoN3iASnxOcammdGVHk0D/8Npfd
         AW8wffwR8HVmj9qQ5qYcVZeTFeyrRSExwrrv/xub/w2OABTyqvbVoFjvnPTMuv7jgAxx
         IQIg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773393941; x=1773998741; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=skapIsZV+2WP9UcczRrFkVT7zb1t6DskdiJBKEA1lOE=;
        b=jo8NdGdFCcGXvUhhADGwm8DfAUzZrdmswwV7GGDsVqRgJBlhBz5YVv+CSE0IgDbIJj
         ObOmJxDQU65o4uukEIoBWTXONtaCZhAkeIcFkQKPOp1IekcWD4h0YMI+N5Va8KEu4akU
         73fPIrcHBAGaey0/t9xlRITBbuP4IMyKbAuGx59JVh/tD84eqlrAEKXRW9thR0IWZU8c
         FQW8RcKfPhyoE7FM/5Iv/XF7CvHfaOhH4nrbmjPL+Qjpuf1azFrv5u6lZoShKb8jNcmH
         LvZyAuJoJhohTHKA/nwtbHVK1dQGY0M/ZOj7dzHPPZdtxgBe7P3cNmHD2H7e28caS+9E
         c3+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773393941; x=1773998741;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=skapIsZV+2WP9UcczRrFkVT7zb1t6DskdiJBKEA1lOE=;
        b=nDnOr1l7Azbf7KJ1jCEhNWcIPz55MCc3UqWwAGp/FfEv84++SOYp2gKsO+QkHPotOq
         o6rMt+DjOZ0/ZSUY7sKYmlcEbr5MPGHT6fW/FUlsSlR4CsQfSnqlgMM9SOWoOJ9TjdWj
         8bfMDUEanV4p9OdCxvWgFTGnPVR0DAflqvhT4rMS+ABGw8so40uKOGGif1DDq5omF28E
         kpiONcjACZU7BXdcWq7qAaRZBB2FYfrqafgcdYM2dqiWJrHGr1J9g5n3rNeETZ4uZuGA
         /bqEdY0A3A0hgz33LZSbpUqL5Q69lvMZDLZ7osTLqxysgxUW5IDszP46iquoJzy+xgvJ
         7WpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCPMbQfIEbNfzdJ/+nBtSCgnElWz3XsGYupI6cxcTj0UUiY8XJMLVayaznMg3vaIVVV99dvRseO7j+zrfmmQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw7U6XKm6878hQ7SgqwFUiThp0vF+I5XZcoFn5KO8jGmXnQSr5g
	A7+C6vnM/uqfdLGPPCJKIuo0j387Dh2Ooix1oHfD6CnVsOMgGlwIUE2nfPH47LGWGjpMGzqD8yC
	QXzLQzVtc6S8W0i+Rb/c5lPwSVwgVC44=
X-Gm-Gg: ATEYQzyLnUrWGAWF9CcFH1dFOj9U1isdQuPZOXZ76jw9LBkXcd16UwkzvqWvqR5qcfo
	NVeJ3pyMLW+DDnO0edvJcQsKKna/UC3RKXkNWqvVZGV1aB+kro9G7BIdta49TGnQ7XKEELmirdc
	4000bKeFDq3XVY6esqGnxC0gQmhe0O9LUdH8OO+Fe0mj/B+Z0WvYb5K/NU179lsuI1tL6r4dxAn
	GIWHYhi/ndWna1bbcNSshXhvaq0w0oqnsWX8RSEYJsjBrtYku+mH3Rnci7SLUW0OSHb5Ha9qKX0
	S6UwXA==
X-Received: by 2002:a17:907:8dcd:b0:b93:81e7:845a with SMTP id
 a640c23a62f3a-b976507ad70mr126077666b.9.1773393940274; Fri, 13 Mar 2026
 02:25:40 -0700 (PDT)
MIME-Version: 1.0
References: <20260226101032.1042-1-linux.amoon@gmail.com> <177260693908.10259.13055467642416391434.b4-ty@kernel.org>
 <87bc37ee-234c-4568-b72e-955c130a6838@arm.com> <f7tfshf7riljjibuqge4ubfjmludubpyh3ppdf6lasurzdzbtj@sw4xxagfhnn3>
 <5d88fb5b-e771-4ea6-8d2c-c5cfd21e5860@arm.com> <qwanhqrpztzkudik5fmberhabnzaly7v53677dohqzj5nq4wi2@6ndpiubyxcbi>
 <DGZXF3LPSRK6.2QYN63QTKUQAX@kernel.org> <cp5uktfqdf6zs53qsye57ior2ikmssgevxxdtevkzpisaif22h@7mrxspkuibow>
 <DH09EDBW3X6T.2996UB1CFCAW2@kernel.org> <55c28218-1638-4b90-a9cd-a177fb5abcb6@arm.com>
In-Reply-To: <55c28218-1638-4b90-a9cd-a177fb5abcb6@arm.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 13 Mar 2026 14:55:23 +0530
X-Gm-Features: AaiRm52hlbsJk0-LJBm1qE_mVZnVv4Bhkj1fxNTd0yyF5TYOEj4LUpGTe5M1isE
Message-ID: <CANAwSgTxsDB0t1vj--uvYCCxf4NhnjhBEDLqdevLnGAiuU6_pw@mail.gmail.com>
Subject: Re: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
To: Robin Murphy <robin.murphy@arm.com>
Cc: Danilo Krummrich <dakr@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Niklas Cassel <cassel@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Hans Zhang <18255117159@163.com>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Grimmauld <grimmauld@grimmauld.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	driver-core@lists.linux.dev, Lukas Wunner <lukas@wunner.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_022543_385463_CF4D3F8A 
X-CRM114-Status: GOOD (  42.45  )
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

Hi Robin,

On Thu, 12 Mar 2026 at 18:18, Robin Murphy <robin.murphy@arm.com> wrote:
>
> On 2026-03-11 9:09 pm, Danilo Krummrich wrote:
> > On Wed Mar 11, 2026 at 1:28 PM CET, Manivannan Sadhasivam wrote:
> >> On Wed, Mar 11, 2026 at 12:46:03PM +0100, Danilo Krummrich wrote:
> >>> On Wed Mar 11, 2026 at 6:24 AM CET, Manivannan Sadhasivam wrote:
> >>>> I have a contrary view here. If just a single driver or lib doesn't handle async
> >>>> probe, it cannot just force other drivers to not take the advantage of async
> >>>> probe. As I said above, enabling async probe easily saves a few hunderd ms or
> >>>> even more if there are more than one Root Port or Root Complex in an SoC.
> >>>
> >>> Then the driver or lib has to be fixed / improved first or the driver core has
> >>> to be enabled to deal with a case where PROBE_FORCE_SYNCHRONOUS is requested
> >>> from an async path, etc.
> >>>
> >>> In any case, applying the patch and breaking things (knowingly?) doesn't seem
> >>> like the correct approach.
> >>>
> >>>> I strongly agree with you here that the underlying issue should be fixed. But
> >>>> the real impact to end users is not this splat, but not having the boot time
> >>>> optimization that this patch brings in. As an end user, one would want their
> >>>> systems to boot quickly and they wouldn't bother much about a harmless warning
> >>>> splat appearing in the dmesg log.
> >>>
> >>> You mean quickly booting into a "harmless" potential deadlock condition the
> >>> warning splat tries to make people aware of? :)
> >>>
> >>
> >> Hmm, I overlooked the built-as-module part where the deadlock could be possible
> >> as indicated by the comment about the WARN_ON_ONCE().
> >>
> >> But what is the path forward here? Do you want the phylib to fix the
> >> request_module() call or fix the driver core instead?
> >
> > Here are a few thoughts.
> >
> > In general, I think the best would be to get rid of the (affected)
> > PROBE_FORCE_SYNCHRONOUS cases.
> >
> > Now, I guess this can be pretty hard for a PCI controller driver, as you can't
> > really predict what ends up being probed from you async context, i.e. it could
> > even be some other bus controller and things could even propagate further.
> >
> > Not sure how big of a deal it is in practice though, there are not a lot of
> > PROBE_FORCE_SYNCHRONOUS drivers (left), but note that specifying neither
> > PROBE_FORCE_SYNCHRONOUS nor PROBE_PREFER_ASYNCHRONOUS currently results in
> > synchronous by default.
> >
> > (Also, quite some other PCI controller drivers do set PROBE_PREFER_ASYNCHRONOUS
> > and apparently got lucky with it.)
> >
> >  From a driver-core perspective I think we're rather limited on what we can do;
> > we are already in async context at this point and can't magically go back to
> > initcall context.
> >
> > So, the only thing I can think of is to kick off work on a workqueue, which in
> > the end would be the same as the deferred probe handling.
>
> Hmm, in fact, isn't the deferred probe mechanism itself actually quite
> appropriate? A suitable calling context isn't the most obvious "resource
> provider" to wait for, but ultimately it's still a case of "we don't
> have everything we need right now, but it's worth trying again soon".
> I may have missed some subtleties, but my instinct is that it could
> perhaps be as simple as something like this (completely untested).
>
> Cheers,
> Robin.
>
> ----->8-----
>
> diff --git a/drivers/base/dd.c b/drivers/base/dd.c
> index bea8da5f8a3a..3c4a0207ae3f 100644
> --- a/drivers/base/dd.c
> +++ b/drivers/base/dd.c
> @@ -954,6 +954,16 @@ static int __device_attach_driver(struct device_driver *drv, void *_data)
>         if (data->check_async && async_allowed != data->want_async)
>                 return 0;
>
> +       /*
> +        * Bus drivers may probe asynchronously, but be adding a child device
> +        * whose driver still wants a synchronous probe. In this case, just
> +        * defer it, to be triggered by the parent driver probe succeeding.
> +        */
> +       if (!async_allowed && current_is_async()) {
> +               driver_deferred_probe_add(dev);
> +               return 0;
> +       }
> +
>         /*
>          * Ignore errors returned by ->probe so that the next driver can try
>          * its luck.
>

Thanks, these changes help fix the warning.
Please add my
Tested-by: Anand Moon <linux.amoon@gmail.com>

Thanks
-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
