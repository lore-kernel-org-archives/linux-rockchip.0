Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 686F4C19F2B
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Aug 2022 22:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7OqB+cPgbSioFYLO8G4f9eJSnbUJPgkZ6xJFpsGxsDY=; b=eVG1Y6uLURQv6N
	e1CHYWTzsEcJI7rO0eFKZ/OWu9YmnOqQwHWjl91GQ0r0BDWlifTJ0EVKvbF6rftO/+AmP98M2biof
	LH3tmSs75tvjJw9W0opiDVsZwNq9pIh01/m+XpmPgWXShlaSqBEaNhdPaXDzg856VGRbKlk+Z4aNP
	o63cDSQYAuNsBKlFdVlbGfbewBX9wHtFyzeqP3LDiYIcUhd6m+NaBq+YdkVRg8RDzJwb2zr2DpA9i
	neDowt2nLB0zaYiZTBgTsM0iU/FzTASI81+BmoFzTyTVoq0HNbbX12R9M1lkEZ6ehQWoMHW4VrVvU
	cefHHDaGqbjIGR/0GNmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJMwC-00ARwZ-8O; Wed, 03 Aug 2022 22:34:00 +0000
Received: from mail-io1-f42.google.com ([209.85.166.42])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJMw0-00ARlm-5F; Wed, 03 Aug 2022 22:33:49 +0000
Received: by mail-io1-f42.google.com with SMTP id p81so13983761iod.2;
        Wed, 03 Aug 2022 15:33:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=9gI9TOdJWQOPfIpMfYTyghgtjr1K2FynC9VVJudPdrA=;
        b=Q+as0ozs43VPwEeiUJty/35NRexSqLCmAYl0UVOvI+7WebmA4Nw6V6w7bZA4YFf1tw
         WfFX8Xc1s4ZOZeYpabs6c5jwQNzTkb+CD90No9D4PFmM7aAGidFj8cH1B/8aIobQC483
         eOcnzOV/RBjVOMhjPCDBP9hE/LwMAm//v0IIoFh39i4+o5ATAQOAWKoHLBFvWhKEsZsp
         ZG4/1CTdqDMkhX5sJ72A7HV5XBIuNGIgS5hkai1b9aIe/x2zEvrLFE+Htqq22bit958M
         4FHLFAPshQbOs9D3eHITmMs/KzATt3g7XuZz5mhkVbOhdiUIva98UKmteJwE86W8l26G
         Sygg==
X-Gm-Message-State: ACgBeo3FIekTWvT/LPElxpzjcjPcB7DsYvaqRIVHb7hhXtaTa+6AVEqw
	+KVWMGArymuTti+6PK6ctQ==
X-Google-Smtp-Source: AA6agR4FTOsGPel7KQefqEIOVHQuKg2sQLlZIWChh3AONYgk92v0ZeAm7CWzdJNpZEXyDkHkK+uSjQ==
X-Received: by 2002:a05:6638:3821:b0:342:968b:62d with SMTP id i33-20020a056638382100b00342968b062dmr1350017jav.302.1659566026386;
        Wed, 03 Aug 2022 15:33:46 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id n17-20020a056602341100b00674f9fb1531sm8800376ioz.30.2022.08.03.15.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Aug 2022 15:33:45 -0700 (PDT)
Received: (nullmailer pid 2741031 invoked by uid 1000);
	Wed, 03 Aug 2022 22:33:43 -0000
Date: Wed, 3 Aug 2022 16:33:43 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@edgeble.ai>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Kever Yang <kever.yang@rock-chips.com>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for
 RV1126
Message-ID: <20220803223343.GA2737695-robh@kernel.org>
References: <20220731174726.72631-1-jagan@edgeble.ai>
 <20220731174726.72631-3-jagan@edgeble.ai>
 <4f8b8b98-c0ef-4924-6ff1-ccfeae77fc21@linaro.org>
 <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+VMnFwQFLNbtgX0RR5vLq29tvU3HBpcyrtrksOsxF5s=W7=UQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_153348_232511_C09F7D61 
X-CRM114-Status: GOOD (  21.34  )
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

On Wed, Aug 03, 2022 at 03:54:56PM +0530, Jagan Teki wrote:
> On Tue, 2 Aug 2022 at 16:08, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
> >
> > On 31/07/2022 19:47, Jagan Teki wrote:
> > > Add power-domain header for RV1126 SoC from description in TRM.
> > >
> > > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > ---
> > > Changes for v2:
> > > - add blank line
> > >
> > >  include/dt-bindings/power/rv1126-power.h | 35 ++++++++++++++++++++++++
> > >  1 file changed, 35 insertions(+)
> > >  create mode 100644 include/dt-bindings/power/rv1126-power.h
> > >
> > > diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> >
> > Vendor in filename is needed.
> 
> Yes this follows how similar rockchip vendor notation
> 
> $ ls include/dt-bindings/power/rk3* -l
>  include/dt-bindings/power/rk3036-power.h
>  include/dt-bindings/power/rk3066-power.h
>  include/dt-bindings/power/rk3128-power.h
>  include/dt-bindings/power/rk3188-power.h
>  include/dt-bindings/power/rk3228-power.h
>  include/dt-bindings/power/rk3288-power.h
>  include/dt-bindings/power/rk3328-power.h
>  include/dt-bindings/power/rk3366-power.h
>  include/dt-bindings/power/rk3368-power.h
>  include/dt-bindings/power/rk3399-power.h
>  include/dt-bindings/power/rk3568-power.h
> 
> >
> > > new file mode 100644
> > > index 000000000000..38a68e000d38
> > > --- /dev/null
> > > +++ b/include/dt-bindings/power/rv1126-power.h
> > > @@ -0,0 +1,35 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> >
> > Dual license, please, unless some copyrights are no allowing this.
> 
> Yes, as we discussed in v1 - I'm not liable to change so I keep this as it is.

I assume that would be Rockchip. Can someone from Rockchip please give 
an okay here to dual license?

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
