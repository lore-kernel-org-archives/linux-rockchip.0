From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 07/11] rockchip/vpu: Open-code media controller register
Date: Fri, 29 Mar 2019 16:43:04 +0900
Message-ID: <CAAFQd5CJbZ3EjhPBFdrHGuJeKdSr27we4Vy3U8J0dypcJkFPKg@mail.gmail.com>
References: <20190304192529.14200-1-ezequiel@collabora.com>
 <20190304192529.14200-8-ezequiel@collabora.com>
 <CAAFQd5AVgcj9vMsnE4yKm3uNnFPJ_1KpvX8t9bioVg4Cp2Wy=Q@mail.gmail.com>
 <81754d3621042384b272700d724336582ff1a94c.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <81754d3621042384b272700d724336582ff1a94c.camel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Mar 29, 2019 at 5:05 AM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> On Thu, 2019-03-28 at 16:11 +0900, Tomasz Figa wrote:
> > On Tue, Mar 5, 2019 at 4:27 AM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
[snip]
> > > + * @source_pad:                &struct media_pad with the source pad.
> > > + *                     Used only when the M2M device is registered via
> > > + *                     v4l2_m2m_unregister_media_controller().
> > > + * @sink:              &struct media_entity pointer with the sink entity
> > > + *                     Used only when the M2M device is registered via
> > > + *                     v4l2_m2m_unregister_media_controller().
> > > + * @sink_pad:          &struct media_pad with the sink pad.
> > > + *                     Used only when the M2M device is registered via
> > > + *                     v4l2_m2m_unregister_media_controller().
> > > + * @proc:              &struct media_entity pointer with the M2M device itself.
> > > + * @proc_pads:         &struct media_pad with the @proc pads.
> > > + *                     Used only when the M2M device is registered via
> > > + *                     v4l2_m2m_unregister_media_controller().
> > > + * @intf_devnode:      &struct media_intf devnode pointer with the interface
> > > + *                     with controls the M2M device.
> > > + */
> > > +struct rockchip_vpu_mc {
> > > +       struct media_entity     *source;
> > > +       struct media_pad        source_pad;
> > > +       struct media_entity     sink;
> > > +       struct media_pad        sink_pad;
> > > +       struct media_entity     proc;
> > > +       struct media_pad        proc_pads[2];
> > > +       struct media_intf_devnode *intf_devnode;
> > > +};
> > > +
> > >  /**
> > >   * struct rockchip_vpu_dev - driver data
> > >   * @v4l2_dev:          V4L2 device to register video devices for.
> > > @@ -78,6 +110,8 @@ enum rockchip_vpu_codec_mode {
> > >   * @mdev:              media device associated to this device.
> > >   * @vfd_enc:           Video device for encoder.
> > >   * @pdev:              Pointer to VPU platform device.
> > > + * @mc:                        Array of media controller topology structs
> >
> > Is it just me or there is something wrong with indentation here?
> >
>
> It seems to be fine here -- it's all tabs.

Hmm, never mind then.

> > > +
> > > +       return 0;
> > > +}
> > > +
> > > +static int rockchip_register_mc(struct media_device *mdev,
> > > +                               struct rockchip_vpu_mc *mc,
> > > +                               struct video_device *vdev,
> > > +                               int function)
> > > +{
> > > +       struct media_link *link;
> > > +       int ret;
> > > +
> > > +       /* Create the three encoder entities with their pads */
> > > +       mc->source = &vdev->entity;
> > > +       mc->source_pad.flags = MEDIA_PAD_FL_SOURCE;
> > > +       ret = rockchip_vpu_register_entity(mdev, mc->source,
> > > +                       "source", &mc->source_pad, 1, MEDIA_ENT_F_IO_V4L, vdev);
> > > +       if (ret)
> > > +               return ret;
> > > +
> > > +       mc->proc_pads[0].flags = MEDIA_PAD_FL_SINK;
> > > +       mc->proc_pads[1].flags = MEDIA_PAD_FL_SOURCE;
> > > +       ret = rockchip_vpu_register_entity(mdev, &mc->proc,
> > > +                       "proc", mc->proc_pads, 2, function, vdev);
> > > +       if (ret)
> > > +               goto err_rel_entity0;
> > > +
> > > +       mc->sink_pad.flags = MEDIA_PAD_FL_SINK;
> > > +       ret = rockchip_vpu_register_entity(mdev, &mc->sink,
> > > +                       "sink", &mc->sink_pad, 1, MEDIA_ENT_F_IO_V4L, vdev);
> > > +       if (ret)
> > > +               goto err_rel_entity1;
> > > +
> > > +       /* Connect the three entities */
> > > +       ret = media_create_pad_link(mc->source, 0, &mc->proc, 1,
> > > +                       MEDIA_LNK_FL_IMMUTABLE | MEDIA_LNK_FL_ENABLED);
> > > +       if (ret)
> > > +               goto err_rel_entity2;
> > > +
> > > +       ret = media_create_pad_link(&mc->proc, 0, &mc->sink, 0,
> > > +                       MEDIA_LNK_FL_IMMUTABLE | MEDIA_LNK_FL_ENABLED);
> > > +       if (ret)
> > > +               goto err_rm_links0;
> > > +
> > > +       /* Create video interface */
> > > +       mc->intf_devnode = media_devnode_create(mdev,
> > > +                       MEDIA_INTF_T_V4L_VIDEO, 0,
> > > +                       VIDEO_MAJOR, vdev->minor);
> > > +       if (!mc->intf_devnode) {
> > > +               ret = -ENOMEM;
> > > +               goto err_rm_links1;
> > > +       }
> > > +
> > > +       /* Connect the two DMA engines to the interface */
> > > +       link = media_create_intf_link(mc->source,
> > > +                       &mc->intf_devnode->intf,
> > > +                       MEDIA_LNK_FL_IMMUTABLE | MEDIA_LNK_FL_ENABLED);
> > > +       if (!link) {
> > > +               ret = -ENOMEM;
> > > +               goto err_rm_devnode;
> > > +       }
> > > +
> > > +       link = media_create_intf_link(&mc->sink,
> > > +                       &mc->intf_devnode->intf,
> > > +                       MEDIA_LNK_FL_IMMUTABLE | MEDIA_LNK_FL_ENABLED);
> > > +       if (!link) {
> > > +               ret = -ENOMEM;
> > > +               goto err_rm_intf_link;
> > > +       }
> > > +       return 0;
> > > +
> > > +err_rm_intf_link:
> > > +       media_remove_intf_links(&mc->intf_devnode->intf);
> >
> > Do we need to explicitly remove the links here? The entity removal
> > functions remove the links implicitly.
> >
>
> You mean the media_devnode_remove, right? In that case, seems you are right.

Yep. And also media_device_unregister_entity().

Best regards,
Tomasz
