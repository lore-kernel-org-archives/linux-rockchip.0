From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v9 1/5] drm/rockchip: dw-mipi-dsi: Fix connector and encoder cleanup.
Date: Thu, 08 Mar 2018 17:38:20 +0100
Message-ID: <6137181.UL6MkM7i5q@diego>
References: <20180302175757.28192-1-enric.balletbo@collabora.com> <20180302175757.28192-2-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180302175757.28192-2-enric.balletbo@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, Andrzej Hajda <a.hajda@samsung.com>, linux-rockchip@lists.infradead.org, Archit Taneja <architt@codeaurora.org>, linux-kernel@vger.kernel.org, Russell King <rmk+kernel@armlinux.org.uk>, Neil Armstrong <narmstrong@baylibre.com>, dri-devel@lists.freedesktop.org, Jose Abreu <Jose.Abreu@synopsys.com>, Hans Verkuil <hverkuil@xs4all.nl>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jernej Skrabec <jernej.skrabec@siol.net>, linux-arm-kernel@lists.infradead.org, David Airlie <airlied@linux.ie>, Jeffy Chen <jeffy.chen@rock-chips.com>, kernel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 2. März 2018, 18:57:53 CET schrieb Enric Balletbo i Serra:
> From: Jeffy Chen <jeffy.chen@rock-chips.com>
> 
> In bind()'s error handling path call destroy functions instead of
> cleanup functions for encoder and connector and reorder to match how is
> called in bind().
> 
> In unbind() call the connector and encoder destroy functions.
> 
> Signed-off-by: Jeffy Chen <jeffy.chen@rock-chips.com>
> Signed-off-by: Thierry Escande <thierry.escande@collabora.com>
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

applied to drm-misc-next

Thanks
Heiko
