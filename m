From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [RESEND PATCH v3 2/6] media: staging: rkisp1: rsz: set default
 format if the given format is not RKISP1_DIR_SRC
Date: Tue, 16 Jun 2020 09:07:42 -0300
Message-ID: <eca7b4c0-57a7-2c7d-9d1f-0fd107849541@collabora.com>
References: <20200613091353.12689-1-dafna.hirschfeld@collabora.com>
 <20200613091353.12689-3-dafna.hirschfeld@collabora.com>
 <ded8a981-5e5e-f0a6-c72d-1a762d3fd153@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <ded8a981-5e5e-f0a6-c72d-1a762d3fd153@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org



On 6/16/20 9:03 AM, Helen Koike wrote:
> Hi Dafna,
> 
> On 6/13/20 6:13 AM, Dafna Hirschfeld wrote:
>> When setting the sink format of the 'rkisp1_resizer'
>> the format should be supported by 'rkisp1_isp' on
>> the video source pad. This patch checks this condition
>> and set the format to default if the condition is false.
>>
>> Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> Reviewed-by: Tomasz Figa <tfiga@chromium.org>
>> ---
>>  drivers/staging/media/rkisp1/rkisp1-common.h  | 4 ++++
>>  drivers/staging/media/rkisp1/rkisp1-isp.c     | 4 ----
>>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 2 +-
>>  3 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-common.h b/drivers/staging/media/rkisp1/rkisp1-common.h
>> index 0c4fe503adc9..39d8e46d8d8a 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-common.h
>> +++ b/drivers/staging/media/rkisp1/rkisp1-common.h
>> @@ -22,6 +22,10 @@
>>  #include "rkisp1-regs.h"
>>  #include "uapi/rkisp1-config.h"
>>  
>> +#define RKISP1_DIR_SRC BIT(0)
>> +#define RKISP1_DIR_SINK BIT(1)
>> +#define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
>> +
>>  #define RKISP1_ISP_MAX_WIDTH		4032
>>  #define RKISP1_ISP_MAX_HEIGHT		3024
>>  #define RKISP1_ISP_MIN_WIDTH		32
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-isp.c b/drivers/staging/media/rkisp1/rkisp1-isp.c
>> index dc2b59a0160a..e66e87d6ea8b 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-isp.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-isp.c
>> @@ -23,10 +23,6 @@
>>  
>>  #define RKISP1_ISP_DEV_NAME	RKISP1_DRIVER_NAME "_isp"
>>  
>> -#define RKISP1_DIR_SRC BIT(0)
>> -#define RKISP1_DIR_SINK BIT(1)
>> -#define RKISP1_DIR_SINK_SRC (RKISP1_DIR_SINK | RKISP1_DIR_SRC)
> 
> As mentioned previously, please, check my comment on first version of the patch https://patchwork.linuxtv.org/patch/64292/
> Or please let me know if you don't agree.

I just saw you submitted the change in a separated patch.

I would submit patch 4/6 before this one.

Thanks
Helen


> 
> Thanks
> Helen
> 
>> -
>>  /*
>>   * NOTE: MIPI controller and input MUX are also configured in this file.
>>   * This is because ISP Subdev describes not only ISP submodule (input size,
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> index d64c064bdb1d..fa28f4bd65c0 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
>> @@ -542,7 +542,7 @@ static void rkisp1_rsz_set_sink_fmt(struct rkisp1_resizer *rsz,
>>  					    which);
>>  	sink_fmt->code = format->code;
>>  	mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>> -	if (!mbus_info) {
>> +	if (!mbus_info || !(mbus_info->direction & RKISP1_DIR_SRC)) {
>>  		sink_fmt->code = RKISP1_DEF_FMT;
>>  		mbus_info = rkisp1_isp_mbus_info_get(sink_fmt->code);
>>  	}
>>
