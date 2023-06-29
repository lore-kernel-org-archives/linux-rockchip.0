Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81797EB64DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jun 2023 07:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+5p8NBiOs510jpg6UMJHes51Kf9phZxFdk2JuqMe9KA=; b=RtzJ1z550w2HwE
	aCluZsR3aoo1IVvKw27ihkzbN8lhJHptQ1cmij4Juq6xkxV/ds7XSAPX6P6fxZjf1s390b1PDa1FL
	LSoFGlo45+Q6KtP9zgRIUpBrLHSiMYGIKLDiCk54ki76Vln4fLjYoExRClUO3WM2xYW14aahUyDM3
	Z03UPO58G0JBLWYENBF6ptDZVXHRRlHUxJXIgpmTCrRa/Zuqec4g416s40emyZNDZ4P9aJ2coI7dz
	MOhEpZ81xBCrXJyPw73lMu3SUKvY94ha+oSAdWWcRZs0Vuz+5g+dkazxeocGaMWaGC+QEBqfe9COE
	rwr4pM/KWQwdEx1IzzLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qElh4-000AZG-1W;
	Thu, 29 Jun 2023 07:03:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qElgz-000AYL-2a
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Jun 2023 07:03:52 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2ED56614CD;
	Thu, 29 Jun 2023 07:03:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 994CEC433C0;
	Thu, 29 Jun 2023 07:03:44 +0000 (UTC)
Message-ID: <567481c3-08bc-3bb8-5538-0d296ee539d9@xs4all.nl>
Date: Thu, 29 Jun 2023 09:03:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] media: verisilicon: fix excessive stack usage
To: Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@kernel.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Arnd Bergmann <arnd@arndb.de>, kernel test robot <lkp@intel.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 llvm@lists.linux.dev
References: <20230616144854.3818934-1-arnd@kernel.org>
 <20230628182617.GA911656@dev-arch.thelio-3990X>
