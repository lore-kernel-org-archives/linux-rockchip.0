Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B796C43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Jun 2022 20:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LeAxmSaLaE9F8zsprpXBVeBvLNmwAFxm3ieE70Fnlo8=; b=xvci0gOyIqRO3A
	xFem3NYjzgtxNpwPPq6YKBcwEWqA6B6KCjiJf6lV6UeRYUxs538inycqQpnhkShf4FgKMNCZEpe4h
	4pRfdjkvNuX6Q7fkDVw4haYbzNf+15t0+OLHPNADKcPk82Ch1y1MgGZkeMj7e0clyUo4xmUSwldUe
	Qg/EXIx1aW0F/QZ3wzwUPDG7Xn0ZIMMa5M+xBB8byWJ4dJ1YAsPGNKUQq3/TAAUiZY/hMjeUjdUEt
	fgIHVuc5BLxzHu6em1CxUXNm5KwVBT2R2bD3RjezTrXhp1PyPc4iforgA2FFoVh1gKyZ/EAnfWy59
	cZwcLdUkS6yn78ekkt+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5Ylr-00DRi0-EQ; Sun, 26 Jun 2022 20:22:15 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5Ylp-00DRgZ-2A
	for linux-rockchip@lists.infradead.org; Sun, 26 Jun 2022 20:22:14 +0000
Received: by mail-ej1-x62c.google.com with SMTP id mf9so15143731ejb.0
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Jun 2022 13:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=CFqK1V3cErjaAHUi1wVf54BeaI6dfHIkhreLhTzkKhE=;
        b=XNUfVtVTdbA8jHcHt6Z+q49J10viGxiiMyhgBJoaJPQRSQCBTGmIu1JTBQFdqQwMrd
         Ehx/mZyNMQIHdr+gx3Hq0kmlze/t7RcOtOqWfwusKTAy9QQJErGdUg2Ts+fuWhZOyDqU
         dVkCZ2eA+KDATDoULDA91lQypBqhPJlcya4/uvbs39geqB0wPDnxuY6s5xr6ko6xunKr
         9LccvJxlPV6I1JlKGCTB1iTjr5eCLaAcRHQkPWiAX+rJCNM9NDNsagNfC8xz3ofqiptZ
         Nwu47eZcEy11sbP9CZwx0XQ3gdPYmVAZanxqS5K+gQljoPqWM16zT1wP/WRjtmnZ1m4M
         yjzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CFqK1V3cErjaAHUi1wVf54BeaI6dfHIkhreLhTzkKhE=;
        b=CZdtzhx/X3Hpo4OT+PfX7c3rUOHCla1BmuxjKgTz8UVZHHYAueJl4Sw+y1wOBSn8Dl
         abssbFrbnYc7tcqhtXNn5O9JvWankmIcrQHQXw0WVPQMs69NFWWvOyYHlG4ZZOWxCWHu
         ylblxhvU7OR+BJst/M4f//k75qp4QtPYthMR0/+Z5ZNvGuwa+4F8XPezME4VEcjnw1wa
         SMHklwyfnNphxudcVU4o1IFIm3Iqq4ghrMrZ/QQLa2fVnsrs1XU4rds1M1dx2ZUGMJjk
         s47/eaVc+6NflItYanH32teOv2iNkpHMpACqLR+3Uc6LiyOzAL3F6znSsqI7v0NiC4pe
         /XMQ==
X-Gm-Message-State: AJIora9Yg35TUEmdT+l7F2PhHAbKbVvitDe8j1/3THamllyOadw3omfG
	f4QdWTDS6Tu4HbEjJH2B854dsg==
X-Google-Smtp-Source: AGRyM1vF/vKQ4ZLuDAv5NOU1Htj1Ux0JtWufYoYZ1hA9YJiOfOK3ovbVgnJ1ZeS/3zsGyZ7FiptJ6A==
X-Received: by 2002:a17:907:3da0:b0:722:df7b:1d23 with SMTP id he32-20020a1709073da000b00722df7b1d23mr9392521ejc.574.1656274931169;
        Sun, 26 Jun 2022 13:22:11 -0700 (PDT)
Received: from [192.168.0.245] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id h1-20020a1709063c0100b006feec47dae9sm4100547ejg.157.2022.06.26.13.22.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jun 2022 13:22:10 -0700 (PDT)
Message-ID: <2664d6a7-ee4b-9cfa-800e-e97522e3986c@linaro.org>
Date: Sun, 26 Jun 2022 22:22:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/1] dt-bindings: i2c: i2c-rk3x: add rk3588 compatible
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Wolfram Sang <wsa@kernel.org>, linux-i2c@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com
References: <20220623163136.246404-1-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220623163136.246404-1-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_132213_152377_EBBD0C46 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
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

On 23/06/2022 18:31, Sebastian Reichel wrote:
> Just like RK356x, RK3588 is compatible to the existing rk3399 binding.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
>  1 file changed, 1 insertion(+)

That's still some old tree you are based on...

Best regards,
Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
