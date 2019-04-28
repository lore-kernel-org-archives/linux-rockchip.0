From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v3] ARM: rockchip: fix a leaked reference by adding missing of_node_put
Date: Sun, 28 Apr 2019 12:46:13 +0200
Message-ID: <5474132.bFrQNdgMoI@phil>
References: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
Sender: linux-kernel-owner@vger.kernel.org
To: Wen Yang <wen.yang99@zte.com.cn>
Cc: linux-kernel@vger.kernel.org, wang.yi59@zte.com.cn, Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 26. April 2019, 09:08:08 CEST schrieb Wen Yang:
> The call to of_get_next_child returns a node pointer with refcount
> incremented thus it must be explicitly decremented after the last
> usage.
> 
> Detected by coccinelle with the following warnings:
> ./arch/arm/mach-rockchip/pm.c:269:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 259, but without a corresponding object release within this function.
> ./arch/arm/mach-rockchip/pm.c:275:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 259, but without a corresponding object release within this function
> ./arch/arm/mach-rockchip/platsmp.c:281:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 272, but without a corresponding object release within this function.
> ./arch/arm/mach-rockchip/platsmp.c:285:2-8: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 272, but without a corresponding object release within this function.
> ./arch/arm/mach-rockchip/platsmp.c:289:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 272, but without a corresponding object release within this function.
> ./arch/arm/mach-rockchip/platsmp.c:303:3-9: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 294, but without a corresponding object release within this function.
> 
> Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> Suggested-by: Heiko Stuebner <heiko@sntech.de>
> Cc: Russell King <linux@armlinux.org.uk>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

queued for 5.3 (too late for 5.2)

Thanks
Heiko
