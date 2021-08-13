Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CEE9C4320A
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 18:55:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CE64861038
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 18:55:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CE64861038
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Blh6LK37bzWlSSjW2wpgzbM7bfkrejQUo6MXtE762I=; b=VLhth3+9raz3VE
	ebBPL6zRf2QI9qobd4/rRoc3Bhfi7YFEPaiPtLUjJenJ1VXGpyfZHdTYA7TWySRgl/h8PZuZBHkCY
	+v9IOnYDlcwFuNAEXNcYzt4s9PbUrU6xR8V8PW3cImu0EQb2VBv4OTgfegbdfKjsgdSrMZ1L0nYvL
	JLQbLUMZlRJVkW65DyI2q52mWOJvimFWysbk9r1/K18h68sZ7BFjfqEczXojosS0H44vMhdOA8jjb
	9ZrSwCNu6GPlmRHz31gNitpeBI7ODoNH8QNCTB24yynpZS0jiVTupgCCBY+NUsMK7VED0hzWY9VqG
	QOlS5NYcJgbvUqPWqzPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEcKg-00DNyt-0N; Fri, 13 Aug 2021 18:55:06 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEcKT-00DNy7-2V; Fri, 13 Aug 2021 18:54:54 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 u13-20020a9d4d8d0000b02905177c9e0a4aso2591148otk.3; 
 Fri, 13 Aug 2021 11:54:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zgYDaCCAVB+2In14a1kG5iiSGAnj8Z0BlZoSrQOooJs=;
 b=TKkfcBNhigLG20cJ0+UnpMFhEpohXiSGDNBj1RLaI8Y3vuN+1piul1D2QgUTB3JBJx
 RTaNXUDfbky2Dj88LzSJ8XPY4hBi9w3oHeKxDDDImzzuzU3651wpOgff3YZ5VcUKhFwe
 PRSlv27Qhgjmhv7+BQFslQIe+iW5YToo4k3toITWfW7ALGlTYbjzAys7Weec+qSnVfKg
 y6wIP/qO2FRkClcgY0ah8ckvND1pmcoQcW3Z/wjHXSl1QQGuzw1Ovo40N4K1poybr4sg
 xsqnIPJf6xnAx4jg9LwesaBK4IWsV8FSB1WfVFb4EZMAt7UHaUokUra1MsyrTjmDyA45
 ZUFw==
X-Gm-Message-State: AOAM533dgz9mIwvugbDVHSZBgOvR4BoipoK7KIa1+OPxH6mQRSAKrv9S
 uV3O3tgE5WEa/zKEkpsyrQ==
X-Google-Smtp-Source: ABdhPJwxmdmo6xRjRihAW2AtHQF9dDvG9ZJaa+9boQ+XVewLk7MSFFS49dAeSXvzPiaFF5dc7aHLPg==
X-Received: by 2002:a05:6830:1f54:: with SMTP id
 u20mr3256501oth.320.1628880892451; 
 Fri, 13 Aug 2021 11:54:52 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id r2sm522068oig.1.2021.08.13.11.54.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 11:54:51 -0700 (PDT)
Received: (nullmailer pid 3858276 invoked by uid 1000);
 Fri, 13 Aug 2021 18:54:50 -0000
Date: Fri, 13 Aug 2021 13:54:50 -0500
From: Rob Herring <robh@kernel.org>
To: Michael Riesch <michael.riesch@wolfvision.net>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
 linux-kernel@vger.kernel.org, Tobias Schramm <t.schramm@manjaro.org>,
 Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Simon Xue <xxm@rock-chips.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Zhang Changzhong <zhangchangzhong@huawei.com>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Johan Jonker <jbx6244@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Liang Chen <cl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Jianqun Xu <jay.xu@rock-chips.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/7] dt-bindings: power: add rk3568-pmu-io-domain
 support
Message-ID: <YRa/+rrW3ciW/tJf@robh.at.kernel.org>
References: <20210805120107.27007-1-michael.riesch@wolfvision.net>
 <20210805120107.27007-2-michael.riesch@wolfvision.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210805120107.27007-2-michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_115453_158410_6227587B 
X-CRM114-Status: GOOD (  12.66  )
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

On Thu, 05 Aug 2021 14:01:01 +0200, Michael Riesch wrote:
> Add binding for the RK3568 along a SoC-specific description of
> voltage supplies.
> 
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
> [add soc-specific section]
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
> v3:
> - add missing compatible for the rk3568 to grf.yaml
> 
>  .../bindings/power/rockchip-io-domain.yaml    | 30 +++++++++++++++++++
>  .../devicetree/bindings/soc/rockchip/grf.yaml |  1 +
>  2 files changed, 31 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
