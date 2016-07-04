From: Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH] phy: rockhip-usb: use devm_add_action_or_reset()
Date: Mon, 4 Jul 2016 16:26:58 +0530
Message-ID: <577A40FA.5080005@ti.com>
References: <1467579666-9179-1-git-send-email-sudipm.mukherjee@gmail.com>
 <2045236.FJVOO9eQKE@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2045236.FJVOO9eQKE@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org



On Monday 04 July 2016 03:04 AM, Heiko Stuebner wrote:
> Am Sonntag, 3. Juli 2016, 22:01:06 schrieb Sudip Mukherjee:
>> If devm_add_action() fails we are explicitly calling the cleanup to free
>> the resources allocated.  Lets use the helper devm_add_action_or_reset()
>> and return directly in case of error, as we know that the cleanup function
>> has been already called by the helper if there was any error.
>>
>> Signed-off-by: Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>
> 
> a nice new helper this devm_add_action_or_reset.
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>

applied, thanks.

-Kishon
