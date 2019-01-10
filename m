From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v4] drm/rockchip: update cursors asynchronously through atomic.
Date: Thu, 10 Jan 2019 23:58:20 +0100
Message-ID: <2812027.QDNv8WpI9g@phil>
References: <20181205123310.7965-1-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181205123310.7965-1-helen.koike@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Helen Koike <helen.koike@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Gustavo Padovan <gustavo.padovan@collabora.com>, Tomasz Figa <tfiga@chromium.org>, Sean Paul <seanpaul@google.com>, kernel@collabora.com, =?ISO-8859-1?Q?St=E9phane?= Marchesin <marcheu@google.com>
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 5. Dezember 2018, 13:33:10 CET schrieb Helen Koike:
> From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> 
> Add support to async updates of cursors by using the new atomic
> interface for that.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> [updated for upstream]
> Signed-off-by: Helen Koike <helen.koike@collabora.com>

applied to drm-misc-next after testing cursor operation on multiple
machines.

Thanks
Heiko
