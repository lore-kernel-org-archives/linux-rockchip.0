From: Hans Verkuil <hverkuil@xs4all.nl>
Subject: Re: [RFC v4 4/8] v4l2: add support for colorspace conversion API
 (CSC) for video capture and subdevices
Date: Fri, 26 Jun 2020 09:13:53 +0200
Message-ID: <85deadf2-d82e-8926-3304-7d5faf316d18@xs4all.nl>
References: <20200605172625.19777-1-dafna.hirschfeld@collabora.com>
 <20200605172625.19777-5-dafna.hirschfeld@collabora.com>
 <510295b3-39f2-dd23-6aa0-be838c731cef@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <510295b3-39f2-dd23-6aa0-be838c731cef@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org, skhan@linuxfoundation.org, p.zabel@pengutronix.de, Hans Verkuil <hans.verkuil@cisco.com>
List-Id: linux-rockchip.vger.kernel.org

On 26/06/2020 01:29, Helen Koike wrote:
> 
> 
> On 6/5/20 2:26 PM, Dafna Hirschfeld wrote:

<snip>

>>  /*
>>   *	F O R M A T   E N U M E R A T I O N
>> @@ -792,6 +793,9 @@ struct v4l2_fmtdesc {
>>  #define V4L2_FMT_FLAG_EMULATED			0x0002
>>  #define V4L2_FMT_FLAG_CONTINUOUS_BYTESTREAM	0x0004
>>  #define V4L2_FMT_FLAG_DYN_RESOLUTION		0x0008
>> +#define V4L2_FMT_FLAG_CSC_YCBCR_ENC		0x0010
>> +#define V4L2_FMT_FLAG_CSC_HSV_ENC		0x0010
> 
> Shouldn't those have different values? Or is this intentional?

It's intentional, but it would probably be better to write this as:

#define V4L2_FMT_FLAG_CSC_YCBCR_ENC		0x0010
#define V4L2_FMT_FLAG_CSC_HSV_ENC		V4L2_FMT_FLAG_CSC_YCBCR_ENC

That makes it explicit that HSV_ENC is an alias for YCBCR_ENC.

Regards,

	Hans

> 
> Regards,
> Helen
> 
>> +#define V4L2_FMT_FLAG_CSC_QUANTIZATION		0x0020
>>  
>>  	/* Frame Size and frame rate enumeration */
>>  /*
>>
