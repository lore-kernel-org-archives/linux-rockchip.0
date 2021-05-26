Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD89C47082
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 23:59:17 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D95EC613DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 23:59:16 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D95EC613DC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJj5rVUVxHIgG0pOzJtbVrhQShafUdGFC9o7M346yPc=; b=AlyuNBK6z483pl
	mRxsw5jeEoR5N9g18zVkK5xaO296cq0885u95vI3VIiRlaGF2ExXfJ+M5d/DHu52w2vIUimrlWpHp
	XBH06SdV7K4QAp9r5z6hp2i0XJcX08n5fpT5bDpCYcPbo4fec8U1DpW3WGvJuI/vJ9cFNxTL8EtOY
	omJSGy+P6ZjmnN4LT9Jd0rAbFn0rI7wob3yXbKP5o97lUMiv97+ZG1SiJwfhYv/e9KEk0HuOKyEnz
	vKDmg6Gi5qz99qA6nKdnygSBBAfP9Hydqnk+pucAE71CfYGtP8zfE3CkU7Ea+LlAsp+PASM707HMd
	N1xzr4tgqRvsH+FUK9Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lm3Qf-0011DZ-3o; Wed, 26 May 2021 23:59:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lm3QP-001183-Iz; Wed, 26 May 2021 23:58:59 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lm3QE-0004pF-4E; Thu, 27 May 2021 01:58:46 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Ezequiel Garcia <ezequiel@collabora.com>, Alex Bee <knaerzche@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-staging@lists.linux.dev,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-media@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 05/10] media: hantro: add support for Rockchip RK3036
Date: Thu, 27 May 2021 01:58:45 +0200
Message-ID: <3559518.1BCLMh4Saa@diego>
In-Reply-To: <2640d65e-772b-6af4-f4be-8ed090693c22@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <b65236f3b8bbf35411b536df8b260d9f8a9dbd80.camel@collabora.com>
 <2640d65e-772b-6af4-f4be-8ed090693c22@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_165857_643034_B77A257A 
X-CRM114-Status: GOOD (  32.74  )
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

