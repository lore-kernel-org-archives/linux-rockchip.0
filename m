From: Minas Harutyunyan <Minas.Harutyunyan@synopsys.com>
Subject: Re: [PATCH v5 0/2] usb: dwc2: fix isoc split in transfer issue
Date: Tue, 29 May 2018 14:44:44 +0000
Message-ID: <410670D7E743164D87FA6160E7907A56013135A58D@am04wembxa.internal.synopsys.com>
References: <1526031992-16565-1-git-send-email-william.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: William Wu <william.wu@rock-chips.com>, "Minas.Harutyunyan@synopsys.com" <Minas.Harutyunyan@synopsys.com>, "felipe.balbi@linux.intel.com" <felipe.balbi@linux.intel.com>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Cc: "sergei.shtylyov@cogentembedded.com" <sergei.shtylyov@cogentembedded.com>, "heiko@sntech.de" <heiko@sntech.de>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "frank.wang@rock-chips.com" <frank.wang@rock-chips.com>, "huangtao@rock-chips.com" <huangtao@rock-chips.com>, "dianders@google.com" <dianders@google.com>, "daniel.meng@rock-chips.com" <daniel.meng@rock-chips.com>, "John.Youn@synopsys.com" <John.Youn@synopsys.com>, "wzz@rock-chips.com" <wzz@rock-chips.com>, "zsq@rock-chips.com" <zsq@rock-chips.com>, "Allen.Hsu@quantatw.com" <Allen.Hsu@quantatw.com>, "StanTsui@AOPEN.com" <StanTsui@AOPEN.com>, Spruce.Wu@qua
List-Id: linux-rockchip.vger.kernel.org

Acked-by Minas Harutyunyan hminas@synopsys.com>=0A=
=0A=
On 5/11/2018 1:48 PM, William Wu wrote:=0A=
> This patch fix dma unaligned problem and data lost problem for=0A=
> isoc split in transfer.=0A=
> =0A=
> Test on rk3288 platform, use an usb hs Hub (GL852G-12) and an usb=0A=
> fs audio device (Plantronics headset) to capture and playback.=0A=
> =0A=
> William Wu (2):=0A=
>    usb: dwc2: alloc dma aligned buffer for isoc split in=0A=
>    usb: dwc2: fix isoc split in transfer with no data=0A=
> =0A=
>   drivers/usb/dwc2/core.h      |  3 ++=0A=
>   drivers/usb/dwc2/hcd.c       | 89 +++++++++++++++++++++++++++++++++++++=
++++---=0A=
>   drivers/usb/dwc2/hcd.h       |  8 ++++=0A=
>   drivers/usb/dwc2/hcd_intr.c  | 11 +++++-=0A=
>   drivers/usb/dwc2/hcd_queue.c |  3 ++=0A=
>   5 files changed, 107 insertions(+), 7 deletions(-)=0A=
> =0A=
=0A=
