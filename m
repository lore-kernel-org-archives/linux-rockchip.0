Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9E28CD342C
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 May 2026 17:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVf2XJep7ZJkYWmMAIg6C0yeo8rh7m/hnu1uYt5qiOk=; b=n6SI2YgXJN2fj/
	nuCDuz9eJfLmswVJz1YG0tIDkfQGKP8hmrZ+GSD7wKPPKeb9hhDn9imHgaELs9xPCFQyih4yVsrNp
	mDcdf1sIXPcQT3Xj4djnwtBMLCoP7O5yT8Yr06Kw5VYe0/IjTcK189hm35e9V2uO/L3wrmY/rha+D
	jK6xXzQk0UF5WbEIbbZZUyjH8j0TN2WtIS7TF9ozNRkqC+FtODTdCQP8oQPBOWcxqNdDuKDiUqNzo
	t7Hfk8oVDdw7IFJ/q13bvw900A72rmeRnqsnwBu2aWqETvznvGuGPkHG6JkAO/6WmNtKxCMY47FwU
	9fJJgRh4rKUl19mckENA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKg5H-00000001fFg-1DWK;
	Wed, 06 May 2026 17:30:55 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKg5F-00000001fEl-1SDv
	for linux-rockchip@lists.infradead.org;
	Wed, 06 May 2026 17:30:53 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-35fb0bb27e7so4556028a91.1
        for <linux-rockchip@lists.infradead.org>; Wed, 06 May 2026 10:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778088652; x=1778693452; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=q92pYl98bSnKhgO0g+LA6h/wojvjo0EO8G9dXoXq+H4=;
        b=ZTEBbl9ngzE7cwB89IxAL5fTf0+t1n/xRcZrIH42Op7hUlhXpGtwUHgyo8XEg0wa1t
         78c5jANCq9io4WfADzSRQGgukYZpXW+jBYcIEfO1HNr17dPBK5jxeBweHk30xmEfM6PE
         exGVtyEspv7udAvgOzAsuYMDoBaW4Cw2+jrfoPT1yQdtR2WsfZ9xMHOaEpki0FOP8o+E
         AMuHlV/5yuj+xJr02DELJu8bLS4YydEgjpCiicbxNr5dgQvbLafHN/Nhh+wgGAvsu3g8
         S1KHHhKnKc8n8E/DITTbVFWZi4BY48s+zbRUAWrlkCxU384GYzNF1oTLZLH6SNUOlIVT
         +CRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778088652; x=1778693452;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=q92pYl98bSnKhgO0g+LA6h/wojvjo0EO8G9dXoXq+H4=;
        b=sBuWGw14IsR4pVWKq19P79iWi3j73lgFTBR7JYzYdA1ctDnyePza1cBCWb2xU4jR6N
         4ehFb8knxQvI0WtKvasr8HmYdQR/MjYB26mkUP7vE2oa1RKudYbIW2KcMuT4QsQoZ4+W
         embhW4pHgrqJO8aeWJA7ZpWUtczpCVq0PHHESmKVTetH0X1BPDtxYcfoSkVvKUiRLNCE
         bc61cyR0DMnGGKJDiVD3TUDWoiFrL08AgY5HwRD/AIWxkTbk3+PivOmmCiIx56mC81DR
         DXT90FI+xYPTw5gzBj6Dz4o5yW/pld4salfwSmHEwVVxAB2NT1QUTBrtE1Nb+KggBXlz
         bUAQ==
X-Forwarded-Encrypted: i=1; AFNElJ86LL9uTFBP19xvNdKSgTDok+ARrc7rPd7yatZqRCf4WrC6bbQzb7R5Bj7XEvsG1CvQvTkeV38VKfQDcRmveA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxMVr3dRsKanbQ8LI/TIBl0T6A6YZR0GpLZpDVkCiQv/lnzu+uA
	GgOVVqfekjqgqG3FI7DHiQ5ZkOx7vsIf1i0waVArthOnq78pZ/tmaHAF
X-Gm-Gg: AeBDietEEtm6/BjZcFvMOnffVQxe82JITjkRchzSY2kIAnyGjcCb/O/ObKtAFOcfXLc
	HXJ7vU1G1Z/GKEMAxx6t2ulslbFkGYBjQmPDaG4mSps4+XKdvGazUVuHFz+JJWMYJWlO0JW07QA
	vwQiolaE/ms1kpSjjCvS/m/4vezpZLKF9MyD0qzer+l3ebtoFMmkk5EYpRP/lxIYQnGZNg11a93
	JyWuKZYVTiLT38UJYWQW3h0OC6A5ps4RYJ8hyI0VYobKSJfMaWwpETKWv5oXuJ3UatRyS7RGRnX
	ROeqslLpHySe20LKgTmpe1a5jjCOazrfCQQTC1YrnBfqEz67Kfj9fNDcc+jTfsIPbri5AOPcd9E
	J8fbjfkE12OxmaDeImnhYQKPrLXo+ecNm2we6Sqq/5SsbzfniQltkOj5/DbNrHwiEAgomQjJP7v
	WbmSFFxFM5PIksPgw+p+oWSJ1VFOUumr6iCHhcA5Qkf9xqq1oOkOPkw4siKg==
X-Received: by 2002:a17:90b:264e:b0:35b:e553:9cc2 with SMTP id 98e67ed59e1d1-365ac89cf2cmr4261014a91.26.1778088651264;
        Wed, 06 May 2026 10:30:51 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:da43:aeff:fecc:bfd5])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-365cad597c3sm1338302a91.4.2026.05.06.10.30.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 May 2026 10:30:50 -0700 (PDT)
Date: Wed, 6 May 2026 10:30:49 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Heiko Stuebner <heiko@sntech.de>
Cc: wim@linux-watchdog.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] dt-bindings: watchdog: Add watchdog compatible for RK3528
Message-ID: <2ee02f9b-56cf-4dbe-9312-e2ba85d44de1@roeck-us.net>
References: <20260506092420.3320031-1-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260506092420.3320031-1-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_103053_386563_276F1178 
X-CRM114-Status: GOOD (  14.50  )
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

On Wed, May 06, 2026 at 11:24:20AM +0200, Heiko Stuebner wrote:
> From: Jonas Karlman <jonas@kwiboo.se>
> 
> The RK3528 uses the same watchdog block as all previous Rockchip SoCs.
> So add a compatible for it to the soc-list.
> 
> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Applied to my watchdog-next branch.

Thanks,
Guenter

> ---
>  Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> index 609e98cdaaff..731794dccd4a 100644
> --- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
> @@ -29,6 +29,7 @@ properties:
>                - rockchip,rk3368-wdt
>                - rockchip,rk3399-wdt
>                - rockchip,rk3506-wdt
> +              - rockchip,rk3528-wdt
>                - rockchip,rk3562-wdt
>                - rockchip,rk3568-wdt
>                - rockchip,rk3576-wdt

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
