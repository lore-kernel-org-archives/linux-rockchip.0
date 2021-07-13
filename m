Return-Path: <SRS0=z+fE=MF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55314C07E95
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jul 2021 22:59:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 241586128B
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jul 2021 22:59:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 241586128B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f4kSkoX3WJ0rXF1Hlcp7ji7UcEkD1NkHTueNlDDnBxE=; b=wqtGsy78T779he
	oY5APzZYJ5Em1EyYltWtXz5GRQm2tOImUv2ivOFusCj//DIxc6rYBtm9XM12iZ3MPk4MqdJy5B+Ig
	WjXIN8GafgeRzdv/RLaQ0iw30fQD9bUhZz2YQU6Hi6Ie9nczQTbI88y+8UV+DCqVQnOsbNAXB+0e9
	El2AvCtMJDoA6L+HHXm0zyCPmvXI4cXo5HjUPezyy0+OF5LiVU3lny8ttFe3o99a8fvRp+7P/l3fM
	D13lTdV+tHRVadC02AQ9z+znLehWZkWKea3AyGgGON30g6qo5TrKel0RvONthw7hVh0dvXFRDTOBN
	Tl0WUh3jRAqjhrIwAjLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3RMl-00BYqi-T2; Tue, 13 Jul 2021 22:59:03 +0000
Received: from mail-io1-f41.google.com ([209.85.166.41])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3RMj-00BYpR-97; Tue, 13 Jul 2021 22:59:02 +0000
Received: by mail-io1-f41.google.com with SMTP id b1so29341150ioz.8;
 Tue, 13 Jul 2021 15:59:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=JTI1ZBR9D1Ugup4282dbl5tw68/bdXRLNL3cR2M36lk=;
 b=iF+lZVFAfcT7ivJlJcUtoyUNUusnZvz7YMG+BfRGlPT9e0r5BDp7pwBsRKs32OyV59
 +YIkHwbafLuQ3mCYEB9Nygmozfem8NaG2CwPeZJjCa5xlegZgupR8Z5tKp+HvvjgC0Gz
 aXU0111m5FKIs0qWK0YbxpC6us0KtMVHsZhqSy2GvZ/FbAOdtG3toVLm1F/gbD8WK1Bm
 qN8RX9o27F3j2S7KmHV5Ol7ZTXQ/1tzNbOGIrZpg+eOb6hWxTJEE22ysYPK4fo7FQ362
 dlP7ilgRK7TGilnUCPpb5xnjXYiVEyuL+rCwUmxBCA8KXgJXMpocxML2ync4T1t6hT5S
 rclw==
X-Gm-Message-State: AOAM533a1Vstw1D7VbcuEEPvs4+XxXWgxmSApKLT9S/5XA0lt6xPgZil
 HvkXR2x9aRjpK8TLw9yDxA==
X-Google-Smtp-Source: ABdhPJwqQj4i60dPLCZFJEHdYwTRX+Yhru1/A8V14H871+oGYZI2ex/1qE4HdMBMRRnO95P5eEF3/Q==
X-Received: by 2002:a02:cace:: with SMTP id f14mr6161797jap.5.1626217139833;
 Tue, 13 Jul 2021 15:58:59 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id b2sm224559iln.5.2021.07.13.15.58.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jul 2021 15:58:59 -0700 (PDT)
Received: (nullmailer pid 1010485 invoked by uid 1000);
 Tue, 13 Jul 2021 22:58:53 -0000
Date: Tue, 13 Jul 2021 16:58:53 -0600
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, cnsztl@gmail.com,
 linux-watchdog@vger.kernel.org, lee.jones@linaro.org, shawn.lin@rock-chips.com,
 linux-kernel@vger.kernel.org, heiko@sntech.de, huangtao@rock-chips.com,
 wim@linux-watchdog.org, jensenhuang@friendlyarm.com,
 linux-serial@vger.kernel.org, maz@kernel.org, zhangqing@rock-chips.com,
 thierry.reding@gmail.com, jamie@jamieiles.com, ulf.hansson@linaro.org,
 mail@david-bauer.net, jbx6244@gmail.com, david.wu@rock-chips.com,
 linux-pwm@vger.kernel.org, u.kleine-koenig@pengutronix.de,
 linux-mmc@vger.kernel.org, jay.xu@rock-chips.com, uwe@kleine-koenig.org,
 michael@amarulasolutions.com, linux@roeck-us.net, jagan@amarulasolutions.com,
 gregkh@linuxfoundation.org, robh+dt@kernel.org, wens@csie.org,
 devicetree@vger.kernel.org
Subject: Re: [RESEND PATCH v5 1/4] dt-bindings: pwm: rockchip: add
 description for rk3568
Message-ID: <20210713225853.GA1010426@robh.at.kernel.org>
References: <20210622020517.13100-1-cl@rock-chips.com>
 <20210623021303.28015-1-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210623021303.28015-1-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210713_155901_360046_3D5B1855 
X-CRM114-Status: UNSURE (   9.79  )
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

On Wed, 23 Jun 2021 10:13:03 +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> add "rockchip,rk3568-pwm", "rockchip,rk3328-pwm" for pwm nodes on
> a rk3568 platform to pwm-rockchip.yaml.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
