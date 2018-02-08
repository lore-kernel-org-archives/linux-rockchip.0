From: Philippe Ombredanne <pombredanne@nexb.com>
Subject: Re: [PATCH v2] drm/bridge/synopsys: dsi: Adopt SPDX identifiers
Date: Thu, 8 Feb 2018 16:14:28 +0100
Message-ID: <CAOFm3uFQYjTZxX7Ozf7CJMDof=pretbk4cKGFf0BtwWh0SXrfw@mail.gmail.com>
References: <20180208145805.24762-1-philippe.cornu@st.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20180208145805.24762-1-philippe.cornu@st.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Philippe Cornu <philippe.cornu@st.com>
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, Archit Taneja <architt@codeaurora.org>, Heiko Stubner <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, David Airlie <airlied@linux.ie>, Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>, Yannick Fertre <yannick.fertre@st.com>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Vincent Abriou <vincent.abriou@st.com>, Bhumika Goyal <bhumirks@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Feb 8, 2018 at 3:58 PM, Philippe Cornu <philippe.cornu@st.com> wrote:
> Add SPDX identifiers to the Synopsys DesignWare MIPI DSI
> host controller driver.
>
> Signed-off-by: Philippe Cornu <philippe.cornu@st.com>
> ---
> Changes in v2: Update to "GPL-2.0+" following comments from Laurent
> Pinchart, Benjamin Gaignard & Philippe Ombredanne.
>
>  drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> index 7bac101c285c..99f0e4f51716 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-mipi-dsi.c
> @@ -1,12 +1,8 @@
> +// SPDX-License-Identifier: GPL-2.0+
>  /*
>   * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
>   * Copyright (C) STMicroelectronics SA 2017
>   *
> - * This program is free software; you can redistribute it and/or modify
> - * it under the terms of the GNU General Public License as published by
> - * the Free Software Foundation; either version 2 of the License, or
> - * (at your option) any later version.
> - *
>   * Modified by Philippe Cornu <philippe.cornu@st.com>
>   * This generic Synopsys DesignWare MIPI DSI host driver is based on the
>   * Rockchip version from rockchip/dw-mipi-dsi.c with phy & bridge APIs.
> --
> 2.15.1
>

Thank you.

Acked-by: Philippe Ombredanne <pombredanne@nexB.com>
