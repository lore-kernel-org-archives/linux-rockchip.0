From: Russell King - ARM Linux <linux@arm.linux.org.uk>
Subject: Re: [RESEND PATCH 0/1] Fix the "hard LOCKUP" when running a heavy
 loading
Date: Tue, 3 Nov 2015 11:14:37 +0000
Message-ID: <20151103111437.GU8644@n2100.arm.linux.org.uk>
References: <1446538209-13490-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1446538209-13490-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, hl@rock-chips.com, sjg@chromium.org, Jonathan Stone <j.stone@samsung.com>, dianders@chromium.org, linux-rockchip@lists.infradead.org, cwz@rock-chips.com, Ard Biesheuvel <ard.biesheuvel@linaro.org>, Gregory CLEMENT <gregory.clement@free-electrons.com>, Stephen Boyd <sboyd@codeaurora.org>, linux-kernel@vger.kernel.org, Huang Tao <huangtao@rock-chips.com>, Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, Nadav Haklai <nadavh@marvell.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Nov 03, 2015 at 04:10:08PM +0800, Caesar Wang wrote:
> As the Russell said:
> "in other words, which can be handled by updating a control register in
> the firmware or boot loader"
> Maybe the better solution is in firmware.

The full quote is:

"I think we're at the point where we start insisting that workarounds
which are simple enable/disable feature bit operations (in other words,
which can be handled by updating a control register in the firmware or
boot loader) must be done that way, and we are not going to add such
workarounds to the kernel anymore."

The position hasn't changed.  Workarounds such as this should be handled
in the firmware/boot loader before control is passed to the kernel.

The reason is very simple: if the C compiler can generate code which
triggers the bug, it can generate code which triggers the bug in the
boot loader.  So, the only place such workarounds can be done is before
any C code gets executed.  Putting such workarounds in the kernel is
completely inappropriate.

Sorry, I'm not going to accept this workaround into the kernel.

-- 
FTTC broadband for 0.8mile line: currently at 9.6Mbps down 400kbps up
according to speedtest.net.
