From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v4 3/5] media: staging: rkisp1: validate links before
 powering and streaming
Date: Wed, 10 Jun 2020 17:00:07 +0000
Message-ID: <20200610170007.GB201868@chromium.org>
References: <20200522075522.6190-1-dafna.hirschfeld@collabora.com>
 <20200522075522.6190-4-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200522075522.6190-4-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, skhan@linuxfoundation.org, niklas.soderlund@ragnatech.se--annotate
List-Id: linux-rockchip.vger.kernel.org

On Fri, May 22, 2020 at 09:55:20AM +0200, Dafna Hirschfeld wrote:
> In function rkisp1_vb2_start_streaming, the call to
> media_pipeline_start should be the first thing in order
> to validate the links and prevents their state from being modified
> before power up and streaming.
> 
> Adjust stop streaming to the same logic, call media_pipeline_stop
> after we disable streaming on the entities in the topology.
> 
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 21 ++++++++++---------
>  1 file changed, 11 insertions(+), 10 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz
