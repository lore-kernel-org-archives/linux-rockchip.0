From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 1/1] drm/rockchip: fix integer type used for storing dp data rate
Date: Mon, 13 Jan 2020 14:36:42 +0100
Message-ID: <4097172.Yl1PJM63nH@phil>
References: <20200109073129.378507-1-t.schramm@manjaro.org> <20200109073129.378507-2-t.schramm@manjaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200109073129.378507-2-t.schramm@manjaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Tobias Schramm <t.schramm@manjaro.org>
Cc: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 9. Januar 2020, 08:31:29 CET schrieb Tobias Schramm:
> commmit 2589c4025f13 ("drm/rockchip: Avoid drm_dp_link helpers") changes
> the type of variables used to store the display port data rate and
> number of lanes to u8. However u8 is not sufficient to store the link
> data rate of the display port.
> This commit reverts the type of data rate to unsigned int.
> 
> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>

applied to drm-misc-fixes

Thanks
Heiko
