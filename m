From: Stephen Boyd <sboyd@codeaurora.org>
Subject: Re: [PATCH] clocksource: arm_arch_timer: Don't assume clock runs in
 suspend
Date: Tue, 18 Oct 2016 18:55:37 -0700
Message-ID: <86354ffe-9757-2a1f-92c9-9602fa08a057@codeaurora.org>
References: <20160916054917.16930-1-briannorris@chromium.org>
 <57DBA81F.2060404@arm.com> <20160919231441.GA60928@google.com>
 <57E0E97B.5000106@arm.com> <20160928012309.GA29518@localhost>
 <20160929170847.1227a312@arm.com> <20161004174903.GA3098@localhost>
 <20161019012441.GW8871@codeaurora.org> <20161019013612.GA107490@google.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20161019013612.GA107490@google.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Brian Norris <briannorris@chromium.org>
Cc: Marc Zyngier <marc.zyngier@arm.com>, Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, Mark Rutland <mark.rutland@arm.com>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, wxt@rock-chips.com, dianders@chromium.org
List-Id: linux-rockchip.vger.kernel.org

On 10/18/2016 06:36 PM, Brian Norris wrote:
> I believe we do not on either rk3288 or rk3399. We'd have to be powering
> off almost the entire system before we'd be able to gate the 24 MHz
> oscillator, AIUI.
>

Great! That avoids a major headache.

-- 
Qualcomm Innovation Center, Inc. is a member of Code Aurora Forum,
a Linux Foundation Collaborative Project
