Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C85AC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 03:50:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2508522287
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 03:50:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2508522287
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mnv3KCiQbPz79hT/2u5Sg2dmEtJjreZqx6MTMF/CUcg=; b=fhT5oWOwafvxxSoGFJ/w2+yX0
	5qliBng70m7owuIorEj8501R+GmOFMGYG3fft6uOMyc7nA7cMRcfSYsiONKM/EQfhLwIvW/PMG9fu
	dJi0HXB/XbwJRWrEkYsIyGbP6puAvJqooTdh9b3MPfurNtQcb5Vtj0q6qNDtu+u/5D+gXKaXticc6
	VNI8hJyeY1vzdY0VxKzi6f1b5sUIkfi0oz02Pd7c9OwXSOFGzvrMXbgxoXLcQd2pkNtB7CRNaYp9H
	VSe0ChRSz5ly76ovZdzEVa6zruUQ9WvSbX3PaRhgbe8kg+slI6kzFNH6HCvAy2wKQnWlaRpwCOJLq
	ScWU3uohQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyoDq-0007bJ-8z; Mon, 11 Jan 2021 03:50:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyoDk-0007Yz-1j; Mon, 11 Jan 2021 03:50:21 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 91F9D225A9;
 Mon, 11 Jan 2021 03:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610337018;
 bh=oF44X8MQp1tyEl4InMD1qaQfyI71Rk1wT1E24QEzvaM=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=hxWfKiy+bu70dZnqT7LW7apV4XDov5/X0ZEYnyv+ONT3O9/6T355k5rLOBqrF3e6Y
 87jJn9NU63wpQXKhlkF+D1/KNSxKPRQd9mSQ3IZUvkGqc5Dt102X/TjXU2M0bepbn9
 DcwezPTZWN07fsWv9Oi7Ge+9P79i7myQJglv2oUzFqDDQrsDE3alcBl+7ph20YcVt8
 PJrfSpF9DhH0vV+lRFHUMwf6iZU5IbphuAADu/RypT1cLENteTOBlTUQDnCKQV/DmL
 6wu2XMtNmqe9z2kXuXYlZXLxfgKU3VT/XZJN1Raa1ozzJZU409kuXm1muUs/cu87hU
 Wj+64lkHoHMOw==
Received: by mail-lj1-f182.google.com with SMTP id n11so2006629lji.5;
 Sun, 10 Jan 2021 19:50:18 -0800 (PST)
X-Gm-Message-State: AOAM533LcCKE4YzKlFlbJVtuULPGz/kV4kjmtVxiKRgd74dwL4fzSRd7
 nI/7JSy8gbeMNyljkKSyKOmKvEagcZJ0FeVvNFI=
X-Google-Smtp-Source: ABdhPJzsN1bIRsgHV/UHN7LB05l3V5yKl2nri69NVhnFJhW/PtOCOlO/tG5A3xpIY6wtYnvESGVV4unem0fDRm36t28=
X-Received: by 2002:a2e:89d7:: with SMTP id c23mr6296678ljk.282.1610337016887; 
 Sun, 10 Jan 2021 19:50:16 -0800 (PST)
MIME-Version: 1.0
References: <20210110194851.10207-1-jbx6244@gmail.com>
In-Reply-To: <20210110194851.10207-1-jbx6244@gmail.com>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 11 Jan 2021 11:50:05 +0800
X-Gmail-Original-Message-ID: <CAGb2v653hjzoQ20JsbO=wjf3hAWBa8M6fFA10Q+FRQ1xQcGgDQ@mail.gmail.com>
Message-ID: <CAGb2v653hjzoQ20JsbO=wjf3hAWBa8M6fFA10Q+FRQ1xQcGgDQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rename pinctrl nodename to gmac2io
 for nanopi-r2s board
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210110_225020_349866_06F83224 
X-CRM114-Status: GOOD (  19.33  )
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
Cc: devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Rob,

On Mon, Jan 11, 2021 at 3:50 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> A test with the command below gives this error:
> /arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dt.yaml:
> ethernet-phy: 'reg' is a required property
>
> The pinctrl nodename "ethernet-phy" conflicts with the rules
> in the "ethernet-phy.yaml" document, so rename it to "gmac2io".

This seems more like an unintended side effect of the ethernet-phy binding.
Is there a way to limit the matching of the binding only if the parent is an
"mdio" or "ethernet" node? Would that make more sense?


Regards
ChenYu

> make ARCH=arm64 dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/net/ethernet-phy.yaml
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> index 2ee07d15a..86732b45d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> @@ -280,7 +280,7 @@
>                 };
>         };
>
> -       ethernet-phy {
> +       gmac2io {
>                 eth_phy_reset_pin: eth-phy-reset-pin {
>                         rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
>                 };
> --
> 2.11.0
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
