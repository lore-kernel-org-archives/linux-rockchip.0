Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA917C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 21:02:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1DF861426
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 21:02:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1DF861426
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OPWWlCshMUvvjl4q4SWRRr6mEYnh3e+yfSHgYeUZFrk=; b=XAGTdrmkM3Tgh4ld/Vbl+qSXi
	f0aGTdYlUmm5cL3Rd0Bj+UkY9nxpIKm2pfSMkl2+0wzflovqG/XvW/gAM13O4gs8vsyLsB7aUidWp
	ktuqf4OPZ7I1DJGR7lGLajhh+rQfws8bMWZwzFIcrqBe3pqwnsm/isHI70B5LPVvcUSFMBHd2iGa5
	K9stcyyLAaYEXwvr70/laYYc8S+82Ie9A07y64jX2LYrMz5Or6+R/voKuKDjkiq+Fiw0rpfugxFc4
	nAZz046/K1ZcbPCMSyE6zExhqqlIILCCBxHxS+4Q+uN3Zya4p1V/ji4WHpNmbeAa0bDOMEb51MuCC
	1dmLLtR3A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf7cW-0083r3-Tt; Fri, 07 May 2021 21:02:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7cT-0083qI-Ng; Fri, 07 May 2021 21:02:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=DO84sjLIGDwcAM2CNEDLSdiq+br7DBsTGAzQsrrr+pg=; b=Iuu/HfHg/nxdejvEMUqXvxhcZi
 qWgIz9c/BpgrAlQ73XISTCSISkFSASQqZ4J3pZTkuPjpVPBHsukHes42UMRU3n4w7OxvNKD+LxlsA
 BZFYT4IQVBMTAW8mw/DlZ/58cusCVHIBp3Il/OE0SZOgcF5A4QQV97dQkzJ9Fd9CXCw1GxQwNAV1d
 U9JqCkZpH6q6NL6qQj+s0wCnPqI456bjNyFl79C/ICGOf/AcBzLiEu8Zj5KPKbaBUXXvcp821qC/C
 6o7aniYWvPK61+WzbHBmlE36I4inAF2aFKuDgAYucgbzYOst15s5Eh1XYfvaHDv8maixj6vcNCftd
 1zYYgcgg==;
Received: from mail-oi1-f181.google.com ([209.85.167.181])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7cQ-007BUs-WA; Fri, 07 May 2021 21:02:44 +0000
Received: by mail-oi1-f181.google.com with SMTP id z3so8703184oib.5;
 Fri, 07 May 2021 14:02:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DO84sjLIGDwcAM2CNEDLSdiq+br7DBsTGAzQsrrr+pg=;
 b=TaWC2NBa9R2BNmyu7r8zb3onBna6Qg2nSuRhjp9UXRe7r5jnB75q92IbockTksNyqG
 VCHzWhNUyMTF2lPPY7hwnGVmOdytqF1cEtRpiEfrSPtm6f9ZdCMXDUWtw/KCzjR2wGGW
 y2FVpemGyt6UytEM2zPparvujPI+kZWuAAJX8Lz/i8vjOfgInD3Cktc8C5xzI7q/OwGj
 YtdwqApokaQJTrEv+LWDZvwKToSIeJCiC+NlRbBcREDvbCLyCL3q2JhBEvjeyeIvJbE8
 +J8kOUaxuThCEuTlaAU0qBVCmvnyY8BI0RPvisXMjkvu2q12FeVNlApcsOQer+uXJUfl
 0TRg==
X-Gm-Message-State: AOAM530khP8Bgx4KyKllwnpRbm5Fx5iXGcy3U00gtaQNB9VIYQnKI+K+
 wbOCEsTlmJ7A4zeNDNzA1w==
X-Google-Smtp-Source: ABdhPJzGyVwFjylBNk+9CXgwXew9QRQ+W239mTVZzULe1gjXLn4AvTcsr5e2JqI/c7bb5p4ShjdtRg==
X-Received: by 2002:aca:1814:: with SMTP id h20mr16149416oih.150.1620421361927; 
 Fri, 07 May 2021 14:02:41 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t9sm1418345otl.5.2021.05.07.14.02.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 14:02:41 -0700 (PDT)
Received: (nullmailer pid 2878901 invoked by uid 1000);
 Fri, 07 May 2021 21:02:39 -0000
Date: Fri, 7 May 2021 16:02:39 -0500
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Johan Jonker <jbx6244@gmail.com>, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, linux-gpio@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: gpio: convert rk3328-grf-gpio.txt to
 YAML
Message-ID: <20210507210239.GA2875797@robh.at.kernel.org>
References: <20210505134028.13431-1-jbx6244@gmail.com>
 <20210505134028.13431-2-jbx6244@gmail.com>
 <4104568.ejJDZkT8p0@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4104568.ejJDZkT8p0@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_140243_054535_4DE3ECC2 
X-CRM114-Status: GOOD (  12.76  )
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

On Fri, May 07, 2021 at 10:59:09PM +0200, Heiko Stuebner wrote:
> Hi Bartosz,
> 
> Am Mittwoch, 5. Mai 2021, 15:40:25 CEST schrieb Johan Jonker:
> > Current dts files with RK3328 GRF 'gpio' nodes are manually verified.
> > In order to automate this process rk3328-grf-gpio.txt has to be
> > converted to YAML.
> > 
> > Rename 'grf-gpio' nodename to 'gpio'.
> > 
> > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> 
> just to not step on any toes, do you plan to apply this patch1 later on?
> Patches 2-4 are in my domain so I'll get them after -rc1, but in theory
> the gpio binding should go through the gpio tree.

Different trees will break the schema checks because the grf schema 
refers to the gpio schema.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
