Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5650C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Jul 2022 08:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0IoQphGio1X9sq1kJmFAkbnmLFYdGljd6B3kC0rTFfo=; b=LS0GESysKEwpKp
	nJYaM/o40aCUofr/ih/3zzv7lmWFSP9lGVMTEcwo6vg3jc/mmOS0Wdz+iNwjhOP0AD3+iEEHS7Mar
	5Oh8uZHMTehiAh3KKTw4L5U1R5xWcxVjqt0T+zolVDtG6zH6X9iZfjifbcc41KPYGgLXGv0+aL9gp
	mtH6u62/RJWL3Ldp5hft5+XnDJdkwKxu4XFy+T3QFXVKw1viTRFAjqMs9unSdiCSFqavGz0jSJrt6
	gwkBaFX20xQKu0JvMaXr0ycb57p/IK8k4aEld0lURu6DCthasV8ENr7/caqksmeVSf3FMK6sX16gX
	ssEPOvkiAw1F13mVdnwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9N1K-00FEiJ-Fm; Thu, 07 Jul 2022 08:37:58 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9N1H-00FEfu-EL
	for linux-rockchip@lists.infradead.org; Thu, 07 Jul 2022 08:37:57 +0000
Received: by mail-wr1-x42e.google.com with SMTP id z12so15650015wrq.7
        for <linux-rockchip@lists.infradead.org>; Thu, 07 Jul 2022 01:37:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=abVct3gFPTleVwlkxr292THL1sNRNK8PgBmO/9HJXCI=;
        b=vn0flu9MW1pSkawzZyj52K6aja+bt23HA6wmB2x9Kkfdp7Xd2shvOgxcan20A/TmkC
         mOX51GpNPNJILOSvgLZRkruKUnMe7fLjew3zsLQTN7MmTNcYWuK/EJbrt2wCBz6aW8AT
         x73mEghaDHHkVRKYZQpYkFPaXxjUBz5GiOhW0VQD9i8jOKJhiM9d1vuaRlOSD53wLmBr
         sJ8m8foHKMk3EcJN7gPwaP5BZzZvUyByrqAtkXxkuZfuLetTzq8Fp3lcyR4ay3SLNrH3
         m+xQs3yJ1859YHOsJYkcEtHHZPg9vqDdo5v1MDZPVjQQDoslKtcS9jXhtJz1RbxcaDTo
         Rr+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=abVct3gFPTleVwlkxr292THL1sNRNK8PgBmO/9HJXCI=;
        b=E+Dt2BwexAEoUmzKaNCAFPjJIhZIsRY0GWa7P5zxK3RacXoX8OM7d79iQHtFgatmY+
         r3VNhs+3YejjV3PpetqfdJDK0a44xGuHjdcPqcfrIL5obICcV+HQPv0xabOS3zfmg+hO
         Fln/ECyyO4ZuoIydhTRh37tQf+1MYWBuWhhIscMpteSP5SFeiD1GpMrL8SwvU1If25An
         GozyHAkb+heGJXG9mr6HG1eVfVMM1fBEozN5K+og1kPWBZLoeka19jYUza2ni7akKp64
         1Fl6JSWElLesWGoIgBmmo08zmu4ezjaf1NeQHDJVycDbCXrraXG0IdhMjY0onAk8uBvR
         C9NQ==
X-Gm-Message-State: AJIora+aQVbHafrMjZV75fRH8hdovvw5Kntl4YF8F1EBKLe5DrnPeUsY
	MkUzBeoJEA1GLf24HvsugfZTYQ==
X-Google-Smtp-Source: AGRyM1shCU2H4w9v75oD2tgujLOfTjQOmrrVfjjs4CYHJNZDG8I5AOH/bGufuGGuNpZAVt0EjUjaVQ==
X-Received: by 2002:a05:6000:15c6:b0:21d:17da:29ca with SMTP id y6-20020a05600015c600b0021d17da29camr41374738wry.94.1657183073842;
        Thu, 07 Jul 2022 01:37:53 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id g10-20020a5d698a000000b0021d83eed0e9sm1479968wru.30.2022.07.07.01.37.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jul 2022 01:37:53 -0700 (PDT)
Date: Thu, 7 Jul 2022 10:37:50 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, john@metanate.com, heiko@sntech.de,
	p.zabel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	didi.debian@cknow.org, herbert@gondor.apana.org.au,
	sboyd@kernel.org, mturquette@baylibre.com,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v8 25/33] dt-bindings: crypto: rockchip: convert to new
 driver bindings
Message-ID: <YsabXrOyAsCkUUVN@Red>
References: <20220706090412.806101-1-clabbe@baylibre.com>
 <20220706090412.806101-26-clabbe@baylibre.com>
 <1657114144.957232.4099933.nullmailer@robh.at.kernel.org>
 <YsWcGDwPCX+/95i3@Red>
 <3e47b853-bb82-8766-8884-3da931c038a2@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3e47b853-bb82-8766-8884-3da931c038a2@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_013755_561886_31671766 
X-CRM114-Status: GOOD (  17.37  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Wed, Jul 06, 2022 at 05:25:21PM +0200, Krzysztof Kozlowski a =E9crit :
> On 06/07/2022 16:28, LABBE Corentin wrote:
> > Le Wed, Jul 06, 2022 at 07:29:04AM -0600, Rob Herring a =E9crit :
> >> On Wed, 06 Jul 2022 09:04:04 +0000, Corentin Labbe wrote:
> >>> The latest addition to the rockchip crypto driver need to update the
> >>> driver bindings.
> >>>
> >>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> >>> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> >>> ---
> >>>  .../crypto/rockchip,rk3288-crypto.yaml        | 85 +++++++++++++++++=
--
> >>>  1 file changed, 77 insertions(+), 8 deletions(-)
> >>>
> >>
> >> My bot found errors running 'make DT_CHECKER_FLAGS=3D-m dt_binding_che=
ck'
> >> on your patch (DT_CHECKER_FLAGS is new in v5.13):
> >>
> >> yamllint warnings/errors:
> >>
> >> dtschema/dtc warnings/errors:
> >> /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/c=
rypto/rockchip,rk3288-crypto.yaml: allOf:0:then:properties:clock-names: 'on=
eOf' conditional failed, one must be fixed:
> >> 	[{'const': 'aclk'}, {'const': 'hclk'}, {'const': 'sclk'}, {'const': '=
apb_pclk'}] is too long
> >> 	[{'const': 'aclk'}, {'const': 'hclk'}, {'const': 'sclk'}, {'const': '=
apb_pclk'}] is too short
> >> 	False schema does not allow 4
> >> 	1 was expected
> >> 	4 is greater than the maximum of 2
> >> 	4 is greater than the maximum of 3
> > =

> > Hello
> > =

> > I upgraded to dt-schema 2022.07 and fail to reproduce all errors.
> =

> Visible on older dtschema (2022.6.dev10+gcd64f75fe091), visible on
> newest (2022.7).
> =

> Exactly the same error.
> =


Hello

I am sorry, I finally succesfully reproduced it.
Just doing what the hints gives (removing max/min-items) from "static" list=
 fix the issue.

Does I need to remove your Reviewed-by ?

Thanks

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
