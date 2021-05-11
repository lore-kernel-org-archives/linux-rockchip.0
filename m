Return-Path: <SRS0=2pai=KG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1964FC433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 13:01:06 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6802161921
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 May 2021 13:01:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6802161921
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CG3QdFgYpkT4FgonClD1x/uxjRS7dVniGoQL015TCfs=; b=hCcBVTQhuzPqnU88m6BQFIFWr
	xzof7NEq5cNCQ7ThhjgwOswmVCwfvRSKYqjJsDZvqXfgUuwElWOXVRaDaWFSnzN7IXwihm8aVYd9e
	j/6McFZD01yCUF5ztAQF0BTLdpcB+Xq16qsOLBpp3/gwGuMWsG0nlcXCTqucArdUVq/1NDnQrGivW
	ZD5e4t5awAs0/PagJA5LOJ4MzeJRULEE5QpcmUob1OOGXiM/DNDA+6HYbQgBulL01FMeoOXBBPYBs
	pKRe0Y8o6/4CykZWgiZD7+ulaNaxsHPai+4sUM+NT2aV9yJSrw/taQ5/HvnTZRIhQry8uflEuidPh
	m/bevImmQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgS0Q-00HXtO-UJ; Tue, 11 May 2021 13:00:59 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgQ4d-00H2eO-IV
 for linux-rockchip@desiato.infradead.org; Tue, 11 May 2021 10:57:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=H3TFuIrc3Mj7EWsSB5KHDQrg/psdazR0cVvA5Agy22s=; b=2/9wLJw3fHXMExIvpFOXbQ4P7F
 sHPx2q8nQntzFYGNsrpc2PW5OeZReOj3v0T4lsTq1sMxfYuf9nm4xaeVudfhBhHKUgLmL6ecilAeO
 MnBVXiCqD/IFKrNDBVTIOJnF89ZeYa61v8Ykwes6gJ9plipJs64i5gKT53HORTZJkIAC8kam0Q4Ld
 aRWn35IQAl3SYYt10OA8mwsfwWEcaBqHKyPqJEQz4WHgKifNLPgUijzEj4DxyVH9mDw2pX725ueAb
 OUWDG0c81FwFSF63gFeoWiDp5BcX4SmO5pEONOtbBJqQB42ScsAk3RZcNTf9zmVKCntQCTom+2uUQ
 wWKZBnaA==;
Received: from mail-ua1-x92a.google.com ([2607:f8b0:4864:20::92a])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgQ4a-009Uxm-Vd
 for linux-rockchip@lists.infradead.org; Tue, 11 May 2021 10:57:10 +0000
Received: by mail-ua1-x92a.google.com with SMTP id 33so6205590uaa.7
 for <linux-rockchip@lists.infradead.org>; Tue, 11 May 2021 03:57:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=H3TFuIrc3Mj7EWsSB5KHDQrg/psdazR0cVvA5Agy22s=;
 b=BI5betzphHV53YRAHo1kbf3qtN5EZ+oJQvqpn4XXUNTvjtju9UI5Wxwcu/qn0vpzMa
 l8lD+g5mD22XYfa4O8a/DkbtdqMxftpPoCgk3EzFxlgMa9475q6tweCGnyLgcCpSu8ue
 poRgY190B4IYUbsx23WRK7dsxuPfKqFzfOElVB1Ti0fK7UgpND6B/TIlH7Ez2Ztt/UZw
 X9ChYwX5o5XMrZarBxHM9k9fuDXw7GeXfg0wQeftAJktbg8FdqoErJmdZxTz9ySB9ljp
 5kzgCqLZ8a1IL5VP4fZ8V/3eoLv/D//8lDoYt4CeIJg/ADMwinFvoAgj3MdlTZUA2vJ8
 V+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=H3TFuIrc3Mj7EWsSB5KHDQrg/psdazR0cVvA5Agy22s=;
 b=YA+zzSv8+07/FWPexbuZESaza0l9BaDtQIcHQjYZBVbxEWQgt9EMcVitrnG8piQVma
 VssEb6es5HT8xW4rSyLktRNyPQZoAZ5XUclt0h7zXYs9GBvHDFo8zN2Jm/DYTDAI6EJc
 gmMzi/fD2/aW9HThBoJUPNCIGokkRj2Z0A6CpfeY03fmxrL/7Hc1BcTErO8qvYMlwec4
 QAPpgOdvCMC03ijRNfV7Z1r+nlpKPes+DjUViHPsnPmuw+xikG5ZKZX3epuMe2dUoW2e
 OzZozUo2Jaclfjz53LAcokpow6NZik4GR2cp6FcK97KYkGUXNwIxYOit6zLtBj5+S0pj
 UBaQ==
