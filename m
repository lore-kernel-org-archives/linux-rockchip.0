Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 673B3606A31C
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2026 14:16:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=b3ZzQd2d;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=APVmy2O0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=89jYuRlXzjdOIY51TXzOeFmH42f9pj9/zmNkIxsY7UI=; b=b3ZzQd2dXo6ghsOu2CcMNRKSyz
	e+77t6V7QrkwqtyLvVoDRXlta12wGVjdVFQti2faW7xjfnfhrbLrXaGnV8yWB6vNyqVGf22/RbCNC
	xejAAMxd9/NnW6YcrdrjJ3a6vpaiD/hC3X2KAuuNGHIKWki+9UQVdJb7FJrHzZjLYaGFCww1MfoXo
	cOrUNa9cijI+XZkt9yEvQJZUPH4zgseLlOrDq67W/pXKzRkrDMKEDOV0268xin5axPHwLpSqZkxPv
	QhCegHD7c/E8ofHDybx6KN8Jcch1IGFnrxemfA2Fpl3aFwOiasUOYXX9WFRy5tX8IpNhM+n9tn7Ji
	0ZSTMqHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN9sG-0000000DOfT-3Yum;
	Sat, 31 Oct 2026 14:16:00 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN9sE-0000000DOei-1G5f
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Oct 2026 14:15:59 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-2e9d1114320so12693295ad.3
        for <linux-rockchip@lists.infradead.org>; Sat, 31 Oct 2026 07:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793456157; x=1794060957; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Wnbq5enmeXXMtrxXOCknlMCahlJdLBMQr0NRDI8YZbI=;
        b=APVmy2O01XLrhhP1SFoXsxgYYlJ2IHurVH48ZHXe2lC7wNBDLXx+DUTDTuyP74DxY+
         nOMUN5BN8N7UNoH1hjYE8CdU8OLXYX04MjayEF3Y0McAXrKQyP+WKMwtw5kbISVfcZHx
         +3k5yonWti075YV5aQIqn8ko6f9ICTF2Elcp8K30N7rbT7KDjEpSPPHgIzz1D6u7adRc
         /0iB1K3gF4+t3/VZrMvf3QMnKAoKYGF8m2ntm0II0HCOlxsg2ckIFVXExd5vN8jFyppW
         t2yBjB4H3rTxOEp9/ToNqU8iRq1mM4FcqjTTw7AMRs50rA8QCSytXfoKEr01hlnI24RS
         /+Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793456157; x=1794060957;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=Wnbq5enmeXXMtrxXOCknlMCahlJdLBMQr0NRDI8YZbI=;
        b=VqxNQbAGUjZhXfE2JM1oqpv3S8LCfj5URLdbMQUpx0gQmQSKm7OScytJvHSHppumMo
         OEIZc+GZVelWKg13alX0xiGIOpHnslcIAZc9l77dkGVsMaYPGoTSSYTXnnY1jMNPXBdJ
         j9UosFUubBx9yBKtsPeaJl2yRZgAbiyoJ8mEy/Rco5MdmFcU1iGF834/5or0JBpjoVv0
         dOJLhd0IM3BxOSoVcN94Y59hEofksdV3GS9QM/EKsecg1LBH6V+Yzd9HLS60shWbDEPd
         A3IrZk9B4aMZ+smZd7CTp4nhmBA2VpS6JTkti+ArZCKRuWmSNvA73BbkG6ZXGt4co8ir
         Dx0g==
X-Forwarded-Encrypted: i=1; AKwUvBxPQR/8VqLsOA8zdGlZZYGdNIIu8Nfnf1bZ1/N0azdMm3Mdk4+OCE736IN470DjDwvRZBVHnma+NqUfTLNjAg==@lists.infradead.org
X-Gm-Message-State: AFq9FYKOmi12wSSRQMfLdX2f91kvxqdPKIdFtoHJOjCqWMebgKinZaPc
	AXyG0t+RU1cCQdnGmjNBpsGxy9i6CDlPXGrgcQluGDhX6zS+ABGX5M+g
X-Gm-Gg: AYBFou26hrU6ey6yuQ2yPfDwunGZFzN1jT4fU2a8QD0hzFKIxnt0YMLR8zFC0PUhvdT
	D5N8Pjk9gnlft6JnXNmaiBbg8+fe5P6FqQ4PqB85gmV3bHUnF7g06egIjWEgwjvp360kXsg1iIW
	5eYWB2t+2rrYO/1vF6pK+xvcTbqGY/5FwL7sPXPpxbmJAvuIz1nTKSnFtQiaLbDLXVP4iGgcz4d
	0VQnAPTeXzEcgLtjSvtwgX31WQSIEZmnA2oYEhjHgIQk57HLjE/ZXUQcGg8pF6WI1k57kKCMr3F
	7mNOUCrXRBKsT29IIJ8YBXHmje7JuFBxmD1ZXqZR87qTRq5eVxl8CSNiRrnZVwxwzMBINvZSKj+
	KPYRDN1zih3tPtut8BVGOLELnLyBUnqca72nwpxTEZwC+aSF9J+uTlhtg9XNRircNN0K27MiM8U
	hwRrwg4oMtUChAQ8B8rqhef5qHWt0bsl6u0aEOeHYGcEYZ0DtRS/XWl+hDnMuPdNiJBulQD4oEw
	LIBQZSQkvQvEsYm4ngpEcrw+bBObgSyLk73kQmdHpwRsO5Eo0jJDYmHnK8ymLWgkNHgiYldf9Ic
	yrnUNorqodaBerHR1S8Jtizl1OlyEoMKyrIwDcVh
X-Received: by 2002:a17:902:f548:b0:2e9:572a:7da7 with SMTP id d9443c01a7336-2eb364f1979mr52661215ad.49.1793456156941;
        Sat, 31 Oct 2026 07:15:56 -0700 (PDT)
Received: from arch.localdomain ([152.175.67.103])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2eb38e9633fsm15743805ad.0.2026.10.31.07.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2026 07:15:56 -0700 (PDT)
From: Jun Yan <jerrysteve1101@gmail.com>
To: broonie@kernel.org
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jerrysteve1101@gmail.com,
	krzk+dt@kernel.org,
	lgirdwood@gmail.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	perex@perex.cz,
	robh@kernel.org,
	tiwai@suse.com
Subject: Re: [PATCH v2 2/2] ASoC: codecs: add support for Everest ES7202 PDM ADC
Date: Sat, 31 Oct 2026 22:15:46 +0800
Message-ID: <20261031141546.153385-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <179330018771.62540.301527067818961107.b4-review@b4>
References: <179330018771.62540.301527067818961107.b4-review@b4>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_071558_352565_5D9D1486 
X-CRM114-Status: GOOD (  27.57  )
X-Spam-Score: 0.6 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,

Thanks for your review.

> > Add support for the Everest ES7202, a 2-channel PDM analog-to-digital
> > converter controlled over I2C. The device outputs PDM data to the SoC
> > PDM controller and is configured through registers for supply voltage,
> > analog front-end and per-channel PGA gain.
> 
> This looks pretty good, a few relatively minor issues below but nothing
> major.
> 
> > --- a/sound/soc/codecs/Kconfig
> > +++ b/sound/soc/codecs/Kconfig
> > @@ -1274,6 +1274,16 @@ config SND_SOC_HDMI_CODEC
> >  config SND_SOC_ES7134
> >  	tristate "Everest Semi ES7134 CODEC"
> >  
> > +config SND_SOC_ES7202
> > +	tristate "Everest Semi ES7202 CODEC"
> > +	depends on I2C
> > +	select REGMAP_I2C
> 
> You should also add this to SND_SOC_ALL_CODECS.

Added.

> 
> > --- /dev/null
> > +++ b/sound/soc/codecs/es7202.c
> > @@ -0,0 +1,367 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * Copyright (C) 2020 Everest Semiconductor Co Ltd.,
> > + * Copyright (C) 2026 Jun Yan <jerrysteve1101@gmail.com>
> > + */
> 
> Please make the whole comment block C++ so things look more intentional.

Done.

> 
> > +#include <linux/bitfield.h>
> > +#include <linux/delay.h>
> > +#include <linux/device.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/i2c.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/regmap.h>
> > +#include <linux/regulator/consumer.h>
> > +#include <sound/pcm.h>
> > +#include <sound/pcm_params.h>
> 
> linux/of.h and sound/pcm_params.h aren't needed I think.
> 
Right, both removed.

> > +static bool es7202_volatile_reg(struct device *dev, unsigned int reg)
> > +{
> > +	/* status and device-id registers are read-only, never cached */
> > +	return reg == ES7202_CHIP_STA ||
> > +	       reg == ES7202_DEV_ID1 ||
> > +	       reg == ES7202_DEV_ID0;
> > +}
> 
> A switch statement would be neater and would probably generate
> equivalent code.  Are you sure that the ID registers are actually
> volatile, that's quite unusual?  If they've volatile the hardware is
> accessed on each read, if you just omit the default then they will be
> cached after the first read.
> 

Thanks for catching this. The ID registers are static and don't need
volatile marking. I'll drop them from es7202_volatile_reg() and use
.writeable_reg to make them read-only, so they are still cached after
the first read but skipped by regcache_sync().

> Also should the rest register be uncached so we don't try to write it
> back out as part of a cache sync by mistake?
> 

Agreed, I missed this. I'll mark ES7202_RESET volatile so it can't be
written back during a cache sync.

> > +static const struct regmap_config es7202_regmap = {
> > +	.reg_bits	= 8,
> > +	.val_bits	= 8,
> > +	.max_register	= ES7202_DEV_ID0,
> > +	.reg_defaults	= es7202_reg_defaults,
> > +	.num_reg_defaults = ARRAY_SIZE(es7202_reg_defaults),
> > +	.volatile_reg	= es7202_volatile_reg,
> > +	.cache_type	= REGCACHE_MAPLE,
> 
> I notice that other Everest devices set use_single_read and
> use_single_write - especially for write we can easily trigger
> multi-register write as part of a regcache sync so if the device lacks
> support it'll create bugs.
> 

Thanks. The other Everest codecs are the only precedent here - the
ES7202 datasheet does not document multi-register (auto-increment)
writes, so I cannot rely on them. I'll set use_single_read and
use_single_write so a regcache sync can never turn into a burst write.

> > +	es7202->supply = devm_regulator_get_optional(dev, "vdd");
> > +	if (IS_ERR(es7202->supply)) {
> 
> Unless the device can operate without power this should be a normal
> regulator_get(), the core will substitude a dummy regulator if it's not
> configurd by the firmware.
> 

Right, VDD supply is required. I'll use devm_regulator_get() instead.

I'll send a v3 with these changes.

> -- 
> Mark Brown <broonie@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
