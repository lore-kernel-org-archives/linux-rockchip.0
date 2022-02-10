Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4270DC433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Feb 2022 16:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuD0msvtd4YPd/tuBi2cw2YabZTTMq2xnIT6FmhuhrY=; b=sO+NbeSkvx9vG+
	pUNgbU3GSKiTXq/xpSxJvBVBCezm2aZ5YBxO0kiPnwG34BhSjp4GUFVnYqMypeWrz4B+3SRYKs4js
	grEsrD1N7WlGJzeVy0JtJhXj0/TYGUt7GvfjJpNVw3JyaWZ46DFo43P4CLcpGaBhCXlIt3neakQyx
	w41lSK1JlyExYMjybhuYmQ90SkmGVG+A+whZzjlqRytnLM0wwDYn6dTssFsKR+7fBAYuqV3sKb1wX
	fKFbQwfxJX3jbEsq7WYizN9t2nptsb3SiL5RmBZ2IseH2P78xNTbM+kxWLnrAK3NkcLhdMHqOPEz9
	tmpgFu7JOnqqgTN2v2Sw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nICZO-004PCg-8A; Thu, 10 Feb 2022 16:45:22 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nICZL-004PBk-3F
 for linux-rockchip@lists.infradead.org; Thu, 10 Feb 2022 16:45:21 +0000
Received: by mail-wm1-x32e.google.com with SMTP id
 m126-20020a1ca384000000b0037bb8e379feso5559437wme.5
 for <linux-rockchip@lists.infradead.org>; Thu, 10 Feb 2022 08:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=yjDhqf592V3qt8wWnx7Xe2xWw8Y2UB9NWdwLTiczK1o=;
 b=5TiOMJ8Mlb50qXyWCZxwL5pAfIOmsQI/kinuGONPUTIEg0Szrjxp1VmltFKf/RGzoy
 tJJCDStGrt7koz6rkvJ2pE08unxcEkVEMaJOJ7qf2OF2JsuPVRUo8YQi8cpo/cHtEBBh
 JoyDWNohkzUHovRFWv5Gb9N0Y0mYf/B5ZDzxuW4ZrD4QBlWy+lg1JxpU7PP+XC/J5DkZ
 6TVoQcBVjEJWG6G6FgN9q1DmuMjc3Zp4tcNhK/dfz9/IJz7etW8HuC5W+sKw7Z4hTJ8g
 D+BrYu9wDbOh8eatRoUaYM3FtdzJ4E+S3+b8p1MQhvKbDOyr20N6nIogcEAIyCtCNXdY
 YoIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=yjDhqf592V3qt8wWnx7Xe2xWw8Y2UB9NWdwLTiczK1o=;
 b=fgrLRG2+0RPORyEhO+VtZtSZGjwXqQ7wEheCHW1s2wKdyWZ/FRy9V+5y8POnBxinxc
 nbsmRru65F/kC93++UbhI8Lu4FIiygPdB917qMCGUOEhm2tK1eqQosmPRyrvp3Aaq8yJ
 B4iM1tzZIQyH9nWxNzvR/7T2KN8Grwb8B7I3sw9F+rk0G6OgTpPFYiKmbQBYbiqTlixO
 kHeu2auMcfi21BBoh2bnzLs0ngsHn5tg177iPlR/TdQiP0EyrEsF+300ceeaIG5IwMWM
 zVafLKWkiSUfIObYupfWVU0Fp5pjN7++M1jtyLzLskTchl626DtwV9Mt0DVZ42N5iH4G
 pMKw==
X-Gm-Message-State: AOAM532fqcH9Q7ZzkShkl/PRKIDvSKuq4RxT7blRo43hOicz42QJeQGN
 pmc55vbzI5KKvDW4zo3nc6C+ug==
X-Google-Smtp-Source: ABdhPJyc2/8ZJ4hxIbLPFVcCV1rZ1Bg0TV7Oh4Mt69EeuvSrocHuFZNrVs7yoFvWEICUdpXlSZYVqg==
X-Received: by 2002:a7b:cb90:: with SMTP id m16mr2868273wmi.3.1644511517233;
 Thu, 10 Feb 2022 08:45:17 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id d14sm2743881wrv.50.2022.02.10.08.45.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Feb 2022 08:45:16 -0800 (PST)
Date: Thu, 10 Feb 2022 17:45:14 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: davem@davemloft.net, heiko@sntech.de, herbert@gondor.apana.org.au,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] dt-bindings: crypto: convert rockchip-crypto to yaml
Message-ID: <YgVBGvTBuMd17sm8@Red>
References: <20220210161403.2966196-1-clabbe@baylibre.com>
 <7acb44da-5833-f638-9348-0cbcc21cfc13@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7acb44da-5833-f638-9348-0cbcc21cfc13@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220210_084519_152345_8307B005 
X-CRM114-Status: GOOD (  17.18  )
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

Le Thu, Feb 10, 2022 at 05:19:50PM +0100, Krzysztof Kozlowski a =E9crit :
> On 10/02/2022 17:14, Corentin Labbe wrote:
> > Convert rockchip-crypto to yaml
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> > Change since v1:
> > - fixed example
> > - renamed to a new name
> > - fixed some maxItems
> > =

> >  .../crypto/rockchip,rk3288-crypto.yaml        | 66 +++++++++++++++++++
> >  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
> >  2 files changed, 66 insertions(+), 28 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,r=
k3288-crypto.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-c=
rypto.txt
> > =

> > diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-c=
rypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypt=
o.yaml
> > new file mode 100644
> > index 000000000000..44f415597e32
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.y=
aml
> > @@ -0,0 +1,66 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip Electronics And Security Accelerator
> > +
> > +maintainers:
> > +  - Corentin Labbe <clabbe@baylibre.com>
> =

> You removed Heiko. It's fine for me, just is it expected?
> =


This is an error I fixed manualy in v1 file and forgot to change and commit=
...

Sorry
I will resend a new version later

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
