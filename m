Return-Path: <SRS0=A12b=J3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05BD9C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:17:39 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8D33261466
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Apr 2021 21:17:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8D33261466
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N4D7PK+352m9NtWDLkJCrLDon85yYcTBBS3AAk/C+Is=; b=A0J8D+yOZnVgZlIVu9Zp0OeI9
	mwbRy56yQ1ea5LVgYTNGX+taPg+jSyilBzoLFk28xuyZdUEgiFF1xrQmf0XpryGacJom7+VWdMTRP
	dJ+3zxBiFls8B18aoswFNtnSAzDLXg/jAt24hLvsSHznq0B6xpfJmx5rOp5YKEJf93kxnGBRatdW6
	ngSQ3N9vURgY9Lstj9/z23pkhTa4JSZmj1ZKdOmF5PTkmx+HVfB4nkE3YzIPFXt156i4lgBfm0lg/
	Q08GKFIBYXHDL8ViLqH2xSpr69dG//ElZk/EkHOnhHf0d9dbOARMcI7LEfcKGsYdeg5g5HXkQ67+i
	LAXovuXBQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lcaVv-008cj7-CL; Fri, 30 Apr 2021 21:17:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaPR-008cAY-0F; Fri, 30 Apr 2021 21:11:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=kSEgVUlltgSDOONBiS4sAFkzxQMosR8q2b8hfma9UC8=; b=b58QXyz1aUp1GgHb2mokJgz0wF
 EsXw5w7U9CL0uVazf06MK5XVg2os1VVcZ1bFb9866YHuHbELIEPUItjl+bYYeIa1rHfrJjOihCgsy
 45LztpINN7tfEW3DZDv+FT9/u/55QkftE/UL6PH83G/QNRtm0ABB66ttcYUsZzonfhwMVN2nHonGg
 Jg6/QoxokfPzwOkVyNYlxWQmC3/5xzONAIcdSG2c78vkSFybYrfsK61jkavKWcud7Kn7vr0HkI/OU
 1fosZLd0GSykVvfa1KmvmC+jUAMwVyc1Hg9Y/eWui/kXwZbEaioYprrFCGx4BbYzjIbxLNRn2ae6Q
 QAPWjFMA==;
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lcaPO-001fot-DM; Fri, 30 Apr 2021 21:10:47 +0000
Received: by mail-oi1-f180.google.com with SMTP id k25so71329750oic.4;
 Fri, 30 Apr 2021 14:10:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kSEgVUlltgSDOONBiS4sAFkzxQMosR8q2b8hfma9UC8=;
 b=bf/SloG2HX07iMmUs+V4bHb5imMTGpPpudc268EgYKYGExtFktseJM6QUu7+b6M/12
 pchkmsoJ+nO3BVXtINtvbpqdnRWaahY1LIXsOwB3M4y4jB9Z3VLbRq7n1NDOpBddIHxt
 opErlRvodw23oHD/lqZzci67haCK3uPGS4jNwYQoFalOoRfkxsx0JW7aG99+3EC1PxAl
 Oa8XNau9n/I1MCJ0tbMXcEvACeOzNVsUPhokWCVHmVl+dvHT539tYl4wvD4/lTYRuR8A
 GMPr7HiGR2naqGU7gGPazJzFV7liLDEeh06UW0vZfQDyfxilBGw3EQcl40r3t7/jlNnh
 OMyQ==
X-Gm-Message-State: AOAM5339gZt81J22r+dNdWw0b7wnt4et39qRCk0yWCJg6Y8/5bk4R9mD
 E3QvIN6rMZjEw1VuXqFgBg==
X-Google-Smtp-Source: ABdhPJyC09D8lASABIQOXdJUS4e0eg6y4Lwzcjjkv84brMLnJFgup/NBDzBUDxNZkEwVZYlQzZxdWQ==
X-Received: by 2002:aca:1211:: with SMTP id 17mr5508725ois.20.1619817044122;
 Fri, 30 Apr 2021 14:10:44 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id q130sm1010654oif.40.2021.04.30.14.10.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 30 Apr 2021 14:10:43 -0700 (PDT)
Received: (nullmailer pid 3899661 invoked by uid 1000);
 Fri, 30 Apr 2021 21:10:41 -0000
Date: Fri, 30 Apr 2021 16:10:41 -0500
From: Rob Herring <robh@kernel.org>
To: cl@rock-chips.com
Cc: jbx6244@gmail.com, david.wu@rock-chips.com,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 gregkh@linuxfoundation.org, jagan@amarulasolutions.com, linux@roeck-us.net,
 maz@kernel.org, linux-serial@vger.kernel.org, cnsztl@gmail.com,
 wim@linux-watchdog.org, shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-arm-kernel@lists.infradead.org,
 zhangqing@rock-chips.com, linux-watchdog@vger.kernel.org,
 jensenhuang@friendlyarm.com, huangtao@rock-chips.com, heiko@sntech.de,
 jamie@jamieiles.com, uwe@kleine-koenig.org, linux-i2c@vger.kernel.org,
 jay.xu@rock-chips.com, mail@david-bauer.net, linux-mmc@vger.kernel.org,
 wens@csie.org, michael@amarulasolutions.com, robh+dt@kernel.org
Subject: Re: [PATCH v4 01/10] dt-bindings: i2c: i2c-rk3x: add description for
 rk3568
Message-ID: <20210430211041.GA3899631@robh.at.kernel.org>
References: <20210429081151.17558-1-cl@rock-chips.com>
 <20210429081151.17558-2-cl@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210429081151.17558-2-cl@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210430_141046_481537_BBCF2493 
X-CRM114-Status: UNSURE (   9.89  )
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

On Thu, 29 Apr 2021 16:11:42 +0800, cl@rock-chips.com wrote:
> From: Liang Chen <cl@rock-chips.com>
> 
> add "rockchip,rk3568-i2c", "rockchip,rk3399-i2c" for i2c nodes on
> a rk3568 platform to i2c-rk3x.yaml.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
