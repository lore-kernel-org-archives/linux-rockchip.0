From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/2] phy: rockchip: Fix return value of inno_dsidphy_probe()
Date: Mon, 25 May 2020 12:43:43 +0200
Message-ID: <2126910.YdF4jQdSac@diego>
References: <1590379739-18729-1-git-send-email-yangtiezhu@loongson.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1590379739-18729-1-git-send-email-yangtiezhu@loongson.cn>
Sender: linux-kernel-owner@vger.kernel.org
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Xuefeng Li <lixuefeng@loongson.cn>
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 25. Mai 2020, 06:08:58 CEST schrieb Tiezhu Yang:
> When call function devm_platform_ioremap_resource(), we should use IS_ERR()
> to check the return value and return PTR_ERR() if failed.
> 
> Fixes: b7535a3bc0ba ("phy/rockchip: Add support for Innosilicon MIPI/LVDS/TTL PHY")
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
