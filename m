Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91701EEE26C
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 12:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Xq8pC+j6cPlhoHv2b23Kigq4fGZUmME7ZHfl2ob1Qw=; b=Q9e5mOJPFZJsEo
	9TcxumZmklEdg82NsAsAICpTopmC09GdNSISdhaPYkAHR4SyZfxYEpFYmHQFZBulHIt95DxOqmqva
	uJzi5nGQ9HWeUlDbQoaOHKJDC6Ilzy3tTpvl6/WtSpYZ0t2ic2+s9qNOztlGMtm9QQq0bvWgJtc//
	mNtZVVJj3ow1saBg9lduK9oI6dN9+ya5RvTbFcGbD8t90Wgp30ZNPko1vxy1bdnA3okTQgZnpcbgF
	mrh3Q1JQXXP3U+7B4T1wQ7Woj9VHmZKibMZgKLBFJe81+t5SfXp4v6zvU1DPSekx9GOKT2yJln/gO
	t4r8ut5dydxYCtxxyw5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp55V-0000000Fpks-0SwU;
	Fri, 13 Sep 2024 12:07:45 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp50W-0000000Foq7-3L47
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 12:02:38 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-e1da3677ca7so1551649276.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2024 05:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726228955; x=1726833755; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mcAm2/IOLoHziP4KJeQzrLPo6iRoaonV073IWS+KZ98=;
        b=znk6hwc3aRT4gp9nHVlU/crqch8zDffZXoj3KhSu4tsHfsAxZLFNQHVQcNi1E8W4hc
         xW7/2C6GJGnM5lfUHI1Vu9rHuPaokTDpW19js+ag/jOgaE2uum16yXVXz8E3dHRRP5AP
         bFFfTrHuF0XwlUae3ngdmop8rnYVVTVDmzNfg3rHHuR/xYAP10tVOYwlha2H1TlSvwEG
         WD+bhwdiFUNw2NcgmRwySICasaGLJWoWQQnvoQ2UK2L2usrwEEdrCivozjHQLHN0So/3
         BYykQHaePiI+11wrLwCn9aEdEVusbbdfgnIlDWj5xYcU+rigxhyCHh6yfuiceuJOsUsu
         lMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726228955; x=1726833755;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mcAm2/IOLoHziP4KJeQzrLPo6iRoaonV073IWS+KZ98=;
        b=YDNRp3FioF2vcZoUNFbBttDUG3j6cjppqU4yxKLLlNCd/Y6Y9SJ7VUHfjJsdPXI1Om
         rkMUxnp3giR8y/0gUOoTATYD86dHSzgfLZFfJTUhnMmCqiXaLTfNy80BjgqEnrJAn4hb
         JkoQG0lpAPv6Or6TKfXu0wKvP3d/0chAivlvv4qHUQ3jo7AC8mcrn1hcWYPInvu0uweI
         SxpLBxLlymXeFpJkL4QEZpi5tPiCLgPyNPU8LPskd1LeyQ4lcSa0iQeKXqSuCnq/U9fx
         d1ghiLpqK8o3lmK55d+B+q7avC3cgTfTT4rVEpRTyrJ8bdq45uV76bxtcPw9BQx9ySqN
         kwcg==
X-Forwarded-Encrypted: i=1; AJvYcCVhF5VheoaGdFRR32yp+r0Z3YRqF3N4TqEvW1MpNbz0XVQECbqixSwXQg90wB/oX+HelmE6toMnchh0nAKV8Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxT7UqwTw7B/gkM7UyW6teEQnQAIA2BlvhTi2qyHwzpY6XH11lo
	MxbpBrxvuZdc5fURGD50GPJU19XBMV/7qeexxgMAX932OKyETS94+nOsNxCx9wwOSoAicN1vCGw
	+nY+vHxkJnkRMEcQl9lg8GIWBKxDxdu/Vsaqzkw==
X-Google-Smtp-Source: AGHT+IHiP9b6dJV25d/Htzen2O7catAWENjnMqHmAX2mIxCvI/j2Vrccz+v9rt8y3xny5gEO6++hJXVM9Bd8jPS8hus=
X-Received: by 2002:a05:690c:6683:b0:6db:d572:aa7d with SMTP id
 00721157ae682-6dbd572ae48mr7812527b3.19.1726228955300; Fri, 13 Sep 2024
 05:02:35 -0700 (PDT)
MIME-Version: 1.0
References: <20240825183116.102953-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240825183116.102953-1-krzysztof.kozlowski@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 13 Sep 2024 14:01:59 +0200
Message-ID: <CAPDyKFohY+p8c9R3M82jcGrRxEA6V6fGyOUBz6ABMQQjyxKBzw@mail.gmail.com>
Subject: Re: [PATCH] pmdomain: rockchip: Simplify dropping OF node reference
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_050236_847002_CC073148 
X-CRM114-Status: GOOD (  14.08  )
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

On Sun, 25 Aug 2024 at 20:31, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Drop OF node reference immediately after using it in
> syscon_node_to_regmap(), which is both simpler and typical/expected
> code pattern.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  drivers/pmdomain/rockchip/pm-domains.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
> index 64b4d7120d83..5ee7efbd2ef8 100644
> --- a/drivers/pmdomain/rockchip/pm-domains.c
> +++ b/drivers/pmdomain/rockchip/pm-domains.c
> @@ -716,12 +716,11 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
>                                 goto err_unprepare_clocks;
>                         }
>                         pd->qos_regmap[j] = syscon_node_to_regmap(qos_node);
> +                       of_node_put(qos_node);
>                         if (IS_ERR(pd->qos_regmap[j])) {
>                                 error = -ENODEV;
> -                               of_node_put(qos_node);
>                                 goto err_unprepare_clocks;
>                         }
> -                       of_node_put(qos_node);
>                 }
>         }
>
> --
> 2.43.0
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
