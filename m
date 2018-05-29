From: Gevorg Sahakyan <Gevorg.Sahakyan@synopsys.com>
Subject: Re: [PATCH v5 0/2] usb: dwc2: fix isoc split in transfer issue
Date: Tue, 29 May 2018 14:30:06 +0000
Message-ID: <3A9D5F5B1BA2034E826C50459B71BE044CB587EA@am04wembxa.internal.synopsys.com>
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

On 5/11/2018 1:48 PM, William Wu wrote:=0A=
> This patch fix dma unaligned problem and data lost problem for=0A=
> isoc split in transfer.=0A=
>=0A=
> Test on rk3288 platform, use an usb hs Hub (GL852G-12) and an usb=0A=
> fs audio device (Plantronics headset) to capture and playback.=0A=
>=0A=
> William Wu (2):=0A=
>   usb: dwc2: alloc dma aligned buffer for isoc split in=0A=
>   usb: dwc2: fix isoc split in transfer with no data=0A=
>=0A=
On HAPS-DX7 with HS HUB Belkin(050d:0233) using internal USB testing tool.=
=0A=
Tested-by: Gevorg Sahakyan <sahakyan@synopsys.com>=0A=
