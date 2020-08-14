Return-Path: <SRS0=1QUD=BY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956FAC433E5
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Aug 2020 11:04:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 677DC2078D
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Aug 2020 11:04:43 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="O7hkMUze"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 677DC2078D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DowBsKcLE9JisEldA5bC6/iChz0w2EdHKxki/RmDnY8=; b=O7hkMUzePXmNXlGVtbNG9bbz2
	rqk7fpN766OEZ4s9XotNDdWv1N25iPZ3LPdygukYuzXlMf/urZPlAvkT322aWtQ6qpexdEDo8nXYd
	kq2CaKfYQzVFqi6fGv0LZx4J0ufdZCd2tqx186pi1JT0AgavcYN33jS1D031vocjCSbCy5XIMUBFK
	JX6hjQLQb7qEXLl1YKjBlaZEMz+ANGfJlvp5KhRNZi10UuYwA2vKrkydiWJjNnyFl7o72Kj5+SpbY
	fbzcLX4W3/+C3/KVEnZpWsaBBylQLphbsYPCjr3FQ2VW38v7eVWpCKKkuVXm+R6hBLfga5OEsypKu
	6PTW8bjYw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6XVl-0000wa-DQ; Fri, 14 Aug 2020 11:04:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6XVj-0000v6-0C
 for linux-rockchip@lists.infradead.org; Fri, 14 Aug 2020 11:04:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 92DAA29A87C
Subject: Re: [PATCH 3/3] media: staging: rkisp1: params: in 'stop_streaming'
 don't release the lock while returning buffers
To: Tomasz Figa <tfiga@chromium.org>, Robin Murphy <robin.murphy@arm.com>
References: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
 <20200625174257.22216-4-dafna.hirschfeld@collabora.com>
 <e269f2f5-c24c-7009-e624-3545af206709@arm.com>
 <CAAFQd5AsJG=YJC4eG6+qdt_dPyr-dwcXrmujxLaHfoe9==Es1g@mail.gmail.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <1e9097b9-ce61-448d-c00b-24f4eadb96a6@collabora.com>
Date: Fri, 14 Aug 2020 13:04:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAAFQd5AsJG=YJC4eG6+qdt_dPyr-dwcXrmujxLaHfoe9==Es1g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200814_070435_198400_1FB119A3 
X-CRM114-Status: GOOD (  25.55  )
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
Cc: kernel@collabora.com, Dafna Hirschfeld <dafna3@gmail.com>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Helen Koike <helen.koike@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 26.06.20 um 16:03 schrieb Tomasz Figa:
> On Fri, Jun 26, 2020 at 3:32 PM Robin Murphy <robin.murphy@arm.com> wrote:
>>
>> Hi Dafna,
>>
>> On 2020-06-25 18:42, Dafna Hirschfeld wrote:
>>> In the stop_streaming callback 'rkisp1_params_vb2_stop_streaming'
>>> there is no need to release the lock 'config_lock' and then acquire
>>> it again at each iteration when returning all buffers.
>>> This is because the stream is about to end and there is no need
>>> to let the isr access a buffer.
>>>
>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>> ---
>>>    drivers/staging/media/rkisp1/rkisp1-params.c | 7 +------
>>>    1 file changed, 1 insertion(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
>>> index bf006dbeee2d..5169b02731f1 100644
>>> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
>>> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
>>> @@ -1488,19 +1488,13 @@ static void rkisp1_params_vb2_stop_streaming(struct vb2_queue *vq)
>>>        /* stop params input firstly */
>>>        spin_lock_irqsave(&params->config_lock, flags);
>>>        params->is_streaming = false;
>>> -     spin_unlock_irqrestore(&params->config_lock, flags);
>>>
>>>        for (i = 0; i < RKISP1_ISP_PARAMS_REQ_BUFS_MAX; i++) {
>>> -             spin_lock_irqsave(&params->config_lock, flags);
>>>                if (!list_empty(&params->params)) {
>>>                        buf = list_first_entry(&params->params,
>>>                                               struct rkisp1_buffer, queue);
>>>                        list_del(&buf->queue);
>>> -                     spin_unlock_irqrestore(&params->config_lock,
>>> -                                            flags);
>>>                } else {
>>> -                     spin_unlock_irqrestore(&params->config_lock,
>>> -                                            flags);
>>>                        break;
>>>                }
>>
>> Just skimming through out of idle curiosity I was going to comment that
>> if you end up with this pattern:
>>
>>          if (!x) {
>>                  //do stuff
>>          } else {
>>                  break;
>>          }
>>
>> it would be better as:
>>
>>          if (x)
>>                  break;
>>          //do stuff
>>
>> However I then went and looked at the whole function and frankly it's a
>> bit of a WTF. As best I could decipher, this whole crazy loop appears to
>> be a baroque reinvention of:
>>
>>          list_for_each_entry_safe(&params->params, ..., buf) {
>>                  list_del(&buf->queue);
>>                  vb2_buffer_done(&buf->vb.vb2_buf, VB2_BUF_STATE_ERROR);
>>          }
>>
>> (assuming from context that the list should never contain more than
>> RKISP1_ISP_PARAMS_REQ_BUFS_MAX entries in the first place)
> 
> Or if we want to avoid disabling the interrupts for the whole
> iteration, we could use list_splice() to move all the entries of

Hi, list_splice combines two lists together, I guess you meant list_cut_position
which cut a list into two

Thanks,
Dafna

> params->params to a local list_head under the spinlock, release it and
> then loop over the local head. As a side effect, one could even drop
> list_del() and switch to the non-safe variant of
> list_for_each_entry().
> 
> Best regards,
> Tomasz
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
