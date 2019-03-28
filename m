From: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [PATCH v2 08/11] rockchip/vpu: Support the Request API
Date: Thu, 28 Mar 2019 14:59:00 +0100
Message-ID: <0618322f-ac2b-fbcd-47f2-68173318f8d7@xs4all.nl>
References: <20190304192529.14200-1-ezequiel@collabora.com>
 <20190304192529.14200-9-ezequiel@collabora.com>
 <CAAFQd5C5zo=03-mLh4OztKS+dCjVMUe1Za25ff+dWjxQDLFLng@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAFQd5C5zo=03-mLh4OztKS+dCjVMUe1Za25ff+dWjxQDLFLng-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
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
To: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 3/28/19 8:20 AM, Tomasz Figa wrote:

<snip>

>> +static int rockchip_vpu_buf_out_validate(struct vb2_buffer *vb)
>> +{
>> +       struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
>> +
>> +       vbuf->field = V4L2_FIELD_NONE;
> 
> Hmm, "validate" in the name of this callback would suggest that we
> should just check the contents, not change them. Hans, what was the
> intention when adding this callback? Are we missing the const
> specifier in the argument?

See the original commit log:

https://www.mail-archive.com/linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org/msg143163.html

It is allowed to either just validate and return an error if wrong,
or change it to something known to be valid. In particular, userspace
can set this to FIELD_ANY, and in that case the driver must replace
it with something valid.

Most drivers just support FIELD_NONE, and just set it.

That said, I think we should tighten the spec for this as this is
not well documented.

I propose that if vbuf->field == FIELD_ANY, then replace it with something
sane. Otherwise validate it and return an error if the field value
is not supported.

And FIELD_ALTERNATE is never allowed here, that's always wrong.

Regards,

	Hans
