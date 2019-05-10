From: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [PATCH v5 03/15] media: v4l2-common: Support custom
 imagesize/bytesperline in fill_pixfmt()
Date: Fri, 10 May 2019 14:30:17 +0200
Message-ID: <f9ffc9ae-2c27-2883-7f62-9931597c8e75@xs4all.nl>
References: <20190503114719.28784-1-boris.brezillon@collabora.com>
 <20190503114719.28784-4-boris.brezillon@collabora.com>
 <0c5a648c-27a8-8195-8ad9-8cefb4369837@xs4all.nl>
 <20190510112847.GA4972@pendragon.ideasonboard.com>
 <c2d02ffb-5273-67a8-1a3a-c7268dc7bfb6@xs4all.nl>
 <20190510122411.GB4972@pendragon.ideasonboard.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190510122411.GB4972-N3hz7ZxfLydczECFQUw77jytWr6r+dGw0E9HWUfgJXw@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
Cc: Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Kieran Bingham <kieran.bingham-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 5/10/19 2:24 PM, Laurent Pinchart wrote:
> Hi Hans,
> 
> On Fri, May 10, 2019 at 02:17:32PM +0200, Hans Verkuil wrote:
>> On 5/10/19 1:28 PM, Laurent Pinchart wrote:
>>> On Fri, May 10, 2019 at 10:57:26AM +0200, Hans Verkuil wrote:
>>>> On 5/3/19 1:47 PM, Boris Brezillon wrote:
>>>>> Users can define custom sizeimage and bytesperline as long as they're
>>>>> big enough to store the amount of pixels required for a specific
>>>>> width/height under a specific format. Avoid overriding those fields in
>>>>> this case.
>>>>>
>>>>> Signed-off-by: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
>>>>> ---
>>>>> Hello Hans,
>>>>>
>>>>> The sizeimage/bytesperline check on !MPLANE formats is still not 100%
>>>>> sure, as custom bytesperline might induce bigger sizeimage than what
>>>>> we calculate.
>>>>>
>>>>> I tried implementing something smarter taking the per-component plane
>>>>> bpp + hdiv param as we discussed the other day but decided to step
>>>>> back after realizing the per-component plane macro block might also
>>>>> differ at least in theory (not sure that's true in practice) and that
>>>>> has an impact on bytesperline too.
>>>>>
>>>>> Let me know how you want to handle that case.
>>>>>
>>>>> Regards,
>>>>>
>>>>> Boris
>>>>>
>>>>> Changes in v5:
>>>>> * New patch
>>>>> ---
>>>>>  drivers/media/v4l2-core/v4l2-common.c | 54 +++++++++++++++++++--------
>>>>>  1 file changed, 39 insertions(+), 15 deletions(-)
>>>>>
>>>>> diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
>>>>> index 3c6f5c115fc5..37bfc984a8b5 100644
>>>>> --- a/drivers/media/v4l2-core/v4l2-common.c
>>>>> +++ b/drivers/media/v4l2-core/v4l2-common.c
>>>>> @@ -563,9 +563,10 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>>>>>  	pixfmt->num_planes = info->mem_planes;
>>>>>  
>>>>>  	if (info->mem_planes == 1) {
>>>>> +		u32 bytesperline, sizeimage = 0;
>>>>> +
>>>>>  		plane = &pixfmt->plane_fmt[0];
>>>>> -		plane->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>>>>> -		plane->sizeimage = 0;
>>>>> +		bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>>>>>  
>>>>>  		for (i = 0; i < info->comp_planes; i++) {
>>>>>  			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
>>>>> @@ -576,10 +577,17 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>>>>>  			aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
>>>>>  			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
>>>>>  
>>>>> -			plane->sizeimage += info->bpp[i] *
>>>>> -				DIV_ROUND_UP(aligned_width, hdiv) *
>>>>> -				DIV_ROUND_UP(aligned_height, vdiv);
>>>>> +			sizeimage += info->bpp[i] *
>>>>> +				     DIV_ROUND_UP(aligned_width, hdiv) *
>>>>> +				     DIV_ROUND_UP(aligned_height, vdiv);
>>>>>  		}
>>>>> +
>>>>> +		/*
>>>>> +		 * The user might have specified custom sizeimage/bytesperline,
>>>>> +		 * only override them if they're not big enough.
>>>>> +		 */
>>>>> +		plane->sizeimage = max(sizeimage, plane->sizeimage);
>>>>> +		plane->bytesperline = max(bytesperline, plane->bytesperline);
>>>>
>>>> Let's just set bytesperline, ignoring the value the user supplied. There are very
>>>> few drivers that allow the user to set bytesperline anyway, so it's not a big deal
>>>> to drop support for that for now. We can add it back later.
>>>>
>>>> Just add a comment that a user-defined bytesperline value isn't currently supported.
>>>
>>> Kieran recently ran into an issue related to this, when sharing buffers
>>> between a CSI-2 receiver and an ISP. The ISP has alignment constraints
>>> in both the horizontal and vertical directions on the line stride and
>>> total image size. Out software framework currently allocates buffers
>>> from the CSI-2 receiver which doesn't have those constraints, and not
>>> being able to specify sizeimage is thus a problem.
>>
>> Not being able to specify sizeimage where? From userspace? Sorry, I don't
>> quite understand the specific issue here.
> 
> Yes, from userspace.

Ah, OK. But why not use CREATEBUFS? You can provide your own size when allocating
the buffers.

Also note this patch: https://patchwork.linuxtv.org/patch/55656/

Although this is specific for compressed formats.

Regards,

	Hans

> 
>>> We have worked around this by allocating buffers on the ISP side but
>>> that departed from the normal way of operation, and it may not be a good
>>> idea to carry that forward.
>>>
>>> I wonder how we should solve these issues long term. A central memory
>>> allocator is probably the way to go.
>>>
>>>>>  	} else {
>>>>>  		for (i = 0; i < info->comp_planes; i++) {
>>>>>  			unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
>>>>> @@ -591,10 +599,20 @@ int v4l2_fill_pixfmt_mp(struct v4l2_pix_format_mplane *pixfmt,
>>>>>  			aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
>>>>>  
>>>>>  			plane = &pixfmt->plane_fmt[i];
>>>>> -			plane->bytesperline =
>>>>> -				info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv);
>>>>> -			plane->sizeimage =
>>>>> -				plane->bytesperline * DIV_ROUND_UP(aligned_height, vdiv);
>>>>> +
>>>>> +			/*
>>>>> +			 * The user might have specified custom
>>>>> +			 * sizeimage/bytesperline, only override them if
>>>>> +			 * they're not big enough.
>>>>> +			 */
>>>>> +			plane->bytesperline = max_t(u32,
>>>>> +						    info->bpp[i] *
>>>>> +						    DIV_ROUND_UP(aligned_width, hdiv),
>>>>> +						    plane->bytesperline);
>>>>> +			plane->sizeimage = max_t(u32,
>>>>> +						 plane->bytesperline *
>>>>> +						 DIV_ROUND_UP(aligned_height, vdiv),
>>>>> +						 plane->sizeimage);
>>>>>  		}
>>>>>  	}
>>>>>  	return 0;
>>>>> @@ -605,6 +623,7 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>>>>>  		     u32 width, u32 height)
>>>>>  {
>>>>>  	const struct v4l2_format_info *info;
>>>>> +	u32 bytesperline, sizeimage = 0;
>>>>>  	int i;
>>>>>  
>>>>>  	info = v4l2_format_info(pixelformat);
>>>>> @@ -618,8 +637,7 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>>>>>  	pixfmt->width = width;
>>>>>  	pixfmt->height = height;
>>>>>  	pixfmt->pixelformat = pixelformat;
>>>>> -	pixfmt->bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>>>>> -	pixfmt->sizeimage = 0;
>>>>> +	bytesperline = ALIGN(width, v4l2_format_block_width(info, 0)) * info->bpp[0];
>>>>>  
>>>>>  	for (i = 0; i < info->comp_planes; i++) {
>>>>>  		unsigned int hdiv = (i == 0) ? 1 : info->hdiv;
>>>>> @@ -629,11 +647,17 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
>>>>>  
>>>>>  		aligned_width = ALIGN(width, v4l2_format_block_width(info, i));
>>>>>  		aligned_height = ALIGN(height, v4l2_format_block_height(info, i));
>>>>> -
>>>>> -		pixfmt->sizeimage += info->bpp[i] *
>>>>> -			DIV_ROUND_UP(aligned_width, hdiv) *
>>>>> -			DIV_ROUND_UP(aligned_height, vdiv);
>>>>> +		sizeimage += info->bpp[i] * DIV_ROUND_UP(aligned_width, hdiv) *
>>>>> +			     DIV_ROUND_UP(aligned_height, vdiv);
>>>>>  	}
>>>>> +
>>>>> +	/*
>>>>> +	 * The user might have specified its own sizeimage/bytesperline values,
>>>>> +	 * only override them if they're not big enough.
>>>>> +	 */
>>>>> +	pixfmt->sizeimage = max(sizeimage, pixfmt->sizeimage);
>>>>> +	pixfmt->bytesperline = max(bytesperline, pixfmt->bytesperline);
>>>>> +
>>>>>  	return 0;
>>>>>  }
>>>>>  EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> 
