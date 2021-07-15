Return-Path: <SRS0=drtE=MH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52279C07E96
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 16:21:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 17294613F6
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jul 2021 16:21:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 17294613F6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GYHRpIlzUdxqsv80beDU1cgevcu2/n+EVrdRyoVh2LU=; b=lliJ4SFJfCSvGH
	zDehLnCKONeK24JYlkypahxxXV85J8NEL5jhTum3ymKxHiLs3VI1HafJkgif6POHqmv0txICucQ8j
	m4710qkE9hlObfBK/8XP+mRRpH8bJfk6bj+G9BvjmhjDV7oyGHk6+LejoaWnv49yJ0PB5jOIonmk7
	Y8o/d7xAyuicgPocTD7ksvN70BHhPXkN2K8AarKTaVcZUtmV8VqKOEzU1trFNy65FIqtB0lNGzX6Y
	R+H9vPG5ZiFVj5wrJGCHXSygsf46SL4B0KvSBL/JZiGiH7gwmBca2QTlsvdc44HcaSOSw/Lc++SJP
	R/j9Fx8S6YPE/8oZUIRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m447H-001KkL-Eq; Thu, 15 Jul 2021 16:21:39 +0000
Received: from mail-io1-f49.google.com ([209.85.166.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m447E-001KjR-CW; Thu, 15 Jul 2021 16:21:37 +0000
Received: by mail-io1-f49.google.com with SMTP id k16so7111032ios.10;
 Thu, 15 Jul 2021 09:21:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=MORG+AZYmoVSmP90T7xMju1rDj3gu22dvginYkF/pWk=;
 b=Ck9QPFZj04yBNuv+/BehQAUKalwQduEdq206Zjq9tlLGC8xZfSto+j7Qn7R7lEuhuI
 uVIv8P/P5iIAlcLbMXQyPY59eTfnAkkhiFkbclACDtm58UB5aWAoPNCm7th9lccE22NJ
 jsExSyNnV5xiUkMVVxSLJUm8nV9JIpFQ66vRAtAPzmmlHpnEUdD+s6TVIn5Zl075ctHz
 AAPxVvxQA73hHBTed+chJ1bizZpabAJLeWP+vOPTna3IRYfl/qZQndAJ78rVWQZ2Aq6h
 bxdZSp8MSmkjJvtdwoZEWJw1bkDTYq012SUSpbr798lPSl31ul0y2Aak1qRJLgu1r4a/
 8pOw==
X-Gm-Message-State: AOAM530Z3Bmu18SueT1mBt8+NqI0l7o2JVIankDd68GjPHPQ+PflCYOM
 YCgp9GvgZkIUFaCdIC94UQ==
X-Google-Smtp-Source: ABdhPJwZst+LtOnZztCRCAZJqe2310rBglhVaTzN0Q6Xqk3BEjd+Sd1wzFIvwvZvqbvTAAcJMXSxjg==
X-Received: by 2002:a5e:930e:: with SMTP id k14mr3782237iom.136.1626366094388; 
 Thu, 15 Jul 2021 09:21:34 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id t11sm3134538ilj.63.2021.07.15.09.21.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 09:21:33 -0700 (PDT)
Received: (nullmailer pid 1184602 invoked by uid 1000);
 Thu, 15 Jul 2021 16:21:31 -0000
Date: Thu, 15 Jul 2021 10:21:31 -0600
From: Rob Herring <robh@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Liang Chen <cl@rock-chips.com>,
 devicetree@vger.kernel.org
Subject: Re: [RFC PATCH 4/4] arm64: dts: rockchip: add basic dts for Pine64
 Quartz64-A
Message-ID: <20210715162131.GA1184545@robh.at.kernel.org>
References: <20210710151034.32857-1-pgwipeout@gmail.com>
 <20210710151034.32857-5-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210710151034.32857-5-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210715_092136_471490_D576B404 
X-CRM114-Status: GOOD (  11.05  )
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

On Sat, 10 Jul 2021 11:10:34 -0400, Peter Geis wrote:
> Add a basic dts for the Pine64 Quartz64 Model A Single Board Computer.
> This board outputs on uart2 for debug.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 321 ++++++++++++++++++
>  3 files changed, 327 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
