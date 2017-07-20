From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 001/102] ARM: rockchip: explicitly request exclusive reset control
Date: Thu, 20 Jul 2017 22:28:14 +0200
Message-ID: <65246208.Xb7026sEv2@phil>
References: <20170719152646.25903-1-p.zabel@pengutronix.de> <20170719152646.25903-2-p.zabel@pengutronix.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20170719152646.25903-2-p.zabel@pengutronix.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 19. Juli 2017, 17:25:05 CEST schrieb Philipp Zabel:
> Commit a53e35db70d1 ("reset: Ensure drivers are explicit when requesting
> reset lines") started to transition the reset control request API calls
> to explicitly state whether the driver needs exclusive or shared reset
> control behavior. Convert all drivers requesting exclusive resets to the
> explicit API call so the temporary transition helpers can be removed.
> 
> No functional changes.
> 
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>

amended the subject with an "[...] in smp code" and applied for 4.14


Heiko
