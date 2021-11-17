Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EE5DC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 15:20:13 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CD80461BE2
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 15:20:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CD80461BE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7/9vsWMPZJK7jf3YulRszrWjXg8g8OPKbUw+OMa3z0=; b=ds2M51q38/52xF
	H3o3YRCt6izDND2eF8jjE7d4GcqGl/OtOvsJ1O5WOTncp+VnIPhHRh9ncCldiJQN/ycjh9VGWQjdN
	t31EUCAyPleO63JSKestCzQSW4oBEndrj8N15/zAp/Qfw2ch/j9wXHPd6EPvL6f0QJwjzK6XCwzwt
	7N4aiiw8YGtU3G9QOJHZ+rBksjf6tmbTo5LiqN4a2Sp0Ao8hMXgi6hc4sX2mIKZgE04BvHPUmCpQe
	O+h4/n3t2GSnOY0gXWB+tOmX5fQB3kOo1fmNCUAEjaxKELlUvGxJUJ7dfWmb8EjBP8Oxcfy6i+Ro/
	/igNL6WgJzH9Ca31dJWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnMjG-005MST-91; Wed, 17 Nov 2021 15:20:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnMj2-005MO4-1k; Wed, 17 Nov 2021 15:19:53 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B759761BE1;
 Wed, 17 Nov 2021 15:19:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637162391;
 bh=21V8ySdNI8rzKppmwzqXaWV+WIeRV5sbbODnQ+RIf/4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=cz59dCa+o2S/wHot45VrB76ew3z7XNQ55gUlziZUp5WzfwP1jlnBNpZtJk00p3JeI
 EuvTBY88yoYke5aVPCR3Lt4OksFhJBJRyOqUyHM/ZwwLjZTvzXuWe1YwV1wYkNxbjC
 gGJtsLGsf566Vm4OJapBw1F6WTHDl9IiKeTE/nbsvyDtwedn0ad6INVefXZRueXdj4
 nPYwjZku/V8mEm2GBPckhPJZ9zgE5jDoYq48kxQkqlsTzI8Azj2NNoXiUddCMd8peh
 5khdWUcfI4CP/7NLas+8NOSulMrLzld1dEQKqWzPYWJokbCOUPsNaGidg2IundZsS9
 avOG9wUy5xzmA==
Received: by mail-ed1-f44.google.com with SMTP id g14so12721764edb.8;
 Wed, 17 Nov 2021 07:19:51 -0800 (PST)
X-Gm-Message-State: AOAM531gS3aGly+NclQoZfJtE1SwNTYPbiGAAfwmMojteuAzPwlgihxH
 WyerYu0/ybSfkgCW4CRuQTqGnefWpIdYGYKeJA==
X-Google-Smtp-Source: ABdhPJxa6UOUwCE4UADcjJKl6sQgO6HQ05fBhvojoiMf7CwaNTfZtwtbbDkvZLkvvHzt+nTfGmKMinHDp78RYSO3hOI=
X-Received: by 2002:a17:907:7f25:: with SMTP id
 qf37mr22897118ejc.147.1637162390183; 
 Wed, 17 Nov 2021 07:19:50 -0800 (PST)
MIME-Version: 1.0
References: <20211117143347.314294-1-s.hauer@pengutronix.de>
 <20211117143347.314294-11-s.hauer@pengutronix.de>
In-Reply-To: <20211117143347.314294-11-s.hauer@pengutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Wed, 17 Nov 2021 09:19:38 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL7C32FB47=xfUtndtCvfOQx7f3Gq0O0FqZxRoeS1fNSQ@mail.gmail.com>
Message-ID: <CAL_JsqL7C32FB47=xfUtndtCvfOQx7f3Gq0O0FqZxRoeS1fNSQ@mail.gmail.com>
Subject: Re: [PATCH 10/12] arm64: dts: rockchip: rk3568-evb: Enable VOP2 and
 hdmi
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 devicetree@vger.kernel.org, Sascha Hauer <kernel@pengutronix.de>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Peter Geis <pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_071952_129286_284E49DB 
X-CRM114-Status: GOOD (  15.71  )
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

On Wed, Nov 17, 2021 at 8:34 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> This enabled the VOP2 display controller along with hdmi and the
> required port routes which is enough to get a picture out of the
> hdmi port of the board.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../boot/dts/rockchip/rk3568-evb1-v10.dts     | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 184e2aa2416af..156e001492173 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -106,6 +106,12 @@ &gmac1m1_rgmii_clk
>         status = "okay";
>  };
>
> +&hdmi {
> +       status = "okay";
> +       avdd-0v9-supply = <&vdda0v9_image>;
> +       avdd-1v8-supply = <&vcca1v8_image>;
> +};
> +
>  &i2c0 {
>         status = "okay";
>
> @@ -390,3 +396,21 @@ &sdmmc0 {
>  &uart2 {
>         status = "okay";
>  };
> +
> +&vop {
> +       status = "okay";
> +       assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
> +       assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
> +};
> +
> +&vop_mmu {
> +       status = "okay";
> +};
> +
> +&hdmi_in_vp0 {
> +       status = "okay";
> +};
> +
> +&vp0_out_hdmi {
> +       status = "okay";
> +};

You can accomplish the same thing already with:

&vp0_out_hdmi {
  remote-endpoint = <&hdmi_in_vp0>;
};

or:

&vp0_out_hdmi {
  /delete-property/ remote-endpoint;
};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
