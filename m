From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: Re: [PATCH v2 7/9] media: MAINTAINERS: rkisp1: add path to
 dt-bindings
Date: Sat, 09 May 2020 09:51:49 -0300
Message-ID: <458fcdc1d934c12a81a3bd9728cdca9cd2ad874c.camel@collabora.com>
References: <20200403161538.1375908-1-helen.koike@collabora.com>
         <20200403161538.1375908-8-helen.koike@collabora.com>
         <9a95d227-9592-2c5c-fe6d-dff9b84f4292@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <9a95d227-9592-2c5c-fe6d-dff9b84f4292-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Hans Verkuil <hverkuil-cisco-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devel-gWbeCf7V1WCQmaza687I9mD2FQJk+8+b@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, mark.rutland-5wv7dgnIgG8@public.gmane.org, karthik.poduval-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Hans,

On Fri, 2020-04-17 at 09:18 +0200, Hans Verkuil wrote:
> On 03/04/2020 18:15, Helen Koike wrote:
> > The Rockchip ISP bindings was moved out of staging.
> > Update MAINTAINERS file with the new path.
> 
> Shouldn't there be a reference to Documentation/devicetree/bindings/phy/rockchip-mipi-dphy-rx0.yaml
> as well in MAINTAINERS?
> 

Indeed, and I can take care of that later. I was planning to move
this PHY driver out of staging, but was waiting on patches 4 and 5
of this series.

They seem fine, would you mind picking them?

Thanks!
Ezequiel

> Regards,
> 
> 	Hans
> 
> > Suggested-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Signed-off-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > ---
> > 
> > V2:
> > - This is a new patch in the series
> > ---
> >  MAINTAINERS | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index d66ac41ef5872..726044b84cf23 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -14303,6 +14303,7 @@ M:	Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> >  L:	linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> >  S:	Maintained
> >  F:	drivers/staging/media/rkisp1/
> > +F:	Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> >  
> >  ROCKCHIP RASTER 2D GRAPHIC ACCELERATION UNIT DRIVER
> >  M:	Jacob Chen <jacob-chen-fyOeoxGR3m/QT0dZR+AlfA@public.gmane.org>
> > 
> 
> 
