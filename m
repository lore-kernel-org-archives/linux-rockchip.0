From: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v2] net: ethernet: arc: Fix a potential memory leak if
 an optional regulator is deferred
Date: Tue, 20 Mar 2018 12:07:28 -0400 (EDT)
Message-ID: <20180320.120728.1961514582193776638.davem@davemloft.net>
References: <7fd57a4e79da41dccf55430cbc43de340a7f1826.1521061530.git.christophe.jaillet@wanadoo.fr>
Mime-Version: 1.0
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <7fd57a4e79da41dccf55430cbc43de340a7f1826.1521061530.git.christophe.jaillet@wanadoo.fr>
Sender: linux-kernel-owner@vger.kernel.org
To: christophe.jaillet@wanadoo.fr
Cc: heiko@sntech.de, branislav@radocaj.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Date: Sun, 18 Mar 2018 23:59:36 +0100

> If the optional regulator is deferred, we must release some resources.
> They will be re-allocated when the probe function will be called again.
> 
> Fixes: 6eacf31139bf ("ethernet: arc: Add support for Rockchip SoC layer device tree bindings")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
> ---
> v2: v1 did not compile because of an erroneous variable name. s/ret/err/

Applied and queued up for -stable, thanks.
