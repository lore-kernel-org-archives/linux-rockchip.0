Return-Path: <SRS0=14fJ=LF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18C9AC48BD1
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 16:03:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D716A613EE
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Jun 2021 16:03:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D716A613EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7HNi0yuzmDZSKJ2LcL5ZoJMyamDyXZsScuXrYBlh9MY=; b=KZNKzRJrrzWX3g
	Uk946LXKnXYe4v9DhFDdqXsB/oxs4LzE0As6HlR7t/zC4jkmmEzMZ5wMxv6E9tDdnqc/qEoxBi2NU
	5TeZn+J73vHuDStVjdhpLnhSiS/aBqMp9e0RZSzz5zSKcsJggmEKkztp0PkpPcyKBAp1r4IOBimeD
	dkyfXtHft24s73Q3Kuz/W+d4dmpCVzr4L4hSYa/MuarLixNwUdAX6dYFIj9EwYNDWGCXOX3IjXgZM
	S1pUqVkHgwVGaBiz4ISAAeD279Lm5Kv2orFGbf1oJupONAI7O7wLBPYs8E3e8mB1wXjlRaRuVXlD+
	b2xoQuaK34DycgFl8egQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrjcv-005uZO-Ir; Fri, 11 Jun 2021 16:03:21 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lrjch-005uXK-3l; Fri, 11 Jun 2021 16:03:09 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id A920E1F44769
Message-ID: <add0dec64efd2d6d711df3179a88a6857bf4e887.camel@collabora.com>
Subject: Re: [PATCH v2 07/12] media: hantro: add support for Rockchip RK3036
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Alex Bee <knaerzche@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>,  Rob Herring <robh+dt@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,  Lee Jones
 <lee.jones@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Date: Fri, 11 Jun 2021 13:02:54 -0300
In-Reply-To: <20210527154455.358869-8-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210527154455.358869-1-knaerzche@gmail.com>
 <20210527154455.358869-8-knaerzche@gmail.com>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210611_090307_319289_161645CC 
X-CRM114-Status: GOOD (  10.49  )
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

On Thu, 2021-05-27 at 17:44 +0200, Alex Bee wrote:
> RK3036's VPU IP block is the same as RK3288 has, except that it doesn't
> have an encoder, decoding is supported up to 1920x1088 only and the axi
> clock can be set to 300 MHz max.
> 
> Add a new RK3036 variant which reflect this differences.
> 

Same question here, about testing higher rate than 300 MHz,
but I suspect you did that already :)

Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>

Thanks,
Ezequiel


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
