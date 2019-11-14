From: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH v3 1/3] media: hantro: Cleanup format negotiation helpers
Date: Thu, 14 Nov 2019 10:26:05 +0100
Message-ID: <4797d07a4e51a509a866733cd46aeec49c0222f6.camel@pengutronix.de>
References: <20191113175603.24742-1-ezequiel@collabora.com>
         <20191113175603.24742-2-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191113175603.24742-2-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org
Cc: kernel@collabora.com, Tomasz Figa <tfiga@chromium.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Jonas Karlman <jonas@kwiboo.se>, Boris Brezillon <boris.brezillon@collabora.com>, Chris Healy <cphealy@gmail.com>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, 2019-11-13 at 14:56 -0300, Ezequiel Garcia wrote:
> Format negotiation helpers, hantro_find_format()
> and hantro_get_default_fmt() can be simplified,
> making the code a little bit clearer.
> 
> More importantly, this change is preparation work
> for the post-processor usage.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp
