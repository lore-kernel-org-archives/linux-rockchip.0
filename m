From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: Remove unneeded semicolon
Date: Mon, 27 Apr 2020 21:18:38 +0200
Message-ID: <158801509401.47920.4814357124924437922.b4-ty@sntech.de>
References: <20200424074410.1070-1-zhengbin13@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200424074410.1070-1-zhengbin13@huawei.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: linux-arm-kernel@lists.infradead.org, airlied@linux.ie, daniel@ffwll.ch, linux-rockchip@lists.infradead.org, Zheng Bin <zhengbin13@huawei.com>, dri-devel@lists.freedesktop.org, hjc@rock-chips.com
Cc: Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

On Fri, 24 Apr 2020 15:44:10 +0800, Zheng Bin wrote:
> Fixes coccicheck warning:
> 
> drivers/gpu/drm/rockchip/cdn-dp-reg.c:604:2-3: Unneeded semicolon
> drivers/gpu/drm/rockchip/cdn-dp-reg.c:622:2-3: Unneeded semicolon
> drivers/gpu/drm/rockchip/cdn-dp-reg.c:703:2-3: Unneeded semicolon
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Zheng Bin <zhengbin13@huawei.com>
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: Remove unneeded semicolon
      commit: 611e22b1d9f61a8742c99433de9ff40795574c61

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
