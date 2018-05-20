From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v5 0/2] usb: dwc2: fix isoc split in transfer issue
Date: Sun, 20 May 2018 12:38:24 +0200
Message-ID: <2379874.hUfS9Aq0OQ@phil>
References: <1526031992-16565-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1526031992-16565-1-git-send-email-william.wu@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: William Wu <william.wu@rock-chips.com>
Cc: hminas@synopsys.com, felipe.balbi@linux.intel.com, gregkh@linuxfoundation.org, sergei.shtylyov@cogentembedded.com, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org, frank.wang@rock-chips.com, huangtao@rock-chips.com, dianders@google.com, daniel.meng@rock-chips.com, John.Youn@synopsys.com, wzz@rock-chips.com, zsq@rock-chips.com, Allen.Hsu@quantatw.com, StanTsui@aopen.com, Spruce.Wu@quantatw.com, Martin.Tsai@quantatw.com, Kevin.Shai@quantatw.com, Mon-Jer.Wu@quantatw.com, Claud.Chang@quantatw.com, San.Lin@quantatw.com, Ren.Kuo@quantatw.com, davidhtwang@aopen.com, fonglin@aopen.com, stevencheng@aopen.com, tomchen@aopen.com, donchang@aopen.com, milesschofield@aopen.com
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 11. Mai 2018, 11:46:30 CEST schrieb William Wu:
> This patch fix dma unaligned problem and data lost problem for
> isoc split in transfer.
> 
> Test on rk3288 platform, use an usb hs Hub (GL852G-12) and an usb
> fs audio device (Plantronics headset) to capture and playback.
> 
> William Wu (2):
>   usb: dwc2: alloc dma aligned buffer for isoc split in
>   usb: dwc2: fix isoc split in transfer with no data

On rk3036, rk3188, rk3288 and rk3328
Tested-by: Heiko Stuebner <heiko@sntech.de>
