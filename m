Return-Path: <SRS0=17ih=B6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26C9CC433E3
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2020 12:16:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E5B5C20738
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2020 12:16:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="W2ws0rUl"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E5B5C20738
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zAwIbvHcvd4A4RUGt3oZoerDBcCXoc8RINAxclXaZTY=; b=W2ws0rUlwdJebYq5w8dSwHxxM
	sqrw3ngQUCeYf/K8+egu/E8pHPvzGzqsLIl8YhYS3IjNJnubJLCjtCEKQZWtaek1G3Im6V4wejZkt
	+O/JiJrNTFwAkntEzncHJfbBncIGb3s1qZeKEdQ/5y12wk8Shzsk/jwENTs8aL5EaHUibO3mty8/u
	dQpy9kqY9uh5t+ZDNVKvSkeK3mHHaErYt8rVWlYRQ2jbslpV/EN5XFLWdIwCZiLJa82RCPFPcbXuJ
	yeOKv3NpRhRys56teuOAmCxUnDhij2D56xLW0fNZWppMPktaK354V8D6//CqeV6Fo2SlE7s96PGX2
	/9XHdCxCA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k8jUT-0004FU-SR; Thu, 20 Aug 2020 12:16:21 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8jUR-0004Dw-6C
 for linux-rockchip@lists.infradead.org; Thu, 20 Aug 2020 12:16:20 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id EDA2529A779
Subject: Re: [PATCH v2 05/14] media: staging: rkisp1: params: upon stream
 stop, iterate a local list to return the buffers
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20200815103734.31153-1-dafna.hirschfeld@collabora.com>
 <20200815103734.31153-6-dafna.hirschfeld@collabora.com>
 <695451da-c7af-a12c-f308-c45675b8f3aa@collabora.com>
 <33ed026c-f014-0fff-2f19-afc1548e80f2@xs4all.nl>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <d0dadf49-d250-19b0-e165-994587b2f03d@collabora.com>
Date: Thu, 20 Aug 2020 09:16:09 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <33ed026c-f014-0fff-2f19-afc1548e80f2@xs4all.nl>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200820_081619_336266_0D719E6C 
X-CRM114-Status: GOOD (  17.94  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 linux-rockchip@lists.infradead.org, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 8/20/20 6:27 AM, Hans Verkuil wrote:
> On 17/08/2020 23:47, Helen Koike wrote:
>> Hi Dafna,
>>
>> On 8/15/20 7:37 AM, Dafna Hirschfeld wrote:
>>> The code in '.stop_streaming' callback releases and acquire the lock
>>> at each iteration when returning the buffers.
>>> Holding the lock disables interrupts so it should be minimized.
>>> To make the code cleaner and still minimize holding the lock,
>>> the buffer list is first moved to a local list and
>>> then can be iterated without the lock.
>>>
>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>
>> lgtm
>>
>> Helen Koike <helen.koike@collabora.com>
> 
> Missing 'Acked-by:' tag?

Ops, yes

Acked-by: Helen Koike <helen.koike@collabora.com>

> 
> Hans
> 
>>
>> Thanks
>> Helen
>>
>>> ---
>>>  drivers/staging/media/rkisp1/rkisp1-params.c | 31 +++++++-------------
>>>  1 file changed, 11 insertions(+), 20 deletions(-)
>>>
>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
>>> index 0c2bb2eefb22..6a76c586e916 100644
>>> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
>>> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
>>> @@ -1477,32 +1477,23 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
>>>  {
>>>  	struct rkisp1_params *params = vq->drv_priv;
>>>  	struct rkisp1_buffer *buf;
>>> +	struct list_head tmp_list;
>>>  	unsigned long flags;
>>> -	unsigned int i;
>>>  
>>> -	/* stop params input firstly */
>>> +	INIT_LIST_HEAD(&tmp_list);
>>> +
>>> +	/*
>>> +	 * we first move the buffers into a local list 'tmp_list'
>>> +	 * and then we can iterate it and call vb2_buffer_done
>>> +	 * without holding the lock
>>> +	 */
>>>  	spin_lock_irqsave(&params->config_lock, flags);
>>>  	params->is_streaming = false;
>>> +	list_cut_position(&tmp_list, &params->params, params->params.prev);
>>>  	spin_unlock_irqrestore(&params->config_lock, flags);
>>>  
>>> -	for (i = 0; i < RKISP1_ISP_PARAMS_REQ_BUFS_MAX; i++) {
>>> -		spin_lock_irqsave(&params->config_lock, flags);
>>> -		if (!list_empty(&params->params)) {
>>> -			buf = list_first_entry(&params->params,
>>> -					       struct rkisp1_buffer, queue);
>>> -			list_del(&buf->queue);
>>> -			spin_unlock_irqrestore(&params->config_lock,
>>> -					       flags);
>>> -		} else {
>>> -			spin_unlock_irqrestore(&params->config_lock,
>>> -					       flags);
>>> -			break;
>>> -		}
>>> -
>>> -		if (buf)
>>> -			vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
>>> -		buf = NULL;
>>> -	}
>>> +	list_for_each_entry(buf, &tmp_list, queue)
>>> +		vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
>>>  }
>>>  
>>>  static int
>>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
