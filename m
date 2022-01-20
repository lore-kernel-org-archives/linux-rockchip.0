Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BC8DC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jan 2022 14:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgG9XanVtJcSt3g03IKfV3s5tQStlCCah9W0pXJsqao=; b=q08r9aoiJ7JPVe
	yzCL6K3GXv5TrXBVYazji+9VmNO2wj6QvTXlj4hgL3DhjOEFo9VU0+VAhONwVBYFIEsw51+bH7ehI
	K8xZM1L94mOp43o0keHxFI1ZZ0vlPYhR5ty7tmgTn5XMiOuSoYwDABvMIAEnTQy1OctjAR7PAgr1T
	rifGfjAXjeUQl2WxCZ7iha3REuiYyFDm8ZfYx+kc2CKMhKNjOiHFjRTlrmGz053zHXnc7zM4FLWg7
	t9Q6uBpP2rMQcCB7ofF8Nj9+7TYKb/wPOxiRuc+JB4AmQy2VbdMzxGLSEqNSIqIH95cqc0eG0MlJh
	TKykMywGn2Lf02dR81eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nAYIr-00BsDX-Lc; Thu, 20 Jan 2022 14:20:41 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nAYIn-00BsC4-78
 for linux-rockchip@lists.infradead.org; Thu, 20 Jan 2022 14:20:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 2CCFF617A8;
 Thu, 20 Jan 2022 14:20:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5746C340E0;
 Thu, 20 Jan 2022 14:20:33 +0000 (UTC)
Message-ID: <7b0ac4d2-a78e-f1be-e7ee-6f4c69acc386@xs4all.nl>
Date: Thu, 20 Jan 2022 15:20:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH RFT v2 1/8] media: hantro: jpeg: Relax register writes
 before write starting hardware
Content-Language: en-US
To: Chen-Yu Tsai <wenst@chromium.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20220107093455.73766-1-wenst@chromium.org>
 <20220107093455.73766-2-wenst@chromium.org> <Yecq111pZDP9XFNO@eze-laptop>
 <CAGXv+5GfNgQGJOBihdpGQDbdx-1co_wi0m=-HyxiHDn-kKZBsA@mail.gmail.com>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
In-Reply-To: <CAGXv+5GfNgQGJOBihdpGQDbdx-1co_wi0m=-HyxiHDn-kKZBsA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220120_062037_381193_86C547F5 
X-CRM114-Status: GOOD (  34.81  )
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

Hi Chen-Yu,

I'll take patches 2-8.

So should I mark patch 1/8 as 'Rejected' or 'Changes Requested' in patchwork?

Regards,

	Hans

