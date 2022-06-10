Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0017CC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 13:48:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/I9jWyqs8LzAtgYHUPXwT62ISw+p0pjwWhxlQzbLgY=; b=jErLCKTnpGWhes
	e3Nj/ebYIIKna1JAyseauG3cS2X6RpiRg+cH+jetJGiJSSeqvlwQbFHfXeaL2sFjbJJyJfemNIyMn
	UNhvNfyAT6q/PemP87mpTHkOGmTleqBy90ipevEG68U+H0P4xKntClBkjQPr/CM3GxgItVmnhemYt
	meWsHU1MKVF6F8qdJ6UcCsUaKH37yc4czO1awi6bPDvnaEEo/1isJ3SDNa9Zeh8gpb9nUYmuOs9bk
	JCtqpI881bY4HwTogvFtkVAtpedxDJUGPhTv3Rp9EGRh0tBZBBLkasZykjjM19VA9yOhCuPZKcsMK
	rzIdsSp6pojsiMYvfRYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzf02-008QLB-2t; Fri, 10 Jun 2022 13:48:30 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzezt-008QH0-Ce
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 13:48:22 +0000
Received: from [192.168.2.145] (109-252-136-92.dynamic.spd-mgts.ru [109.252.136.92])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 3A21B66016C3;
	Fri, 10 Jun 2022 14:48:19 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654868899;
	bh=BilRyir/crWErV5fDo+jnVnwBSywHk1bpFGWraz5JfE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=DrRRUOEsNVSqutVev5GSgPTtKnxmDE8RX1DeJEFL8ZR0X2MWoUbUH5056NeZupqrg
	 Q7y+G+GkFsWuHQYaStTi5HJJnTOGHNJkZpZssd6lQgCVDWvotuHXl5kmjRPEmVJgLy
	 2A9O5IQfEgY6b3R2WemU2ybfZMtOt3dPIKmA9F+B2c81AtjyLXJKBZFUlzhq44SB5J
	 5AMP2gzYPYrtLTYS7o/bSDcoUWmMEqQa/EwolszCkRAz8JbWIIb82lHm30bxg0wKge
	 eUHTILodjzMFTrVizRWtclUjANnqI8Uu4OCyh1BLR35kmM93XWvxEMZ/kKjsjQt9lV
	 +iZTu+0qbmyCw==
Message-ID: <1cfcfa52-923d-fa4b-05c8-88635f8d93e5@collabora.com>
Date: Fri, 10 Jun 2022 16:48:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v1 4/5] media: rkvdec: Re-enable H.264 error detection
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@oracle.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: linux-media@vger.kernel.org,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@collabora.com,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20220610125215.240539-1-nicolas.dufresne@collabora.com>
 <20220610125215.240539-5-nicolas.dufresne@collabora.com>
 <20220610132017.GD2146@kadam>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <20220610132017.GD2146@kadam>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_064821_610882_C7F02160 
X-CRM114-Status: GOOD (  16.11  )
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

On 6/10/22 16:20, Dan Carpenter wrote:
> On Fri, Jun 10, 2022 at 08:52:14AM -0400, Nicolas Dufresne wrote:
>> This re-enables H.264 error detection, but using the other error mode.
>> In that mode, the decoder will skip over the error macro-block or
>> slices and complete the decoding. As a side effect, the error status
>> is not set in the interrupt status register, and instead errors are
>> detected per format. Using this mode workaround the issue that the
>> HW get stuck in error stated and allow reporting that some corruption
>> may be present in the buffer returned to userland.
>>
>> Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
>> ---
>>  drivers/staging/media/rkvdec/rkvdec-h264.c | 23 +++++++++++++++++++---
>>  1 file changed, 20 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkvdec/rkvdec-h264.c b/drivers/staging/media/rkvdec/rkvdec-h264.c
>> index 55596ce6bb6e..60a89918e2c1 100644
>> --- a/drivers/staging/media/rkvdec/rkvdec-h264.c
>> +++ b/drivers/staging/media/rkvdec/rkvdec-h264.c
>> @@ -1175,14 +1175,15 @@ static int rkvdec_h264_run(struct rkvdec_ctx *ctx)
>>  
>>  	schedule_delayed_work(&rkvdec->watchdog_work, msecs_to_jiffies(2000));
>>  
>> -	writel(0, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
>> -	writel(0, rkvdec->regs + RKVDEC_REG_H264_ERR_E);
>> +	writel(0xffffffff, rkvdec->regs + RKVDEC_REG_STRMD_ERR_EN);
>> +	writel(0xffffffff, rkvdec->regs + RKVDEC_REG_H264_ERR_E);
> 
> This reverts the changes in patch 1/5.  Could we just skip patch 1/5
> instead?

The first patch must go to the stable kernels, hence we couldn't skip it.

-- 
Best regards,
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
