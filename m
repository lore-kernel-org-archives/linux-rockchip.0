From: Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [PATCH v4 00/21] Add MPEG-2 decoding to Rockchip VPU
Date: Thu, 25 Apr 2019 10:27:07 +0200
Message-ID: <b6e8aaf5-caaa-e022-414e-e6715f168492@xs4all.nl>
References: <20190425071242.18315-1-boris.brezillon@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190425071242.18315-1-boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
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
To: Boris Brezillon <boris.brezillon-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Sakari Ailus <sakari.ailus-X3B1VOXEql0@public.gmane.org>, linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Nicolas Dufresne <nicolas-dDhyB4GVkw9AFePFGvp55w@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Compile tested this series and I get the following sparse/smatch wanings:


sparse: WARNINGS
SPARSE:/home/hans/work/build/media-git/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
/home/hans/work/build/media-git/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c:38:6:  warning: symbol 'rockchip_vpu_get_ctrl' was not
declared. Should it be static?
SPARSE:/home/hans/work/build/media-git/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
/home/hans/work/build/media-git/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c:46:12:  warning: symbol 'rockchip_vpu_get_ref' was not
declared. Should it be static?
/home/hans/work/build/media-git/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c:38:7: warning: no previous prototype for
'rockchip_vpu_get_ctrl' [-Wmissing-prototypes]
/home/hans/work/build/media-git/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c:46:12: warning: no previous prototype for
'rockchip_vpu_get_ref' [-Wmissing-prototypes]
/home/hans/work/build/media-git/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c:298:6: warning: variable 'j' set but not used
[-Wunused-but-set-variable]


smatch: WARNINGS
/home/hans/work/build/media-git/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c:38:7: warning: no previous prototype for
'rockchip_vpu_get_ctrl' [-Wmissing-prototypes]
/home/hans/work/build/media-git/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c:46:12: warning: no previous prototype for
'rockchip_vpu_get_ref' [-Wmissing-prototypes]
/home/hans/work/build/media-git/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c:298:6: warning: variable 'j' set but not used
[-Wunused-but-set-variable]

Looks trivial to fix.

Regards,

	Hans
