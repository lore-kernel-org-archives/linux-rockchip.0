From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] phy: rockhip-usb: use devm_add_action_or_reset()
Date: Sun, 03 Jul 2016 23:34:07 +0200
Message-ID: <2045236.FJVOO9eQKE@phil>
References: <1467579666-9179-1-git-send-email-sudipm.mukherjee@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1467579666-9179-1-git-send-email-sudipm.mukherjee@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Sonntag, 3. Juli 2016, 22:01:06 schrieb Sudip Mukherjee:
> If devm_add_action() fails we are explicitly calling the cleanup to free
> the resources allocated.  Lets use the helper devm_add_action_or_reset()
> and return directly in case of error, as we know that the cleanup function
> has been already called by the helper if there was any error.
> 
> Signed-off-by: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>

a nice new helper this devm_add_action_or_reset.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
