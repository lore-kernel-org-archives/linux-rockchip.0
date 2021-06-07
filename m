Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09A9EC47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:23:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C954A61078
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:23:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C954A61078
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6obBS4Pay16mGQIJlR9g6/OGdG6SZHPKzPTOByEt80=; b=F6JTQETyG/vzbh
	corOFcXEN0g0gjwrkxQeeVdLhvlP1Ys+g9FxOFbiJ0s59pi7vB9kreBB18TIePJ7QTDLKNPDmb9gG
	X+FGw+wqOvFKJTowUuKnTrcuZP3H97ZSncgc+Li/qpvar3KvyhPkMRIgrRbBv8F1YyqfGHM7pDsST
	vH/Lc+hEhmW04AJNWimpNZp+CjSKTXZbumSCar0EjfKGRDT0QVZKrt7G+OPdH0E5CmQfdpQE7D6b9
	Vnml00ioDG+iSZkCa6ZSQXV/7KggXsIPr7rZiICSTkXtNuEdXt7rHrXDkyFvl5siAQVjAzgZPy2Wb
	qS5lzV1zfz3d2wXKM+lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqDM0-003Jkg-Hm; Mon, 07 Jun 2021 11:23:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqDJQ-003IKb-Au; Mon, 07 Jun 2021 11:21:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0041361078;
 Mon,  7 Jun 2021 11:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623064856;
 bh=AZv8dRcvDlfgxFi4HYEke9KgpebnK89UUq/um94nbN0=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=oqzDrF2hZNR9kjbIq4MZiQDYmcBwsWn0H9CudxGHMIkHbvj5lOiBlkeqFIv/NzUxT
 4LKPyB6WEj41P4283ZZ547MIaAxBh74lxVcZ4Ky1cVS1OwKF6p0Iip0UlMToYrdoAO
 4rsEQ+dkMRMggbR4IuIQxx9CFa0LQa83iHyNBJqE2BBwRiD98O+WXjPAdto5ko+AgC
 lbXc+6eUjPqXalFKQz9sRKDx+eqW59YpuRxMbO71dDdyJkg2m4QT7VO/F3Q+dV2+ie
 CbUtLtwdCDq8h+Z9DbFMrYsB3t7FVtcCSdMo5tubvSH329sb9Z3E3h/xcCyN4Mc3rZ
 wWSA+GhY45xnw==
Received: by mail-lf1-f42.google.com with SMTP id r198so22297692lff.11;
 Mon, 07 Jun 2021 04:20:55 -0700 (PDT)
X-Gm-Message-State: AOAM531Hu5Yn8lSZIN49tLuo0JwHHn/Chxej4BtfPgXdmQfT9ZdK5zNI
 +aIO21+K4cwLNYBuvgcxWXLNf8zWKHDhKhZfRwI=
X-Google-Smtp-Source: ABdhPJzY71JZF6OCcQXGna/ln5JgqcsET8OdgsNKLv4hl+KtPLOZJc/0bZyYSKEAt0WHeW1x2OpQzrWggB0eiapDmNk=
X-Received: by 2002:a19:f11e:: with SMTP id p30mr4920376lfh.496.1623064854255; 
 Mon, 07 Jun 2021 04:20:54 -0700 (PDT)
MIME-Version: 1.0
References: <20210607081727.4723-1-cnsztl@gmail.com>
 <9258ab23-ef65-2c3d-f0d2-ca5f77d7c12a@gmail.com>
 <CAGb2v65ck=LV+UCdQoaUtEjFaTaHr9-wmGmpkCCkebUOuYtikw@mail.gmail.com>
 <f085da86-8b6d-ba99-2d0a-736ec02424db@gmail.com>
In-Reply-To: <f085da86-8b6d-ba99-2d0a-736ec02424db@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 7 Jun 2021 19:20:42 +0800
X-Gmail-Original-Message-ID: <CAGb2v67trVUJuSwLgsbDXHRKVhd5keWxs4V7u5NSs8jp5-asJw@mail.gmail.com>
Message-ID: <CAGb2v67trVUJuSwLgsbDXHRKVhd5keWxs4V7u5NSs8jp5-asJw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
To: Johan Jonker <jbx6244@gmail.com>
Cc: Tianling Shen <cnsztl@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Marty Jones <mj8263788@gmail.com>,
 Pavel Machek <pavel@ucw.cz>, devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_042056_470900_86A8535B 
X-CRM114-Status: GOOD (  25.67  )
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

Hi,

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
> Just a question...
>
>     nvmem-cells = <&mac_address>;
>     nvmem-cells-names = "mac-address";
>
> Which part does this point to?

In the eeprom node:

    mac_address: mac-address@fa {
            reg = <0xfa 0x6>;
    };

> Can we use the lower part to store/rewrite this too?

If you don't set it to read only, then you could rewrite the lower
portion. Writes to the upper portion would be ignored.

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

New regex: "^microchip,24aa025?e(48|64)$"


All that was what I had around in my tree.

ChenYu

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
