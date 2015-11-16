From: Julius Werner <jwerner@chromium.org>
Subject: Re: [PATCH v2 1/2] usb: dwc2: host: Fix missing device insertions
Date: Mon, 16 Nov 2015 12:26:26 -0800
Message-ID: <CAODwPW-O=ezdEWck1n4358ErK_6O5ksCeGY=KZi==f33_i3B9Q@mail.gmail.com>
References: <CAD=FV=XOO1XsHWSgqcvEAPAqhB2Ud5zcydc13k-pJ23L0rTW0Q@mail.gmail.com>
	<Pine.LNX.4.44L0.1511161425540.1938-100000@iolanthe.rowland.org>
	<CAD=FV=VmV8K=ytmy_1fviG-9mxyT3aoSyX7nOg2KKXT_05h_TA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAD=FV=VmV8K=ytmy_1fviG-9mxyT3aoSyX7nOg2KKXT_05h_TA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Doug Anderson <dianders@chromium.org>
Cc: Alan Stern <stern@rowland.harvard.edu>, Felipe Balbi <balbi@ti.com>, John Youn <John.Youn@synopsys.com>, Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Another point to note, which I think is what prevents the flow Alan
suggested from working, is this little snippet in DWC2's hub_control
GetPortStatus callback:

                if (!hsotg->flags.b.port_connect_status) {
                        /*
                         * The port is disconnected, which means the core is
                         * either in device mode or it soon will be.
Just
                         * return 0's for the remainder of the port status
                         * since the port register can't be read if the core
                         * is in device mode.
                         */
                        *(__le32 *)buf = cpu_to_le32(port_status);
                        break;
                }

This is before it actually checks the register state of the port. So
it relies on dwc2_hcd_connect() and dwc2_hcd_disconnect() to be called
in the right order to give the correct answer for
USB_PORT_STAT_CONNECTION. This could maybe be improved but I don't
know what kind of weird interactions with device mode operation made
that snippet necessary in the first place.
