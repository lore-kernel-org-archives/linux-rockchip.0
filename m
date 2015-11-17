From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Mon, 16 Nov 2015 18:37:12 -0800
Message-ID: <CAD=FV=Ug2Fu3Ya0qrsF13Y4-wyounpU54n1v_gOuzkmi3dsQPQ@mail.gmail.com>
References: <CAD=FV=VmV8K=ytmy_1fviG-9mxyT3aoSyX7nOg2KKXT_05h_TA@mail.gmail.com>
	<Pine.LNX.4.44L0.1511161523290.1938-100000@iolanthe.rowland.org>
	<CAD=FV=UA1oGQw0+582vBD=vDgTVFaWxxgvfGNt+kCX9YTkve_g@mail.gmail.com>
	<2B3535C5ECE8B5419E3ECBE30077290901DC3D1B42@US01WEMBX2.internal.synopsys.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2B3535C5ECE8B5419E3ECBE30077290901DC3D1B42@US01WEMBX2.internal.synopsys.com>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, Felipe Balbi <balbi@ti.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

John,

On Mon, Nov 16, 2015 at 5:53 PM, John Youn <John.Youn@synopsys.com> wrote:
> Yup it's only available in host mode. The same with all the
> host-mode registers. You will get a ModeMis interrupt if you
> try to access them in device mode.
>
> I gave my test-by on the v2 patches earlier, no problems here.

Yup, I appreciate it!  I just wanted to confirm that you tested this
particular case in gadget mode.  ;)
