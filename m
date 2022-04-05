Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E1D5C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Apr 2022 13:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mEOvDdAMVAdl1eVVCWFzo98mRjzOQ0G2N08ioVcLDAM=; b=S/pJWoJ9PzEGoe
	v1X9pGO5otNpjNjYHvO9R/AJfjnWd8tX83MtMGza8LIVlMEwUHuRRCToQ0hsSbXIDvI4+lqNMuHkQ
	SWtoxmClYw73e+m1uEVHOfbzTsIOWLhZQxZ8ZYFukAx2WY+QIw/sHZAXAEG0yAe7ZDmVB3TdquIDY
	3Px9SVzQ8fk+3+Ocw8QJZS2Kf1YNcDRM7nGrcqmW2ObFyJTXHuxTqU2/yDjXwF0oHjemARYCIh9Nz
	Fat9r/6SvgB25U58Tkrp+5NNmzT4APfb+twVwkqK++WDzRdZZFnlIfMmuswvMdeh+PXxVyA0ipJt8
	liyHTslhWRbwAoKSv02A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbiz8-0015dF-K9; Tue, 05 Apr 2022 13:12:38 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbiz3-0015ba-Tj
 for linux-rockchip@lists.infradead.org; Tue, 05 Apr 2022 13:12:37 +0000
Received: by mail-ot1-x32b.google.com with SMTP id
 y3-20020a056830070300b005cd9c4d03feso9352748ots.3
 for <linux-rockchip@lists.infradead.org>; Tue, 05 Apr 2022 06:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=gybD8KNj/W/HoWbum2MjlytMZOz7rVdftOjd7CjfOfk=;
 b=p2dW8JNDfG+wR/AcRAu+yec5t2wkejU1hmZnEb1UPOyUwpvbpSZA19xel29YXnx5YV
 yh8xsbRCxTKGNq5lbQ5ysRHU4YyW+rH0qQ2Wc7uVYk2RRlIaRma/j0y9ZkMOBwJh68DE
 /lenTj03J17b8diAei5OJvnA/7MnHNXUhRhZjcGglE2YYnGWO29v3wy7LImYpE+Z6YUj
 z+gPU/+BRFoM3yHhWFBxMgMZ5O/2MofNljDL0vyuxB24BLx/Vgm4izJHjNy3qdikDH1N
 cTlEyMIfZMh+mP2LI6NMOJtuJ91kC16jXml1+BSzGhzzGAsrPv6SvMGYGWZUh1SUPJND
 j0og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gybD8KNj/W/HoWbum2MjlytMZOz7rVdftOjd7CjfOfk=;
 b=wH9KVgJNwoofAQ4McsfuOI6NPFUJbZoxJI7iGu3zqpCwy7aKYEgMKEl9tSIcIBkIge
 lqoTbLtk/BBoEm26XCFaRNIRjZme3IvHwbl8zVgMoSQZYZqfhyl6Wnab0zPyz8LeniWW
 j7ZycAkeqMVESGRDTmRVRw4N3w5XETAAKo+MRdqvXiKQJYPzjl3fyVhE+KPxdwYMANF9
 ug+0LAfnSx0hhw7yAQyVdmdQRZ2AkV96O4VC4+X7eQ6AIbUq+CHmRydnIqe6j81DDyZ7
 AVcBO/2Q4ZTAYqBPZzsBPX+KdNEPr9YjU/iMsemVcJpJoiW3wSYIoQu19S7/VZFBceff
 nI3Q==
X-Gm-Message-State: AOAM5339pKrOx7DPlImh+6OrlFFtZiPVNOLv+OXyx5l78ud6ZYVwfygh
 iT+qvQVq8M++dgkiUeOeTHc=
X-Google-Smtp-Source: ABdhPJygfCMsG2GUugJSWbcoi7r4FK8hnjS9pfBgI6aqCzi6pvBrzjDHoCfUviralTU5vm9EL9lXCQ==
X-Received: by 2002:a9d:7414:0:b0:5b2:4a00:fc7 with SMTP id
 n20-20020a9d7414000000b005b24a000fc7mr1171719otk.100.1649164350737; 
 Tue, 05 Apr 2022 06:12:30 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 v21-20020a4ade95000000b00320f814c73bsm4950672oou.47.2022.04.05.06.12.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Apr 2022 06:12:30 -0700 (PDT)
Date: Tue, 5 Apr 2022 08:12:28 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, zhangqing@rock-chips.com,
 zyw@rock-chips.com, jon.lin@rock-chips.com, maccraft123mc@gmail.com,
 sre@kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/4 v5] dt-bindings: Add Rockchip rk817 battery charger
 support
