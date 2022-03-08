Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 969D2C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 19:07:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mHd5pyaw7dNWImS+tMNl/51GEHE3JnDZPa6CrrRZkRA=; b=oeq5JDwkc/IgXO
	VnqcdwRUhelISJOWhQE7ABefEpXn2g3sZ9Of5n9XVFZtV+n6hJb8E56qeQvXaV2eZbn7ZD+c+QDza
	FDja76tmftVSvkUlG5NBI/zsdVJP02sCSRk3MnTdBpngPrafO01Ef0dwY25nXdjK6MnX0LL8z/6SP
	LMXo2FRYSDdjqCc/3VpIv236H/gdjmSnzWjiU/g7OzCfdRrnUMkn2c062elhb41u3PbmTm1bV8vd2
	sF7l6PxuFEVrBLqBidqjbDOojfqAh/VTyHOIckeEUUYUnfPfE9o5ER7UEGZ3AUXKjKBgioY1TDtpa
	tlJD5BaXtY5BBhNyAnvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRfAd-005rZJ-Q3; Tue, 08 Mar 2022 19:06:55 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRfAb-005rYb-FS
 for linux-rockchip@lists.infradead.org; Tue, 08 Mar 2022 19:06:54 +0000
Received: by mail-pl1-x631.google.com with SMTP id p17so17929979plo.9
 for <linux-rockchip@lists.infradead.org>; Tue, 08 Mar 2022 11:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=fKKD+3hXAeIEEWs0Yh0fwesV2YwX9bcSV9zNUsAN1go=;
 b=TiAz7VQN6cqOR+YCGQONQ1puu9/mIbyi+3VaF2Y+0BaZGeb5d0zwRpgV+wE8vfCZR2
 Pgq+thE1e9/4lXjLiLuSG2aKfs9V+qPTceSPGx1VZpZ/g/nRHQ1xsr06c/+SZh0uL6ZD
 l59TPYzzVMS9JLJRtFAh9Cax5j2QTPG0/KiPc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=fKKD+3hXAeIEEWs0Yh0fwesV2YwX9bcSV9zNUsAN1go=;
 b=UC+GLMrqriZwzZO49UX08zeiSzYWqV3rw6jQz51f8mpv86lAdNqM9w9Xq5tRdZQAfv
 zRsYA9Kd5iEKG9ah4wrrnIxFvPOXsAWGCFyNzVX4Jt0NbPlrkxNIxsmVygMABh4tXHVN
 dfERwkBxHo/qLPf0GR/KPS3/hwNTgpnF3oPeVimGEM1M5PFcVorXVPH5GeHOoVx86ePK
 hx1GssmTf0rhIbKWl/VGZkeTY0VxOFFC8ni0V0o3RsNoGcId+4ueHQ5xLJ3WU1TPjvI4
 OpZ4cuAwxMKgLaYjOEE8KbI87K5C3/eDNNDJMBVR6eRoKTK9yHGPzxYOWGFQBpP89ixx
 kAyg==
X-Gm-Message-State: AOAM533KcPJdRmjA9qKjS8knYmz+YgPA16dmYD3hFPFOzmiceJeMoGwb
 VhaiRR3+nPquB37w8qIi08jQOta9W76Q0g==
X-Google-Smtp-Source: ABdhPJwSOD+gGbHatfnouDV590+C0yrq8QOnBDEG0WOdkHpfzRz+TxjH6jpl1Ho2oEWdFX5xJuG7yw==
X-Received: by 2002:a17:90a:aa8c:b0:1bf:5273:ba28 with SMTP id
 l12-20020a17090aaa8c00b001bf5273ba28mr6261331pjq.226.1646766412904; 
 Tue, 08 Mar 2022 11:06:52 -0800 (PST)
Received: from google.com ([2620:15c:202:201:b3e3:a188:cbfc:3a0e])
 by smtp.gmail.com with ESMTPSA id
 x29-20020aa79a5d000000b004f0ef1822d3sm19910654pfj.128.2022.03.08.11.06.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Mar 2022 11:06:52 -0800 (PST)
Date: Tue, 8 Mar 2022 11:06:49 -0800
From: Brian Norris <briannorris@chromium.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, Lin Huang <hl@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Derek Basehore <dbasehore@chromium.org>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 01/15] dt-bindings: devfreq: rk3399_dmc: Convert to YAML
Message-ID: <YiepSZXhmUZVwjKo@google.com>
References: <20220308000945.706701-1-briannorris@chromium.org>
 <20220307160918.v3.1.I875ab8f28c5155a7d2f103316191954d4b07ac13@changeid>
 <bf59a2bc-a708-27de-866a-346085dcee7d@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bf59a2bc-a708-27de-866a-346085dcee7d@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_110653_548795_5FCFA13D 
X-CRM114-Status: GOOD (  19.77  )
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

On Tue, Mar 08, 2022 at 07:03:15PM +0100, Krzysztof Kozlowski wrote:
> On 08/03/2022 01:09, Brian Norris wrote:
 
> Apologies for jumping in late in discussion, but how about moving it to
> memory-controllers or interconnect directory? devfreq is Linux specific
> and DMC sounds a lot like dynamic memory controller.

Sure! Will do in v4.

> > 
> >  .../bindings/devfreq/rk3399_dmc.txt           | 212 -------------
> >  .../bindings/devfreq/rk3399_dmc.yaml          | 294 ++++++++++++++++++
> 
> file name:
> rockchip,rk3399-dmc.yaml

Ack.

> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/devfreq/rk3399_dmc.yaml

> > +  devfreq-events:
> > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > +    minItems: 1
> > +    maxItems: 1
> 
> Rob previously asked about max, but it seems it is only one phandle,
> right? Then the type - 'phandle'.

Sure! Don't know why I didn't notice that.

> > +  rockchip,ddr3_odt:
> > +    $ref: /schemas/types.yaml#/definitions/uint32
> > +    description:
> > +      When the DRAM type is DDR3, this parameter defines the DRAM side ODT
> > +      strength in ohms. Default value is 120.
> 
> Here and in all other places - instead of describing default value in
> description, just add "default: 120".

Yep. Most of these properties are actually deprecated in the end, but
doesn't hurt to use the facilities available.

> Best regards,
> Krzysztof

Thanks for the reviews! I'll roll them all into v4 shortly.

While I'm at it: I think I have Reviewed-by's for all the DT patches
(except this one). Given it also touches Rockchip device trees, maybe
this all needs to go through Heiko / linux-rockchip? Or if not, it'd be
nice if Heiko spoke up to tell the devfreq maintainers instead.

Regards,
Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
