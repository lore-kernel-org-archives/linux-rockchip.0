Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32F89C47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 17:09:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE2FD60FE4
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 17:09:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EE2FD60FE4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LV6QzG7S80x9LKF+5QlM+MOTCYZsN79yDtgHlZWFME=; b=fw0t6SFlv9sf1G
	8tda0gIIEV2pFXplWT7J3loeREORjgsvS6pe/Vuy0krKo61bSnybsGpD8Y2k83Aa3G99MSGu2jg9H
	bao2JSG8CDU4ooZsSbQz2K1qu6eBtVBmnRy7svaK09jrjCo6VQLr+DDQv5lRt7tE4ihTnqbdaz3R2
	R4035k9QN1+ODFU8cy46PdnPwV/iAeOsKCILxFw3ZKW3IxyZf+5a4siZIgvvSBtvdDUuVDPixO2CV
	dCgbbTark650y+P1VExRzZPTaXNQfhmGU9K5Osx1BDxoI9uRxQrm1YvIN5r7AIPMTVuGFyCOtniew
	RQV//Inyt/TC4Poh/c6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqIkJ-004hKC-Ll; Mon, 07 Jun 2021 17:09:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqIk4-004hEh-Kq; Mon, 07 Jun 2021 17:08:50 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 40D9E60FE4;
 Mon,  7 Jun 2021 17:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623085728;
 bh=yM2Bv4i0UNJzWGQmilGq5A1RQVj7SOXQdiQtMQxCjMM=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=NBxgeIYxc1rE4xVU2M72A48E+VdaYqmyQV2If6DQsBbMTtGx4aQyKLpWZfK5XMCw0
 v+DKU99VyqPXsaZQiSviCIDqkPqoEf1qGx7ZQV+XPqa1Slvn23dapSAidLn5RfHQMu
 V25koMMp7B2bClmCW/0vzbhYsMYhBv09Au/qZ4fYjit5DV9x6b6vEf/CDNJIYhLD6H
 RcNGvrJPBMZlECb3/9vQ41Xp++LaXDkgq6VgBKiYoA9ir6+fbAEGbAqcMTZ8SNehbL
 5QiprsdThyHFE7G+72Egyx0T2cAp9j6l9kBNIr1ckyKeR2eL7X7stq+wgAxEQDymeT
 lEP7bf8kOOYWA==
Received: by mail-lj1-f173.google.com with SMTP id r14so4050605ljd.10;
 Mon, 07 Jun 2021 10:08:48 -0700 (PDT)
X-Gm-Message-State: AOAM532fy5TFQwNCx1Vxbsu+vf/BHE4pKijyJpcDSZWw9Y5T62TBV7pe
 dnUxpj/9mb77i+vZ6/TH7tuKuh5nlpU/Bx4oqm8=
X-Google-Smtp-Source: ABdhPJyk/0bvdYKKWJM88LLFCKWWJpTtYpMF3i0vrOkTB/POxnwND6L8VPUX90HngxiiIH+2KurlqGHe0lVDEqZyP94=
X-Received: by 2002:a05:651c:1501:: with SMTP id
 e1mr16143057ljf.74.1623085726619; 
 Mon, 07 Jun 2021 10:08:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210607081727.4723-1-cnsztl@gmail.com>
 <9258ab23-ef65-2c3d-f0d2-ca5f77d7c12a@gmail.com>
 <CAGb2v65ck=LV+UCdQoaUtEjFaTaHr9-wmGmpkCCkebUOuYtikw@mail.gmail.com>
 <f085da86-8b6d-ba99-2d0a-736ec02424db@gmail.com>
 <CAOP2_TiHwYhLVLOEx-Vgx6k3XmHgNsiyR8CqrWyABnP0AidMBg@mail.gmail.com>
 <b5cc8e2b-10b6-de5d-38dd-5e5cfd84e984@gmail.com>
