Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAB15C4707B
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jan 2024 15:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClnlhKgWLwB+txdsFgQgTtDSjkhCKQXy+yRp6aDjk2A=; b=M21hkUA905G9wH
	sAtrP+veSHqIdf0lq/1EH1i8ezP6rRHWUajmLQKdPKPLulj5ZA2CYWOgpqz6TJX063JAosmv4c4Ok
	vv/SvhU05POmclOWhj2z3/nn+fKz7+onTETC4I/Li/veuSnTvSjONXIkVeSBinNNzNYSq15jgc5Ei
	Airii7oSe7PnReMC4QXdqrCBtEe6RewMFVl6x48iOxq9ZSTkruApqaRE2K/kgTnIwlihvu3cDHFgd
	JU5TeFOl855pQKiWaRNQzCzReNuIOsY+SUqDYJr2gMKtxAarCHmHvR8hZjdnsQxUQzRRhE0p0gIUH
	oAxjkOCjg3k+U2G/jqBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQUDd-0034wy-0f;
	Thu, 18 Jan 2024 15:22:13 +0000
Received: from mail-oo1-f50.google.com ([209.85.161.50])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQUDa-0034wR-1V;
	Thu, 18 Jan 2024 15:22:12 +0000
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-598df798696so2572517eaf.1;
        Thu, 18 Jan 2024 07:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705591268; x=1706196068; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=OxhHEuq4UoGKdyKSn2yl78F78p0BZYUw4RlptfBHAvk=;
        b=JA9DDSBjIcxD67G0wwoyuTMbbDfrnATuZhlJCMjDHXbjM1cMTE/wAtDKMk+ghrQaWB
         WX4KEVlvXRxRScuEqY26YuDbOgH1KJMsiSe40tWDaQs+flDP/zqpdLZHYXLXHYeKduCV
         /BIDd76de5Qom+fuRZNBxugAsAyjKA2GZxE3WufROlYVutLSsNfT1fuwc27Sg/oidH0Q
         AO47qsySlJuhQgjX2yADBR41VpWwr7rYlV6nNZZCcFhe8k9Ja3tdVqPwaqAUI93KnzJR
         tTGprKlXHumKDpuKduS1PAVIwKwFQHH5JZZOFsLPz0ATSmPObCC0L3zHhIpSZMCZndDO
         I78g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705591268; x=1706196068;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OxhHEuq4UoGKdyKSn2yl78F78p0BZYUw4RlptfBHAvk=;
        b=Jcr324SaaQVwM1FR85dZe9lpVE3K2iFSoiZw6a2OQ7YVQk1oKMvrE8q+vABJE8Mn4U
         24Co6Wg6F88YBe73C/vMx+hV/uWZizAbN0lCVm0bvAUIfNXrsnDR+7n03vdG8MKvh2CM
         jusgQ1bIg2YVl9jLl1UkBpcdxD8yRNTPNVeAdgWIBAgPn4dZ7IL/xXL3NHaj0m/Vj08P
         BcRHhRsW2xmB81izhmhmY3a8MbcJUQkjto1erYmhcXfCsX1UeW/1bYRmd0MVfx9G3b75
         EDepfzOcrxYqCc8opaYGOWjYz1ddrCd+dA/RikPr858/kbgTQ4k/3wuqtVBDagcgdKdT
         NHig==
X-Gm-Message-State: AOJu0Yxanem+dBunnPJ7VMkLgl4CUFv10l+JuD9yTOE3x0QwsG3Gvior
	TjLlvJE/1s0H6/XHb4yE6XGSEkkflKLNc5FfQp5AFuqk7n7EIQczD6WjxR8O
X-Google-Smtp-Source: AGHT+IH2BMhuQTwBXDYh4UyL8nSz7XvomyAtA2Fr7aMNO58k/+nLRU4T0sdfg/HjRYFAFfIrnghpBw==
X-Received: by 2002:a4a:b149:0:b0:596:eb1:1014 with SMTP id e9-20020a4ab149000000b005960eb11014mr900095ooo.5.1705591267916;
        Thu, 18 Jan 2024 07:21:07 -0800 (PST)
Received: from neuromancer. ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z11-20020a4a304b000000b005990c400db8sm1187106ooz.46.2024.01.18.07.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jan 2024 07:21:07 -0800 (PST)
Message-ID: <65a941e3.4a0a0220.673cc.7147@mx.google.com>
X-Google-Original-Message-ID: <ZalB4pIwnLf/zz2I@neuromancer.>
Date: Thu, 18 Jan 2024 09:21:06 -0600
From: Chris Morgan <macroalpha82@gmail.com>
To: Conor Dooley <conor@kernel.org>
Cc: Tim Lunn <tim@feathertop.org>, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: rockchip: Document rk809 support for
 rk817 audio codec
References: <20240116132102.3272682-1-tim@feathertop.org>
 <20240116132102.3272682-2-tim@feathertop.org>
 <20240116-mangle-parish-93b5cd672d17@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240116-mangle-parish-93b5cd672d17@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_072210_524601_E27F3796 
X-CRM114-Status: GOOD (  27.61  )
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

On Tue, Jan 16, 2024 at 05:06:34PM +0000, Conor Dooley wrote:
> On Wed, Jan 17, 2024 at 12:21:00AM +1100, Tim Lunn wrote:
> > Rockchip RK809 shares the same audio codec as the rk817 mfd, it is also
> > using the same rk817_codec driver. However it is missing from the
> > bindings.
> > 
> > Update dt-binding documentation for rk809 to include the audio codec
> > properties. This fixes the following warning from dtb check:
> > 
> > pmic@20: '#sound-dai-cells', 'assigned-clock-parents', 'assigned-clocks',
> >    'clock-names', 'clocks', 'codec' do not match any of the regexes:
> >    'pinctrl-[0-9]+'
> > 
> > Signed-off-by: Tim Lunn <tim@feathertop.org>
> > ---
> > 
> > (no changes since v1)
> > 
> >  .../bindings/mfd/rockchip,rk809.yaml          | 30 ++++++++++++++++++-
> >  1 file changed, 29 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> > index 839c0521f1e5..bac2e751e2f2 100644
> > --- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> > @@ -12,7 +12,7 @@ maintainers:
> >  
> >  description: |
> >    Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
> > -  that includes regulators, an RTC, and power button.
> > +  that includes regulators, an RTC, a power button, and an audio codec.
> >  
> >  properties:
> >    compatible:
> > @@ -93,6 +93,34 @@ properties:
> >          unevaluatedProperties: false
> >      unevaluatedProperties: false
> >  
> > +  clocks:
> > +    description:
> > +      The input clock for the audio codec.
> > +
> > +  clock-names:
> > +    description:
> > +      The clock name for the codec clock.
> > +    items:
> > +      - const: mclk
> 
> You have one clock only, why do you need to have clock-names?
> 
> Otherwise,
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> 
> Cheers,
> Conor.

The codec driver currently looks for a clock named "mclk".

Thank you,
Chris.

> 
> > +
> > +  '#sound-dai-cells':
> > +    description:
> > +      Needed for the interpretation of sound dais.
> > +    const: 0
> > +
> > +  codec:
> > +    description: |
> > +      The child node for the codec to hold additional properties. If no
> > +      additional properties are required for the codec, this node can be
> > +      omitted.
> > +    type: object
> > +    additionalProperties: false
> > +    properties:
> > +      rockchip,mic-in-differential:
> > +        type: boolean
> > +        description:
> > +          Describes if the microphone uses differential mode.
> > +
> >  allOf:
> >    - if:
> >        properties:
> > -- 
> > 2.40.1
> > 



> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
