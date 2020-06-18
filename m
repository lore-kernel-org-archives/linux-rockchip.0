From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v4 3/4] media: staging: rkisp1: rename macros
 'RKISP1_DIR_*' to 'RKISP1_ISP_SD_*'
Date: Thu, 18 Jun 2020 18:15:16 +0000
Message-ID: <20200618181516.GE10831@chromium.org>
References: <20200618113518.30057-1-dafna.hirschfeld@collabora.com>
 <20200618113518.30057-4-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200618113518.30057-4-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Jun 18, 2020 at 01:35:17PM +0200, Dafna Hirschfeld wrote:
> The macros 'RKISP1_DIR_*' are flags that indicate on which
> pads of the isp subdevice the media bus code is supported. So the
> prefix RKISP1_ISP_SD_ is better.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> Acked-by: Helen Koike <helen.koike@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-isp.c | 46 +++++++++++------------
>  1 file changed, 23 insertions(+), 23 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
