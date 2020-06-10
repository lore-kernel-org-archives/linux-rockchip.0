From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v4 4/5] media: staging: rkisp1: cap: use
 v4l2_pipeline_stream_{enable,disable} helpers
Date: Wed, 10 Jun 2020 19:22:04 +0200
Message-ID: <02c8bd4a-0fc1-fcc5-4d8b-63ff1d406988@collabora.com>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <20200522075522.6190-5-dafna.hirschfeld@collabora.com>
 <20200610170344.GC201868@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200610170344.GC201868@chromium.org>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Tomasz Figa <tfiga@chromium.org>
Cc: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, skhan@linuxfoundation.org, niklas.soderlund@ragnatech.se--annotate
List-Id: linux-rockchip.vger.kernel.org



On 10.06.20 19:03, Tomasz Figa wrote:
> Hi Dafna,
> 
> On Fri, May 22, 2020 at 09:55:21AM +0200, Dafna Hirschfeld wrote:
>> From: Helen Koike <helen.koike@collabora.com>
>>
>> Use v4l2_pipeline_stream_{enable,disable} to call .s_stream()
>> subdevice callbacks through the pipeline.
>> Those helpers are called only if the other capture is not streaming.
>>
>> If the other capture is streaming then he already did that for us
>> so we call s_stream only on the resizer that is connected to the
>> capture node.
>>
>> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/rkisp1-capture.c | 104 ++++++------------
>>   1 file changed, 32 insertions(+), 72 deletions(-)
>>
> 
> Thank you for the patch. Please see my comments inline.
> 
> [snip]
>> +static int rkisp1_s_stream_subdev(struct rkisp1_capture *cap, int enable)
>> +{
>> +	struct rkisp1_device *rkisp1 = cap->rkisp1;
>> +	struct rkisp1_capture *other = &rkisp1->capture_devs[cap->id ^ 1];
>> +	int ret;
>> +
>> +	/*
>> +	 * if the other capture is already streaming then we only need to
>> +	 * call s_stream of our reszier
>> +	 */
>> +	if (other->is_streaming) {
>> +		struct v4l2_subdev *rsz_sd  = &rkisp1->resizer_devs[cap->id].sd;
>> +
>> +		ret = v4l2_subdev_call(rsz_sd, video, s_stream, enable);
>> +		if (ret && ret != -ENOIOCTLCMD)
>> +			dev_err(rkisp1->dev,
>> +				"stream %s resizer '%s' failed (%d)\n",
>> +				enable ? "on" : "off", rsz_sd->name, ret);
> 
> Do we need this special case? Wouldn't v4l2_pipeline_stream_*() simply
> increment reference counters for the other entities?

I removed the stream count in v4 of the patchset since I thought it
might be problematic/confusing to add a field "stream_count" in
"struct v4l2_subdev" that is used and updated only by those helper functions

What do you think?

There is also the issue that both you and Sakari Ailus mentioned that
an isp driver can't know the subtopology of a sensor driver and how it handle the
s_stream callback on it's entities.

Thanks,
Dafna


> 
>> +	} else {
>> +		if (enable)
>> +			ret = v4l2_pipeline_stream_enable(&cap->vnode.vdev);
>> +		else
>> +			ret = v4l2_pipeline_stream_disable(&cap->vnode.vdev);
> 
> I wonder if this doesn't ask for just making the helper
> v4l2_pipeline_s_stream(..., int enable).> 
> Best regards,
> Tomasz
> 
