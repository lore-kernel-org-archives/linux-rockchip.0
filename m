From: Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v3 3/4] drm: imx: Add i.MX 6 MIPI DSI host driver
Date: Tue, 19 Nov 2019 15:21:14 -0300
Message-ID: <CAOMZO5C5gpW6KF9d-79wd=-7ZGAbXQLAXw3kLi+_5DBW_DYrTw@mail.gmail.com>
References: <20191118152518.3374263-1-adrian.ratiu@collabora.com> <20191118152518.3374263-4-adrian.ratiu@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191118152518.3374263-4-adrian.ratiu@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, linux-stm32@st-md-mailman.stormreply.com, linux-rockchip@lists.infradead.org, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Martyn Welch <martyn.welch@collabora.com>, Sjoerd Simons <sjoerd.simons@collabora.com>, linux-kernel <linux-kernel@vger.kernel.org>, DRI mailing list <dri-devel@lists.freedesktop.org>, NXP Linux Team <linux-imx@nxp.com>, kernel@collabora.com, Emil Velikov <emil.velikov@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Adrian,

On Mon, Nov 18, 2019 at 12:25 PM Adrian Ratiu
<adrian.ratiu@collabora.com> wrote:

Some nitpicks:

> +
> +config DRM_IMX_MIPI_DSI
> +       tristate "Freescale i.MX DRM MIPI DSI"

This text seems too generic as there are i.MX SoCs that use different
MIPI DSI IP.

Maybe "Freescale i.MX6 DRM MIPI DSI" instead?

> +module_platform_driver(imx_mipi_dsi_driver);
> +
> +MODULE_DESCRIPTION("i.MX MIPI DSI host controller driver");

i.MX6 MIPI DSI, please.
