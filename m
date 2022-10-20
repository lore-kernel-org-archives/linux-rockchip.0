Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE5AAC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Oct 2022 07:11:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AXQyVOuysRb5OPqSgpkvwQ7hKGGChJZBdzDZKLO74Xk=; b=lJZDaPMa+lXKz/
	JFoWtbsVMMHNzc+zSOIuDPMLfUrvQznFarw9kfkuFN3saXvwDT1AfWmdFfLkfe5qM5cxVFryBk6OW
	jherleoZw7DIXK9W4GtpUDz5hN+JLUZgdHKtosydyX6WZyrkSZcTekopXIkBOhjR7BLgt4kiP20D+
	gjfFmXLQFNuzV8itGC3TkE+7rlKlWksWFfkIKr4Mmvf/IATYo5iTszqegUOXhclpIalWepRQN3Uxh
	T3P1HxknFAG10ij//u4W0sHbq1yf5prQll8RQwTQoNjZbh6RMq/pi0v8Z1joc3GtfFrFRMEGCfs2J
	HLMqW305QlY0fDIroS7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olPiD-00BVer-Bs; Thu, 20 Oct 2022 07:11:29 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1olPhw-00BVJ1-Uk; Thu, 20 Oct 2022 07:11:14 +0000
Received: by mail-pj1-x1035.google.com with SMTP id pq16so19002371pjb.2;
        Thu, 20 Oct 2022 00:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o14aKBVXRwo9Env9/Sdjz6GykHBkWTcEWRdqq6tPKjw=;
        b=LXu0cxLTaH4YvrhSyqJ25Pjhinotg2sT2I/mhB9ONXgrCqAGbJMOqP38QqVMV59SOB
         IyfUKWIZgbInxANeUrX98dq4YnyNAH+WmhatIos+FNS3h8K3jxexoUBMlBNzlTm7w8jR
         OsJJwbSyIm2m+Tfm1KYySNrslclmCXJvvXmWbr1GKb8e9byDmW5Ri5VjFrqBIee0SafF
         QPEqYgQhMWDyNpCK6Z5YkgxAYL61ID7zatCqaKYFnEf6+TdLhuNGoEIJd4WEnQvd+S0a
         bDK/xcRJxnbSs3OcHTvBYpFEIA3yIP6OuyE4sZV5nojcc9gZAYSA7WhcH+X4o4+MDZYP
         rWeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o14aKBVXRwo9Env9/Sdjz6GykHBkWTcEWRdqq6tPKjw=;
        b=jaSu3pnad5set+StYLyDh2jHqiQfvVAWR7foe7CAWc890ZW96+KL4UBhl/Q8mmJ+pa
         NiqHNqbUyAOaXrNum43axRRK5dt9Jwvd5YcZKD0f/Tp+4aI3yN67lM+IzKlgszOxK7Yl
         kcgOydHGtzTmGeXUPOzNdH/0djfB15fI7gZE+eEzf+p9umizMFMu+PzyGAJYHjDfuTPM
         TpRcxzZ3xlWUeYgDDjvmk1X2joOZxhpIdLNPyKyHt2cUgnhOi2FpImxdKdOgNpca+yGp
         U4T28U1VGy6Zpy5Toy/vN2PaXp2WyfnUFxA5FXnU8yhk+g/whavQm88elMKu+PSBAfgw
         PqGg==
X-Gm-Message-State: ACrzQf0csNtgQ/MCs9bGWiX+zglOMYRri8xWwz//vAW+pmwNZBhW+7yr
	VNU1A2z3MOmjXhmSarLIRQ3OMx+V1lg7vlEu1iU=
X-Google-Smtp-Source: AMsMyM564QHcPQumcMpoCcLSCXb0tZVcVZEecVLlEHQuuO3Z4ZYlxS6JdMXJ7jn/Z4LxXpWAo/Y5Ecv1zqMAND2/0XY=
X-Received: by 2002:a17:902:ea06:b0:185:3d64:8d55 with SMTP id
 s6-20020a170902ea0600b001853d648d55mr12429271plg.7.1666249869972; Thu, 20 Oct
 2022 00:11:09 -0700 (PDT)
MIME-Version: 1.0
References: <Y1AqBnPSyu7PpiwP@deskilmich.example.net> <21c35744-eee0-ae31-dc54-3e7e1334ae08@gmail.com>
In-Reply-To: <21c35744-eee0-ae31-dc54-3e7e1334ae08@gmail.com>
From: ilmich <ardutu@gmail.com>
Date: Thu, 20 Oct 2022 09:10:44 +0200
Message-ID: <CAK1Nf77W=_7xnDfEjKr=N9Ot0WSgzchEJqJ5_PXOMcvfiQKd8Q@mail.gmail.com>
Subject: Re: [PATCH] arm: dts: rockchip: add crypto node for RK322x
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	Alex Bee <knaerzche@gmail.com>, Corentin Labbe <clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221020_001113_053737_FCAD5BAB 
X-CRM114-Status: GOOD (  13.74  )
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

> Hi,

Hi Johan,

>
> Compatible strings must SoC orientated.
>
> Something like:
> compatible = "rockchip,rk3228-crypto", "rockchip,rk3288-crypto";
>
> This string must be add to YAML document:
> https://lore.kernel.org/linux-rockchip/20220927075511.3147847-25-clabbe@baylibre.com/
>
> The status of that serie is unknown to me.
> Not sure by who or when that is going to be merged.
>
> Johan

thanks for the feedback, this is my first kernel patch.
Maybe at this point it is worth trying to combine the two jobs !?
Or do I still have to modify my patch asking only to add the string in
the yaml !?

Thank you

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
