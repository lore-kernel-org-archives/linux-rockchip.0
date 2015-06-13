From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v6 0/3] ARM: rockchip: fix the SMP
Date: Sat, 13 Jun 2015 23:02:14 +0200
Message-ID: <3561257.px5A2HfJ0t@diego>
References: <1433843400-24831-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1433843400-24831-1-git-send-email-wxt@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Caesar Wang <wxt@rock-chips.com>
Cc: dianders@chromium.org, Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-rockchip@lists.infradead.org, Russell King <linux@arm.linux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Caesar,

Am Dienstag, 9. Juni 2015, 17:49:56 schrieb Caesar Wang:
> Verified on url =
>    
> https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chromeos-> 3.14 Tested by 179200 cycles are pass with CPU up/dowm test scripts.

I've applied this series to my soc branch for 4.3 ... it's a bit late for 
trying to cram this into 4.2. I've also added a Cc stable@ tag for patch1


Heiko
