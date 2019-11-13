From: Emil Velikov <emil.l.velikov@gmail.com>
Subject: Re: [PATCH v2 4/4] dt-bindings: display: add IMX MIPI DSI host
 controller doc
Date: Wed, 13 Nov 2019 16:06:05 +0000
Message-ID: <CACvgo506P+qNUg8vbpxY0_E7AAwJMHseM=Jwb3c2K8zo-v-2qQ@mail.gmail.com>
References: <20191106163031.808061-1-adrian.ratiu@collabora.com> <20191106163031.808061-5-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191106163031.808061-5-adrian.ratiu@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: LAKML <linux-arm-kernel@lists.infradead.org>, linux-stm32@st-md-mailman.stormreply.com, linux-rockchip <linux-rockchip@lists.infradead.org>, kernel@collabora.com, "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>, ML dri-devel <dri-devel@lists.freedesktop.org>, Neil Armstrong <narmstrong@baylibre.com>, Sjoerd Simons <sjoerd.simons@collabora.com>, Martyn Welch <martyn.welch@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

On Wed, 6 Nov 2019 at 16:31, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
Please drop this one. I'm not that experienced in DT to provide
meaningful review.

Actually, I've just noticed that respective maintainers/lists are not
CC'd on the series.
Please use the get_maintainer.pl script got get the correct info.

Personally, I read through the output, adding only relevant people as
CC in the commit message itself.

In particular, I don't think adding the "maintainer: DRM DRIVER" or
the "ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" are required. On the
other hand "DRM DRIVERS FOR FREESCALE IMX" and "OPEN FIRMWARE AND
FLATTENED DEVICE TREE BINDINGS" seems pretty accurate for what you're
doing here.

HTH
Emil
