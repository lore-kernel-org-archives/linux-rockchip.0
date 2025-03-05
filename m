Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25865C19F32
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 16:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y82No0l89tdPlVq7yG10SiBGxxccShzV2Hub9fuAWBk=; b=s4323RZxtOkAmY
	6a75kWKwOXsO4KYZSTLr2M3MXcSKY61FpcIV63MXxJAJyBit7GujOWG+MIO+MsuTqnHYFRDp26XmJ
	zpr3HTaZlAzGrXI5hRVO5OaN9BbKZepITOlL56J5kXAOklDcbRV9jdSws6OwXL29gdrfuaA7VoVhj
	Ce/o2WNyMZdllegaWg4A3V2Sn/jhHIj7jzEDKavazpEIjCDatnWlFgG8YcgznUs7bxbfEzZOtK6U+
	/WkgvXDf0AlVa6Wx3L6zSfuVUp34gRbszhML2BrnA6D2JWkXRZm7fdlCPKOl2Qm6hICNfsfuE99XU
	AgN4VL0MywBGtPQ4YZxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tprDl-00000008bRz-06mV;
	Wed, 05 Mar 2025 16:03:45 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpq8H-00000008Qjf-30Be
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Mar 2025 14:54:02 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-6fead317874so1193217b3.0
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Mar 2025 06:54:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741186440; x=1741791240; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/8e1NK0iHuTNXsrRQMu1Rap5op5xIoO/iE7QbD4E6K4=;
        b=UsHyubA7w/YY4IysBxD8Yc0XQHi9DfI0aBrjOE2eJOtunWDLZ733YpaSqYBZo4pp2v
         9as4awnbpruKn8n1Lo86VNivO8nnag/qERJwo9aOFBUpU3zRJr9jeaDUe3+XBYnhxHgb
         kl0dAzsi6Rk/GFmNY8GuZrXkJT5raR1ejGUgrofomtOWoDBwH6OfaqQHSqiUDA+r8EgI
         d2DW2oUt81CkP/ZMESIdFfROuak2R1q29JdydgmyI029JEU8SDMmP+UsDP06Kxpk95KK
         34OdVYsicYBvjFPj+WRqJV00A5Oiez9kglnp/rgQDt4jeprNG4t0S0ismEneZ1v/5TzW
         cFAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741186440; x=1741791240;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/8e1NK0iHuTNXsrRQMu1Rap5op5xIoO/iE7QbD4E6K4=;
        b=BX2hVgwYBXG6lLNRSmYbmsEj3e73M1dDOoABn28/Q2jRsIifelU6ifZSDWXn+M0k0J
         pZtMTE6Tk2QJac7WUrVAhs/DfL9JTTE/QN8MTC2Wx7dPGlDIfmD5wC2fViZi3GCRlOV0
         z73W8Ex5AksnBQpZmLLzh7eNgqRv3mDozxifuMfA8RUpOpCKaewcHeg6tYPkSpZ201fJ
         5VXP/yj/8JC8+qP6xL3FwcWI4a5rqA7TkJlrzNvkGa7Kf+0BDy+PAs43cbRkquyRRETq
         +MaRzvvV3JeEEDw5drsoAZsh1iZEbvHqdo/U+SD40ONnsqOyPzGez6xrv58ZKGvVL8ap
         Viqw==
X-Forwarded-Encrypted: i=1; AJvYcCWhpS10sU9N/NuO/NF2xD5PV5rXdeNpvJwaLuGTAoAePKuRnkcslPxuHHLrogbPNq8KvuXrfJ96c6AkbCFb7g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz9rnSFfh0KApp65u7Ekauuv2jNn+eaNSpQvy1bttDumAyMyFVm
	tMSn48tC/a+y3L9sbuTc5RgLc9yoxihrOsAkjsumjKy5mEzagP651q90IBsqTLTHfdxgDmd+Nn2
	a2NjodSuHMGI6diDccbP4Hmpvtg4ipXkv19uidA==
X-Gm-Gg: ASbGncs+SYtjs5ifV3u/fD1Ef9gzCvHHOsOQswxx0Gwtj+n4u+kYx7U17WrL80wIR2I
	Mf3RgwUgqvgZCpd5TxK1t5ql/E9oeaYw2YboiBu6wewb2ld+KOS9ExvHmbVj8QD61sTW6H7Kr5D
	Qwm44pSeXRewxKzTXHFYMyEdIf/RI=
X-Google-Smtp-Source: AGHT+IHVMDgrxpiMAMts0+d6pAHMmbs+DKlyOlsJcQRgBdUnM1Arh/L/Y1HIIcETYwiUqxFlkWz35mNO77MdJGM7YEc=
X-Received: by 2002:a05:690c:750d:b0:6f9:e609:6a4b with SMTP id
 00721157ae682-6fda30be95dmr42050127b3.23.1741186440140; Wed, 05 Mar 2025
 06:54:00 -0800 (PST)
MIME-Version: 1.0
References: <20250304142803.689201-1-arnd@kernel.org>
In-Reply-To: <20250304142803.689201-1-arnd@kernel.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 5 Mar 2025 15:53:24 +0100
X-Gm-Features: AQ5f1Jop9maVmyVlQa4pDNjDZNA9U2rexGCX4_vVPocLK9GIMh5i3XadhUynJ5Y
Message-ID: <CAPDyKFo79xyTOKxN7A52J2Et50++fifdosUpyb2mm3NMc+EC1Q@mail.gmail.com>
Subject: Re: [PATCH] pmdomain: rockchip: add regulator dependency
To: Arnd Bergmann <arnd@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sebastian.reichel@collabora.com>, 
	Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_065401_775125_86ABCC41 
X-CRM114-Status: GOOD (  15.56  )
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

On Tue, 4 Mar 2025 at 15:28, Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> When CONFIG_REGULATOR is disabled, this pmdomain driver fails to build:
>
> drivers/pmdomain/rockchip/pm-domains.c:653:30: error: implicit declaration of function 'devm_of_regulator_get'; did you mean 'devm_regulator_get'? [-Wimplicit-function-declaration]
>   653 |                 pd->supply = devm_of_regulator_get(pmu->dev, pd->node, "domain");
>       |                              ^~~~~~~~~~~~~~~~~~~~~
>       |                              devm_regulator_get
> drivers/pmdomain/rockchip/pm-domains.c:653:28: error: assignment to 'struct regulator *' from 'int' makes pointer from integer without a cast [-Wint-conversion]
>   653 |                 pd->supply = devm_of_regulator_get(pmu->dev, pd->node, "domain");
>       |                            ^
>
> Add a Kconfig dependency.
>
> Fixes: db6df2e3fc16 ("pmdomain: rockchip: add regulator support")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/pmdomain/rockchip/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/pmdomain/rockchip/Kconfig b/drivers/pmdomain/rockchip/Kconfig
> index 7e4f9b628f0b..218d43186e5b 100644
> --- a/drivers/pmdomain/rockchip/Kconfig
> +++ b/drivers/pmdomain/rockchip/Kconfig
> @@ -5,6 +5,7 @@ config ROCKCHIP_PM_DOMAINS
>         bool "Rockchip generic power domain"
>         depends on PM
>         depends on HAVE_ARM_SMCCC_DISCOVERY
> +       depends on REGULATOR
>         select PM_GENERIC_DOMAINS
>         help
>           Say y here to enable power domain support.
> --
> 2.39.5
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
