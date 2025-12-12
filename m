Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 917E6D59D77
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Dec 2025 16:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WInSDG9H+nTyLDVF1B21pTTYKCAhL21XOfscH+5+JVo=; b=YLjfF4jqPhPQW1
	VZGxKrWrP5aAfty/vb41gkEZPBvNEPXOWXSnjCKfvhTXZLaONVNfGQeVMK37xyOq4FqBNb3T+YrJJ
	b/kvOjGUa3XiT5MAPPfuXazsSXShCJmhrhhZzqXvI/ilLsZk3UdizjJdvIpmtYWkzbneNLNQ1Au5+
	jh7Ew9ysIXtPZhB/Q+LElU4rlwYM7VHbANqJj1JMa8+naLpkwzNe0rvH887kkHJqe3EMiZ/gh1FU2
	APdwCyJaks1DLyb5mhOz1zyfayxecCkJOV/KUPKzuLvBUIdbdwEHT2QoXznjPIfCZ8ryNGQGLOiu/
	biw13eiGFUiUkn58lgJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU6FF-00000000qvo-03pk;
	Fri, 12 Dec 2025 16:43:53 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU6FB-00000000quT-24Gy
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Dec 2025 16:43:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1765557827;
 bh=fL6p+yF29ZL9GtYFRZVMvgUfhS85FhnBSPlLMEjmfe8=;
 b=jEW73O6716GkVVg+7Dm3XvMHcH6zznpkYQsrKiW8CYcHeuHq7uZtO4V3YUScHF5Y8fwcKSPPx
 VdD0W4h8pVOJzRSMsiAbX9dCbrFafS/7ScRoWF70t2gsVf+JJpze1E4/Ym2tq0NspJd8AL1PZ6k
 cj5p8YNods5YeZV/m+ly1TgAJkDFyrb1Hfw/nV3EEBJ9Rn7w2TktgzCdXxR2exvFMZ5LZLYdyrF
 jGcmo+A1EvqG1KXAUqTYyZZIk5vCdmO3GDeKcrC+c5INS9a+2yeu4llzf/oGbBItiMijhPRcXXD
 N0f/r1m9gSl1XkLwfN7P0ZIYd5wnoWl8qEplk1Z+9Lcw==
X-Forward-Email-ID: 693c463c2aa8940b84330861
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.6.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <5c2dec91-667f-48f6-b958-e0cf81cab569@kwiboo.se>
Date: Fri, 12 Dec 2025 17:43:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: rkvdec: set ctx->image_fmt in rkvdec_s_capture_fmt
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Hans Verkuil <hverkuil@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
References: <20251212154138.3042300-1-liujianfeng1994@gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20251212154138.3042300-1-liujianfeng1994@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_084349_617292_C40E677C 
X-CRM114-Status: GOOD (  16.77  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On 12/12/2025 4:41 PM, Jianfeng Liu wrote:
> ctx->image_fmt is initialized as RKVDEC_IMG_FMT_ANY at
> rkvdec_s_output_fmt, and get set at rkvdec_s_ctrl when userspace sends
> SPS info via VIDIOC_S_EXT_CTRLS. This works fine with gstreamer because
> it sends SPS info to kernel driver before requesting capture queue bufs.
> 
> But chromium requests capture queue bufs first and then sends SPS info
> to kernel, then rkvdec_s_ctrl will return -EBUSY, and the video is
> displayed green.
> 
> Chromium calls VIDIOC_S_FMT to capture queue instead before requesting
> capture queue bufs, so setting ctx->image_fmt in rkvdec_s_capture_fmt
> will make rkvdec_s_ctrl return 0 when the first SPS info sent to driver.
> 
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
> Fixes: d35c64eccf3b1 ("media: rkvdec: Add get_image_fmt ops")
> ---
> 
>  drivers/media/platform/rockchip/rkvdec/rkvdec.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> index 5af9aa5ab353..e7939d604f64 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> @@ -537,6 +537,18 @@ static int rkvdec_s_capture_fmt(struct file *file, void *priv,
>  		return ret;
>  
>  	ctx->decoded_fmt = *f;
> +
> +	u32 fourcc = f->fmt.pix_mp.pixelformat;
> +
> +	if (fourcc == V4L2_PIX_FMT_NV12)
> +		ctx->image_fmt = RKVDEC_IMG_FMT_420_8BIT;
> +	else if (fourcc == V4L2_PIX_FMT_NV15)
> +		ctx->image_fmt = RKVDEC_IMG_FMT_420_10BIT;
> +	else if (fourcc == V4L2_PIX_FMT_NV16)
> +		ctx->image_fmt = RKVDEC_IMG_FMT_422_8BIT;
> +	else if (fourcc == V4L2_PIX_FMT_NV20)
> +		ctx->image_fmt = RKVDEC_IMG_FMT_422_10BIT;

ctx->image_fmt is used to limit what CAPTURE pixel format can be set and
forcing it here violates this.

Chromium should be fixed to follow spec at 4.5.3.2. Initialization [1]:

  1. Set the coded format on the OUTPUT queue via VIDIOC_S_FMT().
  2. Call VIDIOC_S_EXT_CTRLS() to set all the controls (parsed headers,
     etc.) required by the OUTPUT format to enumerate the CAPTURE formats.
  ...
  5. [optional] Choose a different CAPTURE format than suggested via
     VIDIOC_S_FMT() on CAPTURE queue.

Regards,
Jonas

[1] https://docs.kernel.org/userspace-api/media/v4l/dev-stateless-decoder.html

> +
>  	return 0;
>  }
>  


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
