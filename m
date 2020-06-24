From: Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v2 1/2] phy: rockchip: Fix return value of
 inno_dsidphy_probe()
Date: Wed, 24 Jun 2020 18:31:52 +0530
Message-ID: <20200624130152.GE2324254@vkoul-mobl>
References: <1590412138-13903-1-git-send-email-yangtiezhu@loongson.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1590412138-13903-1-git-send-email-yangtiezhu@loongson.cn>
Sender: linux-kernel-owner@vger.kernel.org
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: Heiko Stuebner <heiko@sntech.de>, Kishon Vijay Abraham I <kishon@ti.com>, Matthias Brugger <matthias.bgg@gmail.com>, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Xuefeng Li <lixuefeng@loongson.cn>
List-Id: linux-rockchip.vger.kernel.org

On 25-05-20, 21:08, Tiezhu Yang wrote:
> When call function devm_platform_ioremap_resource(), we should use IS_ERR()
> to check the return value and return PTR_ERR() if failed.

Applied both, thanks
-- 
~Vinod
