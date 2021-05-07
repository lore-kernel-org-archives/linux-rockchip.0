Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5251EC433ED
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 21:06:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B0C5D61410
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 21:06:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B0C5D61410
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=THpMljLW4bZ+/rTVA/Tv4zLZKBbtEtnfHQQOMUJ/Emg=; b=C5/CBTnoK5waIFMz6pPXitAQQ
	e7XqslBlA137gR1d01+xDi2etz7uRE9UGDNrAN2vvyoIJyYwZ1v13u/YivEJusdjoDSh+KmqcH4pt
	iF2+iywlOyY9S0RO7x7uee5d4W6IFlcioykG6kev00qs7P4EMgC2Pwg5IfR2/iexO5EZyyZHoJcNW
	t5gwdbMmIcq9Zv11U8vXd/D78FCOHfyO5AitSn/mtrad0ZkTbOZga8aJd1I1mf17Dai626mDo+nNH
	NrqToNyh1VYoVYSaFjCerXHFgMlBK0Kz/IIhej6/l73yYARUPqnlsxVA7jkIhRgihvLyvRmbWCrMd
	pcTFYDnYQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf7gI-0084FJ-AI; Fri, 07 May 2021 21:06:42 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7gG-0084F7-Qc; Fri, 07 May 2021 21:06:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:
 Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
 :Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=JEB2qpeknL6L8I5YaLmtzW0vE1cIvMk/VqIb8t+jV24=; b=lEMGEqOqdd66fBlcfwnRR3vq6i
 SgyrIKzrRGtoeqdnkJ8426e1zSny7YY2Ughf8Mvpk7XR8K8Timm+1oEZ043srDjfC2I6VzDXkRdUR
 JoxAYoxAmp9rbJGnrTfWnxKMiqgPr6zMDeyJdqgWuA8+MHO90rvf0qHn6BWm0wO6mq/KPtnOssFMi
 dSU0eX49sG1ZDDbQ6CoVTTr+9bkynQpywFSsbdXy4nofUK3+UBH2x4UDxVJP74BspZa0u+B2bL5OJ
 RIono+oL56MKU8BwJULKJpqIYKMV22QHTPc6nQIdJyqhElGpIQtwTFq2OZ6bfTkd2PYmU4Mhj5Din
 aYP1Q53g==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7gE-007BbF-Ef; Fri, 07 May 2021 21:06:39 +0000
Received: from p5b127e83.dip0.t-ipconnect.de ([91.18.126.131]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lf7gA-00054f-Rs; Fri, 07 May 2021 23:06:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Cc: Johan Jonker <jbx6244@gmail.com>, linus.walleij@linaro.org,
 bgolaszewski@baylibre.com, jay.xu@rock-chips.com, shawn.lin@rock-chips.com,
 david.wu@rock-chips.com, zhangqing@rock-chips.com, huangtao@rock-chips.com,
 cl@rock-chips.com, linux-gpio@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] dt-bindings: gpio: convert rk3328-grf-gpio.txt to
 YAML
Date: Fri, 07 May 2021 23:06:33 +0200
Message-ID: <3540274.MHq7AAxBmi@phil>
In-Reply-To: <20210507210239.GA2875797@robh.at.kernel.org>
References: <20210505134028.13431-1-jbx6244@gmail.com>
 <4104568.ejJDZkT8p0@phil> <20210507210239.GA2875797@robh.at.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_140638_526841_9ABE3D82 
X-CRM114-Status: GOOD (  16.12  )
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

Am Freitag, 7. Mai 2021, 23:02:39 CEST schrieb Rob Herring:
> On Fri, May 07, 2021 at 10:59:09PM +0200, Heiko Stuebner wrote:
> > Hi Bartosz,
> > 
> > Am Mittwoch, 5. Mai 2021, 15:40:25 CEST schrieb Johan Jonker:
> > > Current dts files with RK3328 GRF 'gpio' nodes are manually verified.
> > > In order to automate this process rk3328-grf-gpio.txt has to be
> > > converted to YAML.
> > > 
> > > Rename 'grf-gpio' nodename to 'gpio'.
> > > 
> > > Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> > 
> > just to not step on any toes, do you plan to apply this patch1 later on?
> > Patches 2-4 are in my domain so I'll get them after -rc1, but in theory
> > the gpio binding should go through the gpio tree.
> 
> Different trees will break the schema checks because the grf schema 
> refers to the gpio schema.

Ah, thanks for the heads up.
I guess we need to agree on one then.

Bartosz, gpio tree or the rockchip tree for patches 1+2? ;-)


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
