From: Kevin Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v1 1/2] dt-bindings: modify document of Rockchip power domains
Date: Fri, 18 Mar 2016 09:18:51 -0700
Message-ID: <7hshznsqs4.fsf@baylibre.com>
References: <1458285444-31129-1-git-send-email-zhangqing@rock-chips.com>
	<1458285444-31129-2-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1458285444-31129-2-git-send-email-zhangqing@rock-chips.com>
	(Elaine Zhang's message of "Fri, 18 Mar 2016 15:17:23 +0800")
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: heiko@sntech.de, xf@rock-chips.com, wxt@rock-chips.com, linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Elaine Zhang <zhangqing@rock-chips.com> writes:

> Add qos example for power domain which found on Rockchip SoCs.
> These qos register description in TRMs
> (rk3036, rk3228, rk3288, rk3366, rk3368, rk3399) looks the same.

This should describe in more detail what "qos" is in this context.  At
first glance, it's just a range of registers that lose context that need
to be saved/restored.

Kevin
