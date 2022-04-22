Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 865A9C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 20:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hb/02ziO9Pu4yAdR8wfw0OrR18XKnRBVzOJ41xJlF9k=; b=Q7PHRA4RtJItbT
	P8wcp2HaGmyoDBXOYkljGzntEyNdC3+AdBL8smfp6MCn9QhoJEzHtQvcuLCNji+cSY8jQv4VMtCsH
	6RdvcjATsoD6h9L2lYJ7T/fKczHMqbr+2w0V62TxPIq/AMm0hLDrUskL4UkPUv8RZpypSAvyyvFeZ
	rkNUa+YyDW83iZEkleQaMhaE0pHKWMcEPzRya3uCRKP9QYo/xZUgRHT3BVG/r/XNwsmnt/NFdJYZj
	rWC2oPIUHKHIO9fmkTZeZzxgJSFh1L6Jil9cihvDJjfcvVBVKxnWLxJyq0d+PSoMjrCKzozfPtepL
	ros99BftZ5Dp7jLrrAUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ni0A5-002HZK-AT; Fri, 22 Apr 2022 20:45:53 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ni0A2-002HXk-8F
 for linux-rockchip@lists.infradead.org; Fri, 22 Apr 2022 20:45:51 +0000
Received: by mail-yw1-x112b.google.com with SMTP id
 00721157ae682-2f7c57ee6feso2863927b3.2
 for <linux-rockchip@lists.infradead.org>; Fri, 22 Apr 2022 13:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qTYVVxfz08ji7LisN1HyvD8Q42QQWkxJnHZuQ3wrXDI=;
 b=CyZGYcQdOD77c4tnXXyDM7egLNC+xD5Lfbo++f/oEd6Mc7YuF4nZcSJzO8litplCwO
 9Hl8ANPegA2yhs1atnyTv3F2IXhNasW6GYJwzObOkSp1IUpm00J+fxtkzcorapDPlSjB
 wP2YAOJ0YRS/HVWxrNoRy+JCkpS9b9oEy7h2uDzLPAXyBisQ4AOVV6l0b5CYEBGu8Lm+
 hCH9vb+4DKR1/NV539hOeSudxUu6kTO+2/+GzaVxDlMjEv3oolcffR8KWHlMwU0FjbN1
 Xjh3xCynw6y1akW6P75hxoxD98mqku4I6Zw+cZjnySE4cxkqbK+/qalL6jdwhx8TQlTl
 zheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qTYVVxfz08ji7LisN1HyvD8Q42QQWkxJnHZuQ3wrXDI=;
 b=Ybs297hONxkfb2QqtvEeB8ktOHc0W6HEu5zf0smqsAl3IQjjPlaNK6h5uBtUWkjp6A
 d+2aX5sk64QqZfcnKmuQMjlbNo9ErVPGMflie7c7PtwxaClFH9xNJhXA04xmNKYFd0VT
 ygklFik079kukB8bEKA9f9WBR+TB5lmJ/qU2vnCQbM0zQ+8+ohzkjWFz+ISNFV4i0+EQ
 26pQsuHKPUUAkDkrMSlHUTxAOMcCiuaKekOtlM1Q2UYhBJ5VqES0dOBL8e2g9Soc0Yr/
 XIpdXJD+q0NnbcxPg8eZViLCHcGxPec388cVIhE2zyn4/ttBEULmEyKI3Ky2JSTfbT8i
 8d4A==
X-Gm-Message-State: AOAM53047EFdnAoM9HorC/rrjcQqQh6rlrykQnPvY3rEjXlIdypAKyXZ
 dGJ/xsyyyTkRzapw6DfREBh/hWGExB7j+ijXFS/TwA==
X-Google-Smtp-Source: ABdhPJzq86ruhOqEYU+8gN4yyBiknGW6LZI+KGiMSXNBWuHztdTVyCg6yrBXJo6ofvLK9zohuzrwA6ko4NYCiLa0wzQ=
X-Received: by 2002:a0d:c4c2:0:b0:2f1:6c00:9eb4 with SMTP id
 g185-20020a0dc4c2000000b002f16c009eb4mr6900986ywd.448.1650660348505; Fri, 22
 Apr 2022 13:45:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-18-sebastian.reichel@collabora.com>
In-Reply-To: <20220422170920.401914-18-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 22 Apr 2022 22:45:37 +0200
Message-ID: <CACRpkdaBixtCX=rdMCVJb6QgFhBRZxEnPpDYDzsznx93TL4Jgg@mail.gmail.com>
Subject: Re: [PATCHv1 17/19] arm64: dts: rockchip: Add rk3588s pinctrl data
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
 Jianqun Xu <jay.xu@rock-chips.com>, kernel@collabora.com, 
 Shengfei Xu <xsf@rock-chips.com>, Damon Ding <damon.ding@rock-chips.com>, 
 Steven Liu <steven.liu@rock-chips.com>, Jon Lin <jon.lin@rock-chips.com>, 
 Finley Xiao <finley.xiao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_134550_368443_7F56B773 
X-CRM114-Status: UNSURE (   9.20  )
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

On Fri, Apr 22, 2022 at 7:14 PM Sebastian Reichel
<sebastian.reichel@collabora.com> wrote:

> From: Jianqun Xu <jay.xu@rock-chips.com>
>
> This adds the pin controller data for rk3588.
>
> Signed-off-by: Shengfei Xu <xsf@rock-chips.com>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Signed-off-by: Steven Liu <steven.liu@rock-chips.com>
> Signed-off-by: Jon Lin <jon.lin@rock-chips.com>
> Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> [port from vendor tree merging all fixes]
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
Please funnel this through the SoC tree.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