Am Donnerstag, 27. Mai 2021, 01:27:59 CEST schrieb Alex Bee:
> Hi Ezequiel,
> 
> Am 26.05.21 um 12:28 schrieb Ezequiel Garcia:
> > Hi Alex,
> >
> > Thanks a lot for the patch.
> >
> > On Tue, 2021-05-25 at 17:22 +0200, Alex Bee wrote:
> >> RK3036's VPU IP block is the same as RK3288 has, except that it doesn't
> >> have an encoder, decoding is supported up to 1920x1088 only and the axi
> >> clock can be set to 300 MHz max.
> >>
> >> Add a new RK3036 variant which reflect this differences.
> >>
> >> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> >> ---
> >>   drivers/staging/media/hantro/hantro_drv.c    |  1 +
> >>   drivers/staging/media/hantro/hantro_hw.h     |  1 +
> >>   drivers/staging/media/hantro/rk3288_vpu_hw.c | 49 ++++++++++++++++++++
> >>   3 files changed, 51 insertions(+)
> >>
> >> diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> >> index 38ea7b24036e..4f3c08e85bb8 100644
> >> --- a/drivers/staging/media/hantro/hantro_drv.c
> >> +++ b/drivers/staging/media/hantro/hantro_drv.c
> >> @@ -490,6 +490,7 @@ static const struct of_device_id of_hantro_match[] = {
> >>          { .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
> >>          { .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
> >>          { .compatible = "rockchip,rk3066-vpu", .data = &rk3066_vpu_variant, },
> >> +       { .compatible = "rockchip,rk3036-vpu", .data = &rk3036_vpu_variant, },
> >>   #endif
> >>   #ifdef CONFIG_VIDEO_HANTRO_IMX8M
> >>          { .compatible = "nxp,imx8mq-vpu", .data = &imx8mq_vpu_variant, },
> >> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> >> index de2bc367a15a..d8d6b0d3c3b3 100644
> >> --- a/drivers/staging/media/hantro/hantro_hw.h
> >> +++ b/drivers/staging/media/hantro/hantro_hw.h
> >> @@ -164,6 +164,7 @@ extern const struct hantro_variant rk3399_vpu_variant;
> >>   extern const struct hantro_variant rk3328_vpu_variant;
> >>   extern const struct hantro_variant rk3288_vpu_variant;
> >>   extern const struct hantro_variant rk3066_vpu_variant;
> >> +extern const struct hantro_variant rk3036_vpu_variant;
> >>   extern const struct hantro_variant imx8mq_vpu_variant;
> >>   extern const struct hantro_variant sama5d4_vdec_variant;
> >>   
> >> diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >> index 29805c4bd92f..c4684df4e012 100644
> >> --- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >> +++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
> >> @@ -174,6 +174,13 @@ static irqreturn_t rk3288_vepu_irq(int irq, void *dev_id)
> >>          return IRQ_HANDLED;
> >>   }
> >>   
> >> +static int rk3036_vpu_hw_init(struct hantro_dev *vpu)
> >> +{
> >> +       /* Bump ACLKs to max. possible freq. to improve performance. */
> >> +       clk_set_rate(vpu->clocks[0].clk, RK3066_ACLK_MAX_FREQ);
> >> +       return 0;
> >> +}
> >> +
> >>   static int rk3066_vpu_hw_init(struct hantro_dev *vpu)
> >>   {
> >>          /* Bump ACLKs to max. possible freq. to improve performance. */
> >> @@ -209,6 +216,27 @@ static void rk3288_vpu_enc_reset(struct hantro_ctx *ctx)
> >>   /*
> >>    * Supported codec ops.
> >>    */
> >> +static const struct hantro_codec_ops rk3036_vpu_codec_ops[] = {
> >> +       [HANTRO_MODE_H264_DEC] = {
> >> +               .run = hantro_g1_h264_dec_run,
> >> +               .reset = hantro_g1_reset,
> >> +               .init = hantro_h264_dec_init,
> >> +               .exit = hantro_h264_dec_exit,
> >> +       },
> >> +       [HANTRO_MODE_MPEG2_DEC] = {
> >> +               .run = hantro_g1_mpeg2_dec_run,
> >> +               .reset = hantro_g1_reset,
> >> +               .init = hantro_mpeg2_dec_init,
> >> +               .exit = hantro_mpeg2_dec_exit,
> >> +       },
> >> +       [HANTRO_MODE_VP8_DEC] = {
> >> +               .run = hantro_g1_vp8_dec_run,
> >> +               .reset = hantro_g1_reset,
> >> +               .init = hantro_vp8_dec_init,
> >> +               .exit = hantro_vp8_dec_exit,
> >> +       },
> >> +};
> >> +
> >>   static const struct hantro_codec_ops rk3066_vpu_codec_ops[] = {
> >>          [HANTRO_MODE_JPEG_ENC] = {
> >>                  .run = hantro_h1_jpeg_enc_run,
> >> @@ -269,6 +297,10 @@ static const struct hantro_codec_ops rk3288_vpu_codec_ops[] = {
> >>    * VPU variant.
> >>    */
> >>   
> >> +static const struct hantro_irq rk3036_irqs[] = {
> >> +       { "vdpu", hantro_g1_irq },
> >> +};
> >> +
> >>   static const struct hantro_irq rk3288_irqs[] = {
> >>          { "vepu", rk3288_vepu_irq },
> >>          { "vdpu", hantro_g1_irq },
> >> @@ -283,6 +315,23 @@ static const char * const rk3288_clk_names[] = {
> >>          "aclk", "hclk"
> >>   };
> >>   
> >> +const struct hantro_variant rk3036_vpu_variant = {
> >> +       .dec_offset = 0x400,
> > If it doesn't have an encoder, then you should just
> > use dec_offset = 0x0.
> >
> > Thanks,
> > Ezequiel
> >
> That would mean, I'd have to adapt the register offset in the device 
> tree - I'd prefer to keep it in line with the TRM. Unless you insist, 
> I'd like to keep it this way (It's , btw, the very same for RK3328).

I'd agree with Alex ... ideally the devicetree should match the block
register area from the TRM not some internal offset.
[DT describes hardware etc etc ;-) ]

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
