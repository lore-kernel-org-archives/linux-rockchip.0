Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7761C47082
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 08:42:12 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D78B61205
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 08:42:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D78B61205
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TUZVIdfismFQiE2CVD+dkwPnd7yWHkyG5hqHaDdkN48=; b=k5hRHdcbiV//Gl
	vMoO/Xs0u5E3foLcv5lZsRdESV0fS5YEoKRdaodx+SFx6vf/UayW5absLS6Ji3dGwYmUB1+PFp4f1
	ATq8S7Qb/xOhuJ7LFBhII2Z2gQgtO2bRJwu4UGGjey49ttzx1sPV9zr0joad3RIvoyiX7VzbECmnJ
	iT+v5i82JK0uLj8OnJPF1bDqXS57stEssRYSozmt8OBeb+wcSO6YFVytqtEMWefvlEhN1CFhOD+AF
	7tnybcmF580ne3m+0ddqqBNXK8WSV41oXiiqaKrNoBY/fzbI0ROCobc1mmwOMimdOhhBkWo61Yw3T
	JyWaCKZgu+5s7bcNTuYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqApl-002NEk-5A; Mon, 07 Jun 2021 08:42:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqAjv-002LJ4-Fz; Mon, 07 Jun 2021 08:36:11 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9A45961351;
 Mon,  7 Jun 2021 08:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1623054966;
 bh=+zpft5AvcXKHe9fOwi2skebaDDUqkpkOm19ZzHH053Y=;
 h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
 b=GZbpZm9TbLHT/N2VX0Son6t/vyD7AMhsahjBFCqzWfSUhiinh2pOyNJcTOc3CZhFz
 HNY/0R07HDwHvIkJ05lEC2uDiwSWaSSkJM4MoT9CEZtZTLEG21wZ67pvlNYYdl0n+X
 z5jIoi7RbbG1lEN5NA0wB/M37Ln0NgHyA5unbZ7x03fa1Ui6rissdWxa4snkjdmkkp
 mSumNC3IsVj5SmEcCocVCx26/ofvtHi0BCCzcVkC/C+MmTXpKl58epozHrVb5PEprq
 D9Coh7tg2rJVKgOOm7uiu70Q+zl8ERIlJr8xgRkKjZIUoxEveLWclbbiPPlk+2Wa0s
 QV9ROzmR6qjKw==
Received: by mail-lj1-f177.google.com with SMTP id d2so16888151ljj.11;
 Mon, 07 Jun 2021 01:36:06 -0700 (PDT)
X-Gm-Message-State: AOAM533PfTBupyH6WwtT9K5hHRqeqwTJaG+Y5SvRdmvcxZ8oHx1gcrSM
 Ay46pG63rw+8ETsdIWYUw3bgdksJ4GrDYUpvdCQ=
X-Google-Smtp-Source: ABdhPJxAWVbhKrIgk446onDnt6rqEUbqOsWVjFiGYF0zOH8zTdIr+uV/CiL6ktAGj4s/g0uj4/lONmcUhchrh4NyA6E=
X-Received: by 2002:a05:651c:1501:: with SMTP id
 e1mr14575535ljf.74.1623054964950; 
 Mon, 07 Jun 2021 01:36:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210607081727.4723-1-cnsztl@gmail.com>
In-Reply-To: <20210607081727.4723-1-cnsztl@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 7 Jun 2021 16:35:52 +0800
X-Gmail-Original-Message-ID: <CAGb2v66GAOtF40o5XoK_K3bWPa2L8jGxH=R-YK8060TGeAKreQ@mail.gmail.com>
Message-ID: <CAGb2v66GAOtF40o5XoK_K3bWPa2L8jGxH=R-YK8060TGeAKreQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add EEPROM node for NanoPi R4S
To: Tianling Shen <cnsztl@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Marty Jones <mj8263788@gmail.com>, Pavel Machek <pavel@ucw.cz>, 
 devicetree <devicetree@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_013607_596320_9109190C 
X-CRM114-Status: GOOD (  20.39  )
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

On Mon, Jun 7, 2021 at 4:19 PM Tianling Shen <cnsztl@gmail.com> wrote:
>
> NanoPi R4S has a EEPROM attached to the 2nd I2C bus (U92), which
> stores the MAC address.
>
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> index cef4d18b599d..4a82f50a07c5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi-r4s.dts
> @@ -68,6 +68,15 @@
>         status = "disabled";
>  };
>
> +&i2c2 {
> +       eeprom@51 {
> +               compatible = "microchip,24c02", "atmel,24c02";

The actual part number is Microchip 24AA025E48, but I don't think
the way this device splits its storage area is easy to support
without additional modifications to the driver.

> +               reg = <0x51>;
> +               pagesize = <16>;
> +               read-only; /* This holds our MAC */

Please also add the size, as well as a cell defining the offset
and length to the MAC address. The gmac node can then reference
this with:

    nvmem-cells = <&mac_address>;
    nvmem-cells-names = "mac-address";

which will actually pick up the MAC address.


Regards
ChenYu

> +       };
> +};
> +
>  &i2c4 {
>         status = "disabled";
>  };
> --
> 2.17.1
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
