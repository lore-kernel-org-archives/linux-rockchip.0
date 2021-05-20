Return-Path: <SRS0=PymM=KP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A580C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 18:43:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 14801613AA
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 18:43:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 14801613AA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dMLLXpuDsSe+fI4g7FeL+fkhxubqt8flKUI7WfZUlTA=; b=jSJxWDmZSmloLSeGtYsUHY+saN
	36ccxuekJ9XZLIAEE0SRbt35KgaSqjVaNpPNAH/jVwKyjv0M7uixOowPz7xJa5DhnruJ6mzRc2dFK
	t3I5EJklcUrQh+t861uNikJdsH5WqHbX1DHxUsZy/uCndNrQ577hjgH9qeh60M2YR5trFrs/M4sDO
	iGSmxDDMkQK+H76QimwOURkebQuDO8xzciME3pBx4ee6Qa3OMD6w8cktKcGju3BUa56PRQ93s9hGQ
	72w2kZRVDtEhcQefvEj/4YyUk6IrdAED4FLtcWxWocJ2M/5rOKYAVma/yVnRsSeJIc3dMXc31A+Fr
	MDILbb2A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ljndu-002J1X-CJ; Thu, 20 May 2021 18:43:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ljnds-002J1N-9b
 for linux-rockchip@desiato.infradead.org; Thu, 20 May 2021 18:43:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=DZaHxxeVLvCD8NwQ5/MmHFxAi5/YedyGMhTQQ7OLt50=; b=1EqvemTL2RQelvjzjz9LYSRMO1
 gl8d5Jp8Xj4H0C4XtYXThvx4G5dKsSGp1LNl+mawvsZFOhJoemUAK2p00/RWI98ImU3BitMQX7X/Y
 hp1NrPHzWASftpmYzyOfZkKjpjVYXDd7SIKBEeFA2yLR67iYawfRc6Od875JSV189JJnJ2SJqGVhF
 6pRrEKGj9T8PfoLesK62GLx4MawmxsQYvQRu8B1EN6Mxw91fI29wdKJ6NclofV16QjyPmo/jahanI
 biGjIhsc9jTRkKQDwXNCFl/acWM+b7JEPecf4RJrKxNqfgFqtqQMNXe0gmBM58aTnsSKrInbn00K2
 VGsxmkDg==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljndp-00Ga7e-MO
 for linux-rockchip@lists.infradead.org; Thu, 20 May 2021 18:43:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: evelikov) with ESMTPSA id 1650F1F4215F
Date: Thu, 20 May 2021 19:43:22 +0100
From: Emil Velikov <emil.velikov@collabora.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel-janitors@vger.kernel.org
Subject: Re: [PATCH] media: hantro: test the correct variable in probe()
Message-ID: <YKatymPzAtKxpSOY@arch-x1c3>
References: <YKaIKXOcDb0nXguP@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YKaIKXOcDb0nXguP@mwanda>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210520_114329_868122_121A220A 
X-CRM114-Status: UNSURE (   7.08  )
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

Hi Dan,

Thank you for the patch.

On 2021/05/20, Dan Carpenter wrote:
> This should be testing "vpu->clocks[0].clk" instead of "vpu->clocks".
> 
> Fixes: eb4cacdfb998 ("media: hantro: add fallback handling for single irq/clk")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>

Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

-Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
