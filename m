Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0897C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Mar 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xfza8uRZbwEqNwF9aNM89aXoQBjQKv1SKbEI3RWEsQA=; b=KPicI2D8zTb1AS
	z1Pz/YPbhT/QUwPhDMhHbov9vgqmYdOib9oUyC5yMapK48I4nb+Kyg2kgEG0l1Zfu6CWdt9u3wXbV
	RwIl/TQLlZQkU2pVv07pg9UZkwXaei3WvFnTTIqejAywmM5Edq2twgDMILUHC1e/MyLnmMxWaG6bu
	J0+mDX1TXNu8icys3B3h7HFg/iUfxn0Wls9UuCNStB3PLxrkCy+dEvBC5pmwsd37JrFJhf0y0eAXV
	JUKI+fqXnrehIJyI8FLbHv6uEiKmXjeqVmNB18CnPicQSNQ9uBo0ceH0WWT75NwWZVAFKWoiRBREe
	SASsHRmEVQtPXz9QxfeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXQCd-00HC4N-Ol; Thu, 24 Mar 2022 16:20:47 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXQCa-00HC2r-1L
 for linux-rockchip@lists.infradead.org; Thu, 24 Mar 2022 16:20:46 +0000
Received: by mail-wr1-x42f.google.com with SMTP id h4so7335411wrc.13
 for <linux-rockchip@lists.infradead.org>; Thu, 24 Mar 2022 09:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=u+XoZ+fuIL/ZPqi/MqDlAYN5/s61cbWyTsDVR6ShDXg=;
 b=7x7yo5Bs1LpGDx1Z/m5ZaOu8cUAl21e7wWdU9yxKzW8vX0CjUGxZctK8KwWnscCoVZ
 9LxP65DgHeKtf/hZGwB3qLTaAxg9dIFAjsyvDPXqNwfjZtUKy31VfYnkNC7UVPNVhb6p
 DFWKacToNwykDGrrPa4EO7lI3DYAFLrP9A23HcrD22Cuy78HpnamrgybwQGMWkFwx1vF
 I2bjpDirPChL6lZVg/QNemvqzmFlvAhQfsuXZ3ej8UrR1kv1YekCXLTJiHsiaXPrtTae
 h+qV/ldDYsSEqJnAvk5LP5ZdsoTcHaGCBpcPUfGIqZo9CLNPQOMpHfRMEaa847gLl9Yx
 aBsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=u+XoZ+fuIL/ZPqi/MqDlAYN5/s61cbWyTsDVR6ShDXg=;
 b=Pvret0sKhEmr0pK6jN/Kiz7g1luPsPym9EdQVTbpAzrtJIMl0PxGTLoFW+SjIxZD9B
 8wW5Ix1a4jhcQo5GUq2v+uc70ftIxytJZxBqv7qf3NPLWaDKBmmNEztkxRR1ROAXYUP6
 SrPG+tn+f1pCKdPfvRmZEy23fsobHC3HC7I8OYoYWl0OHwarjp43uC7GrBNccAhWtHn0
 qWx9THtIDGuCLNWS5uOl8b6J88gXn0m0/Yr7lRTIVkCTV8J8CIp7P1vI1VmAApB6G8Oi
 VDMxHAF0pm1k3Gymuv8rrOxl6zEvTOzCGfrJOX3f2QJK4m5thVapG5GrPvSBJh5asmsU
 MDPA==
X-Gm-Message-State: AOAM530pNGC4wMxYWZ/npJWqivFhDJ1fDlPXA1bUR5MkpXH4AAbPbAlx
 pL4BZApW40em1DK8lnIAYyLLJA==
X-Google-Smtp-Source: ABdhPJzeYjDJdSI+WUHT0aW2nK8ZdlM/pdZDaZr/eYh34FM+5W0i/XYyjvNvYiq5Hbek/iwW1aWLpQ==
X-Received: by 2002:a05:6000:181a:b0:205:9051:ab6d with SMTP id
 m26-20020a056000181a00b002059051ab6dmr5239391wrh.191.1648138841944; 
 Thu, 24 Mar 2022 09:20:41 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 r2-20020a0560001b8200b00203dffb9598sm2914810wru.86.2022.03.24.09.20.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Mar 2022 09:20:41 -0700 (PDT)
