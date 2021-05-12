Return-Path: <SRS0=3kgl=KH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85DAAC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 11:33:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 20714613CD
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 May 2021 11:33:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 20714613CD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LAwFujR1QpMCv0K5qBxPwe9D/QjboYdbx50u+RLCKqY=; b=MHzXS9t4QhupwGV1ay6vsPHyB
	7LAccZy55p+VlTHS+RtRB7Kfcv1idGpOM+Kg8a118LhFb/7pe3zqfdQCRas6VrF0Ylp4UUoKpTrRs
	+SCTW97QKEJWTfI4y4KyzsCGhAnjZjcj1Zz0Wjgj5cM1LCvCANLavQbiZRMUPJ6nNKicbk8bREPff
	/rT0RZP/5oKwqJvqNM8RBVpCG/x0s/IrqW2IU3V7HrA0uGr/U088D5e8g/TGfIiTrVfJNG7BIGWN/
	Wlwda6/0VpBUYu3B2Q5ab0mbAGBQTTQj8EcyOmFSr1s6O2JgO034XLbWeFxvtsTIN4S12xI5NA7R/
	ScHMs0bbQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgn7c-002cY6-6J; Wed, 12 May 2021 11:33:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgn7a-002cXr-8K
 for linux-rockchip@desiato.infradead.org; Wed, 12 May 2021 11:33:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Hwqwx4LJYn+nGrs/s7vt3MWR+fST/FOpGPjuEVfqI1Y=; b=MRCQk+fR7B6cQiuuueBWDAdrvv
 eqOOBP5kDm5JQ9avXebUnaRvhXDQLGxZW4FphXh7lZWcBIx58LwIdrs+GqBjOnKb9bl/w8BB/Js39
 dxYXQ1+BQjBSg0dlPp6QtZXV2C0WRlMP4uOSnmKvQ9KHfLLpWaDefE9jMXAKIufYi3inTsVsQou3Y
 feFFHLzN5kvtWjL//RtBzAFQjO06yXR0aKiT0Nm3/Zj2GsgmPsjxXqvvjHMcwmXpGgtQSmWznnOu7
 VNUDj/naFYpqLXc6LnM4TsJo27XQiZrZIarnoSa3vvrqxaFk28CgdzW+CRiVsl1UYzSAdK8dZdECE
 7V7zM5PQ==;
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgn7X-00AJQQ-5e
 for linux-rockchip@lists.infradead.org; Wed, 12 May 2021 11:33:45 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id v188so30303047ybe.1
 for <linux-rockchip@lists.infradead.org>; Wed, 12 May 2021 04:33:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Hwqwx4LJYn+nGrs/s7vt3MWR+fST/FOpGPjuEVfqI1Y=;
 b=ZzghOpmFjMBck1DvPmfzHW9Sdd7J4gJKsYxzxHyT/K6yCOmAqFHSIghrHgQCxbq2tl
 3UVfc6d1p1Xt+yDdLD6Og7RCTTD8O+NPaToKV/DXRYMEaMhWju5fad+YssppnmMA5hTA
 Z5Ar6zGcfi35Lw0yHYk/Zcxi4psHs7/la7mptBxbVoeGmlUYvbyZ9jzzygTn8kP87K+Y
 hksbrePF7VxFYOG7wBoN6L6/QCNQgUzRTtPP5SQMWYx9Tvru9NKiJbKbV2NvXrVbojHs
 k4xoMJe4TL+6PrKAe+cQLMehmqVWre2lC6vNQ2Oq9a43g4ghs+6UzBJv//PpYfeXb1qE
 a4Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Hwqwx4LJYn+nGrs/s7vt3MWR+fST/FOpGPjuEVfqI1Y=;
 b=QgYuiJxshz0B9HUBdiX/Gp59fXjDzWR0gTv0XI88/cHPNPHwapV0XjCUZW1Ht5qqLK
 eZU3O55BaMc3DC3h0OQj5Hts4NO3NLYQbw83vKUDZxuYB334SzXDPs1BpBIKVs20KrrM
 cOXjX0yPAWrNesl4dTjXDSt2Rdk4tmIJaR3lTBJHtgiP4AuVOhnL3au31Dsz0jxzQpPk
 CuWMXIe7G5iNsL1GIVGy7T/Ynye45Mxx8pu5Skj3BJaH7H+Tp0I6Hwh2zRxTzPMD1zPK
 P/nzO6pKaLHPB+2Z8HvpWEDx7qsppZWFP7w9Bwulv6I1XjOwHsAhtZG/kf+OTciPk4E/
 2HUQ==
X-Gm-Message-State: AOAM533nq91kXiIXUvwSp40NZdyCt1ThwO3k571xYMCcqR4l2ZbGDR2j
 SQp9HDS2s7Wo+dCZzHPxdXmQ2BElt+MqlmXJuVPtAA==
X-Google-Smtp-Source: ABdhPJzVDgzsy/eNX1ps1bd8bp+PkNNtBxIF7Wh4nsVHVqC87fdjHMvHoqdIsZ0U8nQlU9VMEcEjqK5fZzdFDLjoMGQ=
X-Received: by 2002:a25:dbca:: with SMTP id g193mr20139314ybf.0.1620819219357; 
 Wed, 12 May 2021 04:33:39 -0700 (PDT)
MIME-Version: 1.0
References: <20210511050511.5973-1-jbx6244@gmail.com>
 <20210511050511.5973-2-jbx6244@gmail.com>
In-Reply-To: <20210511050511.5973-2-jbx6244@gmail.com>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Wed, 12 May 2021 13:33:28 +0200
Message-ID: <CAMpxmJU9K9t+LOT6SLarXQYZs1YCqVZHMz_ZM+iMpzfMtqUH8g@mail.gmail.com>
Subject: Re: [PATCH v4 1/4] dt-bindings: gpio: convert rk3328-grf-gpio.txt to
 YAML
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 jay.xu@rock-chips.com, 
 shawn.lin@rock-chips.com, david.wu@rock-chips.com, zhangqing@rock-chips.com, 
 Tao Huang <huangtao@rock-chips.com>, cl@rock-chips.com, 
 linux-gpio <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210512_043343_232441_5DC86831 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
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

On Tue, May 11, 2021 at 7:05 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Current dts files with RK3328 GRF 'gpio' nodes are manually verified.
> In order to automate this process rk3328-grf-gpio.txt has to be
> converted to YAML.
>
> Rename 'grf-gpio' nodename to 'gpio'.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Patch applied, thanks!

Bartosz

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
