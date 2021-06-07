Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DB1EC47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 16:02:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 31C87610E5
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 16:02:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 31C87610E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6HYE2HrxzbVYvwGUHZJ5uRsARED0VUjwBZqMxvauy4=; b=n7WoAUBszP5eY4
	D3K8sfEh4f+trWQUV0loRKWzfa56FTBmP2uYqm+yIYrw4xVtUDogyCNH3YDD9/aBfXlK07u3Gkalp
	zSWWxZ4W6S8mWUz9gNvu1u+KqsRzf40aAHO+nZIjtXH2IZ+7U+Ai6YhCbsNzSrKkARIfe15+8Kl8q
	skUW7ob0TZYYXfi3D83cOg5lozGYqM5cqSIwsLGDfAXOcCyGnWkMjnmGLwbSYs5X+wnrbm35rLhOa
	ZE1Mx4KXZonvT9O96LTKnlEg6xRE7vBr41ERjbrNh/XEKh+oyoaTCn7woeaVVWTUc4wdNBd80aqO1
	fA9PiAbX24z17AWmhx4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqHiC-004MAe-0z; Mon, 07 Jun 2021 16:02:48 +0000
Received: from mail-lf1-f42.google.com ([209.85.167.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqHhw-004M9g-Ab; Mon, 07 Jun 2021 16:02:36 +0000
Received: by mail-lf1-f42.google.com with SMTP id v22so25783069lfa.3;
 Mon, 07 Jun 2021 09:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FfTfNqfGgiJF7i6Kth2DAqp+9bynWd1MeZa/bRlf+HM=;
 b=TwTvF7ArgyQ4xqG4cH6oBzEOtyHOqZlkLzUV7qyyBkeUKA8/BDpvCvs+BmSYmyF9AV
 rRP8UMOc5+6I6gwvUgmcRlifEJ2h7Y8NNyOWBaOIWFg2ggzJbE9U+3CM5H4tbYr4fbtw
 FDqp6C4NLjH3zBrb0cRoaPbVkNEwMwiU+CHjNvCjQa9nga0iWLX0mfPEvJZ+/wxnfqLq
 9JzVWOAgy7CySe4OjVR9RzclBOZCvyIx3Q3Y+XC2+YwHsmhNPyfcGPcd/ovzd7RJSYC6
 c23CifDhStaIhHBniI/q9OpaRcz932OdGRLA8lfESrRPWOqbh8CqTanH2rusfrPAIyKD
 V4Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FfTfNqfGgiJF7i6Kth2DAqp+9bynWd1MeZa/bRlf+HM=;
 b=d9+sMcoF7bzDYNNsGO9gs9rGPeBxew/w0HnDrGKs6RUBlY3NpMaKXUEJeD76pfFAbI
 MizQzkROyEHq2+Y/mZfRASTt2wf1dUHMcoOcOY4/VcIyYdmAAPilS+qcRiVyVHdYWz0I
 YdNuc43gccPZQEfYvGMZCpGAV5HDb6ps7KFhJd/mwjh32t/9KP9I2qv+ohu6gFGdkbpa
 ahBzm01Y5q/M7YohxMEXvMnWrEd7I62RI9U8KufigZbVMguTDwMDcG+gM0NhdE4iDueF
 xQQbHbvHB61Hf4Mo5RFkOSoLS0Geffpw+dGz/3tyOAWzy6lwI87XbNuHPlbV9R+bURyB
 MoxQ==
X-Gm-Message-State: AOAM533UwtY7yxWr30AESbyz10Ko4+ObxMCLHkmJrU5wgJKosh0MjUS+
 IQE8kyHjwPQ10BKFYYjtgW97zI4ENUpnWJfZ4no=
X-Google-Smtp-Source: ABdhPJz499SKsQIIbh4r2JtmI+ERb/ExBl8VzFeBie1M2ODzVoQQxX0viJ52D1FwF0Otp/1vaQTuOmNLaCrLjhf3DAY=
X-Received: by 2002:a05:6512:1184:: with SMTP id
 g4mr12508214lfr.553.1623081688934; 
 Mon, 07 Jun 2021 09:01:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210607081727.4723-1-cnsztl@gmail.com>
 <9258ab23-ef65-2c3d-f0d2-ca5f77d7c12a@gmail.com>
 <CAGb2v65ck=LV+UCdQoaUtEjFaTaHr9-wmGmpkCCkebUOuYtikw@mail.gmail.com>
 <f085da86-8b6d-ba99-2d0a-736ec02424db@gmail.com>
In-Reply-To: <f085da86-8b6d-ba99-2d0a-736ec02424db@gmail.com>
From: Tianling Shen <cnsztl@gmail.com>
Date: Tue, 8 Jun 2021 00:01:17 +0800
Message-ID: <CAOP2_TiHwYhLVLOEx-Vgx6k3XmHgNsiyR8CqrWyABnP0AidMBg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
To: Johan Jonker <jbx6244@gmail.com>
Cc: Chen-Yu Tsai <wens@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Marty Jones <mj8263788@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_090232_390670_1586257C 
X-CRM114-Status: GOOD (  28.51  )
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

Hi Johan,

On Mon, Jun 7, 2021 at 6:26 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Chen-Yu,
>
> On 6/7/21 11:40 AM, Chen-Yu Tsai wrote:
> > On Mon, Jun 7, 2021 at 5:31 PM Johan Jonker <jbx6244@gmail.com> wrote:
> >>
> >> Hi Tianling,
> >>
> >> On 6/7/21 10:17 AM, Tianling Shen wrote:
> >>> NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
> >>> stores the MAC address.
> >>>
> >>> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> >>> ---
> >>>  arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 9 +++++++++
> >>>  1 file changed, 9 insertions(+)
> >>>
> >>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> >>> index cef4d18b599d..4a82f50a07c5 100644
> >>> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> >>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> >>> @@ -68,6 +68,15 @@
> >>>       status = "disabled";
> >>>  };
> >>>
> >>> +&i2c2 {
> >>> +     eeprom@51 {
> >>> +             compatible = "microchip,24c02", "atmel,24c02";
> >>> +             reg = <0x51>;
> >>> +             pagesize = <16>;
> >>
> >>> +             read-only; /* This holds our MAC */
> >>
> >> The mainline dts files should be generic I think.
> >> Any comment about "use", partitions or write ability should be avoided.
> >> It's up the user.
> >
>
> > Per the datasheet for this specific EEPROM, the latter half (128 bytes)
> > is read-only in hardware by design though.
>
> The 24AA02XEXX is programmed at the factory with a
> globally unique node address stored in the upper half
> of the array and permanently write-protected. The
> remaining 1,024 bits are available for application use.
>

In my opinion, as this contains data programmed by the factory, would
it be okay to keep it read-only?

> Just a question...
>
>     nvmem-cells = <&mac_address>;
>     nvmem-cells-names = "mac-address";
>
> Which part does this point to?
>
> Can we use the lower part to store/rewrite this too?
>
> ===
>
> From at24.yaml:
>
>             items:
>               - pattern:
> "^(atmel|catalyst|microchip|nxp|ramtron|renesas|rohm|st),(24(c|cs|lc|mac)[0-9]+|spd)$"
>               - pattern: "^atmel,(24(c|cs|mac)[0-9]+|spd)$"
>
> How does Microchip 24AA025E48 fit the regex?
> What compatible would you advise?

It seems that 24AA025E48 is a variant of 24MAC402 [1], and
`atmel,24c02` will be okay in this case.
1. https://lkml.org/lkml/2018/1/24/494

Thanks,
Tianling.

>
> ===
>
> Johan
>
> >
> > ChenYu
> >

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
