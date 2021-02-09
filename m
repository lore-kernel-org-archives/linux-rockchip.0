Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC0A5C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 22:26:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C5FC64E5A
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 22:26:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5C5FC64E5A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JETjpvTJvSza8xClydE+eGZawg134A7SHnGrqrhn9XU=; b=FyaITGz23Q+2p92Bs2r0+o83R
	MYGRTGkvDxvNR341RqBhINanmQ2Y/eykNQFuO0r0wbfLRUYodH+16Wdpfq5T2Dbj+FdhAIFeOSGhU
	8WLDdGXoeaM8nVTrIuT8fR+qyIwCaBnlmXpnLei+1yHuRshcKGru5DulohUbYndPjO0w5Tl7W3iv4
	F5p93g+S+l/PmEnxsEmeX8nrv5GTK6r/LwxFrH09wygRwsPKICzxs2vZJbJRUiRY2W4kjE3PCtiUI
	N4B+mjRrEOEtLfnInIle2OZGEFWmXi3Gpp5XLI4kzWO172PMKa/BppRFtNFcRXnHIJ8VTPBmVh/Da
	fXx3/31yw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9bSO-0000do-2Z; Tue, 09 Feb 2021 22:26:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9bSI-0000cn-OA; Tue, 09 Feb 2021 22:26:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 14B8564E6F;
 Tue,  9 Feb 2021 22:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612909557;
 bh=nw/ggB5jzR4hpWOSjGu1T6DGUn4f/TcXu5vrKIAECdE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=CkRLsGOlFRPALIbg9/QTofurAP7gdziEAZNjlF4+9qYK9AZfVJ6LH17Y1uajqGAGa
 292m7F97yZocwCj6yK9Z5Nj7JEiFa5Sm7q9aMNpwmQWtbwSOYXQ1RXJkwUtGjtZ66u
 H4LJXF+vmX4QnCPmrhPwsZQBUHgLjGBLFvtqVXTjPLF6zEaRzhoDA3Q9A4gFrRTH/g
 wkCdKQ30/e12eWoAwVoCcqqTFfcgkbbPFR6OWqAhb2UkCKP/geRjTc54zBtizWPk8K
 rUbkL8YUeQS+dr/wluoyyXy7HnTNQBu4jO/e7D293KJ2nWcBAMfxkjo172iHv7phAI
 my1k0yqoZnVWw==
Received: by mail-oi1-f177.google.com with SMTP id l3so11248111oii.2;
 Tue, 09 Feb 2021 14:25:57 -0800 (PST)
X-Gm-Message-State: AOAM5310bBkgwGyjQpPpbwGnJwEVuAp8/xOrcqOqgEuey71e6Bt78cko
 Ae+h4VuPQV7TxyTAJ/xw4EpD0rOFo+S4gO78gMQ=
X-Google-Smtp-Source: ABdhPJyxeWPTUKO8K39WOQhnrdR+Po94kCeKWyZcS8GtPy5M8duSmhG7JaCwy+7Lj5TeJCM/XahicK3lCqxRz+WzUAQ=
X-Received: by 2002:aca:d908:: with SMTP id q8mr3778046oig.67.1612909556361;
 Tue, 09 Feb 2021 14:25:56 -0800 (PST)
MIME-Version: 1.0
References: <20210118155242.7172-1-jbx6244@gmail.com>
 <20210118155242.7172-2-jbx6244@gmail.com>
In-Reply-To: <20210118155242.7172-2-jbx6244@gmail.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Tue, 9 Feb 2021 23:25:40 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3_uO23Y0tyfdh26tmCVcyp6XM+ur0WUd4khGUoBb32Hw@mail.gmail.com>
Message-ID: <CAK8P3a3_uO23Y0tyfdh26tmCVcyp6XM+ur0WUd4khGUoBb32Hw@mail.gmail.com>
Subject: Re: [PATCH 2/5] ARM: dts: rockchip: assign a fixed index to mmc
 devices on rv1108 boards
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_172558_871865_BFFD01EB 
X-CRM114-Status: GOOD (  19.87  )
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
Cc: DTML <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jan 18, 2021 at 4:52 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Recently introduced async probe on mmc devices can shuffle block IDs.
> Pin them to fixed values to ease booting in environments where UUIDs are
> not practical. Use newly introduced aliases for mmcblk devices from [1].
> The sort order is based on reg address.
>
> [1] https://patchwork.kernel.org/patch/11747669/

I just saw this in the pull request:

> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm/boot/dts/rv1108.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
> index bec47e0be..a754851f4 100644
> --- a/arch/arm/boot/dts/rv1108.dtsi
> +++ b/arch/arm/boot/dts/rv1108.dtsi
> @@ -19,6 +19,9 @@
>                 i2c1 = &i2c1;
>                 i2c2 = &i2c2;
>                 i2c3 = &i2c3;
> +               mmc0 = &emmc;
> +               mmc1 = &sdio;
> +               mmc2 = &sdmmc;
>                 serial0 = &uart0;
>                 serial1 = &uart1;
>                 serial2 = &uart2;

Please don't put these aliases into a .dtsi file, as not every board
will provide each instance. The entire point of the aliases is to
have sane enumeration, so you should start at index 0 for the
first one that is actually present and count up from there.

I would suggest you move these aliases into the .dts files for
the existing boards for the next cycle, and then make sure
only the ones that are present have an alias.

It might actually be a good idea to have a warning in dtc when
there is an alias pointing to a status="disabled" device, but I
suspect there would be a lot of fallout from that.

      Arnd

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
