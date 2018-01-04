From: Ziyuan <xzy.xu@rock-chips.com>
Subject: Re: [PATCH 1/2] phy: rockchip-emmc: retry calpad busy trimming
Date: Thu, 4 Jan 2018 17:10:35 +0800
Message-ID: <5A4DEF8B.1080800@rock-chips.com>
References: <1514859720-151161-1-git-send-email-shawn.lin@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1514859720-151161-1-git-send-email-shawn.lin@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Shawn Lin <shawn.lin@rock-chips.com>, Kishon Vijay Abraham I <kishon@ti.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

hi ,

On 01/02/2018 10:21 AM, Shawn Lin wrote:
> It turns out that 5us isn't enough for all cases, so let's
> retry some more times to wait for caldone.
>
> Signed-off-by: Shawn Lin<shawn.lin@rock-chips.com>

Tested-by: Ziyuan Xu <xzy.xu@rock-chips.com>
On the Firefly RK3399 board.

Thanks.

-- 
Ziyuan Xu
