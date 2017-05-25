From: Frank Wang <frank.wang@rock-chips.com>
Subject: Re: [PATCH 0/4] fix some issues for Rockchip usb2-phy and add rk322x
 SoCs' support
Date: Thu, 25 May 2017 15:25:26 +0800
Message-ID: <6d09be6f-5138-487e-9f42-5e9b372b8eae@rock-chips.com>
References: <1495078982-2555-1-git-send-email-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1495078982-2555-1-git-send-email-frank.wang@rock-chips.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, kishon@ti.com, william.wu@rock-chips.com
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, charles.chen@rock-chips.com, cody.xie@rock-chips.com, kevan.lan@rock-chips.com, huangtao@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko and Kishon,

Friendly ping... :-)


On 2017/5/18 11:42, Frank Wang wrote:
> These series of patches fix some issues for rockchip usb2-phy and amend
> usb2-phy framework to support one phy which comprises with two host-ports.
>
> In addition, this change also add rk322x usb2-phy support.
>
> Frank Wang (1):
>    phy: rockchip-inno-usb2: add support of usb2-phy for rk322x SoCs
>
> William Wu (3):
>    phy: rockchip-inno-usb2: add a delay after phy resume
>    phy: rockchip-inno-usb2: increase otg sm work first schedule time
>    phy: rockchip-inno-usb2: add one phy comprises with two host-ports
>      support
>
>   .../bindings/phy/phy-rockchip-inno-usb2.txt        |  1 +
>   drivers/phy/phy-rockchip-inno-usb2.c               | 74 ++++++++++++++++++++--
>   2 files changed, 71 insertions(+), 4 deletions(-)
>

BR.
Frank
