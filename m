From: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v4 2/5] media: v4l2-common: add helper functions to call
 s_stream() callbacks
Date: Mon, 22 Jun 2020 12:20:11 +0300
Message-ID: <20200622092011.GP16711@paasikivi.fi.intel.com>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <20200522075522.6190-3-dafna.hirschfeld@collabora.com>
 <20200525092347.GD7618@paasikivi.fi.intel.com>
 <3c465861-2dd3-b1d4-5492-ae6161bd63ba@collabora.com>
 <20200525100330.GE7618@paasikivi.fi.intel.com>
 <7df996c6-67a3-425d-18e4-262367c1062e@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <7df996c6-67a3-425d-18e4-262367c1062e@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org, skhan@linuxfoundation.org, niklas.soderlund@ragnatech.se--annotate
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

Apologies for the late reply...

On Mon, May 25, 2020 at 12:45:56PM +0200, Dafna Hirschfeld wrote:
> 
> 
> On 25.05.20 12:03, Sakari Ailus wrote:
> > Hi Dafna,
> > 
> > On Mon, May 25, 2020 at 11:42:37AM +0200, Dafna Hirschfeld wrote:
> > > 
> > > 
> > > On 25.05.20 11:23, Sakari Ailus wrote:
> > > > Hi Dafna,
> > > > 
> > > > My apologies for not reviewing this earlier.
> > > No problem :)
> > > 
> > > > 
> > > > On Fri, May 22, 2020 at 09:55:19AM +0200, Dafna Hirschfeld wrote:
> > > > > From: Helen Koike <helen.koike@collabora.com>
> > > > > 
> > > > > Add v4l2_pipeline_stream_{enable,disable} helper functions to iterate
> > > > > through the subdevices in a given stream (i.e following links from sink
> > > > > to source) and call .s_stream() callback.
> > > > > 
> > > > > If .s_stream(true) fails, call .s_stream(false) in the reverse order.
> > > > > 
> > > > > Signed-off-by: Helen Koike <helen.koike@collabora.com>
> > > > > Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> > > > > ---
> > > > >    drivers/media/v4l2-core/v4l2-common.c | 99 +++++++++++++++++++++++++++
> > > > >    include/media/v4l2-common.h           | 39 +++++++++++
> > > > >    2 files changed, 138 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/media/v4l2-core/v4l2-common.c b/drivers/media/v4l2-core/v4l2-common.c
> > > > > index 9e8eb45a5b03..734db2bf5ca9 100644
> > > > > --- a/drivers/media/v4l2-core/v4l2-common.c
> > > > > +++ b/drivers/media/v4l2-core/v4l2-common.c
> > > > > @@ -442,3 +442,102 @@ int v4l2_fill_pixfmt(struct v4l2_pix_format *pixfmt, u32 pixelformat,
> > > > >    	return 0;
> > > > >    }
> > > > >    EXPORT_SYMBOL_GPL(v4l2_fill_pixfmt);
> > > > > +
> > > > > +#if defined(CONFIG_MEDIA_CONTROLLER)
> > > > > +
> > > > > +/*
> > > > > + * v4l2_pipeline_subdevs_get - Assemble a list of subdevices in a pipeline
> > > > > + * @subdevs: the array to be filled.
> > > > > + * @max_size: max number of elements that can fit in subdevs array.
> > > > > + *
> > > > > + * Walk from a video node, following links from sink to source and fill the
> > > > > + * array with subdevices in the path.
> > > > > + * The walker performs a depth-first traversal, which means that, in a topology
> > > > > + * sd1->sd2->sd3->vdev, sd1 will be the first element placed in the array.
> > > > > + *
> > > > > + * Return the number of subdevices filled in the array.
> > > > > + */
> > > > > +static int v4l2_pipeline_subdevs_get(struct video_device *vdev,
> > > > > +				     struct v4l2_subdev **subdevs,
> > > > > +				     unsigned int max_size)
> > > > > +{
> > > > > +	struct media_entity *entity = &vdev->entity;
> > > > > +	struct media_device *mdev = entity->graph_obj.mdev;
> > > > > +	struct media_graph graph;
> > > > > +	int idx = 0;
> > > > > +	int ret;
> > > > > +
> > > > > +	ret = media_graph_walk_init(&graph, mdev);
> > > > > +	if (ret)
> > > > > +		return ret;
> > > > > +
> > > > > +	media_graph_walk_start(&graph, entity);
> > > > > +
> > > > > +	while ((entity = media_graph_walk_next_stream(&graph))) {
> > > > > +		if (!is_media_entity_v4l2_subdev(entity))
> > > > > +			continue;
> > > > > +		if (WARN_ON(idx >= max_size))
> > > > > +			return -EINVAL;
> > > > > +		subdevs[idx++] = media_entity_to_v4l2_subdev(entity);
> > > > > +	}
> > > > > +
> > > > > +	media_graph_walk_cleanup(&graph);
> > > > > +
> > > > > +	return idx;
> > > > > +}
> > > > > +
> > > > > +static void v4l2_subdevs_stream_disable(struct v4l2_subdev **subdevs, int size)
> > > > > +{
> > > > > +	int i;
> > > > > +
> > > > > +	for (i = 0; i < size; i++) {
> > > > > +		struct v4l2_subdev *sd = subdevs[i];
> > > > > +
> > > > > +		dev_dbg(sd->dev,
> > > > > +			"disabling stream for '%s'\n", sd->entity.name);
> > > > > +		v4l2_subdev_call(sd, video, s_stream, false);
> > > > > +	}
> > > > > +}
> > > > > +
> > > > > +__must_check int v4l2_pipeline_stream_enable(struct video_device *vdev)
> > > > > +{
> > > > > +	struct media_device *mdev = vdev->entity.graph_obj.mdev;
> > > > > +	struct v4l2_subdev *subdevs[MEDIA_ENTITY_ENUM_MAX_DEPTH];
> > > > > +	struct v4l2_subdev *sd;
> > > > > +	int i, size, ret;
> > > > > +
> > > > > +	size = v4l2_pipeline_subdevs_get(vdev, subdevs, ARRAY_SIZE(subdevs));
> > > > > +	if (size <= 0)
> > > > > +		return size;
> > > > > +
> > > > > +	/* Call s_stream() in reverse order to enable sensors last */
> > > > > +	for (i = size - 1; i >= 0; i--) {
> > > > > +		sd = subdevs[i];
> > > > > +		dev_dbg(mdev->dev,
> > > > > +			"enabling stream for '%s'\n", sd->entity.name);
> > > > > +		ret = v4l2_subdev_call(sd, video, s_stream, true);
> > > > 
> > > > The s_stream callback is only called on the very next sub-device upstream
> > > > in the pipeline, not on any further sub-devices. This is because a driver
> > > > for the device knows best in which order things need to be set up.
> > > > 
> > > This is only a helper function, drivers can choose not to use it.
> > > In many cases the same driver implements many subdevices so the driver
> > > knows what should be done also for subdevices deeper in the stream.
> > 
> > Can it be used on devices that do not operate from memory to memory? I.e.
> > how do you ensure the s_stream is not called on further sub-devices than
> > those that are adjacent to what this driver controls?

> Oh, I think I see your point, for example in case of an isp driver and a
> sensor driver. The sensor driver can also implement several subdevices
> that the isp driver is not aware of and it is the responsibility of the
> sensor driver to call them. Is this a common case? Still there are the

Yes. For a sensor driver it might not matter much though, as it's just a
single device. But on pipelines with e.g. CSI-2 to parallel converters and
CSI-2 aggregators it will make a big difference.

> code parts in drivers that are implementing calling s_stream in a loop
> similar to those in the helper functions. Maybe they are "buggy"? For
> example this code part:

Yes. Please see the omap3isp or ipu3-cio2 driver, both do that correctly.
Well, for iou3-cio2 this is easy as the driver itself exposes just a single
sub-device.

> https://git.linuxtv.org/media_tree.git/tree/drivers/media/platform/qcom/camss/camss-video.c#n430
> is called by the `start_stream` of a video device and I see that the
> `camss_probe` function that register it also calls
> v4l2_async_notifier_register, which means there might have a subdevice
> from a different driver.
> 
> Anyway, for the rkisp1 it is probably problematic since it is connected to a sensor
> implemented by another driver.
> > 
> > One option could be to check sd->dev and skip devices that are further away
> > but for that you'd also need to know how these sub-devices have been
> > reached. The graph walk does not currently provide this information.
> I think it is possible to use the sd->dev (or maybe sd-owner?)
> since we always only go down the stream, so when we reach a subdevice from
> a different driver we can stop. (not sure though)

Please use sd->dev as the omap3isp does.

-- 
Sakari Ailus