On 1/19/22 11:08, Chen-Yu Tsai wrote:
> Hi,
> 
> On Wed, Jan 19, 2022 at 5:02 AM Ezequiel Garcia
> <ezequiel@vanguardiasur.com.ar> wrote:
>>
>> Hi Chen-Yu,
>>
>> The series looks good, thanks for picking up this task.
>>
>> Just a one comment.
>>
>> On Fri, Jan 07, 2022 at 05:34:48PM +0800, Chen-Yu Tsai wrote:
>>> In the earlier submissions of the Hantro/Rockchip JPEG encoder driver, a
>>> wmb() was inserted before the final register write that starts the
>>> encoder. In v11, it was removed and the second-to-last register write
>>> was changed to a non-relaxed write, which has an implicit wmb() [1].
>>> The rockchip_vpu2 (then rk3399_vpu) variant is even weirder as there
>>> is another writel_relaxed() following the non-relaxed one.
>>>
>>> Turns out only the last writel() needs to be non-relaxed. Device I/O
>>> mappings already guarantee strict ordering to the same endpoint, and
>>> the writel() triggering the hardware would force all writes to memory
>>> to be observed before the writel() to the hardware is observed.
>>>
>>> [1] https://lore.kernel.org/linux-media/CAAFQd5ArFG0hU6MgcyLd+_UOP3+T_U-aw2FXv6sE7fGqVCVGqw@mail.gmail.com/
>>>
>>> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
>>> ---
>>>  drivers/staging/media/hantro/hantro_h1_jpeg_enc.c        | 3 +--
>>>  drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c | 3 +--
>>>  2 files changed, 2 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
>>> index 1450013d3685..03db1c3444f8 100644
>>> --- a/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
>>> +++ b/drivers/staging/media/hantro/hantro_h1_jpeg_enc.c
>>> @@ -123,8 +123,7 @@ int hantro_h1_jpeg_enc_run(struct hantro_ctx *ctx)
>>>               | H1_REG_AXI_CTRL_INPUT_SWAP32
>>>               | H1_REG_AXI_CTRL_OUTPUT_SWAP8
>>>               | H1_REG_AXI_CTRL_INPUT_SWAP8;
>>> -     /* Make sure that all registers are written at this point. */
>>> -     vepu_write(vpu, reg, H1_REG_AXI_CTRL);
>>> +     vepu_write_relaxed(vpu, reg, H1_REG_AXI_CTRL);
>>>
>>
>> As far as I can remember, this logic comes from really old Chromium Kernels.
>> You might be right, and this barrier isn't needed... but then OTOH the comment
>> is here for a reason, so maybe it is needed (or was needed on some RK3288 SoC revision).
> 
> I just realized that my commit log is wrong.
> 
> " ... a wmb() was inserted before the final register write that starts the
> encoder. ... " . It is actually before the second-to-last register write.
> 
>> I don't have RK3288 boards near me, but in any case, I'm not sure
>> we'd be able to test this easily (maybe there are issues that only
>> trigger under a certain load).
> 
> I see. I do have a Veyron around that I haven't used in awhile. But as you
> said, it might not be an obvious hardware limitation.
> 
>> I'd personally avoid this one change, but if you are confident enough with it
>> that's fine too.
> 
> Unfortunately they didn't leave a whole lot of clues around. For most hardware,
> as I mentioned in the commit log, I think the final non-relaxed write should
> suffice. I'd point to the decoder drivers not having any barriers or
> non-relaxed writes except the final one, but IIUC they are actually two
> distinct pieces of hardware.
> 
> I suspect we will never know. This JPEG encoder doesn't seem to get used
> a lot. The VP8 and H.264 encoders on ChromeOS work correctly without the
> extra barrier and get tested a lot, but that's only testing the RK3399.
> 
> Hans, would it be possible for you to skip this patch and pick the rest?
> Or would you like me to resent without this one?
> 
> 
> Thanks
> ChenYu
> 
>> Thanks!
>> Ezequiel
>>
>>>       reg = H1_REG_ENC_CTRL_WIDTH(MB_WIDTH(ctx->src_fmt.width))
>>>               | H1_REG_ENC_CTRL_HEIGHT(MB_HEIGHT(ctx->src_fmt.height))
>>> diff --git a/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
>>> index 4df16f59fb97..b931fc5fa1a9 100644
>>> --- a/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
>>> +++ b/drivers/staging/media/hantro/rockchip_vpu2_hw_jpeg_enc.c
>>> @@ -152,8 +152,7 @@ int rockchip_vpu2_jpeg_enc_run(struct hantro_ctx *ctx)
>>>               | VEPU_REG_INPUT_SWAP8
>>>               | VEPU_REG_INPUT_SWAP16
>>>               | VEPU_REG_INPUT_SWAP32;
>>> -     /* Make sure that all registers are written at this point. */
>>> -     vepu_write(vpu, reg, VEPU_REG_DATA_ENDIAN);
>>> +     vepu_write_relaxed(vpu, reg, VEPU_REG_DATA_ENDIAN);
>>>
>>>       reg = VEPU_REG_AXI_CTRL_BURST_LEN(16);
>>>       vepu_write_relaxed(vpu, reg, VEPU_REG_AXI_CTRL);
>>> --
>>> 2.34.1.575.g55b058a8bb-goog
>>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