Message-ID: <20220405131228.GA20@wintermute.localdomain>
References: <20220404215754.30126-1-macroalpha82@gmail.com>
 <20220404215754.30126-2-macroalpha82@gmail.com>
 <74f445c2-3194-80a6-6d52-21368eb6172a@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <74f445c2-3194-80a6-6d52-21368eb6172a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_061233_997609_3FC48B75 
X-CRM114-Status: GOOD (  30.12  )
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

On Tue, Apr 05, 2022 at 01:16:55PM +0200, Krzysztof Kozlowski wrote:
> On 04/04/2022 23:57, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Create dt-binding documentation to document rk817 battery and charger
> > usage. New device-tree properties have been added.
> > 
> > - rockchip,resistor-sense-micro-ohms: The value in microohms of the
> >                                       sample resistor.
> > - rockchip,sleep-enter-current-microamp: The value in microamps of the
> >                                          sleep enter current.
> > - rockchip,sleep-filter-current: The value in microamps of the sleep
> >                                  filter current.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> > ---
> >  .../bindings/mfd/rockchip,rk817.yaml          | 48 +++++++++++++++++++
> >  1 file changed, 48 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> > index bfc1720adc43..b949d406a487 100644
> > --- a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> > @@ -117,6 +117,47 @@ properties:
> >          description:
> >            Describes if the microphone uses differential mode.
> >  
> > +  battery:
> 
> I wonder why do you call it a batter while it is a charger, isn't it?

It is a driver for both the battery and charger. I'd argue about 95% of
it is battery functions and the other 5% is managing the IRQs for plug
removal/insertion and capturing the incoming voltage and current. In
the BSP kernel these were two seperate drivers, but there was so little
that needed to be done for the charger (and users probably don't need
plug IRQs if they aren't using a battery anyway since the system will
shut off on a plug out event due to no power...).

> 
> > +    description: |
> > +      The child node for the charger to hold additional properties. If a
> > +      battery is not in use, this node can be omitted.
> > +    type: object
> > +    properties:
> > +      monitored-battery:
> > +        description: |
> > +          A phandle to a monitored battery node that contains a valid
> > +          value for:
> > +          charge-full-design-microamp-hours,
> > +          charge-term-current-microamp,
> > +          constant-charge-current-max-microamp,
> > +          constant-charge-voltage-max-microvolt,
> > +          voltage-max-design-microvolt,
> > +          voltage-min-design-microvolt,
> > +          and a valid ocv-capacity table.
> > +
> > +      rockchip,resistor-sense-micro-ohms:
> > +        description: |
> > +          Value in microohms of the battery sense resistor. This value is
> > +          used by the driver to set the correct divisor value to translate
> > +          ADC readings into the proper units of measure.
> > +        enum: [10000, 20000]
> > +
> > +      rockchip,sleep-enter-current-microamp:
> > +        description: |
> > +          Value in microamps of the sleep enter current for the charger.
> > +          Value is used by the driver to calibrate the relax threshold.
> > +
> > +      rockchip,sleep-filter-current-microamp:
> > +        description:
> > +          Value in microamps of the sleep filter current for the charger.
> > +          Value is used by the driver to derive the sleep sample current.
> > +
> > +    required:
> > +      - monitored-battery
> > +      - rockchip,resistor-sense-micro-ohms
> > +      - rockchip,sleep-enter-current-microamp
> > +      - rockchip,sleep-filter-current-microamp
> > +
> >  allOf:
> >    - if:
> >        properties:
> > @@ -323,6 +364,13 @@ examples:
> >                  };
> >              };
> >  
> > +            rk817_battery: battery {
> 
> The same.
> 
> > +                monitored-battery = <&battery_cell>;
> > +                rockchip,resistor-sense-micro-ohms = <10000>;
> > +                rockchip,sleep-enter-current-microamp = <300000>;
> > +                rockchip,sleep-filter-current-microamp = <100000>;
> > +            };
> > +
> >              rk817_codec: codec {
> >                  rockchip,mic-in-differential;
> >              };
> 
> 
> Best regards,
> Krzysztof

Thank you.

I forgot to note in my patch notes that this relies on this series
being upstreamed to convert the rockchip rk808 bindings from txt into
yaml:
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20220404215754.30126-2-macroalpha82@gmail.com/

That series is mostly upstreamed (the patches fixing issues in various
devicetrees). All that remains is the main one switching to yaml.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
