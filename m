From: =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Subject: Re: [PATCH 2/3] clocksource: owl: pr_err() strings should end with
 newlines
Date: Mon, 25 Sep 2017 10:45:33 +0200
Message-ID: <791991d7-dee6-89f0-f827-b1ce5e7a4013@suse.de>
References: <1506327401-30521-1-git-send-email-arvind.yadav.cs@gmail.com>
 <1506327401-30521-3-git-send-email-arvind.yadav.cs@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1506327401-30521-3-git-send-email-arvind.yadav.cs@gmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Arvind Yadav <arvind.yadav.cs@gmail.com>, daniel.lezcano@linaro.org, tglx@linutronix.de, heiko@sntech.de
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am 25.09.2017 um 10:16 schrieb Arvind Yadav:
> pr_err() messages should terminated with a new-line to avoid
> other messages being concatenated onto the end.
> 
> Signed-off-by: Arvind Yadav <arvind.yadav.cs@gmail.com>
> ---
>  drivers/clocksource/owl-timer.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Andreas Färber <afaerber@suse.de>

Regards,
Andreas

-- 
SUSE Linux GmbH, Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer, Jane Smithard, Graham Norton
HRB 21284 (AG Nürnberg)
