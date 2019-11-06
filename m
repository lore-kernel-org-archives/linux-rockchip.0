From: "Hans Verkuil (hansverk)" <hansverk@cisco.com>
Subject: Re: [PATCH v9 1/4] media: videodev2.h, v4l2-ioctl: add rkisp1 meta
 buffer format
Date: Wed, 6 Nov 2019 12:22:50 +0000
Message-ID: <9102bcf8-0279-7972-daff-b15aaf98804d@cisco.com>
References: <20191106120132.6876-1-helen.koike@collabora.com>
 <20191106120132.6876-2-helen.koike@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191106120132.6876-2-helen.koike@collabora.com>
Content-Language: en-US
Content-ID: <E779B3FBDFE14F408BAD826C04919BF8@namprd11.prod.outlook.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Helen Koike <helen.koike@collabora.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Cc: "eddie.cai.linux@gmail.com" <eddie.cai.linux@gmail.com>, "kernel@collabora.com" <kernel@collabora.com>, "heiko@sntech.de" <heiko@sntech.de>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, "jeffy.chen@rock-chips.com" <jeffy.chen@rock-chips.com>, "zyc@rock-chips.com" <zyc@rock-chips.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "tfiga@chromium.org" <tfiga@chromium.org>, Jacob Chen <jacob2.chen@rock-chips.com>, "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>, "laurent.pinchart@ideasonboard.com" <laurent.pinchart@ideasonboard.com>, "sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>, "zhengsq@rock-chips.com" <zhengsq@rock-chips.com>, "mchehab@kernel.org" <mchehab@kernel.org>, "ezequiel@collabora.com" <ezequiel@collabora.com>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kern
List-Id: linux-rockchip.vger.kernel.org

On 11/6/19 1:01 PM, Helen Koike wrote:
> From: Shunqian Zheng <zhengsq@rock-chips.com>
> 
> Add the Rockchip ISP1 specific processing parameter format
> V4L2_META_FMT_RK_ISP1_PARAMS and metadata format
> V4L2_META_FMT_RK_ISP1_STAT_3A for 3A.
> 
> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> Acked-by: Hans Verkuil <hans.verkuil@cisco.com>

I acked this? It is missing documentation for these new formats.

> [refactored for upstream]
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> ---
> 
> Changes in v9:
> - Add reviewed-by tag from Laurent
> 
> Changes in v8: None
> Changes in v7:
> - s/IPU3/RK_ISP1
> 
>  drivers/media/v4l2-core/v4l2-ioctl.c | 2 ++
>  include/uapi/linux/videodev2.h       | 4 ++++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> index 315ac12c3e0a..ade990554caf 100644
> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> @@ -1341,6 +1341,8 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
>  	case V4L2_META_FMT_UVC:		descr = "UVC Payload Header Metadata"; break;
>  	case V4L2_META_FMT_D4XX:	descr = "Intel D4xx UVC Metadata"; break;
>  	case V4L2_META_FMT_VIVID:       descr = "Vivid Metadata"; break;
> +	case V4L2_META_FMT_RK_ISP1_PARAMS:	descr = "Rockchip ISP1 3A params"; break;

params -> Params

> +	case V4L2_META_FMT_RK_ISP1_STAT_3A:	descr = "Rockchip ISP1 3A statistics"; break;

statistics -> Statistics

>  
>  	default:
>  		/* Compressed formats */
> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> index f98bbcced8ff..56798b09cd85 100644
> --- a/include/uapi/linux/videodev2.h
> +++ b/include/uapi/linux/videodev2.h
> @@ -762,6 +762,10 @@ struct v4l2_pix_format {
>  #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
>  #define V4L2_META_FMT_VIVID	  v4l2_fourcc('V', 'I', 'V', 'D') /* Vivid Metadata */
>  
> +/* Vendor specific - used for RK_ISP1 camera sub-system */
> +#define V4L2_META_FMT_RK_ISP1_PARAMS	v4l2_fourcc('R', 'K', '1', 'P') /* Rockchip ISP1 params */
> +#define V4L2_META_FMT_RK_ISP1_STAT_3A	v4l2_fourcc('R', 'K', '1', 'S') /* Rockchip ISP1 3A statistics */
> +
>  /* priv field value to indicates that subsequent fields are valid. */
>  #define V4L2_PIX_FMT_PRIV_MAGIC		0xfeedcafe
>  
> 

Regards,

	Hans
