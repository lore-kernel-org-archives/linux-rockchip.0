Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99947C4727F
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 09:16:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3556D2053B
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 09:16:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="EBEawKkF"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3556D2053B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kqaCbegapy5ZH02K3tvcVkSj0+P1Ij/zIjv4MEtF6iY=; b=EBEawKkFQGCIg9XTFGxDqimh6
	2d6TsLndv6EYFsaUqp2wIb3lpaGyTwfeR+z4p/9s1ml7HxKyRyu9qHERvwohg8mOi2SQNs1aVyAAk
	7rxcY7p3p+LW0HvMRvU6Jzf4Xh4I1/8bYk3OnoCcfcnWJwfakseJekfFAvsz8i7KkagSMQLJjeM6T
	5YbVSiB24+cUfKvuJ1dOLt8SSfoAW7YhbU6i2zw5GxQqueDADOUZNkFmVUEGpuZGSTtW2Ii+6E+Qu
	Xzl2Mdi7J8FqoGAq0SeiklLiYYHN1uuubpzvkUmY9NIbSSGbTdQ/kiWQdU9kiXfd/4BtfIzGrKnVt
	m/BXpIWdg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOHBB-0004Vi-2g; Fri, 02 Oct 2020 09:16:41 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOHB7-0004Uj-95
 for linux-rockchip@lists.infradead.org; Fri, 02 Oct 2020 09:16:38 +0000
Received: from [IPv6:2003:c7:cf13:ec00:987c:fa6c:93a9:1dfa]
 (p200300c7cf13ec00987cfa6c93a91dfa.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf13:ec00:987c:fa6c:93a9:1dfa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 7801929DA00;
 Fri,  2 Oct 2020 10:16:34 +0100 (BST)
Subject: Re: [PATCH v3 06/12] media: staging: rkisp1: remove atomic operations
 for frame sequence
To: Tomasz Figa <tfiga@chromium.org>
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-7-dafna.hirschfeld@collabora.com>
 <20200925204222.GG3607091@chromium.org>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <bebacafe-11bb-5d9a-f889-4d16bb5d1817@collabora.com>
Date: Fri, 2 Oct 2020 11:16:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200925204222.GG3607091@chromium.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_051637_406481_955F7AE7 
X-CRM114-Status: GOOD (  30.69  )
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
Cc: mchehab@kernel.org, dafna3@gmail.com, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, helen.koike@collabora.com,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am 25.09.20 um 22:42 schrieb Tomasz Figa:
> Hi Dafna,
> 
> On Tue, Sep 22, 2020 at 01:33:56PM +0200, Dafna Hirschfeld wrote:
>> The isp.frame_sequence is now read only from the irq handlers
>> that are all fired from the same interrupt, so there is not need
>> for atomic operation.
>> In addition, the frame seq incrementation is moved from
>> rkisp1_isp_queue_event_sof to rkisp1_isp_isr to make the code
>> clearer and the incorrect inline comment is removed.
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Acked-by: Helen Koike <helen.koike@collabora.com>
>>
>> ---
>> changes since v2:
>> add a closing "}" to if condition
>> remove usless inline comment
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-capture.c |  2 +-
>>   drivers/staging/media/rkisp1/rkisp1-common.h  |  2 +-
>>   drivers/staging/media/rkisp1/rkisp1-isp.c     | 16 +++++-----------
>>   drivers/staging/media/rkisp1/rkisp1-params.c  |  2 +-
>>   drivers/staging/media/rkisp1/rkisp1-stats.c   |  3 +--
>>   5 files changed, 9 insertions(+), 16 deletions(-)
>>
> 
> Thank you for the patch. Please see my comments inline.
> 
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> index 0632582a95b4..1c762a369b63 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
>> @@ -632,7 +632,7 @@ static void rkisp1_handle_buffer(struct rkisp1_capture *cap)
>>   	curr_buf = cap->buf.curr;
>>   
>>   	if (curr_buf) {
>> -		curr_buf->vb.sequence = atomic_read(&isp->frame_sequence);
>> +		curr_buf->vb.sequence = isp->frame_sequence;
> 
> I wonder if with higher resolutions, let's say full 5 Mpix, and/or some
> memory-intensive system load, like video encoding and graphics rendering,
> the DMA wouldn't take enough time to have the MI_FRAME interrupt fire after
> the V_START for the next frame.
> 
> I recall you did some testing back in time [1], showing that the two are
> interleaved. Do you remember what CAPTURE resolution was it?

I ran the testing again, I added a patch to allow streaming simultanously from
both pathes: https://gitlab.collabora.com/dafna/linux/-/commit/8df0d15567b27cb88674fbbe33d1906c3c5a91da
Then I ran two tests:
stream simultaneously with 3280x2464 frames from the camera, and then downscaling them to 1920x1080 on selfpath, this is http://ix.io/2zoP
stream simultaneously with 640x480 frames from the camera, and upscaling them to 1920x1080 on the selfpath. this is http://ix.io/2zoR

the pixelformat for both is 422P.
I don't know how meaningful and useful is to test it on the rockchip-pi4 board, I only use it with a serial console.
The functionality can probably only be tested on the scarlet.

Thanks,
Dafna



> 
>>   		curr_buf->vb.vb2_buf.timestamp = ktime_get_boottime_ns();
>>   		curr_buf->vb.field = V4L2_FIELD_NONE;
>>   		vb2_buffer_done(&curr_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
>> index 232bee92d0eb..51c92a251ea5 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
>> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
>> @@ -131,7 +131,7 @@ struct rkisp1_isp {
>>   	const struct rkisp1_isp_mbus_info *src_fmt;
>>   	struct mutex ops_lock; /* serialize the subdevice ops */
>>   	bool is_dphy_errctrl_disabled;
>> -	atomic_t frame_sequence;
>> +	__u32 frame_sequence;
> 
> nit: The __ prefixed types are defined for the UAPI to avoid covering userspace
> types. For kernel types please just use the plain u32.
> 
> Best regards,
> Tomasz
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
