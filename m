Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6C7EC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Apr 2022 20:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjNMir4SU2EC2ru3Xp60N0rDkwAEj36Sh24GKNuXDBg=; b=hojIgQpXUWSTn5
	FAsDYNAdlwQGLKnuM8oIXtvyeFhmHEM9PNmkXcEEIisC30J6nMNjV2WyoSfUHhygmuxBYEuavz2iM
	I+knaJ+F0t5EqLa4NUirdNlbw3IBLaGjtcKMMC8friZ7uBzEVo9gRIWkLZ6A57uE0Q6C9YavtCMWA
	P4+7cKDFtBEsY7mWvwAk6NqnBmyRO0Ogn8Q698FohsQuxTAIzElaYA0UVJrYCbgU7z+8RCiTKbuZb
	65tz2ojxVy7fh+dbNhAQBHOax7ZJHoVpBr6eHbbeLbkkvQCTOBjY0axkoVevLY24jIv8RHqeJopGo
	V0+T/LDRZ96YY0iswtwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nak5x-009yUF-If; Sat, 02 Apr 2022 20:11:37 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nak5u-009ySu-J2
 for linux-rockchip@lists.infradead.org; Sat, 02 Apr 2022 20:11:36 +0000
Received: by mail-wm1-x32d.google.com with SMTP id
 k124-20020a1ca182000000b0038c9cf6e2a6so3371668wme.0
 for <linux-rockchip@lists.infradead.org>; Sat, 02 Apr 2022 13:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=rK/lRSYk0qbxwtkUDAG4yOb3rw3v6oUTvUr8udIrHE8=;
 b=vY8hkEVh0+ifaT2+wLmFTky/Nk6iUZJPbjkSgKIFZGr+Akbqb8GBBgaf+DB33BWZA1
 NGa26e7vdb4mmht90cL1L3J5Ct2lQWk5DSiRWKcQ7Za/+ZQ9ijIj4PGNaY5U2AfQ3FDt
 Jtqze+nO3WDUoR/AxWx7Ftu8ZWzwo5ECxSE0W2eLDS1oTxK+iY4mxVNemVfTIzCAZ6Oi
 v73dBH4BN24PdN/yt6Umu/8Hm7HGltvVTENsjRDtwkHIKX663ofPUhpHMEdCoggJFvJE
 6bK6gAAii3XAjqvxGW0gqiB7L6ImqbRdBDA+5nT7oW4aHznVgQNIgIAU5GUmD4oKSSS/
 ZnWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=rK/lRSYk0qbxwtkUDAG4yOb3rw3v6oUTvUr8udIrHE8=;
 b=0CjCFhruGwHoxDNbjt3N1IizGc6Hjf4Yk83YIvY89r9KP0o7imS2EbHi6BhtD3N7/K
 GKmxZWuUsBEhbEbhx4JCzIptsqgRS9mAIstMR7wULPAa+9jSq8qeWbeAK2yzDApO+Fhg
 XBHhgOoZM46pC+jS630G3JZlVLabMAAUP7OBoSZ7wzZlXCioTU03xxZQlWc0ntqefQ85
 1QzokAzJtXDWUdyj09lqkyc8ttHbH0top9K4wIQoDnb7MefJBjlrxu1HMqqIuHS0arzr
 IJ4QMHULdvwVadh7CmBddHm//QaxZzS4Q0cvVBcLa7t9Tn84AKeh7eNJ0r5s4mFrzqI9
 2QGg==
X-Gm-Message-State: AOAM530BRK4T5iZA5bA0m7GTH5cVFAgI9WHXlkZg8dLnDuPOQqSdaMMF
 HlhJ1oQNL4NQbz22XvzHpfFOoA==
X-Google-Smtp-Source: ABdhPJyUjvxCYYY4p/glROv5L6dVxic7FGGuUAZ5dktxpN3G3iTBNLImeY1GuI7xa+JbsFyOeg6p0Q==
X-Received: by 2002:a05:600c:3d12:b0:38c:a561:f622 with SMTP id
 bh18-20020a05600c3d1200b0038ca561f622mr13451791wmb.139.1648930293152; 
 Sat, 02 Apr 2022 13:11:33 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 n14-20020a7bcbce000000b0038c7776a300sm18769828wmi.0.2022.04.02.13.11.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 02 Apr 2022 13:11:32 -0700 (PDT)
Date: Sat, 2 Apr 2022 22:11:30 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 27/33] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Message-ID: <Ykit8n8etuZWGsfY@Red>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
 <20220401201804.2867154-28-clabbe@baylibre.com>
 <3969db0e-50e8-e042-4696-97f56bd38999@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3969db0e-50e8-e042-4696-97f56bd38999@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220402_131134_662919_16EFE5A5 
X-CRM114-Status: GOOD (  17.88  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Sat, Apr 02, 2022 at 02:10:21PM +0200, Krzysztof Kozlowski a =E9crit :
> On 01/04/2022 22:17, Corentin Labbe wrote:
> > Convert rockchip-crypto to yaml
> =

> s/yaml/YAML/
> and a full stop.
> =

> Looks good but please mention in commit msg that the names for clocks
> and resets will be provided in next patch. Otherwise it looks like
> incomplete conversion.

Hello

I forgot clock-names in this patch, i will fix that (and other comments) in=
 v5.

Thanks

> =

> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../crypto/rockchip,rk3288-crypto.yaml        | 59 +++++++++++++++++++
> >  .../bindings/crypto/rockchip-crypto.txt       | 28 ---------
> >  2 files changed, 59 insertions(+), 28 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,r=
k3288-crypto.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-c=
rypto.txt
> > =

> > diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-c=
rypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypt=
o.yaml
> > new file mode 100644
> > index 000000000000..66db671118c3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.y=
aml
> > @@ -0,0 +1,59 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip Electronics And Security Accelerator
> =

> Remove "And". It looks like company name is the name of the hardware.
> =

> Best regards,
> Krzysztof

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
