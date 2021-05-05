Return-Path: <SRS0=Kxb6=KA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_2 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CBC8C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 12:25:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 13691613B3
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 May 2021 12:25:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 13691613B3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=Huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:
	Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8dfj/zCC/My1mmJ7YHXiwy2ZB/Z11BN0O5jD84iJ3I0=; b=SDZuXoOBTtoc8BBnLOjhqIyI4
	jOrINHWVq/7DGvMXDXlPAcGAgEdoo9V6j5QCY+fG1mTtPSSLLXICTO5zr4oNVjlJlLddxjKQkOeKn
	Hoi/RJR0262lB4xmNLVh/yTN/+pc+MWVa/2wlI3qGm6k4egiZv3e4ZMljfZbrGuoCsdUAqUar/LSr
	8dLTY4T3ZY8aRDd7rD4c2udkcAuvr2GmwCckC1/wwPNx82cX2PQe4aAcsMpQEEUMusK2HmsG4+BS1
	pg1dfZVu9bXLlQNlxMPPV2NsGQRxuFEi/5GT5c8n2HpCsvnr4QONjT0xW+Y7HduQwSPh0rWlQgsNz
	8BvOj2o2w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leGam-001BQn-PW; Wed, 05 May 2021 12:25:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leGaS-001BIo-6d
 for linux-rockchip@desiato.infradead.org; Wed, 05 May 2021 12:25:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Subject:CC:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=QLFNc0LGHJ2DULdMvOtJZ9h+V8D93r+JKVoar2PYlcE=; b=kUqGlgjQuWuIscSHZw3Xle0C+6
 bv6M9d2pMGSPAY2GPBrEFmbkSxlY8B3wxbdBexLge1Ncw0SulHR7/9TQ++y7xql5Bzu60KGma8Lz5
 dW5p0oJ4wbEyzqjko4Y96eK1HU0oVfihYOlNm6AILl1aDZBxlJNDMwYkW04eIwZkB1Svr15wpSSw8
 AZwqeYeuGCb+6WPmEtKB0e7kJXpJNQIvlHfSkMyqoETXgc7AogOGFIA9zyRy9Dx/c3MxRmHYOb1/m
 AmqWSywFLLqwrm1WIof1nZ8f8800gDrV27oUwBkqiITh/y0qq7nArQ7gZKsR172m94W77VHJlRjVz
 MPKrSgYg==;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leGaP-004jxW-H4
 for linux-rockchip@lists.infradead.org; Wed, 05 May 2021 12:25:06 +0000
Received: from fraeml712-chm.china.huawei.com (unknown [172.18.147.201])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4FZwgd615Mz6rlXS;
 Wed,  5 May 2021 20:17:01 +0800 (CST)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 fraeml712-chm.china.huawei.com (10.206.15.61) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2176.2; Wed, 5 May 2021 14:25:03 +0200
Received: from localhost (10.52.120.138) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2176.2; Wed, 5 May 2021
 13:25:03 +0100
Date: Wed, 5 May 2021 13:23:24 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
CC: <linuxarm@huawei.com>, <mauro.chehab@huawei.com>, Ezequiel Garcia
 <ezequiel@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-media@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <linux-staging@lists.linux.dev>
Subject: Re: [PATCH 01/25] staging: media: rkvdec: fix pm_runtime_get_sync()
 usage count
Message-ID: <20210505132324.000007fe@Huawei.com>
In-Reply-To: <dd3294f2d2777d41a27b4244f077f440df49a408.1620207353.git.mchehab+huawei@kernel.org>
References: <cover.1620207353.git.mchehab+huawei@kernel.org>
 <dd3294f2d2777d41a27b4244f077f440df49a408.1620207353.git.mchehab+huawei@kernel.org>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.52.120.138]
X-ClientProxiedBy: lhreml725-chm.china.huawei.com (10.201.108.76) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_052505_750113_BD54CFF1 
X-CRM114-Status: GOOD (  15.61  )
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

On Wed, 5 May 2021 11:41:51 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

> The pm_runtime_get_sync() internally increments the
> dev->power.usage_count without decrementing it, even on errors.
> Replace it by the new pm_runtime_resume_and_get(), introduced by:
> commit dd8088d5a896 ("PM: runtime: Add pm_runtime_resume_and_get to deal with usage counter")
> in order to properly decrement the usage counter, avoiding
> a potential PM usage counter leak.
> 
> Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
> Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

(I'll do tags per patch as there are some open ones and it would be
odd to say - "excluding xxxx" in reply to the cover letter)

> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index d821661d30f3..8c17615f3a7a 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -658,7 +658,7 @@ static void rkvdec_device_run(void *priv)
>  	if (WARN_ON(!desc))
>  		return;
>  
> -	ret = pm_runtime_get_sync(rkvdec->dev);
> +	ret = pm_runtime_resume_and_get(rkvdec->dev);
>  	if (ret < 0) {
>  		rkvdec_job_finish_no_pm(ctx, VB2_BUF_STATE_ERROR);
>  		return;


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
