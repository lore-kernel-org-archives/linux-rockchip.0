From: Marc Zyngier <marc.zyngier@arm.com>
Subject: Re: [PATCH v2] drm/rockchip: shutdown drm subsystem on shutdown
Date: Wed, 17 Apr 2019 11:05:10 +0100
Message-ID: <08ff82bb-990a-1706-330f-a94c1c9714ad@arm.com>
References: <20190402113753.10118-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20190402113753.10118-1-heiko@sntech.de>
Content-Language: en-US
Sender: stable-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, hjc@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Vicente Bergas <vicencb@gmail.com>, Jeffy Chen <jeffy.chen@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>, Brian Norris <briannorris@chromium.org>, Doug Anderson <dianders@chromium.org>, stable@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 02/04/2019 12:37, Heiko Stuebner wrote:
> From: Vicente Bergas <vicencb@gmail.com>
> 
> As explained by Robin Murphy:
>> the IOMMU shutdown disables paging, so if the VOP is still
>> scanning out then that will result in whatever IOVAs it was using now going
>> straight out onto the bus as physical addresses.
> 
> We had a more radical approach before in commit
> 7f3ef5dedb14 ("drm/rockchip: Allow driver to be shutdown on reboot/kexec")
> but that resulted in new warnings and oopses on shutdown on rk3399
> chromeos devices.
> 
> So second try is resurrecting Vicentes shutdown change which should
> achieve the same result but in a less drastic way.
> 
> Fixes: 63238173b2fa ("Revert drm/rockchip: Allow driver to be shutdown on reboot/kexec")
> Cc: Jeffy Chen <jeffy.chen@rock-chips.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: Brian Norris <briannorris@chromium.org>
> Cc: Doug Anderson <dianders@chromium.org>
> Cc: stable@vger.kernel.org
> Suggested-by: JeffyChen <jeffy.chen@rock-chips.com>
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> [adapted commit message to explain the history]
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Sorry it took so long to test this. I've just given it a go on kevin,
and managed to kexec into a secondary kernel. So FWIW:

Acked-by: Marc Zyngier <marc.zyngier@arm.com>

	M.
-- 
Jazz is not dead. It just smells funny...
