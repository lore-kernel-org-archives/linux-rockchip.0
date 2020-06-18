From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v4 2/4] media: staging: rkisp1: remove macro
 RKISP1_DIR_SINK_SRC
Date: Thu, 18 Jun 2020 18:14:07 +0000
Message-ID: <20200618181407.GD10831@chromium.org>
References: <20200618113518.30057-1-dafna.hirschfeld@collabora.com>
 <20200618113518.30057-3-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200618113518.30057-3-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jun 18, 2020 at 01:35:16PM +0200, Dafna Hirschfeld wrote:
> The macro RKISP1_DIR_SINK_SRC is a mask of two flags.
> The macro hides the fact that it's a mask and the code
> is actually more clear if we replace it the with bitwise-or explicitly.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-isp.c | 25 +++++++++++------------
>  1 file changed, 12 insertions(+), 13 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
