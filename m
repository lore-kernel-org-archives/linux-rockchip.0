Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA315C6FA82
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Sep 2022 16:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrPCI5ef7zorg9Bi9uSV+ew5YDSgO3SRzoXZrPEbph4=; b=08Y44EbfpNXpQV
	Wf5OaxNNSQZnR5Ooq/gcfNVDyuAjcHSeXUsu2i3Z/JH5nqI117H91HfGGnu4Wrf10uXVF+0jD5iIR
	81mg96delnUeY9Ux9oCLoQPW3bvTwzwI2izvc2LKLeaJd1lElxO+icQNDqN+aQsqdDUaZ/LIdRrun
	x37nLYZnuHVeSwDIx9q/KJ43agkCbO44TYDoqnprw1KzsoEY4+gAvMNKfQZ4GGiSfTGCxfvD1lB/C
	cvf8jTEoltjzFjqPea4l6+VreChvVeYkao8l+6LMPn3zFZyLIvg7bFZM6/gSQHJjENDkY0/e8vc9Y
	ZvJYlmlnAyDAe79ZWJxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVKi-005DU8-GB; Wed, 14 Sep 2022 16:33:52 +0000
Received: from mail-oa1-f50.google.com ([209.85.160.50])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYVKW-005DPe-81; Wed, 14 Sep 2022 16:33:41 +0000
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-11eab59db71so42419091fac.11;
        Wed, 14 Sep 2022 09:33:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=T3drauNo4474IH1JoGI0Vn3Xbi0rGq0VprM15Edh8TM=;
        b=6IQ+iPxB7f1PF0frOakeF7S/x8YNRd/ouKJt+xHUHWpEqoadnd5ltyARapZ5ghtrLi
         vyDHfykQXr2To2cxoEq7otvG51gz+EwI9DspBsRXbQqvwiZC4jBidoURvZyqUZm2Ov3S
         1VoJfz+y3MM4ATeXJjzNO2pvb8OkZqGfuUrVwqEhBe95e3vIiU9nhqQ+pp+inHZDNMIA
         AVcLGBxzJBAFpnSkzoxSd3IHGPLdjKJCHb9ZLps9w9dUHFPwcG7guxnQXZPfb3WcYgFZ
         n4AV6E7YWG4WBr0g0thEg9VTRpVrYu3UopcyRk0YSzgDHMNuxk3hhLF5D7oFzSl0G32u
         Ow+w==
X-Gm-Message-State: ACgBeo2DJph3CGhu80UtmwBcGk3mapinwYCylEqVKGZ5g5R3K2EX/K86
	5Uj4A8Fu3YLPtySjxUbEAw==
X-Google-Smtp-Source: AA6agR4eVxZknyBEVeZga8UrMOTrl7yQYSfSQLeC6YZzw2Wb9Qoc1A2M/mTT+P26xb9XO234lk0UIg==
X-Received: by 2002:a05:6808:2129:b0:34f:d098:d5bd with SMTP id r41-20020a056808212900b0034fd098d5bdmr2327082oiw.136.1663173219480;
        Wed, 14 Sep 2022 09:33:39 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x14-20020a056830114e00b0063a82e6f3f9sm7390367otq.14.2022.09.14.09.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 09:33:39 -0700 (PDT)
Received: (nullmailer pid 2540774 invoked by uid 1000);
	Wed, 14 Sep 2022 16:33:38 -0000
Date: Wed, 14 Sep 2022 11:33:38 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, zhangqing@rock-chips.com, finley.xiao@rock-chips.com, shawn.lin@rock-chips.com, zhengxing@rock-chips.com, jeffy.chen@rock-chips.com, jay.xu@rock-chips.com, krzysztof.kozlowski+dt@linaro.org, sboyd@kernel.org, mturquette@baylibre.com, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] dt-bindings: clock: rockchip: change
 SPDX-License-Identifier
Message-ID: <20220914163338.GA2503697-robh@kernel.org>
References: <d70fa056-608d-0c19-7948-c67b15a4246e@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d70fa056-608d-0c19-7948-c67b15a4246e@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_093340_318979_1A34D11F 
X-CRM114-Status: GOOD (  10.70  )
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

On Wed, Sep 14, 2022 at 12:50:45PM +0200, Johan Jonker wrote:
> Change SPDX-License-Identifier to (GPL-2.0-only OR BSD-2-Clause)
> for Rockchip clock bindings.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Request for copyright holder approval.

Who is that? Please add Cc entries above for who that is. It's authors 
of the files below and the original .txt files.

> ---
>  Documentation/devicetree/bindings/clock/rockchip,px30-cru.yaml  | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3036-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3188-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3228-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3288-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3308-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3368-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3399-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rk3568-cru.yaml          | 2 +-
>  .../devicetree/bindings/clock/rockchip,rv1108-cru.yaml          | 2 +-
>  10 files changed, 10 insertions(+), 10 deletions(-)

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
