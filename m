From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [RESEND PATCH v2 0/2]  rockchip: power-domain: support qos save and restore
Date: Tue, 19 Apr 2016 10:41:45 +0200
Message-ID: <3149623.GO2tq37NbT@diego>
References: <1460614820-18865-1-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1460614820-18865-1-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: khilman@baylibre.com, xf@rock-chips.com, wxt@rock-chips.com, linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 14. April 2016, 14:20:18 schrieb Elaine Zhang:
> add qos document in dt-bingings.
> modify power domain driver to support qos save and restore.
> 
> Changes in v2:
> [PATCH V2 1/2]: fix up the commit message.
> [PATCH V2 2/2]: add some error handling.
> 		fix up the define and request space for qos_regmap and qos_save_regs.
> 
> Elaine Zhang (2):
>   dt-bindings: modify document of Rockchip power domains
>   rockchip: power-domain: support qos save and restore

applied both to my drivers branch for 4.7


Thanks
Heiko
