From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: use DIV_ROUND_UP macro for calculations.
Date: Mon, 13 Jan 2020 14:38:05 +0100
Message-ID: <789581379.5MvcqtHuSF@phil>
References: <20200109142057.10744-1-wambui.karugax@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200109142057.10744-1-wambui.karugax@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Wambui Karuga <wambui.karugax@gmail.com>
Cc: hjc@rock-chips.com, airlied@linux.ie, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 9. Januar 2020, 15:20:57 CET schrieb Wambui Karuga:
> Replace the open coded calculation with the more concise and readable
> DIV_ROUND_UP macro.
> 
> Signed-off-by: Wambui Karuga <wambui.karugax@gmail.com>

applied to drm-misc-next

Thanks
Heiko