Content-Language: en-US
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <20230628182617.GA911656@dev-arch.thelio-3990X>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_000349_944522_AAD9AE2D 
X-CRM114-Status: GOOD (  25.32  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi all,

On 6/28/23 20:26, Nathan Chancellor wrote:
> On Fri, Jun 16, 2023 at 04:48:47PM +0200, Arnd Bergmann wrote:
>> From: Arnd Bergmann <arnd@arndb.de>
>>
>> In some configurations, gcc decides not to inline the register accessor functions,
>> which in turn leads to lots of temporary hantro_reg structures on the stack that
>> cannot be eliminated because they escape into an uninlined function:
>>
>> drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c:1022:1: warning: the frame size of 1112 bytes is larger than 1024 bytes [-Wframe-larger-than=]
>>
>> Mark all of these as __always_inline so the compiler is able to completely
>> eliminate the temporary structures instead, which brings the stack usage
>> back down to just the normal local variables.
>>
>> Reported-by: kernel test robot <lkp@intel.com>
>> Closes: https://lore.kernel.org/oe-kbuild-all/202306151506.goHEegOd-lkp@intel.com/
>> Fixes: 727a400686a2c ("media: verisilicon: Add Rockchip AV1 decoder")
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> 
> For what it's worth, this patch massively helps with avoiding a warning
> with clang 16.x and older, for presumably a similar reason, since this
> happens with allmodconfig, which turns on a bunch of sanitizers.
> 
> https://github.com/ClangBuiltLinux/linux/issues/1875
> 
> Before this change:
> 
>    drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c:2097:5: error: stack frame size (2096) exceeds limit (2048) in 'rockchip_vpu981_av1_dec_run' [-Werror,-Wframe-larger-than]
>    int rockchip_vpu981_av1_dec_run(struct hantro_ctx *ctx)
>        ^
>    238/2096 (11.35%) spills, 1858/2096 (88.65%) variables
> 
> After this change:
> 
>    drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c:2097:5: error: stack frame size (496) exceeds limit (200) in 'rockchip_vpu981_av1_dec_run' [-Werror,-Wframe-larger-than]
>    int rockchip_vpu981_av1_dec_run(struct hantro_ctx *ctx)
>        ^
>    265/496 (53.43%) spills, 231/496 (46.57%) variables
> 
> If this could be picked up either before the 6.5 media pull goes out or
> at some point during the -rc cycle, that would be great!

Once the merge window closes I'll make a PR to get it in 6.5.

Regards,

	Hans

> 
> Tested-by: Nathan Chancellor <nathan@kernel.org>
> 
>> ---
>>   drivers/media/platform/verisilicon/hantro.h | 22 ++++++++++-----------
>>   1 file changed, 11 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/media/platform/verisilicon/hantro.h b/drivers/media/platform/verisilicon/hantro.h
>> index 6523ffb748812..6c5e56ce5b351 100644
>> --- a/drivers/media/platform/verisilicon/hantro.h
>> +++ b/drivers/media/platform/verisilicon/hantro.h
>> @@ -370,26 +370,26 @@ extern int hantro_debug;
>>   	pr_err("%s:%d: " fmt, __func__, __LINE__, ##args)
>>   
>>   /* Structure access helpers. */
>> -static inline struct hantro_ctx *fh_to_ctx(struct v4l2_fh *fh)
>> +static __always_inline struct hantro_ctx *fh_to_ctx(struct v4l2_fh *fh)
>>   {
>>   	return container_of(fh, struct hantro_ctx, fh);
>>   }
>>   
>>   /* Register accessors. */
>> -static inline void vepu_write_relaxed(struct hantro_dev *vpu,
>> +static __always_inline void vepu_write_relaxed(struct hantro_dev *vpu,
>>   				      u32 val, u32 reg)
>>   {
>>   	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
>>   	writel_relaxed(val, vpu->enc_base + reg);
>>   }
>>   
>> -static inline void vepu_write(struct hantro_dev *vpu, u32 val, u32 reg)
>> +static __always_inline void vepu_write(struct hantro_dev *vpu, u32 val, u32 reg)
>>   {
>>   	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
>>   	writel(val, vpu->enc_base + reg);
>>   }
>>   
>> -static inline u32 vepu_read(struct hantro_dev *vpu, u32 reg)
>> +static __always_inline u32 vepu_read(struct hantro_dev *vpu, u32 reg)
>>   {
>>   	u32 val = readl(vpu->enc_base + reg);
>>   
>> @@ -397,27 +397,27 @@ static inline u32 vepu_read(struct hantro_dev *vpu, u32 reg)
>>   	return val;
>>   }
>>   
>> -static inline void vdpu_write_relaxed(struct hantro_dev *vpu,
>> +static __always_inline void vdpu_write_relaxed(struct hantro_dev *vpu,
>>   				      u32 val, u32 reg)
>>   {
>>   	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
>>   	writel_relaxed(val, vpu->dec_base + reg);
>>   }
>>   
>> -static inline void vdpu_write(struct hantro_dev *vpu, u32 val, u32 reg)
>> +static __always_inline void vdpu_write(struct hantro_dev *vpu, u32 val, u32 reg)
>>   {
>>   	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
>>   	writel(val, vpu->dec_base + reg);
>>   }
>>   
>> -static inline void hantro_write_addr(struct hantro_dev *vpu,
>> +static __always_inline void hantro_write_addr(struct hantro_dev *vpu,
>>   				     unsigned long offset,
>>   				     dma_addr_t addr)
>>   {
>>   	vdpu_write(vpu, addr & 0xffffffff, offset);
>>   }
>>   
>> -static inline u32 vdpu_read(struct hantro_dev *vpu, u32 reg)
>> +static __always_inline u32 vdpu_read(struct hantro_dev *vpu, u32 reg)
>>   {
>>   	u32 val = readl(vpu->dec_base + reg);
>>   
>> @@ -425,7 +425,7 @@ static inline u32 vdpu_read(struct hantro_dev *vpu, u32 reg)
>>   	return val;
>>   }
>>   
>> -static inline u32 vdpu_read_mask(struct hantro_dev *vpu,
>> +static __always_inline u32 vdpu_read_mask(struct hantro_dev *vpu,
>>   				 const struct hantro_reg *reg,
>>   				 u32 val)
>>   {
>> @@ -437,14 +437,14 @@ static inline u32 vdpu_read_mask(struct hantro_dev *vpu,
>>   	return v;
>>   }
>>   
>> -static inline void hantro_reg_write(struct hantro_dev *vpu,
>> +static __always_inline void hantro_reg_write(struct hantro_dev *vpu,
>>   				    const struct hantro_reg *reg,
>>   				    u32 val)
>>   {
>>   	vdpu_write_relaxed(vpu, vdpu_read_mask(vpu, reg, val), reg->base);
>>   }
>>   
>> -static inline void hantro_reg_write_s(struct hantro_dev *vpu,
>> +static __always_inline void hantro_reg_write_s(struct hantro_dev *vpu,
>>   				      const struct hantro_reg *reg,
>>   				      u32 val)
>>   {
>> -- 
>> 2.39.2
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