X-Gm-Message-State: AOAM533deCgqf+GKy5O5qtJj5D+JxAwrcknTtlIl3vwfj9SBEEIQy86W
 kwPeTfw2CniFWZsGW35bJigDrEHTHvx8nHAOYEXR5Q==
X-Google-Smtp-Source: ABdhPJwynumHCSzbxs9fEYhSTsTQNyquQmA9nby0MfgarYqJoMGRF7eJ8B5GdcKLxBd8RzpG4b/jdGZAXltAK2YZE4E=
X-Received: by 2002:ab0:7002:: with SMTP id k2mr25127013ual.104.1620730627962; 
 Tue, 11 May 2021 03:57:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081151.17558-4-cl@rock-chips.com>
In-Reply-To: <20210429081151.17558-4-cl@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 11 May 2021 12:56:29 +0200
Message-ID: <CAPDyKFr3cpARwxZPUfnFfJT-=UMynUNK-Jb0NLNJG=k9O-=R9g@mail.gmail.com>
Subject: Re: [PATCH v4 03/10] dt-bindings: mmc: rockchip-dw-mshc: add
 description for rk3568
To: cl@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>,
 uwe@kleine-koenig.org, 
 mail@david-bauer.net, Johan Jonker <jbx6244@gmail.com>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 jensenhuang@friendlyarm.com, 
 Michael Trimarchi <michael@amarulasolutions.com>, cnsztl@gmail.com, 
 DTML <devicetree@vger.kernel.org>, linux-mmc <linux-mmc@vger.kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-serial@vger.kernel.org, 
 linux-i2c@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, David Wu <david.wu@rock-chips.com>, 
 zhangqing <zhangqing@rock-chips.com>, Tao Huang <huangtao@rock-chips.com>, 
 Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
 Jamie Iles <jamie@jamieiles.com>, linux-watchdog@vger.kernel.org, 
 Marc Zyngier <maz@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_035709_036630_5F0A0658 
X-CRM114-Status: GOOD (  15.24  )
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

On Thu, 29 Apr 2021 at 10:12, <cl@rock-chips.com> wrote:
>
> From: Liang Chen <cl@rock-chips.com>
>
> add "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc" for mmc nodes on
> a rk3568 platform to rockchip-dw-mshc.yaml.
>
> Signed-off-by: Liang Chen <cl@rock-chips.com>

Applied for next (and by amending the commit message according to
Rob's suggestion), thanks!

Kind regards
Uffe


> ---
>  .../devicetree/bindings/mmc/rockchip-dw-mshc.yaml        | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> index 3762f1c8de96..eaa3b0ef24f6 100644
> --- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> @@ -29,21 +29,14 @@ properties:
>        - const: rockchip,rk3288-dw-mshc
>        - items:
>            - enum:
> -            # for Rockchip PX30
>                - rockchip,px30-dw-mshc
> -            # for Rockchip RK3036
>                - rockchip,rk3036-dw-mshc
> -            # for Rockchip RK322x
>                - rockchip,rk3228-dw-mshc
> -            # for Rockchip RK3308
>                - rockchip,rk3308-dw-mshc
> -            # for Rockchip RK3328
>                - rockchip,rk3328-dw-mshc
> -            # for Rockchip RK3368
>                - rockchip,rk3368-dw-mshc
> -            # for Rockchip RK3399
>                - rockchip,rk3399-dw-mshc
> -            # for Rockchip RV1108
> +              - rockchip,rk3568-dw-mshc
>                - rockchip,rv1108-dw-mshc
>            - const: rockchip,rk3288-dw-mshc
>
> --
> 2.17.1
>
>
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
