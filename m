Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13240C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Apr 2022 22:55:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QcUhc8qa1mAnZ3q8Cf70eeHuN/UO6lakeANcQbu2dWY=; b=UbtY/t1jViNPhW
	yW4sRpdubESOmtjjqIIDLxB+BXIqo6FT/fdmoxCvekVxxL7TbaRhvdOj+lQf298iQMzZFs6px6dTP
	bZe9D91DjrlwdHMbxCvpBKfp6stTg/DLTNAQ3olR75xNIt201hpM2KJlaX+WHdVYDnt92G3T+qnIn
	n9g+r8zw9zs7U201OBqgALeg0O8Ej8XgVhHAM8s3dytYcj7jzFlodkHpv00Mx7hIoVLxdfotyS6Yw
	6nqMVAwbn6/GiejlGggwVCY3NJsPJ+fJsfHVWqRtnS9VLtjrKv+q6wogj4/X+RashAjWEywL/aVn4
	1KnvgsCOHwxzQwHLJ5/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkD2Y-008tk6-BT; Thu, 28 Apr 2022 22:55:14 +0000
Received: from mail-yb1-xb35.google.com ([2607:f8b0:4864:20::b35])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkD2M-008tf7-JL
 for linux-rockchip@lists.infradead.org; Thu, 28 Apr 2022 22:55:03 +0000
Received: by mail-yb1-xb35.google.com with SMTP id y2so11600756ybi.7
 for <linux-rockchip@lists.infradead.org>; Thu, 28 Apr 2022 15:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cgTFMUsq9gVZz59+3kDOySK+OVbeH8W2pPDccjzuXKE=;
 b=ov2q5f2yE12o/uS00CPcFLtntiChTcYemtbGaDmhDAusLUIMEjB4VaNqGcC3WNcCPd
 L7yYE9xuB/7zZyKq9VQCxp2jIFB8CR7OFU5ZyhIOoVX3kFdYNID85+1a7J1f7sxAjjtG
 W7h8rWHl0hDVgXzxH0vvYzqteazALEC74JXOYii/DLzplO/NYZ0Lc0/ot+q4NvVAqt/I
 YIiJgCRu8Bb3hGo76YEBHfVL64mDFlBZKDBoB33icT3OC/SkBRmpCz6Nglkboa6ia0jE
 dDwfvH+RJVmQAqLIK8xM+VJl3XthUy4h6wSYEuLNngxFj+VdGOtvJcl1oBXwOwCsjeKl
 KreQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cgTFMUsq9gVZz59+3kDOySK+OVbeH8W2pPDccjzuXKE=;
 b=hO1kctL/rX5939PC93TiIWJ39jrJNY087pUTDCfQ+9jqkaJeyuRwRzT5q59E4rUyos
 GFq6W/udYbS8rogieJp2hK6jkkXRIY3hGuMRdLHfgLv9WnSMMobCoDg0oN8vLL9ccMir
 Q3sSm6FuX8XcA/vZiElOioQI9IAyJBXIcSJ6kZ/Houa3uY8I446Zp+kA7Kik/LDAF52h
 RoD9Z4N4WOZRWtYYkEIuf4z46D/YLbTYWeo9d9/J8wBOWl4KWu8Lbyi40Y5ZLpfOInFb
 G9JBgd+stDWKr5PcBP/DhPb5YaLhLQMieK2HsbipV19OC2YUJDsLhdPvvfO/JdIQYc3i
 bxiA==
X-Gm-Message-State: AOAM533B2uSz/5b9JPd3kaRTfAsssQ+Q3ZSHhID7dG2MIQs4VBROb9Hc
 Sv/e99LtyrEluDqxxHI4eJM3WCsCiLgW/IOOcwbNJQ==
X-Google-Smtp-Source: ABdhPJzzpmlI/Pkjo7HQbAq5Q2zszomNzPfs/JPPXY6KHrXgc/mt8oB2lus+Oi/UtX2SN9COoG/Tm2fMjSmMEsomV1M=
X-Received: by 2002:a25:bcc3:0:b0:648:7360:8e75 with SMTP id
 l3-20020a25bcc3000000b0064873608e75mr20334083ybm.533.1651186500208; Thu, 28
 Apr 2022 15:55:00 -0700 (PDT)
MIME-Version: 1.0
References: <20220422170920.401914-1-sebastian.reichel@collabora.com>
 <20220422170920.401914-13-sebastian.reichel@collabora.com>
In-Reply-To: <20220422170920.401914-13-sebastian.reichel@collabora.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 29 Apr 2022 00:54:49 +0200
Message-ID: <CACRpkdZZGXMV5cnZpdat1Z_22CZE-gGfCqRHpOqnd_asw_KMwQ@mail.gmail.com>
Subject: Re: [PATCHv1 12/19] pinctrl/rockchip: add error handling for
 pull/drive register getters
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
 kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220428_155502_664116_EFA7B453 
X-CRM114-Status: UNSURE (   8.01  )
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

> Add error handling for the pull and driver register getters in preparation
> for RK3588 support.
>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
