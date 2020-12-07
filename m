Return-Path: <SRS0=PznR=FL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E31A8C4361B
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 14:12:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 975ED235E4
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Dec 2020 14:12:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 975ED235E4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3L0RRMQ/8mDkPRbEAvp4VnpQQTiYM0VmfJCBGGQTbIM=; b=hW8VMxPwAHTz6efS0oy7v/etl
	WbgAF4iY8+fHnL31jM1wiWBh3hCatLMW1GK2q1El5bGcufX3KReozMR5IcTHTRa1ULguPUT6t+ORM
	8e5wbmQOUXJRccOL+mNmf/iVFDF2SaYfUntTjFCf2CKYRBEsMBRq6hXItB7pLBvqxyuTeqrw5J1vq
	gs55ScCmacVNiwamvbCXX5gvUxlJ2RMMbslPlNqA0OS5s/M+O1FFR+ABxRccTAqpC+1Tt6YwHgKA6
	lqnJM/RBBdJ7HBQpX0hJEFpxYTajL8qi6xFUlW7zR4qCH6R8OGI79GpbtfOx87PTtm4K5fgISYHcF
	7I7Qz6g5w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kmHFi-0003ar-VU; Mon, 07 Dec 2020 14:12:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmHEb-0002xN-K4; Mon, 07 Dec 2020 14:11:26 +0000
X-Gm-Message-State: AOAM533cqE5UvcP9GYdJTysgWrmnd1sD+sxJYjRw4LuhCI/DLmp+UWdS
 diIuCS5f3DkCk3z58R6FpQQHosEVi8pmOeLpwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607350283;
 bh=ExbBzZtI76UIjnZeTT9Tidvp9JWGG6DdN47dk5OWT64=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=HXUtVYWbEghrfqPpgZG0Y1ErflAbUdMPLlwaDgZKC3Xm/xJUURi+KUE5Ug3i94Jch
 hhMlMaTq5wwIA6QwbfvMIBe6UxG8trIqaG5bYvXmWJlsflDCKJ83tELbOicSQBWcHn
 H28CyhVnUM2yZX0lN3SUJyeifh7aDQ/MVafEXsI4kK2U6n4F/IA5v7WyLQwsbX5k1Y
 v61sVEEkiudPX1WHMM32iwGcchJ7QffcaMhKWKTIHEPQVvs7S5+uuajJaYw7sFZVUo
 3+sKPXEuQXAvd5FE5GaUcuQkvNA7CDQAUeLsRWdFS/n6hjIC8VFf4QWjQ5vWTU8jZC
 8prnuxMZh95GA==
X-Google-Smtp-Source: ABdhPJzi418/wAG1uSdNQ0XyK71kDVSHlT1jf4DMFycIClUbi/y6/taTpCkNTIVC8ZnZlVTR4UMz4o+PV3YFXeModGs=
X-Received: by 2002:a50:c091:: with SMTP id k17mr19981518edf.137.1607350280143; 
 Mon, 07 Dec 2020 06:11:20 -0800 (PST)
MIME-Version: 1.0
References: <20201118071724.4866-1-wens@kernel.org>
 <20201118071724.4866-2-wens@kernel.org>
In-Reply-To: <20201118071724.4866-2-wens@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 7 Dec 2020 08:11:08 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJphYYUsQR_kLH_y1gOArTifpEVUiTJfDpDsL8WjGxRfA@mail.gmail.com>
Message-ID: <CAL_JsqJphYYUsQR_kLH_y1gOArTifpEVUiTJfDpDsL8WjGxRfA@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: Make 'ep-gpios' DT property optional
To: Chen-Yu Tsai <wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201207_091125_876560_B8AD46FD 
X-CRM114-Status: GOOD (  19.89  )
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Chen-Yu Tsai <wens@csie.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Johan Jonker <jbx6244@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Nov 18, 2020 at 1:17 AM Chen-Yu Tsai <wens@kernel.org> wrote:
>
> From: Chen-Yu Tsai <wens@csie.org>
>
> The Rockchip PCIe controller DT binding clearly states that 'ep-gpios' is
> an optional property. And indeed there are boards that don't require it.
>
> Make the driver follow the binding by using devm_gpiod_get_optional()
> instead of devm_gpiod_get().
>
> Fixes: e77f847df54c ("PCI: rockchip: Add Rockchip PCIe controller support")
> Fixes: 956cd99b35a8 ("PCI: rockchip: Separate common code from RC driver")
> Fixes: 964bac9455be ("PCI: rockchip: Split out rockchip_pcie_parse_dt() to parse DT")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
> Changes since v1:
>
>   - Rewrite subject to match existing convention and reference
>     'ep-gpios' DT property instead of the 'ep_gpio' field
> ---
>  drivers/pci/controller/pcie-rockchip.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
> index 904dec0d3a88..c95950e9004f 100644
> --- a/drivers/pci/controller/pcie-rockchip.c
> +++ b/drivers/pci/controller/pcie-rockchip.c
> @@ -118,7 +118,7 @@ int rockchip_pcie_parse_dt(struct rockchip_pcie *rockchip)
>         }
>
>         if (rockchip->is_rc) {
> -               rockchip->ep_gpio = devm_gpiod_get(dev, "ep", GPIOD_OUT_HIGH);
> +               rockchip->ep_gpio = devm_gpiod_get_optional(dev, "ep", GPIOD_OUT_HIGH);
>                 if (IS_ERR(rockchip->ep_gpio)) {
>                         dev_err(dev, "missing ep-gpios property in node\n");

You should drop the error message. What it says is now never the
reason for the error and it could most likely be a deferred probe
which you don't want an error message for.

>                         return PTR_ERR(rockchip->ep_gpio);
> --
> 2.29.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
