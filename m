From: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [RFC v1 0/1] drm: lima: devfreq and cooling device support
Date: Mon, 16 Dec 2019 11:03:25 +0800
Message-ID: <CAGb2v6528SUOyefhsnjEwG7vfud3+Ce+_=CM3cM4vKiRcmNXAA@mail.gmail.com>
References: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>, lima@lists.freedesktop.org, David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, steven.price@arm.com, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, yuq825@gmail.com, "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>, alyssa.rosenzweig@collabora.com
List-Id: linux-rockchip.vger.kernel.org

On Mon, Dec 16, 2019 at 5:12 AM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> This is my attempt at adding devfreq (and cooling device) support to
> the lima driver.
> I didn't have much time to do in-depth testing. However, I'm sending
> this out early because there are many SoCs with Mali-400/450 GPU so
> I want to avoid duplicating the work with somebody else.
>
> The code is derived from panfrost_devfreq.c which is why I kept the
> Collabora copyright in lima_devfreq.c. Please let me know if I should
> drop this or how I can make it more clear that I "borrowed" the code
> from panfrost.

I think it's more common to have separate copyright notices. First you
have yours, then a second paragraph stating the code is derived from
foo, and then attach the copyright statements for foo.

ChenYu

> I am seeking comments in two general areas:
> - regarding the integration into the existing lima code
> - for the actual devfreq code (I had to adapt the panfrost code
>   slightly, because lima uses a bus and a GPU/core clock)
>
> My own TODO list includes "more" testing on various Amlogic SoCs.
> So far I have tested this on Meson8b and Meson8m2 (which both have a
> GPU OPP table defined). However, I still need to test this on a GXL
> board (which is currently missing the GPU OPP table).
>
>
> Martin Blumenstingl (1):
>   drm/lima: Add optional devfreq support
>
>  drivers/gpu/drm/lima/Kconfig        |   1 +
>  drivers/gpu/drm/lima/Makefile       |   3 +-
>  drivers/gpu/drm/lima/lima_devfreq.c | 162 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/lima/lima_devfreq.h |  15 +++
>  drivers/gpu/drm/lima/lima_device.c  |   4 +
>  drivers/gpu/drm/lima/lima_device.h  |  11 ++
>  drivers/gpu/drm/lima/lima_drv.c     |  14 ++-
>  drivers/gpu/drm/lima/lima_sched.c   |   7 ++
>  drivers/gpu/drm/lima/lima_sched.h   |   3 +
>  9 files changed, 217 insertions(+), 3 deletions(-)
>  create mode 100644 drivers/gpu/drm/lima/lima_devfreq.c
>  create mode 100644 drivers/gpu/drm/lima/lima_devfreq.h
>
> --
> 2.24.1
>
