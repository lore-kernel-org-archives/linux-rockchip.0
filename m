From: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [PATCH 01/10] media: Introduce helpers to fill pixel format
 structs
Date: Wed, 20 Feb 2019 09:39:13 +0100
Message-ID: <ea53ac3d-a337-d725-3317-1cef42481820@xs4all.nl>
References: <20190205202417.16555-1-ezequiel@collabora.com>
 <20190205202417.16555-2-ezequiel@collabora.com>
 <79ad7cf7-90d5-9542-06ea-e28ddeb14e94@xs4all.nl>
 <85ff24016b4d4b55a1a02f1aee6b42dbbaf2279a.camel@collabora.com>
 <d1ea8698-e4c6-a826-0820-b8395c8c2a6f@xs4all.nl>
 <CAAFQd5DLTOJ0kheFdxzTV7Hrtc5MpG4Utn00HgNh06d+h_qJfQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAFQd5DLTOJ0kheFdxzTV7Hrtc5MpG4Utn00HgNh06d+h_qJfQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
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
To: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Sakari Ailus <sakari.ailus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2/20/19 7:53 AM, Tomasz Figa wrote:
> On Thu, Feb 7, 2019 at 1:36 AM Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org> wrote:
>>
>> On 2/6/19 5:22 PM, Ezequiel Garcia wrote:
>>> On Wed, 2019-02-06 at 11:43 +0100, Hans Verkuil wrote:
>>>> Hi Ezequiel,
>>>>
>>>> A quick review below. This looks really useful, BTW.
>>>>
>>>> On 2/5/19 9:24 PM, Ezequiel Garcia wrote:
> 
> [snip]
>>>>> +/**
>>>>> + * struct v4l2_format_info - information about a V4L2 format
>>>>> + * @format: 4CC format identifier (V4L2_PIX_FMT_*)
>>>>> + * @header_size: Size of header, optional and used by compressed formats
>>>>> + * @num_planes: Number of planes (1 to 3)
>>>>
>>>> This is actually 1-4 since there may be an alpha channel as well. Not that we have
>>>> such formats since the only formats with an alpha channel are interleaved formats,
>>>> but it is possible.
> 
> How about 1 to VIDEO_MAX_PLANES to be a bit more consistent?
> Tbh. I'm not sure why we have that defined to 8, but if we have such
> constant already, it could make sense to use it here as well.

We didn't know at the time how many planes we would need. I think we
chose 8 because 1) that fit inside struct v4l2_format and 2) it allowed
room for planes carrying meta data.

In hindsight we probably should have chosen 4 instead of 8.

In any case, since this is an internal API I think chosing MAX_PLANES
here would waste unnecessary memory.

> 
> [snip]
>>>
>>> Also, note that drm-fourcc deprecates cpp, to support tile formats.
>>> Hopefully we don't need that here?
>>
>> We do have tile formats (V4L2_PIX_FMT_NV12MT_16X16), but it is up to the
>> driver to align width/height accordingly.
>>
> 
> I'd still make these helpers align to the constraints defined by the
> format itself (e.g. 16x16), since it doesn't cost us anything, and
> have the driver do any further alignment only if they need so.

Yes, sorry, I should have said that: for tiled pixel formats this
struct should give the alignments.

But those alignments differ from hsub/vsub: those values restrict the
resolution, but the 'tiled' alignments are on top of that.

> 
>>>
>>>>> + * @hsub: Horizontal chroma subsampling factor
>>>>> + * @vsub: Vertical chroma subsampling factor
>>>>
>>>> A bit too cryptic IMHO. I would prefer hdiv or hsubsampling. 'hsub' suggests
>>>> subtraction :-)
>>>>
>>>
>>> Ditto, this name follows drm-fourcc. I'm fine either way.
>>>
> 
> I personally like hsub and vsub too, but maybe I just spent too much
> time with DRM code. *subsampling would make the initializers super
> wide, so if we decide that we don't like *sub, I'd go with *div.
> 
>>>>> + * @multiplanar: Is it a multiplanar variant format? (e.g. NV12M)
>>>>
>>>> This should, I think, be renamed to num_non_contig_planes to indicate how many
>>>> non-contiguous planes there are in the format.
>>>>
>>>> So this value is 1 for NV12 and 2 for NV12M. For V4L2_PIX_FMT_YUV444M it is 3.
>>>>
>>>> You can stick this value directly into pixfmt_mp->num_planes.
>>>>
>>>
>>> Fine by me, but I have to admit I don't see the value of adding the
>>> number of non-contiguous planes. For multiplanar non-contiguous formats
>>> the number of planes is equal to the number of planes.
>>
>> Hmm, that's true. Choose whatever gives you the shortest code :-)
>>
>>>
>>> Although maybe it will be clear this way for readers?
>>>
>>>> As an aside: perhaps we should start calling the 'multiplanar API' the
>>>> 'multiple non-contiguous planes API', at least in the documentation. It's the
> 
> To me, "multiple non-contiguous planes API" would suggest that the
> planes themselves are non-contiguous.
> 
> Many drivers (especially Samsung ones) have a distinction between
> "color planes" and "memory planes" internally, so maybe "Multiple
> memory planes API" could make sense?

Huh, that's an idea. So _MPLANE should have been _MMPLANE?

> 
>>>> first time that I found a description that actually covers the real meaning.
>>>>
>>>
>>> Yes, indeed. In fact, my first version of this code had something like
>>> "is_noncontiguous" instead of the "multiplanar" field.
>>
>> I'm fine with that. Add a comment after it like: /* aka multiplanar */
>>
> 
> FWIW, some of the drivers have .num_cplanes and .num_mplanes in their
> format descriptors.

I think that makes sense. Good suggestion.

Regards,

	Hans
