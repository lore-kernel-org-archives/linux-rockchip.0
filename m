From: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [RFC 10/12] media: hantro: Add support for H264 decoding on RK3399
Date: Mon, 2 Sep 2019 15:25:29 +0000
Message-ID: <HE1PR06MB401131344C5E1FC6D66390A2ACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <20190901124531.23645-1-jonas@kwiboo.se>
 <HE1PR06MB40119DE07D38060F531D1070ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <99943cdf-7e3b-f819-5d81-2e007e788682@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <99943cdf-7e3b-f819-5d81-2e007e788682-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Content-Language: en-US
Content-ID: <7E6FC17CD8EF784AB03CE3039EA92438-NhzUejbdEhGcE4WynfumptQqCkab/8FMAL8bYrjMMd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2019-09-02 13:46, Hans Verkuil wrote:
> On 9/1/19 2:45 PM, Jonas Karlman wrote:
>> Rockchip RK3399 SoC has the same Hantro G1 IP block
>> as RK3288, but the registers are entirely different.
>>
>> In a similar fashion as MPEG-2 and VP8 decoding,
>> it's simpler to just add a separate implementation.
>>
>> Signed-off-by: Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>
>> ---
>>  drivers/staging/media/hantro/Makefile         |   1 +
>>  .../staging/media/hantro/hantro_g1_h264_dec.c |   1 -
>>  drivers/staging/media/hantro/hantro_hw.h      |   1 +
>>  .../media/hantro/rk3399_vpu_hw_h264_dec.c     | 486 ++++++++++++++++++
>>  4 files changed, 488 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/staging/media/hantro/rk3399_vpu_hw_h264_dec.c
>>
>> diff --git a/drivers/staging/media/hantro/Makefile b/drivers/staging/media/hantro/Makefile
>> index 5d6b0383d280..8d33b0e8aa6c 100644
>> --- a/drivers/staging/media/hantro/Makefile
>> +++ b/drivers/staging/media/hantro/Makefile
>> @@ -8,6 +8,7 @@ hantro-vpu-y += \
>>  		hantro_g1_mpeg2_dec.o \
>>  		hantro_g1_vp8_dec.o \
>>  		rk3399_vpu_hw_jpeg_enc.o \
>> +		rk3399_vpu_hw_h264_dec.o \
>>  		rk3399_vpu_hw_mpeg2_dec.o \
>>  		rk3399_vpu_hw_vp8_dec.o \
>>  		hantro_jpeg.o \
>> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> index 4b82b9fd5252..ec2736fb473d 100644
>> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
>> @@ -202,7 +202,6 @@
>>  #define G1_REG_REFBU_E(v)		((v) ? BIT(31) : 0)
>>  
>>  #define G1_REG_APF_THRESHOLD(v)		(((v) << 0) & GENMASK(13, 0))
>> ->>>>>>> b22734fb5e2c... Ymedia: hantro: Refactor G1 H264 code
> ^^^^^^^^^^^^^^^
>
> Seems to be a left-over from patch 9?

Yes, thanks for noticing, looks like there was a small rebase issue, the line got added
in one patch and removed in the next. Will fix in next spin.

Regards,
Jonas

>
> Regards,
>
> 	Hans
>
>>  
>>  void hantro_g1_h264_dec_run(struct hantro_ctx *ctx)
>>  {
