From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Subject: Re: [Bug ?] usb :typec :tcpm :fusb302
Date: Mon, 20 Jan 2020 13:58:28 +0200
Message-ID: <20200120115828.GC32175@kuha.fi.intel.com>
References: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>, Guenter Roeck <linux@roeck-us.net>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner <heiko@sntech.de>, Linux USB Mailing List <linux-usb@vger.kernel.org>, Linux Kernel <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Markus,

On Thu, Jan 09, 2020 at 05:29:07PM +0100, Markus Reichl wrote:
> Hi,
> 
> I'm working with a ROC-RK3399-PC arm64 board from firefly, circuit sheet [1].
> The board is powered from an USB-C type connector via an FUSB302 PD controller.
> With measured 15W+ power consumption it should use higher voltage PD modes than
> the standard 5V USB-C mode.
> 
> When I add the related connector node in DTS [2] the FUSB302 initializes
> the right PD mode (e.g. 15V/3A).
> 
> But during initialisation the PD is switched off shortly and the board has a blackout.
> When I inject a backup supply voltage behind the FUSB302 (e.g. at SYS_12V line) during boot
> I can remove the backup after succesfull setting up the PD and the board will run fine.
> 
> Is it possible to change the behaviour of the fusb302 driver to not power down the PD supply
> during init?

I guess it's also possible that the problem is with tcpm.c instead of
fusb302.c. tcpm.c provides the USB PD state matchines. Guenter! Can
you take a look at this?

Both tcpm.c and fusb302.c create debugfs entries that have a more
detailed log about things that are happening. Can you check what you
have in those (when you boot with the mains cable plugged it)?

        % mount debugfs -t debugfs /sys/kernel/debug
        % cat /sys/kernel/debug/tcpm*
        % cat /sys/kernel/debug/fusb302/*

Which kernel are you running by the way?

> In vendor kernel (4.4) this is done somehow but the sources are too different for me to find
> out how.
> 
> Gruß,
> -- 
> Markus Reichl
> 
> [1]
> http://download.t-firefly.com/product/RK3399/Docs/Hardware/%E5%8E%9F%E7%90%86%E5%9B%BE%E5%92%8C%E8%B4%B4%E7%89%87%E5%9B%BE/ROC-RK3399-PC/ROC-3399-PC-V10-A-20180804_%E5%8E%9F%E7%90%86%E5%9B%BE.pdf
> 
> [2]
> https://lkml.org/lkml/2019/12/10/517

-- 
heikki
