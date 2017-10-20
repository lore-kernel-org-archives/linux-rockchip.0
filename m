From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v6 06/10] drm/rockchip: dw-mipi-dsi: Fix error handling
 path
Date: Fri, 20 Oct 2017 09:50:01 +0800
Message-ID: <fc82d57d-5c41-0615-b391-39b20bc41024@rock-chips.com>
References: <20171019034812.13768-1-jeffy.chen@rock-chips.com>
 <20171019034812.13768-7-jeffy.chen@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171019034812.13768-7-jeffy.chen@rock-chips.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Jeffy Chen <jeffy.chen@rock-chips.com>, linux-kernel@vger.kernel.org
Cc: briannorris@chromium.org, seanpaul@chromium.org, dianders@chromium.org, heiko@sntech.de, tfiga@chromium.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2017年10月19日 11:48, Jeffy Chen wrote:
> Add missing pm_runtime_disable() in bind()'s error handling path.
>
> Also cleanup encoder & connector in unbind().
>
> Fixes: 80a9a059d4e4 ("drm/rockchip/dsi: add dw-mipi power domain support")
> Signed-off-by: Jeffy Chen<jeffy.chen@rock-chips.com>

Looks good for me
Acked-by: Mark Yao <mark.yao@rock-chips.com>

Mark
