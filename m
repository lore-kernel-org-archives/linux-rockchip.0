Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBA58D1813B
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 17:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFAwyWDV1hS3HCh5qH/n5TX0PZJMnE0y4dvz2GsU1Ac=; b=GsBXvXyC8D1X8L
	1j9fokB0ZEpUaTIV0EwBFPQEn38LT7MyuPBz4EIAQvxS4Y6D+t8jNa1mHwXv3ZnrKLL00qI1CdPE5
	IuZmq0hRPp3hXEJp7Pd3RjKQOKYo5EeuNpCUr2EWNq3hriyQaEcAUWT+hipOdxoYl+pU+aetYcAOE
	jj3q99xF8NBFU00V5aXsVwvoViNt6C/h82IYm6b5LXwKNG6lNN8JueX+3tVryKOLdO1wHUWMbOYIf
	FWWyfM+64gnlLUlM0/Zy6K70D+tRT5t54sZr17bbsyE8nojctJTRHNX54/uPdaBBp89z41BQxbxdS
	sSLQAd67+ujhV0TK3LSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0PGX-000000066P6-022X;
	Mon, 14 Oct 2024 17:53:57 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0PF7-000000066JD-12jL;
	Mon, 14 Oct 2024 17:52:30 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-37d58377339so3331767f8f.1;
        Mon, 14 Oct 2024 10:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728928347; x=1729533147; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ixu8D2HLAaDR+KK2uTRWPmXs/zMROzq2qZqU6zrIdcM=;
        b=a+O3MF8YBJfPycwRHtuBPVBMgwNpGzGn9RGTLnm9qaVNY+bKcn33ckQhFmMfzMET9t
         nU6B+iuTB9nv/ZS8JmpwOhkmqtcg+D1MLKpdsQ/X49bzOrZhfa7QHTFCOsJlp2H4F9s4
         HmcPBRo4iIaeB1nRIZdmpp9qfN0S83BoyF+98yUXgOg7NV0m7TfnT14ki03MR1rKz2nA
         J50Ae2U8p6fkxLSA72lqtCLVYXPlBWgA8JenIvvPrEfk6MV+E3HKeT2fAcaUGzx9SR5x
         B0Fde3ZBZ+RTZTZGbZm6w0UiEExgXFIw+Sa5G7lyUkIBfW+xwik6lKkbyY44/57+QWe4
         Hd7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728928347; x=1729533147;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ixu8D2HLAaDR+KK2uTRWPmXs/zMROzq2qZqU6zrIdcM=;
        b=wELb0Oor8mM8OHVkBQT4oaDw5eZNPL5MpNvxucmMtN7+i/wjaPStZFW6sOArrI0k/s
         7QpdjneY51i6MNQtnWjDTJgIWhEVHb7dKAXRolwzPzgRHc0TwuiUcUvTBZOFYcIzEIEw
         6c12la7OVxuWpKILUAoP3vZspvioKmzIR3Bi/pPWSc/qkHpQBi1Pe4kjtsJW2s/YACsS
         I1TenDgfI0u8Otls6EqVe0vdDRGSd/L3jN7UumGzVjho+2ffRkZrDWlHUrTaIsCf4ruZ
         lAgpyy/HvB8RTaXcklbZ3YhDyhSCLirkI6tYhzsRV04ks6c970hr3vH4eXj1zDWmWKXX
         MWjA==
X-Forwarded-Encrypted: i=1; AJvYcCUfMGzkWX67ebwEKMYRQkGZ/tr9iBA2cDzunLzpAuzVZkz+u8UmTM3jwD4n17+8Xwnjb+YA5781uwQGtR1cfq8A@lists.infradead.org, AJvYcCXN9VcTRQmb6LVG0DrrCBl9aE2mPs2hBLUhyWQtrwTx4HFnrEPpYxLoSqKHGZp7iDK6kjCCcOLvb0YAkjSOIIc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8VO4TtxDfJxuYFY9Z/Gn8a0xFz0xukoKSkqnea7pw2IzcUVuX
	zOuySQeqIQnSeNdPlYIU6b412Aq3rmjNSmP88RV2ypQp9XhyEGyxpFCtMV07mqJ7WPBqonqC1tz
	OGYteZT6fabXs2env7OZMCj0YddE=
X-Google-Smtp-Source: AGHT+IHQ4uC66x2exWQtJqcMfm+3DuKjElbNTUY2NreiU68UqRFKvhPazV9idyfCVDmIeWVZP+QCLAdUUM++GZehcl0=
X-Received: by 2002:adf:b359:0:b0:37d:4c40:699 with SMTP id
 ffacd0b85a97d-37d5ff25593mr8841523f8f.5.1728928347035; Mon, 14 Oct 2024
 10:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <20241014113026.78853-1-cenk.uluisik@googlemail.com>
In-Reply-To: <20241014113026.78853-1-cenk.uluisik@googlemail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Mon, 14 Oct 2024 12:52:15 -0500
Message-ID: <CALWfF7+b2zeUaB6N7DJVprvajNbvXmAn9wVUyVVt57D1oECwOA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] arm64: dts: rockchip: Add rk3588-orangepi-5b
 device tree and refactor
To: Cenk Uluisik <cenk.uluisik@googlemail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Chris Morgan <macromorgan@hotmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, Andy Yan <andyshrk@163.com>, 
	Jagan Teki <jagan@edgeble.ai>, Michael Riesch <michael.riesch@wolfvision.net>, 
	Jing Luo <jing@jing.rocks>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_105229_309726_412CC26E 
X-CRM114-Status: GOOD (  12.87  )
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

> +&sdhci {
> +       bus-width = <8>;
> +       no-sdio;
> +       no-sd;
> +       non-removable;
> +       max-frequency = <200000000>;
> +       mmc-hs400-1_8v;
> +       mmc-hs400-enhanced-strobe;
> +       status = "disabled";
> +};
This is good. SDHCI is disabled by default, so just the Orange Pi 5B
board can enable it.

>  &sfc {
>         pinctrl-names = "default";
>         pinctrl-0 = <&fspim0_pins>;
> -       status = "okay";
> +       status = "disabled";
This is good. SFC is disabled by default, so just the Orange Pi 5
board can enable it.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
> new file mode 100644
> index 000000000000..55eee855cacc
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5b.dts
> @@ -0,0 +1,27 @@
> +
> +&sfc {
> +       status = "disabled";
> +};
Since this is disabled by default. So this is now redundant and should
be removed.

> +
> +&pcie2x1l2 {
> +       reset-gpios = <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> +       status = "okay";
> +};
Do you want to defer this part for now, and include this with WiFi enablement?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
