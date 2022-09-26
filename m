Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A7E2C07E9D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Sep 2022 18:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lX3tdFdm1s6SFuVuRCm1+XzFRKMTjC5HH85XxBlTDQY=; b=or0JCBFDNenvBe
	lxMxuw4KjFco9zob2WmSNyWPYA0rjB+xOjForab3hCwHSUTymz0arNbLbmaJ4zHGEZavVrimhzoLX
	3ZzRsFAewh4RVFa6b8bjCO3ZVUZ0hnKAVdB85s7yLIrrbMrfa5JeQXHmPkZdKGGHi+6Dj7BiZHxjZ
	ST3ZnGCE15GPTIgpqDi+1e+8s5Pkk2kdGvfUkZ2cDp+BY0FssL8ETH8m9lW98MBEwYPPOKHpTzJaO
	UnEhUx9OJm1wpkw5NmngqipNJr5jaHaxWwU5QpieQnQ53ZK9YrMZnIQs6pYtr4nIjDj7KeRvMA/B8
	sUjKNpZDO02fwq1+wc+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1octJK-006V0O-Jm; Mon, 26 Sep 2022 18:58:34 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1octJ3-006Urf-HB; Mon, 26 Sep 2022 18:58:18 +0000
Received: by mail-wr1-x433.google.com with SMTP id z6so11700513wrq.1;
        Mon, 26 Sep 2022 11:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=b51V4plCUL4WHeMpsECbX9KPKiOMw0hpDkxBUOciEZk=;
        b=o9i2mXIdY73lmJnAJ2RDSYA0TdnbJhPv9g1pIOieOfsIut5ZXfWi7fka+SVaIVQrpC
         fJhr9SfKXKI1RV8RciAeZuhIHYkAp1YTVjhwul5hjjWl3r5S3EiKFZCPdFZNlYAQVHSr
         aeVCW/ecepoqg/MigdoHcgISD92hmANVAKzmH3rS1AGO/5OUDG/0W7yCNqi6ZkNQ48ix
         8BL1cZD4P4zvLYqkjGRWlAJvrhwrgO0Zz6ec0bcmsJX016ukZb/7b7114DfmerMeWG9K
         eYnnAfBZ2YRDmSW02txAs8BjknaJOR2Ea8am7ywStjdllkw1VwJwJ4tq8gKSMdIQYSek
         vwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=b51V4plCUL4WHeMpsECbX9KPKiOMw0hpDkxBUOciEZk=;
        b=fXb3SX1yHMfD59prkSMtL9ICgTc+ZNVE+rGNwhLpVneqyQ2Fz0nyzUjsgX5LkNlOtb
         AD8Dv338VGT/syXKpXEx1//5TnZAB9D2aM3u0x6EObnhKgdcgbGkS6t78CPP0aWH+ZCS
         OHVpgESv75kAEDcPrhkbbAYJhHhlWN7hykuK8LE8uP1qtkoYt7uFH2ALo6wQwC6QvkIF
         KeQM2Ct+KeB5VCH753htppLZF0epOlNmjuEAzG3w8So7zHk+ak8yuwMQlYnVZj+hC5VN
         PS45sUzFpFns8F/9GQJhRvw6MvOui7hpHqo8H7Tb/R8ODP9k54irIFk7tA3BqvAVjG4d
         uv2w==
X-Gm-Message-State: ACrzQf2VFPhyxNoFbNFUBu3zRK3nVSb9SC4XP+u7IyGRsibZJuwj++Dt
	yu54Cil7h0zS3MG/0LoPIu4yuvPkeJKmZ9MOGFjOeKBm
X-Google-Smtp-Source: AMsMyM4o9S0JLW31kqivbGPokYf8WNbp2BrtBWO5HLa0mm2Kx/odZjXAP6MdNsYxR4axzpKD2rIlsO351kktMiJ+A5o=
X-Received: by 2002:a05:6000:1882:b0:22a:f7a2:736a with SMTP id
 a2-20020a056000188200b0022af7a2736amr14388076wri.691.1664218694543; Mon, 26
 Sep 2022 11:58:14 -0700 (PDT)
MIME-Version: 1.0
References: <20220926183533.1893371-1-aurelien@aurel32.net>
In-Reply-To: <20220926183533.1893371-1-aurelien@aurel32.net>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 26 Sep 2022 14:58:03 -0400
Message-ID: <CAMdYzYoR2caD2ecN5vGTiHejoE5AhbyKxSgSeU1+SzU7nNVTwg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add missing rockchip,pipe-grf to
 rk3568 PCIe v3 PHY
To: Aurelien Jarno <aurelien@aurel32.net>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wunderlich <frank-w@public-files.de>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_115817_605641_A1626F97 
X-CRM114-Status: GOOD (  18.51  )
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

On Mon, Sep 26, 2022 at 2:35 PM Aurelien Jarno <aurelien@aurel32.net> wrote:
>
> This commit fixes the error message
>
>   rockchip-snps-pcie3-phy fe8c0000.phy: failed to find rockchip,pipe_grf regmap

The pipe grf only is used on the rk3588 device for this phy.

>
> during boot by providing the missing rockchip,pipe-grf property.
>
> Fixes: faedfa5b40f0 ("arm64: dts: rockchip: Add PCIe v3 nodes to rk3568")
> Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index ba67b58f05b7..8818b283ba11 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -56,6 +56,7 @@ pcie30phy: phy@fe8c0000 {
>                 clock-names = "refclk_m", "refclk_n", "pclk";
>                 resets = <&cru SRST_PCIE30PHY>;
>                 reset-names = "phy";
> +               rockchip,pipe-grf = <&pipegrf>;
>                 rockchip,phy-grf = <&pcie30_phy_grf>;
>                 status = "disabled";
>         };
> --
> 2.35.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
