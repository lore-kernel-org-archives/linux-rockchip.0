From: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 2/2] hantro: h264: Refuse to decode unsupported bitstream
Date: Mon, 29 Jun 2020 11:12:18 +0200
Message-ID: <6f8011480adae494371231ca888c946ac146786a.camel@pengutronix.de>
References: <20200626171130.27346-1-ezequiel@collabora.com>
         <20200626171130.27346-3-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200626171130.27346-3-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Jonas Karlman <jonas@kwiboo.se>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

On Fri, 2020-06-26 at 14:11 -0300, Ezequiel Garcia wrote:
> The hardware only supports 4:2:0 or 4:0:0 (monochrome),
> 8-bit depth content.
> 
> Verify that the PPS refers to a supported bitstream, and refuse
> unsupported bitstreams by failing at TRY_EXT_CTRLS time.
> 
> Given the JPEG compression level control is the only one
> that needs setting, a specific ops is provided.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp
