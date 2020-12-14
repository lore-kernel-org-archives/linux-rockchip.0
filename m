Return-Path: <SRS0=K/hu=FS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37412C4361B
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 14:10:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D5AA020798
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Dec 2020 14:10:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D5AA020798
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mb3Xxk6h5TCHP3sPprhUQwlIT8Udv+19l0YCBANYz+0=; b=V+UaPQJ2Pyjp/q6znRrZhf3Y2
	Rt83NuUXfhiV3oDIdsRvBOaR7yR++XHy+e2iWcKnDYisXLwXN4Tw5c8BwLQOC3UpeUaNy4vdf38gh
	5YUZv3XxqsWihxZFsOm0aZqqpRv4/h7UhAeg14Ft12YsnUt38ZqA5d3oaX0ZFvSx1Jx3wfazphLwf
	5aVPLmbPIFow9iOLk7XBG7st3JXxAVUOb+q1nsIHqBhv0DZjGokmuu4enRKPuEYfHlQHVXIKNvP6u
	yZAhDkCMxd3h6y4YUaYpDtw0QaRpkNW/d2LnTiVHyNzGYCzJ5ngzPVvFaD2wDskiLqr9BZZc9QoJh
	2x9UzbVNA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kooYf-0000ER-9O; Mon, 14 Dec 2020 14:10:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kooYb-0000De-Sy; Mon, 14 Dec 2020 14:10:34 +0000
X-Gm-Message-State: AOAM532v419FHU0fzr8jmFhWXWf7DqgRRq3GuShpxttvihp4zMduSjXd
 vZu6Izh+TMSFh13u8uADGkPCkseW3+2Z6XZXcw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607955031;
 bh=Jzn8l38KRoOLsKkVvnCldWRNNSXncIPTkIkR6xkPitI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=H6RJAYtoicuiA77SS89g7/7wgarP1h28KYBi4he/ZpAttxpAIEH+ISSwzXMIOB1nV
 ekLHRVocilZfHlK6f2arL5Pi9XBXnTJEZ7wvC3eb8VAt8UdJAEvI78CYUwCk4YS5RN
 on1OLWBXG2XygQ2ut3NnOJUjEAM4H7r7o87DFCJVXNcx4zWhSvZdS9lw0WQ0Yl7QSI
 rdgbwvcP9sOW2cqf8q9qNUDqB9ns+Xv3BKO93/cjYeoG5yM7nMwJ38wSWH4QqONntf
 NKnY/BGHLKLcORPIGVDD7QMtLYCwW/PNa4N2U7jGjrdGSYlw6BWJZ39G06TcgK0Zki
 Mh0jZIFQVziBw==
X-Google-Smtp-Source: ABdhPJw143/zC9fcc9wUHjIGVkwDKIZ/YUpCE4b6b1HB/jrN8MuTToZ3sZ8F/J1h8qV8oXUR5pUC/R/NxmzaWK1nUlk=
X-Received: by 2002:a05:6402:ca2:: with SMTP id
 cn2mr24906609edb.137.1607955030122; 
 Mon, 14 Dec 2020 06:10:30 -0800 (PST)
MIME-Version: 1.0
References: <20201214025946.25753-1-chris.ruehl@gtsys.com.hk>
 <20201214025946.25753-2-chris.ruehl@gtsys.com.hk>
In-Reply-To: <20201214025946.25753-2-chris.ruehl@gtsys.com.hk>
From: Rob Herring <robh@kernel.org>
Date: Mon, 14 Dec 2020 08:10:18 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL0WF-VwnaqhgQyYP0A-2Xp_q==zAw9jS5eoD3P6PmF-A@mail.gmail.com>
Message-ID: <CAL_JsqL0WF-VwnaqhgQyYP0A-2Xp_q==zAw9jS5eoD3P6PmF-A@mail.gmail.com>
Subject: Re: [PATCH v1 1/4] devicetree: phy: rockchip-emmc optional add vendor
 prefix
To: Chris Ruehl <chris.ruehl@gtsys.com.hk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201214_091034_080563_600FC23A 
X-CRM114-Status: GOOD (  17.71  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sun, Dec 13, 2020 at 9:00 PM Chris Ruehl <chris.ruehl@gtsys.com.hk> wrote:
>
> Update the documentation and add the vendor prefix to the optional
> properties referred in vendor-prefixes.yaml.
>
> Signed-off-by: Chris Ruehl <chris.ruehl@gtsys.com.hk>
> ---
>  .../bindings/phy/rockchip-emmc-phy.txt        | 19 ++++++++++---------
>  1 file changed, 10 insertions(+), 9 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> index 00aa2d349e55..3a55d8086868 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> +++ b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> @@ -13,14 +13,15 @@ Optional properties:
>                 access to it), it is strongly suggested.
>                 See ../clock/clock-bindings.txt for details.
>   - clocks: Should have a phandle to the card clock exported by the SDHCI driver.
> - - drive-impedance-ohm: Specifies the drive impedance in Ohm.
> -                        Possible values are 33, 40, 50, 66 and 100.
> -                        If not set, the default value of 50 will be applied.
> - - enable-strobe-pulldown: Enable internal pull-down for the strobe line.
> -                           If not set, pull-down is not used.
> - - output-tapdelay-select: Specifies the phyctrl_otapdlysec register.
> -                           If not set, the register defaults to 0x4.
> -                           Maximum value 0xf.
> + - rockchip,drive-impedance-ohm: Specifies the drive impedance in Ohm.
> +                                 Possible values are 33, 40, 50, 66 and 100.
> +                                 If not set, the default value of 50 will be
> +                                 applied.

You can't change this one, it's already an ABI. Only what just got
queued can be changed.

> + - rockchip,enable-strobe-pulldown: Enable internal pull-down for the strobe
> +                                    line.  If not set, pull-down is not used.
> + - rockchip,output-tapdelay-select: Specifies the phyctrl_otapdlysec register.
> +                                    If not set, the register defaults to 0x4.
> +                                    Maximum value 0xf.
>
>  Example:
>
> @@ -37,7 +38,7 @@ grf: syscon@ff770000 {
>                 reg = <0xf780 0x20>;
>                 clocks = <&sdhci>;
>                 clock-names = "emmcclk";
> -               drive-impedance-ohm = <50>;
> +               rockchip,drive-impedance-ohm = <50>;
>                 #phy-cells = <0>;
>         };
>  };
> --
> 2.20.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
