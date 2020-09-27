Return-Path: <SRS0=B9YW=DE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D66DC4346E
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 09:54:26 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A927A23899
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 09:54:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="nAbo5mTu"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A927A23899
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p4Prs1r1ByuFib6ANWHJBLt/DUNkkoqoQBWUOc/vOkc=; b=nAbo5mTuCgyKMqr6Xqb5cj+vx
	cQfCWFmUZra6UbmEJVd2E99wYKqF+Gn5T9Gha3a8NDE6gIn9Ffh/QTIurBkAn/0A/OXl02sFgira/
	3+YsGEgcGpEBK+At70yroes65c03rqYkRnurQ7txm+xEuMkZZYNjfQS2hw/FVXq00XxSibY+Md7Yr
	EOJEGU/efXgSzPcTYLUsa2D/cUvpZHRcx0uXPzT8nQhCT7q9CtSQkMCcacVfJrosrOWv98WHDxw1b
	UX7sWdkhNBpqbFtdb5AlSPzajjuo+TjJEWmAJF0NZMWaL2ZlVz23+DaHEt/AJ5HwzRpxdSBcAcjqd
	2fWFbYqgQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMTNq-0007dH-Pb; Sun, 27 Sep 2020 09:54:18 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMTNo-0007cf-Gt
 for linux-rockchip@lists.infradead.org; Sun, 27 Sep 2020 09:54:17 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 4B70C260242
Subject: Re: [PATCH v3 12/12] media: staging: rkisp1: cap: protect access to
 buf with the spin lock
To: Mauro Carvalho Chehab <mchehab@kernel.org>, helen.koike@collabora.com,
 hverkuil@xs4all.nl
References: <20200922113402.12442-1-dafna.hirschfeld@collabora.com>
 <20200922113402.12442-13-dafna.hirschfeld@collabora.com>
 <20200927114326.7446d970@coco.lan>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <672c5ca3-a5d1-a1dc-5cc8-3a802208310e@collabora.com>
Date: Sun, 27 Sep 2020 11:54:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200927114326.7446d970@coco.lan>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200927_055416_678627_CFBDE603 
X-CRM114-Status: GOOD (  21.74  )
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
Cc: dafna3@gmail.com, tfiga@chromium.org, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 27.09.20 um 11:43 schrieb Mauro Carvalho Chehab:
> Em Tue, 22 Sep 2020 13:34:02 +0200
> Dafna Hirschfeld <dafna.hirschfeld@collabora.com> escreveu:
> 
>> The function 'rkisp1_stream_start' calls 'rkisp1_set_next_buf'
>> which access the buffers, so the call should be protected by
>> taking the cap->buf.lock.
>> After this patch, all locks are reviewed and commented so remove
>> the TODO item "review and comment every lock"
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/TODO             | 1 -
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 2 ++
>>   2 files changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
>> index f0c90d1c86a8..9662e9b51c7f 100644
>> --- a/drivers/staging/media/rkisp1/TODO
>> +++ b/drivers/staging/media/rkisp1/TODO
>> @@ -1,6 +1,5 @@
>>   * Fix pad format size for statistics and parameters entities.
>>   * Fix checkpatch errors.
>> -* Review and comment every lock
>>   * Handle quantization
>>   * streaming paths (mainpath and selfpath) check if the other path is streaming
>>   in several places of the code, review this, specially that it doesn't seem it
> 
> 
> FYI,
> 
> There was a trivial context conflict here. Basically, the upstream
> version has this:
> 
> 
> 	 * Add uapi docs. Remember to add documentation of how quantization is handled.
> 
> I solved the conflict, but as some patches for rkisp1 got merged
> on a different pull request, and there were some uapi docs at the
> other PR, maybe this would need to be revisited.

I added the "Configuring Quantization" documentation in Documentation/admin-guide/media/rkisp1.rst
so the TODO item
"* Add uapi docs. Remember to add documentation of how quantization is handled."
can be removed.

Thanks,
Dafna

> 
> Thanks,
> Mauro
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