In-Reply-To: <b5cc8e2b-10b6-de5d-38dd-5e5cfd84e984@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Tue, 8 Jun 2021 01:08:35 +0800
X-Gmail-Original-Message-ID: <CAGb2v65gFB7oMCzV6e+4OfY0w2K5=AVnnW2sqMGLrCzfGqsrOQ@mail.gmail.com>
Message-ID: <CAGb2v65gFB7oMCzV6e+4OfY0w2K5=AVnnW2sqMGLrCzfGqsrOQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
To: Johan Jonker <jbx6244@gmail.com>
Cc: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Marty Jones <mj8263788@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_100848_747355_35838187 
X-CRM114-Status: GOOD (  36.38  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Jun 8, 2021 at 1:04 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
>
>
> On 6/7/21 6:01 PM, Tianling Shen wrote:
> > Hi Johan,
> >
> > On Mon, Jun 7, 2021 at 6:26 PM Johan Jonker <jbx6244@gmail.com> wrote:
> >>
> >> Hi Chen-Yu,
> >>
> >> On 6/7/21 11:40 AM, Chen-Yu Tsai wrote:
> >>> On Mon, Jun 7, 2021 at 5:31 PM Johan Jonker <jbx6244@gmail.com> wrote:
> >>>>
> >>>> Hi Tianling,
> >>>>
> >>>> On 6/7/21 10:17 AM, Tianling Shen wrote:
> >>>>> NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
> >>>>> stores the MAC address.
> >>>>>
> >>>>> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> >>>>> ---
> >>>>>  arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 9 +++++++++
> >>>>>  1 file changed, 9 insertions(+)
> >>>>>
> >>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> >>>>> index cef4d18b599d..4a82f50a07c5 100644
> >>>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> >>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> >>>>> @@ -68,6 +68,15 @@
> >>>>>       status = "disabled";
> >>>>>  };
> >>>>>
> >>>>> +&i2c2 {
> >>>>> +     eeprom@51 {
> >>>>> +             compatible = "microchip,24c02", "atmel,24c02";
> >>>>> +             reg = <0x51>;
> >>>>> +             pagesize = <16>;
> >>>>
> >>>>> +             read-only; /* This holds our MAC */
> >>>>
> >>>> The mainline dts files should be generic I think.
> >>>> Any comment about "use", partitions or write ability should be avoided.
> >>>> It's up the user.
> >>>
> >>
> >>> Per the datasheet for this specific EEPROM, the latter half (128 bytes)
> >>> is read-only in hardware by design though.
> >>
> >> The 24AA02XEXX is programmed at the factory with a
> >> globally unique node address stored in the upper half
> >> of the array and permanently write-protected. The
> >> remaining 1,024 bits are available for application use.
> >>
> >
>
> > In my opinion, as this contains data programmed by the factory, would
> > it be okay to keep it read-only?
>
> This chip is not completely read-only.
> There might be users that like to try some other mac_address or store
> something else in that lower part. Is this then still possible?
> Generic DT describes hardware independent from what Linux drivers or
> other OS are capable off.
> This factory mac_addres is permanently write-protected, so no need to
> keep the rest read-only.
>
>      nvmem-cells = <&new_mac_address_in_lower_part>;
>      nvmem-cells-names = "mac-address";
>
> >
> >> Just a question...
> >>
> >>     nvmem-cells = <&mac_address>;
> >>     nvmem-cells-names = "mac-address";
> >>
> >> Which part does this point to?
> >>
> >> Can we use the lower part to store/rewrite this too?
> >>
> >> ===
> >>
> >> From at24.yaml:
> >>
> >>             items:
> >>               - pattern:
> >> "^(atmel|catalyst|microchip|nxp|ramtron|renesas|rohm|st),(24(c|cs|lc|mac)[0-9]+|spd)$"
> >>               - pattern: "^atmel,(24(c|cs|mac)[0-9]+|spd)$"
> >>
> >> How does Microchip 24AA025E48 fit the regex?
> >> What compatible would you advise?
> >
> > It seems that 24AA025E48 is a variant of 24MAC402 [1], and
> > `atmel,24c02` will be okay in this case.
> > 1. https://lkml.org/lkml/2018/1/24/494
>
> Ask Heiko. ;)
>
> As long as it does not generate more notifications then we already have.

I think having a part specific compatible would be better. That way if
someone wanted to implement read-only "feedback" to users for the second
half they could.

ChenYu

> >
> > Thanks,
> > Tianling.
> >
> >>
> >> ===
> >>
> >> Johan
> >>
> >>>
> >>> ChenYu
> >>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
