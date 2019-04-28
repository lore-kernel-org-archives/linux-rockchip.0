From: Markus Elfring <Markus.Elfring@web.de>
Subject: Re: [v3] ARM: rockchip: Fix a leaked reference by adding
 of_node_put() in two functions
Date: Sun, 28 Apr 2019 08:27:05 +0200
Message-ID: <cee2ab03-d0b7-c9c6-acc3-d5aa28979e2b@web.de>
References: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1556262488-21072-1-git-send-email-wen.yang99@zte.com.cn>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Wen Yang <wen.yang99@zte.com.cn>, =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Florian Fainelli <f.fainelli@gmail.com>
Cc: linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>, Yi Wang <wang.yi59@zte.com.cn>
List-Id: linux-rockchip.vger.kernel.org

>  arch/arm/mach-rockchip/platsmp.c | 12 ++++++++++--
>  arch/arm/mach-rockchip/pm.c      |  2 ++

* Would a commit subject variant be nicer?

* I dare to present a reminder for a recurring development topic.
  How do you think about to adjust the exception handling in these function
  implementations a bit more according to the Linux coding style
  (so that the addition of duplicate function calls would be avoided)?

Regards,
Markus
