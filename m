From: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH v8 05/14] media: rkisp1: add Rockchip ISP1 subdev driver
Date: Wed, 12 Feb 2020 23:13:17 +0200
Message-ID: <20200212211317.GD3087@kekkonen.localdomain>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-6-helen.koike@collabora.com>
 <20190808091406.GQ21370@paasikivi.fi.intel.com>
 <da6c1d01-e3f6-ad73-db55-145d7832a665@collabora.com>
 <20190815082422.GM6133@paasikivi.fi.intel.com>
 <20190815131748.GS6133@paasikivi.fi.intel.com>
 <78856358-1afd-31a7-86dd-22f7d6d7fb05@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <78856358-1afd-31a7-86dd-22f7d6d7fb05@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: Helen Koike <helen.koike@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, mchehab@kernel.org, heiko@sntech.de, jacob2.chen@rock-chips.com, jeffy.chen@rock-chips.com, zyc@rock-chips.com, linux-kernel@vger.kernel.org, tfiga@chromium.org, hans.verkuil@cisco.com, laurent.pinchart@ideasonboard.com, kernel@collabora.com, ezequiel@collabora.com, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, zhengsq@rock-chips.com, Jacob Chen <cc@rock-chips.com>, Allon Huang <allon.huang@rock-chips.com>, Dafna Hirschfeld <dafna3@gmail.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

Apologies for the late reply. I learned the mail had got lost due to mail
server issues.

On Fri, Jan 31, 2020 at 08:38:34PM +0100, Dafna Hirschfeld wrote:
> Hi,
> I (Dafna Hirschfeld) will work in following months with Helen Koike to fix the issues
> in the TODO file of this driver: drivers/staging/media/rkisp1/TODO
> 
> On 15.08.19 15:17, Sakari Ailus wrote:
> > On Thu, Aug 15, 2019 at 11:24:22AM +0300, Sakari Ailus wrote:
> > > Hi Helen,
> > > 
> > > On Wed, Aug 14, 2019 at 09:58:05PM -0300, Helen Koike wrote:
> > > 
> > > ...
> > > 
> > > > > > +static int rkisp1_isp_sd_set_fmt(struct v4l2_subdev *sd,
> > > > > > +				 struct v4l2_subdev_pad_config *cfg,
> > > > > > +				 struct v4l2_subdev_format *fmt)
> > > > > > +{
> > > > > > +	struct rkisp1_device *isp_dev = sd_to_isp_dev(sd);
> > > > > > +	struct rkisp1_isp_subdev *isp_sd = &isp_dev->isp_sdev;
> > > > > > +	struct v4l2_mbus_framefmt *mf = &fmt->format;
> > > > > > +
> > > > > 
> > > > > Note that for sub-device nodes, the driver is itself responsible for
> > > > > serialising the access to its data structures.
> > > > 
> > > > But looking at subdev_do_ioctl_lock(), it seems that it serializes the
> > > > ioctl calls for subdevs, no? Or I'm misunderstanding something (which is
> > > > most probably) ?
> > > 
> > > Good question. I had missed this change --- subdev_do_ioctl_lock() is
> > > relatively new. But setting that lock is still not possible as the struct
> 
> 'the struct' - do you mean the 'vdev' struct allocated in
> 'v4l2_device_register_subdev_nodes' ?

Yes.

> 
> > > is allocated in the framework and the device is registered before the
> 
> > > driver gets hold of it. It's a good idea to provide the same serialisation
> > > for subdevs as well.
> > > 
> > > I'll get back to this later.
> > 
> > The main reason is actually that these ops are also called through the
> > sub-device kAPI, not only through the uAPI, and the locks are only taken
> > through the calls via uAPI.
> 
> actually it seems that although 'subdev_do_ioctl_lock' exit, I wonder if
> any subdevice uses that vdev->lock in  subdev_do_ioctl_lock.
> It is not initialized in v4l2_device_register_subdev_nodes where the vdev is allocated
> and I wonder if any subdevice actually initialize it somewhere else. For example it is null in this
> driver and in vimc.

It needs to be set before the video device is registered, so indeed, it
seems no driver can make use it.

> 
> > 
> > So adding the locks to uAPI calls alone would not address the issue.
> 
> What I can do is add a mutex to every struct of a subdevice and lock it
> at the beginning of each subdevice operation.
> Is this an acceptable solution?

Please do. That's what other drivers do at the moment as well.

-- 
Kind regards,

Sakari Ailus
