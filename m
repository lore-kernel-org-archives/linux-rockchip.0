Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 610A7D7977D
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Jan 2026 16:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYEtgXnzF5YfO4Et8vlZetmmokx5/fycHgOGT+kGeXY=; b=VHvEEQ2NI1bDyt
	LkdZt4EQacQn0dtg5dzuSDJw6unQf3BYk1QUiV7pt1ONl4P8iW75J1dbWtR4kVo1hCq2XEZcBglUa
	+oEAlsztRznhYgxdWBa5B/DSu9eQk3QruPDIsxC5Cw1miJzH7WTZ4RuUMfvCkvvPbWNKuAHXomIYa
	6k5Mbyi0/ql4zQvhfMT26vLim9Cmg7NClTPHZ/hUYjnnddkryatazva/QdDSqqfl3Dre4DfD4tR9m
	3uw3Fxd+cJGNJlHcG5o7Ddo9TnHYwLJcIvDbJz6SkhRbyWOQvcX8+FSKOgbgCtvD5I4ksV/Fi4vp6
	ZQbnktWbvxvF9gn79bEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmDxY-00000002ooS-0KoT;
	Sat, 31 Jan 2026 16:36:32 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmDxV-00000002oo5-3Qfm
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Jan 2026 16:36:31 +0000
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-64d1ef53cf3so3882709a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 31 Jan 2026 08:36:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769877386; cv=none;
        d=google.com; s=arc-20240605;
        b=aOnVX69ViHMpgNyRPvrTLzroDIVPfvrCYJSIesI7CiG0wXTfCg29EOpVGyAoZHZLj/
         JXdIq6amou90HH26aC8H6W7kF1xPtFGZmBoyj3DCHkw/XDLkMqu/mBMzf8n0dyUKCXCG
         Vh6WgXpcKGVLUaeXwti5gl5NhReYvcWwVkqqnhfCEFhYk+9O1mQyKK2+RJfnc2yqdUNF
         JsyGVTtFIjcmdUz0X1h2qozCjawnbCtoPQntHyUf+vRVNjQp+h+ZdDijiVjcL4fpLHKw
         dRBP5XD49lXprL+qZnX54PkH0yIAV56dLxntmM2t8kZ2r2flo+cNSZVWVnhflcf8LcMG
         g23A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JnoW4al0mNbaBdedUE9Qyqhu6YNYU462VTLyz16vIq8=;
        fh=GgN72ksa4Y2sB+6AZn9QIrgkArC7+Cwy1QJxxdp4ScE=;
        b=Do/jAEjbBd1jyez8mcRun5r08wyBj7TCJo3bFZt4kFA7SYjGo/y3pEGV+DssoG6zh1
         0C6LEM27B5RKfKKB7Ozwh04PEpRk1pILI+RtbTNbhmmsRU1LePzwYyszcuL4H3onW7BH
         9mYemTqoxhP/QCO+crxisZUdsSyjUnnCu/oJcjqoKx9EdVXBsrXbnonaMcAJQe2I09aR
         TC3bb0dwjpnwwTkuwqZN9y+nLAkdDJ3rp47eF/Cws17FTngq1Deifb/tleS4nF8LphTe
         iV6zaXxZlnJX4G4Ql+ezXiLMH5Br/2bUao1BruU8UCAgMXYWdOBVlaobhOfpm7E/7B9I
         w6dA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769877386; x=1770482186; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=JnoW4al0mNbaBdedUE9Qyqhu6YNYU462VTLyz16vIq8=;
        b=OWxPuG0jJ0sQP5woOa5lYKpDuxb4OlOkMvDa4S3yqBazb3OUrTelPsYYMWCfUJM6rz
         qKVBAo22xolh/NiitrxPCo81J91lGWfhnYXNh0VPI6i7s8SkA2Mx9fmMpfGlurQ/6T2/
         0/CmOQJRahKez6n6VYpEGWn58xAGWOlhKlkQttNbhlb00cpCIhUiAgWHKYxtd2yEYIfD
         xePNnfKG+Hx8Fg1NBAxsb+36TOVKZoMEPCKXi4CM7MQ9B0tAnIpyyQkZ7bBCDvNkfApH
         hYz/xU5Bnu+8AfmnwCQlHwOY024eRAU3nOlQMhzk5jtzD/VT2sT98bnvwTquM1tYysx7
         V5zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769877386; x=1770482186;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JnoW4al0mNbaBdedUE9Qyqhu6YNYU462VTLyz16vIq8=;
        b=QXnIaBQMnsNXNKoi6E4MCohCp6fULnlSX5pxjwtcChYGckQQ1Q3FF6yxobeLkmvJFp
         H9F5IJgmMKWhkr63WFhMr+x6AdE7tR9BjaBv7bP5ce0jlB9rnulMm4igNPLNTHlQ9CNh
         w/iemMc6j4U3sAJhoO9alxkEdw/gv6QeXLeJ4UwLaT6VoGhyMePpG7g2tBXOP7Y3vciq
         IZiCSrWeRIjj17DIzQ8aihyvbJ4yIM5WDU5h3ZQ6DjUFcTYmwGsR8DGTeQ3gOjfA7w5J
         Fi51ynIivVaMWEuGDTV4bPup04Ci873qg+nfx+TtZmx59iXVujVIV6O06sTFLXJNYYdU
         pinA==
