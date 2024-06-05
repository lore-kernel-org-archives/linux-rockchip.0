Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA702C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrnUFqdhf59bakACL/lP5evmvR+p3RkH1r8Ks4Tsgy8=; b=fVbq2UzIfzeHLe
	d4qT/SMke+higuyiD3SwSUdxuPNSNg347ZabDAvpcfRhoIlvz/vdffulvLyrRGnKvgYwIDVa1FbvX
	JbY+KPXgDd+Qqs5x0U4jWiF9X6NKj2AK0WnkHE1OepNaOmHK5opdcFJj9dBMVtQ5Wovc6uSkPsjIq
	ofmO3+ekeq6143CWGWV9BVcwW4IadTu/c4ooaQf69iFstXNZDqBvEeX41StX9BiJYagHoRhuNFvFE
	W6Co7dL7SIr/emP1zSx6geTLASt7EglfzcZIr3FO5G8ArGOutbBEDT9Ns7Gmq0xQiku/yGThidTmn
	/RcjlbRZUAUXGK7Y246g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEpdH-00000005xJl-2JiW;
	Wed, 05 Jun 2024 12:20:47 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEpdD-00000005xID-1k4N;
	Wed, 05 Jun 2024 12:20:44 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2eaac465915so22090451fa.1;
        Wed, 05 Jun 2024 05:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717590041; x=1718194841; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=fzL5TdturJIplpKua1xxlH8v79ArVex/tipueVIZFrs=;
        b=L+uAdBJbmQnTj8YO7A0hBWTpfNFITroQvKVHvd1bms89HXAESEuBgM6h+28NG0rDxg
         tFNEXevQucXLkkIOJcZnTZg80IyjQJQh6vdI8cOPknDVazS47jynrgjs8s2vUa+FXOYO
         gmVK5U6zelrANWYPQRdtEeEzs6wkuaXGFAHEgiiAeiEVeFQST51aZeTdOjajnQFU1PoT
         LcvFO3M0Q8rjjOEEIfGkUPhuPKQWkr6KhWtaWEewh08FeHS9VaDFzcq7eTmuRKFNcGR4
         1ug8QT8t/jK4oM+m5tG6YQyrUkQVOGMjIRIm5mIEpLwTF9hDuhY1Llp8lE04j+3cr3aJ
         1UXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717590041; x=1718194841;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fzL5TdturJIplpKua1xxlH8v79ArVex/tipueVIZFrs=;
        b=e0Ig0a65y/d0kNb9mlCisa67CqIqKrXgFZY384P9TA78jiH7uDaGuv6uOXnvCYt0fv
         /XZDSm4LkPVY0Bke6SfBerE7auVLES7vji+F+DKon2J1EVysCa2ZIG2STxeHzaRGW7vT
         9pDIfTmkt+p4G/WW5vmA6aJ82YpGidMd4mEA7maPYwbwsw/chJZY7yuS64wzJ1XSQoQI
         fHGZv3oY4RlOUrbHDG7IjH8Kq060fRBHeHx2swyPUBTEPNAP9mWG/OhOTFOKKat4vN1L
         TnM/R8VCj4yyYC0N+zonJSUu2sYGscO3AZ8STxMU3pyxd2ByHfYQ0TP7zmOrNVABD7AA
         js3A==
X-Forwarded-Encrypted: i=1; AJvYcCV5Y0Jg33/WmYI2W1opWicnU2IWcHXhiQT1DFbByccF2nYDyQRKXg3Og1N5K6xuE7FuGX0o9c6ynwvXKgZJV1XYo71WQgN2omfpgN3ricXc8SpGUTkPVqDUfY4t8eKFSUx0xB9jxR+GTyFEHZsLNZQipBm2Ehn0CsI=
X-Gm-Message-State: AOJu0YxmB4Bj7yrWQoM7srpeVvTRVxbQiDhZSM17CPu0BRmdLWKtyLit
	l2EgGHsRwfTIO26aI9yyZxdxvSCnmKeXlKb0ORbO0SzrbOcCAmMM
X-Google-Smtp-Source: AGHT+IE4hji9mQWX96BplfNb7FUkKIGLYY97JNL2eWEW7amoMmibpGvRa7KTdcjWH1WS3/HP0hIS3A==
X-Received: by 2002:a2e:804b:0:b0:2e5:685a:cd24 with SMTP id 38308e7fff4ca-2eac798a96dmr13488171fa.6.1717590040880;
        Wed, 05 Jun 2024 05:20:40 -0700 (PDT)
Received: from [10.20.30.169] ([178.218.200.115])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ea91bb4c07sm17493291fa.45.2024.06.05.05.20.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 05:20:40 -0700 (PDT)
Message-ID: <8b2f681c-444a-4201-9004-e12b9482d1a7@gmail.com>
Date: Wed, 5 Jun 2024 17:20:38 +0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Dmitry Yashin <dmt.yashin@gmail.com>
Subject: Re: [PATCH v3 2/2] pinctrl: rockchip: add rk3308b SoC support
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner
 <heiko@sntech.de>, Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Jianqun Xu <jay.xu@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Dmitry Yashin <dmt.yashin@gmail.com>
References: <20240604141020.21725-1-dmt.yashin@gmail.com>
 <20240604141020.21725-3-dmt.yashin@gmail.com>
 <b5d2d914-0c2b-4cd1-b894-f894a93a54f9@moroto.mountain>
Content-Language: en-US
In-Reply-To: <b5d2d914-0c2b-4cd1-b894-f894a93a54f9@moroto.mountain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_052043_499749_5A54A15B 
X-CRM114-Status: GOOD (  13.21  )
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

Hi Dan,

On 6/5/24 12:22 PM, Dan Carpenter wrote:
> On Tue, Jun 04, 2024 at 07:10:20PM +0500, Dmitry Yashin wrote:
> Why does this one have a Fixes tag?  Isn't this new hardware support?
> Possibly patch 1/2 was not actually a fix but just preparation for this
> patch?
>
> regards,
> dan carpenter


Initial pinctrl support for rk3308 included registers for rk3308b variant,
which didn't work well with some pins of the first SoC and these reg's
were fixed in the patch mentioned in the tag. So I added Fixes tag as this
patch brings back proper setup for rk3308b and 1/2 indeed
is the preparation.

Thank you for taking your time on it. Perhaps I should describe such
moments better next time.


(resend without broken new line sorry)

-- 
Thanks,
Dmitry


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
