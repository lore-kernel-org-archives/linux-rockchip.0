Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7BD9E63F3D
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 09:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V/Zc1/3HefK7Tgr0+Q6p79nW9IYH+HJosVmOMs6zI0M=; b=OcgUt94wjpL+zk
	AKlCc+mf2f2ShDcFvuenzqokMYNx9txUShDckZkY1ROM3j8OLkn7aO2ZHLPBxagfGZvZt5mkj2Ni9
	BuOyxnEQqiYE4ojlGsN9M43w+Bd0A3h7P7pkuzeZVhVrT9ZctH2G6WHm1sSGkbv1ae/LfVFLXFIur
	SS/JotBFL3vkthI0PZDpZtxb1yV1LOFdeXYcPExAwLNEju1dE14N1v91Z4WMqTULVxHLJEtUHnSc7
	SgHp5dIZ9Ax4f80mDw451wiMZucvgvPMyxE+d1E04YrHNDwxNxVOJxC+xEr5gsDHg3aRgYsiR8q6F
	pX8MUL1ORwviIrb0qS6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruWK-00000006DP2-2PYI;
	Mon, 16 Feb 2026 09:03:56 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vruWH-00000006DOS-1HXF;
	Mon, 16 Feb 2026 09:03:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771232630;
	bh=egyZNlVxOKps8c+uu05c+5nto53qJQKuDG16P33A490=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PxqPN+nj4/xel63axAnL+UABpl+Xy88tyLF+48q1YvuE0TXc+PQjjdnay1cPPdYqY
	 XTLhup0YYmEnJtlUWYS8IweQuB16PAAGl1tR0HAhPoYEQlmU3C48xpUpt0aMa4eHNN
	 bWYLMV9Jdf/tk56we0+mJVDhn8zMt/f1z5jMCdRCfOsU+BD1/+OtXN2uCfwZd3y52A
	 4xiwjrNMvfiziZLcfoNDbGWbq8CpMOkhJ+wJVXejKBjiX20RYc5+T4PNkvJhKJqxLI
	 +KRR8Kp5tchL5SO5PMhfPoRbbZwSYgdenbCxtWRqzOqUceNNjeyNhImTI6mY7LwD2A
	 OYKJHXuvfkL6A==
Received: from [10.40.0.100] (185-67-175-126.lampert.tv [185.67.175.126])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: mriesch)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B5D7717E137B;
	Mon, 16 Feb 2026 10:03:49 +0100 (CET)
Message-ID: <75abd9eb-6141-46cc-b2d7-0c4d112e2ca5@collabora.com>
Date: Mon, 16 Feb 2026 10:03:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/6] media: synopsys: csi2rx: implement
 .get_frame_desc() callback
To: Frank Li <Frank.Li@nxp.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Guoniu Zhou <guoniu.zhou@oss.nxp.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, imx@lists.linux.dev
References: <20260213-imx93-dw-csi2-v2-0-8be6039f44c6@nxp.com>
 <20260213-imx93-dw-csi2-v2-3-8be6039f44c6@nxp.com>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <20260213-imx93-dw-csi2-v2-3-8be6039f44c6@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_010353_557611_BDE614C9 
X-CRM114-Status: GOOD (  18.70  )
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

Hi Frank,

On 2/13/26 21:25, Frank Li wrote:
> Implement the .get_frame_desc() callback to fetch information from the
> remote endpoint.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> change in v2
> - add csi2rx in subject
> ---
>  drivers/media/platform/synopsys/dw-mipi-csi2rx.c | 25 ++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/media/platform/synopsys/dw-mipi-csi2rx.c b/drivers/media/platform/synopsys/dw-mipi-csi2rx.c
> index f03fe01280013bf9a832433c6b06dab691bf8f4c..a6d251ca5ad14c5138a6fd0202a970460e64c68f 100644
> --- a/drivers/media/platform/synopsys/dw-mipi-csi2rx.c
> +++ b/drivers/media/platform/synopsys/dw-mipi-csi2rx.c
> @@ -68,6 +68,8 @@ struct dw_mipi_csi2rx_device {
>  	struct v4l2_async_notifier notifier;
>  	struct v4l2_subdev sd;
>  
> +	struct v4l2_subdev *remote_source;
> +
>  	enum v4l2_mbus_type bus_type;
>  	u32 lanes_num;
>  };
> @@ -429,10 +431,31 @@ static int dw_mipi_csi2rx_disable_streams(struct v4l2_subdev *sd,
>  	return ret;
>  }
>  
> +static int
> +dw_mipi_csi2rx_get_frame_desc(struct v4l2_subdev *sd, unsigned int pad,
> +			      struct v4l2_mbus_frame_desc *fd)
> +{
> +	struct dw_mipi_csi2rx_device *csi2 = to_csi2(sd);
> +	struct media_pad *remote_pad;
> +
> +	if (!csi2->remote_source)
> +		return -ENODEV;
> +
> +	remote_pad = media_pad_remote_pad_unique(&csi2->pads[DW_MIPI_CSI2RX_PAD_SINK]);
> +	if (IS_ERR(remote_pad)) {
> +		dev_err(csi2->dev, "can't get source pad of %s (%pe)\n",
> +			csi2->remote_source->name, remote_pad);
> +		return PTR_ERR(remote_pad);
> +	}

You can get the remote subdevice with
	remote_sd = media_entity_to_v4l2_subdev(remote_pad->entity);
instead of storing it in the device data.

Best regards,
Michael

> +	return v4l2_subdev_call(csi2->remote_source, pad, get_frame_desc,
> +				remote_pad->index, fd);
> +}
> +
>  static const struct v4l2_subdev_pad_ops dw_mipi_csi2rx_pad_ops = {
>  	.enum_mbus_code = dw_mipi_csi2rx_enum_mbus_code,
>  	.get_fmt = v4l2_subdev_get_fmt,
>  	.set_fmt = dw_mipi_csi2rx_set_fmt,
> +	.get_frame_desc = dw_mipi_csi2rx_get_frame_desc,
>  	.set_routing = dw_mipi_csi2rx_set_routing,
>  	.enable_streams = dw_mipi_csi2rx_enable_streams,
>  	.disable_streams = dw_mipi_csi2rx_disable_streams,
> @@ -485,6 +508,8 @@ static int dw_mipi_csi2rx_notifier_bound(struct v4l2_async_notifier *notifier,
>  		return ret;
>  	}
>  
> +	csi2->remote_source = sd;
> +
>  	return 0;
>  }
>  
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
