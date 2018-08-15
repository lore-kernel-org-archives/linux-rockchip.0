From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/4] phy: rockchip-inno-usb2: fix misspelling and kernel-doc documentation.
Date: Wed, 15 Aug 2018 12:31:21 +0200
Message-ID: <2908229.jFki8unlfB@phil>
References: <20180815095934.11205-1-enric.balletbo@collabora.com> <20180815095934.11205-2-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180815095934.11205-2-enric.balletbo@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc: linux-kernel@vger.kernel.org, amstan@chromium.org, groeck@google.com, kieran.bingham@ideasonboard.com, kernel@collabora.com, bleung@chromium.org, Kishon Vijay Abraham I <kishon@ti.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 15. August 2018, 11:59:31 CEST schrieb Enric Balletbo i Serra:
> Fix the typo flase -> false and clean up the kernel-doc documentation in
> phy-rockchip-inno.usb2.c and fix the following warnings when documentation
> is built.
> 
>   :58: warning: missing initial short description
>   :69: warning: cannot understand function prototype: 'enum usb_chg_state '
>   :97: warning: missing initial short description
>   :136: warning: cannot understand function prototype: 'struct rockchip_usb2phy_port_cfg '
>   :157: warning: cannot understand function prototype: 'struct rockchip_usb2phy_cfg '
>   :163: warning: Function parameter or member 'port_cfgs' not described in 'rockchip_usb2phy_cfg'
>   :187: warning: cannot understand function prototype: 'struct rockchip_usb2phy_port '
>   :204: warning: Function parameter or member 'port_cfg' not described in 'rockchip_usb2phy_port'
>   :207: warning: missing initial short description
>   :234: warning: Function parameter or member 'dev' not described in 'rockchip_usb2phy'
>   :234: warning: Function parameter or member 'clk480m_hw' not described in 'rockchip_usb2phy'
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
