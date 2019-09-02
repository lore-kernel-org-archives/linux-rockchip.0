From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 02/12] media: hantro: Do not reorder H264 scaling list
Date: Mon, 2 Sep 2019 16:18:21 +0000
Message-ID: <HE1PR06MB4011A8F99D58E5ACFAE3CECAACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40116C92C3D52C5957EF48E9ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <1567432843.3666.6.camel@pengutronix.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1567432843.3666.6.camel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
Content-Language: en-US
Content-ID: <A5C1535628DDEA408A5375644C3BEF32-NhzUejbdEhGcE4WynfumptQqCkab/8FMAL8bYrjMMd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2019-09-02 16:00, Philipp Zabel wrote:
> Hi Jonas,
>
> On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
>> Scaling list supplied from userspace using ffmpeg and libva-v4l2-request
>> is already in matrix order and can be used without applying the inverse
>> scanning process.
> "in matrix order" is equivalent to "in raster scan order"?

The values supplied by ffmpeg and libva-v4l2-request is in the order after the
inverse scanning process has been applied (scaling list has been transformed
into a scaling matrix). Not sure what this is called, "matrix order" seemed
close enough.

Since there is two scan orders, zig-zag and field, and cedrus already expecting
the values in "matrix" order, it seems more logical to let userspace handle the
inverse scanning process.

>
> Could you add this requirement to the
> V4L2_CID_MPEG_VIDEO_H264_SCALING_MATRIX documentation?

Sure, I will update documentation in v2.

>
>> The HW also only support 8x8 scaling list for the Y component, indices 0
>> and 3 in the scaling list supplied from userspace.
>>
>> Remove reordering and write the scaling matrix in an order expected by
>> the VPU, also only allocate memory for the two 8x8 lists used.
>>
>> Fixes: a9471e25629b ("media: hantro: Add core bits to support H264 decoding")
>> Signed-off-by: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
>> ---
>>  drivers/staging/media/hantro/hantro_h264.c | 64 +++++++---------------
>>  1 file changed, 20 insertions(+), 44 deletions(-)
>>
>> diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
>> index 0d758e0c0f99..e2d01145ac4f 100644
>> --- a/drivers/staging/media/hantro/hantro_h264.c
>> +++ b/drivers/staging/media/hantro/hantro_h264.c
>> @@ -20,7 +20,7 @@
>>  /* Size with u32 units. */
>>  #define CABAC_INIT_BUFFER_SIZE		(460 * 2)
>>  #define POC_BUFFER_SIZE			34
>> -#define SCALING_LIST_SIZE		(6 * 16 + 6 * 64)
>> +#define SCALING_LIST_SIZE		(6 * 16 + 2 * 64)
> This changes the size of struct hantro_h264_dec_priv_tbl. Did this
> describe the auxiliary buffer format incorrectly before?

Based on RKMPP and Hantro SDK the HW expects the 8x8 inter/intra list for
Y-component to be located at indices 0 and 1, lists for Cr/Cb is only used for
4:4:4 and HW only supports 4:0:0/4:2:0 if I am not mistaken. So the unused
extra 4 lists at the end of the auxiliary buffer seemed like a waste,
also RKMPP and Hantro SDK only seemed to allocate space for 2 lists.

