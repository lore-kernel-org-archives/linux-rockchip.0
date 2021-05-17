Return-Path: <SRS0=F3mh=KM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50AB3C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 12:36:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6CD161029
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 May 2021 12:36:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E6CD161029
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=thNqQeMWutC5sfhUUJs3L9b/NUkWnZuAexCT/mFD0s4=; b=pNaVWcQ/I3D8suCLLT37VVead
	mlXoN36dJW715juFvicMkN4ch7cr5FozWUevKyCx2wJtUsC/0Ai0vtuXRNEoMayC/D4JsZ2BerA7+
	+Fm9OEzK0KJwvuxqusFEf3cWkPysj4UceOTA6waSCW+etH9t9hCALHLXxfEtUX9MOFK/v5OeIzLQ+
	mVHojDdZYHD4nM29Wcj1PkKrYEtEUzDIaX7Vg2MOYl3zW4vu6W2Oc5gOJXKttcpiUJRMN/qkzjLJs
	cbRaWq9M7kgA3w+8DChpBwkFaAa3gYTONW72DkXj+wZzFfAEKmiviRK4MHf93REdWwIoKLe5Np0pf
	SytLTLkfw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1licUH-00Ew1G-8K; Mon, 17 May 2021 12:36:45 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1licTT-00EvfL-AP
 for linux-rockchip@desiato.infradead.org; Mon, 17 May 2021 12:35:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=ojd7sAqzmTJGp/6t5RGNlnuyNWl4GL1OPMuQdKizXTg=; b=HJPm02rF3ihweSQr5V8ZhDr1kv
 QwYpqGu0A368dg/2l4fqtDILw3K4B2b6r/pBJeLVdWZ92tdpISgPE/g7s/6YnA/tpLJfrBL13P1uK
 42BfSivMKj05YHL//5T5IwHoBQznBptbrRHeDtQ3GrdQGfQtxfpFrdTbq4Dz3mInEDI8PS9UKOsBl
 Qr5ps353rh1ewZEZN5iWbsWmOgY0XFQEmEBMDGeX1qV0gghwYwS7iAS1TZR7Qg2DImsEaay10ja41
 Syd45GJ/X+Y9c6ZMV+2sSGRnANG2VA8ayZNj6nX8QA6Vxx2qgn3O3idPUCfInpxI3q/vX3reEdjuf
 oHJWAuKw==;
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1licTQ-00DlL5-72
 for linux-rockchip@lists.infradead.org; Mon, 17 May 2021 12:35:54 +0000
Received: from dggems702-chm.china.huawei.com (unknown [172.30.72.59])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4FkJRm4T2jzmhZW;
 Mon, 17 May 2021 20:32:20 +0800 (CST)
Received: from dggema762-chm.china.huawei.com (10.1.198.204) by
 dggems702-chm.china.huawei.com (10.3.19.179) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.1.2176.2; Mon, 17 May 2021 20:35:48 +0800
Received: from [10.174.179.129] (10.174.179.129) by
 dggema762-chm.china.huawei.com (10.1.198.204) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Mon, 17 May 2021 20:35:47 +0800
Subject: Re: [PATCH] media: hantro: Fix PM reference leak in device_run()
To: Johan Hovold <johan@kernel.org>
CC: <ezequiel@collabora.com>, <p.zabel@pengutronix.de>, <mchehab@kernel.org>, 
 <gregkh@linuxfoundation.org>, <linux-media@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>, <linux-staging@lists.linux.dev>,
 <linux-kernel@vger.kernel.org>, <yi.zhang@huawei.com>
References: <20210517081516.1562794-1-yukuai3@huawei.com>
 <YKInrIMZYGI1VKdl@hovoldconsulting.com>
From: "yukuai (C)" <yukuai3@huawei.com>
Message-ID: <7ee3a948-8249-9f07-82ba-6d347037e50f@huawei.com>
Date: Mon, 17 May 2021 20:35:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <YKInrIMZYGI1VKdl@hovoldconsulting.com>
X-Originating-IP: [10.174.179.129]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 dggema762-chm.china.huawei.com (10.1.198.204)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_053552_425868_8CDBCB82 
X-CRM114-Status: GOOD (  14.34  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2021/05/17 16:22, Johan Hovold wrote:
> On Mon, May 17, 2021 at 04:15:16PM +0800, Yu Kuai wrote:
>> pm_runtime_get_sync will increment pm usage counter even it failed.
>> Forgetting to putting operation will result in reference leak here.
>> Fix it by replacing it with pm_runtime_resume_and_get to keep usage
>> counter balanced.
>>
>> Reported-by: Hulk Robot <hulkci@huawei.com>
>> Signed-off-by: Yu Kuai <yukuai3@huawei.com>
>> ---
>>   drivers/staging/media/hantro/hantro_drv.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
>> index eea2009fa17b..7a6d3ef22096 100644
>> --- a/drivers/staging/media/hantro/hantro_drv.c
>> +++ b/drivers/staging/media/hantro/hantro_drv.c
>> @@ -160,7 +160,7 @@ static void device_run(void *priv)
>>   	src = hantro_get_src_buf(ctx);
>>   	dst = hantro_get_dst_buf(ctx);
>>   
>> -	ret = pm_runtime_get_sync(ctx->dev->dev);
>> +	ret = pm_runtime_resume_and_get(ctx->dev->dev);
>>   	if (ret < 0) {
>>   		pm_runtime_put_noidle(ctx->dev->dev);
> 
> This is clearly broken as there is no PM usage count leak here.
> 
> Please try to understand the code you're changing before submitting any
> more patches based on "robot" feedback.

Hi,

Sorry about the mistake, and thank you very much for your explanation

Yu Kuai
> 
>>   		goto err_cancel_job;
> 
> Johan
> .
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