X-Gm-Message-State: AOJu0YyacU765JkiRd1r4wZNp6IUECYI5leK1bVMP281ULf4V0GYe2VC
	VDigkmFuZJ02oBJOq7jIFmqHJtOD8lGo4b8tOXQ44KcgInV4vvXOd2r6bydTnZFppbL1Yu/HZ4G
	3P/YvRvyNZN/Hf3kMxMjppSMFJN+k0rM=
X-Gm-Gg: AZuq6aJS8ptNrk+6UqFBuq2NSwSNof3+8bLQCd9Baz76/ct35x+KszVJFWkTbinSpOS
	Ncp2LXZUe1w8g07q+vA84vDLYRGYeWGCKi3STfz/CpCxFLa/3JNF95G3SzEcnBX78LaQwx+Rm6H
	HF6Pey6NWML+m3SYta3pHKa/l1KLP/lPjgqxMv/cAou8q0LOinPlu0d+OBw/er+6ntE8UsoShG2
	Ys4jfFJZl1GLNvFLHSE729d066HKpcIscSMFeHXjZ3GZOUwo9vuq1xu6O1zJIsK888=
X-Received: by 2002:a05:6402:2102:b0:658:177a:292 with SMTP id
 4fb4d7f45d1cf-658de591688mr4030908a12.17.1769877386201; Sat, 31 Jan 2026
 08:36:26 -0800 (PST)
MIME-Version: 1.0
References: <20260130163102.51757-1-macroalpha82@gmail.com>
In-Reply-To: <20260130163102.51757-1-macroalpha82@gmail.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sat, 31 Jan 2026 22:06:20 +0530
X-Gm-Features: AZwV_QjchRCrYC_yJttjWPkEMkaWqVB5nZ0R-eksHarV0kTlv1jyKo_0fSMWdDU
Message-ID: <CANAwSgRB7KfkBeniXypjS+p5U4=WfXpZyE5pk8vyMVQGX+Ev7w@mail.gmail.com>
Subject: Re: [PATCH V2] pmdomain: rockchip: quiet regulator error on -EPROBE_DEFER
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org, 
	jonas@kwiboo.se, pgwipeout@gmail.com, finley.xiao@rock-chips.com, 
	kever.yang@rock-chips.com, shawn.lin@rock-chips.com, 
	sebastian.reichel@collabora.com, heiko@sntech.de, ulf.hansson@linaro.org, 
	Chris Morgan <macromorgan@hotmail.com>, Diederik de Haas <diederik@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260131_083629_881832_99EDB999 
X-CRM114-Status: GOOD (  20.10  )
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

Hi Chris,

On Fri, 30 Jan 2026 at 22:03, Chris Morgan <macroalpha82@gmail.com> wrote:
>
> From: Chris Morgan <macromorgan@hotmail.com>
>
> Change the dev_err() to dev_err_probe() under rockchip_pd_power_on()
> to prevent errors early in the boot process when the requested
> regulator is not yet available. This converts errors like the following
> to debug messages:
>
> rockchip-pm-domain fd8d8000.power-management:power-controller: Failed to enable supply: -517
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> Tested-by: Diederik de Haas <diederik@cknow-tech.com>
Reviewed-by: Anand Moon <linux.amoon@gmail.com>

Thanks
-Anand
> ---
> Changes since v1:
>  - Simplified return to single line
> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 7 +++----
>  1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 997e93c12951..6d3fb18f4ab3 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -705,10 +705,9 @@ static int rockchip_pd_power_on(struct generic_pm_domain *domain)
>         int ret;
>
>         ret = rockchip_pd_regulator_enable(pd);
> -       if (ret) {
> -               dev_err(pd->pmu->dev, "Failed to enable supply: %d\n", ret);
> -               return ret;
> -       }
> +       if (ret)
> +               return dev_err_probe(pd->pmu->dev, ret,
> +                                    "Failed to enable supply: %d\n", ret);
>
>         ret = rockchip_pd_power(pd, true);
>         if (ret)
> --
> 2.43.0
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