Date: Thu, 24 Mar 2022 17:20:39 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 21/26] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Message-ID: <YjyaV68mTsJAr9Xm@Red>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-22-clabbe@baylibre.com>
 <90ebea0b-1d67-98dc-2b49-a6e3b97a2c4a@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <90ebea0b-1d67-98dc-2b49-a6e3b97a2c4a@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220324_092044_178310_F7913D73 
X-CRM114-Status: GOOD (  24.46  )
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

Le Tue, Mar 22, 2022 at 07:04:43PM +0100, Krzysztof Kozlowski a =E9crit :
> On 21/03/2022 21:07, Corentin Labbe wrote:
> > Convert rockchip-crypto to yaml
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../crypto/rockchip,rk3288-crypto.yaml        | 84 +++++++++++++++++++
> >  .../bindings/crypto/rockchip-crypto.txt       | 28 -------
> >  2 files changed, 84 insertions(+), 28 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,r=
k3288-crypto.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-c=
rypto.txt
> > =

> > diff --git a/Documentation/devicetree/bindings/crypto/rockchip,rk3288-c=
rypto.yaml b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypt=
o.yaml
> > new file mode 100644
> > index 000000000000..a6be89a1c890
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.y=
aml
> > @@ -0,0 +1,84 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/crypto/rockchip,rk3288-crypto.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip Electronics And Security Accelerator
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3288-crypto
> > +      - rockchip,rk3328-crypto
> > +      - rockchip,rk3399-crypto
> =

> Waaaait, what? Only rockchip,rk3288-crypto is in original bindings.

Hello

Yes, my way is an error.
Next time, I will split my patch in 2, first a 1 to 1 conversion, then a bi=
nding update.

> =

> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 4
> > +
> > +  clock-names:
> > +    minItems: 4
> > +
> > +  resets:
> > +    maxItems: 1
> =

> You missed reset-names.
> =

> This patch is quite different than previous, in unexpected way. What
> happened here?
> =

> > +
> > +if:
> =

> Please define it after "allOf:", so it could be easily extended without
> changing indentation.
> =

> > +  properties:
> > +    compatible:
> > +      const: rockchip,rk3399-crypto
> > +then:
> > +  properties:
> > +    reg:
> > +      minItems: 2
> > +    interrupts:
> > +      minItems: 2
> =

> List interrupts. This is really different than your v1. It also looks
> different than original bindings and you did not mention any differences
> here, nor in the commit msg. Either explain in commit msg all
> differences (and why) or move them to separate commit.
> =

> You seem to change the bindings a lot (new properties, different
> constraints, new compatibles), so this should all go to separate commit.
> Now it is just confusing.
> =

> > +    clocks:
> > +      minItems: 6
> =

> You need maxItems. Everywhere.
> =

> > +    clock-names:
> > +      minItems: 6
> =

> List all items.
> =

> > +    resets:
> > +      minItems: 6
> > +else:
> > +  if:
> > +    properties:
> > +      compatible:
> > +        const: rockchip,rk3328-crypto
> > +  then:
> > +    properties:
> > +      clocks:
> > +        minItems: 3
> > +      clock-names:
> > +        minItems: 3
> > +
> =


I have create a binding update patch (https://github.com/montjoie/linux/com=
mit/da05ef9bb488c16cfd15a47054f5b1161829b6bf)
But I have lot of problem, DT are not validating.
Example: Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.ex=
ample.dtb: crypto@ff8a0000: resets: [[4294967295, 174]] is too short

I have tried also to set default resets/maxItems to 3 and setting it to 4 v=
ia an if. But I still got error like maxItems cannot be update after initia=
l set.

Any idea on why my new binding update patch is failling ?

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
