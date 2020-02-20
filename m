From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH] media: staging: rkisp1: capture: remove support to
 userptr memory
Date: Thu, 20 Feb 2020 16:14:04 -0300
Message-ID: <54b8a35e-b0d4-3aba-a6ab-c44981db21a1@collabora.com>
References: <20200220185603.26968-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200220185603.26968-1-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org



On 2/20/20 3:56 PM, Dafna Hirschfeld wrote:
> The dma_contig memory operations which is used by the capture
> should not support userptr. Therefore remove it.

I would just re-word this a bit, something like:

VB2_USERPTR support doesn't make sense for drivers based on
vb2_dma_contig, so just drop it.

Otherwise, queues using vb2_dma_contig_memops causes v4l2-compliance
to fail for VB2_USERPTR mode, due to buffer misalignment.

> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  drivers/staging/media/rkisp1/rkisp1-capture.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-capture.c b/drivers/staging/media/rkisp1/rkisp1-capture.c
> index 5f97af5cd95f..a006cd03228d 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-capture.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-capture.c
> @@ -1349,7 +1349,7 @@ static int rkisp1_register_capture(struct rkisp1_capture *cap)
>  
>  	q = &node->buf_queue;
>  	q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
> -	q->io_modes = VB2_MMAP | VB2_DMABUF | VB2_USERPTR;
> +	q->io_modes = VB2_MMAP | VB2_DMABUF;
>  	q->drv_priv = cap;
>  	q->ops = &rkisp1_vb2_ops;
>  	q->mem_ops = &vb2_dma_contig_memops;
> 
