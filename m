From: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v3 3/3] media: vidioc-enum-fmt.rst: clarify format
 preference
Date: Thu, 14 Nov 2019 10:32:55 +0100
Message-ID: <20191114103255.0f14ce70@collabora.com>
References: <20191113175603.24742-1-ezequiel@collabora.com>
        <20191113175603.24742-4-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191113175603.24742-4-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: linux-media@vger.kernel.org, kernel@collabora.com, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Chris Healy <cphealy@gmail.com>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 13 Nov 2019 14:56:03 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> It has been decided to use the ENUM_FMT index value
> as a hint for driver preference. This is defined purposedly
> in a very liberal way, letting drivers define what "preference"
> means.
> 
> For instance, the Hantro VPU driver indicates additional
> processing to output a given format, and thus implicates
> more CPU usage, which is enumerated after native (non-processed)
> formats.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Reviewed-by: Boris Brezillon <boris.brezillon@collabora.com>

> ---
>  Documentation/media/uapi/v4l/vidioc-enum-fmt.rst | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst b/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
> index 399ef1062bac..8ca6ab701e4a 100644
> --- a/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
> +++ b/Documentation/media/uapi/v4l/vidioc-enum-fmt.rst
> @@ -44,7 +44,9 @@ To enumerate image formats applications initialize the ``type`` and
>  the :ref:`VIDIOC_ENUM_FMT` ioctl with a pointer to this structure. Drivers
>  fill the rest of the structure or return an ``EINVAL`` error code. All
>  formats are enumerable by beginning at index zero and incrementing by
> -one until ``EINVAL`` is returned.
> +one until ``EINVAL`` is returned. If applicable, drivers shall return
> +formats in preference order, where preferred formats are returned before
> +(that is, with lower ``index`` value) less-preferred formats.
>  
>  .. note::
>  
