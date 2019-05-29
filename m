From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v6 16/16] rockchip/vpu: Add support for MPEG-2 decoding on
 RK3328
Date: Wed, 29 May 2019 08:50:15 +0000
Message-ID: <VI1PR03MB42066B8C9F364ACF7CFFF241AC1F0@VI1PR03MB4206.eurprd03.prod.outlook.com>
References: <20190528170232.2091-1-ezequiel@collabora.com>
 <20190528170232.2091-17-ezequiel@collabora.com>
 <2ef056a2-e9dc-52b1-855b-2bef759af9b6@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2ef056a2-e9dc-52b1-855b-2bef759af9b6-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Content-Language: en-US
Content-ID: <992634C6FE8AB649B52E07A020C1542B-yI6K9L9iJZCcE4WynfumptQqCkab/8FMAL8bYrjMMd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, "linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Cc: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, "kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2019-05-29 10:11, Hans Verkuil wrote:
> On 5/28/19 7:02 PM, Ezequiel Garcia wrote:
>> From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
>>
>> Add necessary bits to support MPEG2 decoding on RK3328.
>>
>> Signed-off-by: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
>> Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
>> --
>> Changes from v5:
>> * New patch.
>>
>>  drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c   | 12 ++++++++++++
>>  .../staging/media/rockchip/vpu/rockchip_vpu_drv.c    |  1 +
>>  drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h |  1 +
>>  3 files changed, 14 insertions(+)
>>
>> diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
>> index 2b3689968ef4..341f8d69c33d 100644
>> --- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
>> +++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
>> @@ -175,3 +175,15 @@ const struct rockchip_vpu_variant rk3399_vpu_variant = {
>>  	.clk_names = {"aclk", "hclk"},
>>  	.num_clocks = 2
>>  };
>> +
>> +const struct rockchip_vpu_variant rk3328_vpu_variant = {
>> +	.dec_offset = 0x400,
>> +	.dec_fmts = rk3399_vpu_dec_fmts,
>> +	.num_dec_fmts = ARRAY_SIZE(rk3399_vpu_dec_fmts),
>> +	.codec = RK_VPU_MPEG2_DECODER,
>> +	.codec_ops = rk3399_vpu_codec_ops,
>> +	.vdpu_irq = rk3399_vdpu_irq,
>> +	.init = rk3399_vpu_hw_init,
>> +	.clk_names = {"aclk", "hclk"},
>> +	.num_clocks = 2
>> +};
>> diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
>> index b94ff97451db..2e22009b6583 100644
>> --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
>> +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
>> @@ -419,6 +419,7 @@ static const struct v4l2_file_operations rockchip_vpu_fops = {
>>  
>>  static const struct of_device_id of_rockchip_vpu_match[] = {
>>  	{ .compatible = "rockchip,rk3399-vpu", .data = &rk3399_vpu_variant, },
>> +	{ .compatible = "rockchip,rk3328-vpu", .data = &rk3328_vpu_variant, },
> This new compatible string should be documented in
> Documentation/devicetree/bindings/media/rockchip-vpu.txt as well.
>
> I'll take patches 1-15 and drop this one. This patch can be merged once
> the bindings file is updated as well.

Looks like the bindings patch did not get picked for v6 :-)

I am a bit unclear on how to handle patch submission that covers multiple subtrees.
Should I send a single series including three patches: bindings update, this patch and device tree update?
Or is a series with only bindings update and this patch preferred?

Regards,
Jonas

>
> Regards,
>
> 	Hans
>
>>  	{ .compatible = "rockchip,rk3288-vpu", .data = &rk3288_vpu_variant, },
>>  	{ /* sentinel */ }
>>  };
>> diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
>> index 6cecb528f994..3d6b97af90fb 100644
>> --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
>> +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_hw.h
>> @@ -79,6 +79,7 @@ enum rockchip_vpu_enc_fmt {
>>  };
>>  
>>  extern const struct rockchip_vpu_variant rk3399_vpu_variant;
>> +extern const struct rockchip_vpu_variant rk3328_vpu_variant;
>>  extern const struct rockchip_vpu_variant rk3288_vpu_variant;
>>  
>>  void rockchip_vpu_watchdog(struct work_struct *work);
>>
