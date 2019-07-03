From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 1/2] media: uapi: Add VP8 stateless decoder API
Date: Wed, 3 Jul 2019 18:19:32 +0900
Message-ID: <CAAFQd5CG3LuT3tq40USFw4D7gkN_zP1j-YY+9JTqxoBjrGOwJg@mail.gmail.com>
References: <20190702170016.5210-1-ezequiel@collabora.com> <20190702170016.5210-2-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190702170016.5210-2-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Linux Media Mailing List <linux-media@vger.kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Alexandre Courbot <acourbot@chromium.org>, fbuergisser@chromium.org, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Pawel Osciak <posciak@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Ezequiel,

On Wed, Jul 3, 2019 at 2:00 AM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> From: Pawel Osciak <posciak@chromium.org>
>
> Add the parsed VP8 frame pixel format and controls, to be used
> with the new stateless decoder API for VP8 to provide parameters
> for accelerator (aka stateless) codecs.
>
> Signed-off-by: Pawel Osciak <posciak@chromium.org>
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> --
> Changes from v1:
> * Move 1-bit fields to flags in the respective structures.
> * Add padding fields to make all structures 8-byte aligned.
> * Reorder fields where needed to avoid padding as much as possible.
> * Fix documentation as needed.

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