>
>>  #define POC_CMP(p0, p1) ((p0) < (p1) ? -1 : 1)
>>  
>> @@ -194,57 +194,33 @@ static const u32 h264_cabac_table[] = {
>>  	0x1f0c2517, 0x1f261440
>>  };
>>  
>> -/*
>> - * NOTE: The scaling lists are in zig-zag order, apply inverse scanning process
>> - * to get the values in matrix order. In addition, the hardware requires bytes
>> - * swapped within each subsequent 4 bytes. Both arrays below include both
>> - * transformations.
>> - */
>> -static const u32 zig_zag_4x4[] = {
>> -	3, 2, 7, 11, 6, 1, 0, 5, 10, 15, 14, 9, 4, 8, 13, 12
>> -};
>> -
>> -static const u32 zig_zag_8x8[] = {
>> -	3, 2, 11, 19, 10, 1, 0, 9, 18, 27, 35, 26, 17, 8, 7, 6,
>> -	15, 16, 25, 34, 43, 51, 42, 33, 24, 23, 14, 5, 4, 13, 22, 31,
>> -	32, 41, 50, 59, 58, 49, 40, 39, 30, 21, 12, 20, 29, 38, 47, 48,
>> -	57, 56, 55, 46, 37, 28, 36, 45, 54, 63, 62, 53, 44, 52, 61, 60
>> -};
>> -
>>  static void
>>  reorder_scaling_list(struct hantro_ctx *ctx)
>>  {
>>  	const struct hantro_h264_dec_ctrls *ctrls = &ctx->h264_dec.ctrls;
>>  	const struct v4l2_ctrl_h264_scaling_matrix *scaling = ctrls->scaling;
>> -	const size_t num_list_4x4 = ARRAY_SIZE(scaling->scaling_list_4x4);
>> -	const size_t list_len_4x4 = ARRAY_SIZE(scaling->scaling_list_4x4[0]);
>> -	const size_t num_list_8x8 = ARRAY_SIZE(scaling->scaling_list_8x8);
>> -	const size_t list_len_8x8 = ARRAY_SIZE(scaling->scaling_list_8x8[0]);
>>  	struct hantro_h264_dec_priv_tbl *tbl = ctx->h264_dec.priv.cpu;
>> -	u8 *dst = tbl->scaling_list;
>> -	const u8 *src;
>> -	int i, j;
>> -
>> -	BUILD_BUG_ON(ARRAY_SIZE(zig_zag_4x4) != list_len_4x4);
>> -	BUILD_BUG_ON(ARRAY_SIZE(zig_zag_8x8) != list_len_8x8);
>> -	BUILD_BUG_ON(ARRAY_SIZE(tbl->scaling_list) !=
>> -		     num_list_4x4 * list_len_4x4 +
>> -		     num_list_8x8 * list_len_8x8);
>> -
>> -	src = &scaling->scaling_list_4x4[0][0];
>> -	for (i = 0; i < num_list_4x4; ++i) {
>> -		for (j = 0; j < list_len_4x4; ++j)
>> -			dst[zig_zag_4x4[j]] = src[j];
>> -		src += list_len_4x4;
>> -		dst += list_len_4x4;
>> +	u32 *dst = (u32 *)tbl->scaling_list;
>> +	u32 i, j, tmp;
>> +
>> +	for (i = 0; i < ARRAY_SIZE(scaling->scaling_list_4x4); i++) {
>> +		for (j = 0; j < ARRAY_SIZE(scaling->scaling_list_4x4[0]) / 4; j++) {
>> +			tmp = (scaling->scaling_list_4x4[i][4 * j + 0] << 24) |
>> +			      (scaling->scaling_list_4x4[i][4 * j + 1] << 16) |
>> +			      (scaling->scaling_list_4x4[i][4 * j + 2] << 8) |
>> +			      (scaling->scaling_list_4x4[i][4 * j + 3]);
>> +			*dst++ = tmp;
>> +		}
> This looks like it could use swab32().

Thanks for the tip, will look into and change in v2.

>
>>  	}
>>  
>> -	src = &scaling->scaling_list_8x8[0][0];
>> -	for (i = 0; i < num_list_8x8; ++i) {
>> -		for (j = 0; j < list_len_8x8; ++j)
>> -			dst[zig_zag_8x8[j]] = src[j];
>> -		src += list_len_8x8;
>> -		dst += list_len_8x8;
>> +	for (i = 0; i < ARRAY_SIZE(scaling->scaling_list_8x8); i += 3) {
>> +		for (j = 0; j < ARRAY_SIZE(scaling->scaling_list_8x8[0]) / 4; j++) {
>> +			tmp = (scaling->scaling_list_8x8[i][4 * j + 0] << 24) |
>> +			      (scaling->scaling_list_8x8[i][4 * j + 1] << 16) |
>> +			      (scaling->scaling_list_8x8[i][4 * j + 2] << 8) |
>> +			      (scaling->scaling_list_8x8[i][4 * j + 3]);
>> +			*dst++ = tmp;
>> +		}
> After this change, the second 8x8 scaling list has moved to a different
> offset. Is this where the hardware has always been looking for it, or is
> there a change missing in another place?

As mentioned above HW only looks at indices 0 and 1, and ffmpeg will store the
inter/intra Y list at indices 0 and 3 as seen at [1], in similar way cedrus only
use indices 0 and 3 at [2].
FFmpeg memcpy entire scaling_matrix8 to scaling_list_8x8 for v4l2-request-api
and memcpy scaling_matrix8[0] and scaling_matrix8[3] for vaapi.

You can see the effect of this patch using the h264_tivo_sample.ts sample from
cover letter, patch 3-8 must be applied. With this patch applied the green
football field will stay green, without the patch the field will shift in colors.

[1] https://github.com/FFmpeg/FFmpeg/blob/master/libavcodec/h264_ps.c#L299-L308
[2] https://git.linuxtv.org/media_tree.git/tree/drivers/staging/media/sunxi/cedrus/cedrus_h264.c#n231

Regards,
Jonas

>
> regards
> Philipp
