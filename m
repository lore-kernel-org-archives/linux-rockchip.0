Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F03C9C433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Apr 2022 22:56:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCXdxX0fqRxoqPYEStRMjvtGiPgz594oufXx5aSNGNY=; b=N2dxGtLAzVmg/G
	EihTz0RFI5nei0Q5hju3XreAbnd4gqQ32XS5Xbpxjs++Qni8UkooKEhbY3SujK/jyYI7OOjMBfHUv
	KiEDCqiPkppnrU1V+UCT7fh23lukGdseLsGyk9AHfddGPTvzcZUOpAi2qW43mf0ducKLKNKR7CwaG
	drRgPIx7UyvdkrseqBayMHSE/sK8shdbGi8jTw1bAM+f5C9mU9i6bG68xvo/jY2BCi/hpSJ+pO9p7
	AmH07g2kWF/MgkDIb2EdqXXuYtPfhgAulFQjFOS/dyiY+lLmYYiaDpX1sn11TzeHjjdUkt0zADAf6
	msFFvDsn5oajEj6YXugw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkD3P-008tyn-Rc; Thu, 28 Apr 2022 22:56:07 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkD3N-008twx-Ch
 for linux-rockchip@lists.infradead.org; Thu, 28 Apr 2022 22:56:06 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id w17so11598528ybh.9
 for <linux-rockchip@lists.infradead.org>; Thu, 28 Apr 2022 15:56:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AZ8/ZHQt0GRQpJww4lct7d21fcaHvDESbeLqhd2I1bI=;
 b=ucuXnzehNcoNaIFz9y++2PCcsmNoxYh67Y2KFZNW1unHKW3FnmC4jzYOewXM8Y7g4i
 RCw2dTbN99FjrpiObL5fMg0NrgNqjjIxJ5Po0XBvbzx6JzwvnJ8DVM1zIs5zlD74E1q0
 m1O/Hbi6ojuQ+0olAjqTdPvqAkMZ9yZUPWgFNvaDvkofZjKTwao9BpU8U58p7Ha3ctLs
 Myce8HelYJRSbfctgbvNmZpVc9HR27CkzBi+prypXnuk44E85VVpxCQxnGUTA5Ry6iWf
 5XGDUTo34p7wqyxHe6NPQzmfgS+/lpiLoDsVYKk0dhjZWwIDojmNRq91DoVwj1LdSjIR
 axBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AZ8/ZHQt0GRQpJww4lct7d21fcaHvDESbeLqhd2I1bI=;
 b=jGGjvQ3+SoexCQLBq05qDXfQo3b/u5WeW74rxA8wSQl7eSvBNgmE4a9LYccxK3m4Oc
 bVOx2glG6EeMRDSgDIjP+ZmdYjeZWF5EwXQ9qKlFMdzwD7TwoEhluPekHUXT2fh1gl4t
 uGhFeYG2GND2OAwVV9iVp4f0hrUtGSw31qGC0OsLEXqrfokQz4fkyLO7R40v22v50RRp
 pqRH+j5N7DqsTudDA4vY4v3t30fiP/XZHJUlsh5KjpuCIfJVpQdUpkzhWuQNu2SDudmK
 /dhnjlVNiYnaTvIS1tmIbe0KQT0TP/iV2vT5oeC6eAxcGpjDiI1jgU5SqKZKIkZ5ZFVU
 uoXQ==
X-Gm-Message-State: AOAM531J0kaNXJqA4JJ2VE2Wpa/NTVRvwGmpq7igrdRkZtGhpxFwbqxg
 V8YD5O/n06UxgWOMyhRxx/YZocLHyWgNC8Q1zR1pJw==
X-Google-Smtp-Source: ABdhPJyhJ2SNA8+s8ZqNAY+1RfMSxJ4alux7Fu+Nxl0Epn8PePLV4XNSQZmCWxbE/uh/DAjUC1b9me8wZwZ/ybZMEvw=
X-Received: by 2002:a25:aa94:0:b0:648:62f2:ef4e with SMTP id
 t20-20020a25aa94000000b0064862f2ef4emr21465149ybi.626.1651186563960; Thu, 28
 Apr 2022 15:56:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-14-sebastian.reichel@collabora.com>
In-Reply-To: <20220422170920.401914-14-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 29 Apr 2022 00:55:52 +0200
Message-ID: <CACRpkdZXuLPpgKcM_OU+Xewuuq6zGJek0QXAT1Xxn5fcZofJvA@mail.gmail.com>
Subject: Re: [PATCHv1 13/19] pinctrl/rockchip: add rk3588 support
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Adrian Hunter <adrian.hunter@intel.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, linux-clk@vger.kernel.org,
 linux-mmc@vger.kernel.org, 
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@lists.collabora.co.uk, 
 Jianqun Xu <jay.xu@rock-chips.com>, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_155605_502811_49B6E5C4 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
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

On Fri, Apr 22, 2022 at 7:09 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> From: Jianqun Xu <jay.xu@rock-chips.com>
>
> Add pinctrl support for RK3588.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> [merged in downstream fixes, simplified register lookup logic for better
> maintanence at the cost of a bit more static const memory and fixed some
> incorrect registers]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Patch applied, unless Heiko does some loud protesting it stays
in the tree.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
