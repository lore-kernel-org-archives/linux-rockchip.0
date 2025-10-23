Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77B13CCD1BF
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 22:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zyqYRo8ouIE2bCJZQqYp6m/lBXF1nng0X8AAZe7yNyY=; b=FvqZarXLnlzcSM
	zSdf/J8Wz4VkhDDZqbvF/+D2p6WJEvR9VQzXS/Fo1zy9vxlpnj4NIQU1Q0xm6kvHnLixnFm4qcYFp
	UCjfJq8VAgDHwelKrAuYW+6XBg+kL5I4A4L0enItbQC+w3X/X3qT0CK3qRRujJ+P5K3Qu7AlcPaik
	4xCIkxWNG4Q5gLUUPGf+1KJJgSv/TMu2AFSGcM9i7DOxP2ZgEK0qPzyYcR3NmH7O5dh87u2YWDPyR
	8xUhrxp0cW0vClUjYdp434038MLAVVY51kgnqsD1JxFckFL6ssXPDV2Gn3cP127UxGpmEdWv7SXsJ
	UdPNKpfS4El5902MxMcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC4Bf-00000007m0p-1vbA;
	Thu, 23 Oct 2025 22:53:39 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vC4Bc-00000007lzs-1j8X
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 22:53:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1761260014;
 bh=AG2rFEpBv1gq95qUgCmaFP4trd4HB0CSXHRiD4voN58=;
 b=G/vf8Ns9a3OMz2HH8n5ueFjlUf0AbFUAL1LuYvDrMdTx4it9r3QCzaJMKas+vjmrRwMS48rYd
 74wAnB2A49YFGuDnjx3b1mbQAUb61NoQE5OU80S/mJ7ReUwbUxgHVqJJp8WvvePVog3YNiF4OZ4
 mg7ZWe7wnmy3cOZkXItptCss5h6XcW8SzxgfcCpO/I+YTR9JGj9igvOqOUbNxi7ZlyGLZSXO5/c
 GcfnRGF7NswCqrULdUbS80UDKs24gKL8p9iwTFwPRoxOFfhqGgb2CSil63YV45LkKXZd3GdP00E
 jlTPIfGrVSc9DC9ljOsUHeKr43AxR7+L3SA4BfRx4rXg==
X-Forward-Email-ID: 68fab1e82a3297951990cdf1
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 1.3.0
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <d28c81b0-3d50-46f7-876e-d634bcab2cd0@kwiboo.se>
Date: Fri, 24 Oct 2025 00:53:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 12/15] media: rkvdec: Add H264 support for the VDPU381
 variant
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>, Ricardo Ribalda <ribalda@chromium.org>,
 Hans Verkuil <hverkuil@kernel.org>, Hans de Goede <hansg@kernel.org>,
 Yunke Cao <yunkec@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 James Cowgill <james.cowgill@blaize.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 kernel@collabora.com, Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>, linux-kernel@vger.kernel.org
References: <20251023214247.459931-1-detlev.casanova@collabora.com>
 <20251023214247.459931-13-detlev.casanova@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20251023214247.459931-13-detlev.casanova@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_155336_853225_3FACBE47 
X-CRM114-Status: GOOD (  26.21  )
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

Hi Detlev,

On 10/23/2025 11:42 PM, Detlev Casanova wrote:
> This decoder variant is found in Rockchip RK3588 SoC family.
> 
> Like for rkvdec on rk3399, it supports the NV12, NV15, NV16 and NV20
> output formats and level up to 5.1.
> 
> The maximum width and height have been significantly increased
> supporting up to 65520 pixels for both.
> 
> Also make sure to only expose the first core and ignore the other
> until mutli-core is supported.
> 
> Fluster score for JVT-AVC_V1 is 129/135.
> 
> Tested-by: Diederik de Haas <didi.debian@cknow.org>  # Rock 5B
> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> ---
>  .../media/platform/rockchip/rkvdec/Makefile   |   1 +
>  .../rockchip/rkvdec/rkvdec-h264-common.h      |   2 +
>  .../rockchip/rkvdec/rkvdec-vdpu381-h264.c     | 469 ++++++++++++++++++
>  .../rockchip/rkvdec/rkvdec-vdpu381-regs.h     | 427 ++++++++++++++++
>  .../media/platform/rockchip/rkvdec/rkvdec.c   | 127 +++++
>  .../media/platform/rockchip/rkvdec/rkvdec.h   |   4 +
>  6 files changed, 1030 insertions(+)
>  create mode 100644 drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-h264.c
>  create mode 100644 drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-regs.h

[snip]

> diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec.c b/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> index f043b07c8e7d..bc3e35b82a11 100644
> --- a/drivers/media/platform/rockchip/rkvdec/rkvdec.c
> +++ b/drivers/media/platform/rockchip/rkvdec/rkvdec.c

[snip]

> +/*
> + * Some SoCs, like RK3588 have multiple identical VDPU cores, but the
> + * kernel is currently missing support for multi-core handling. Exposing
> + * separate devices for each core to userspace is bad, since that does
> + * not allow scheduling tasks properly (and creates ABI). With this workaround
> + * the driver will only probe for the first core and early exit for the other
> + * cores. Once the driver gains multi-core support, the same technique
> + * for detecting the first core can be used to cluster all cores together.
> + */
> +static int rkvdec_disable_multicore(struct rkvdec_dev *rkvdec)
> +{
> +	struct device_node *node = NULL;
> +	const char *compatible;
> +	bool is_first_core;
> +	int ret;
> +
> +	/* Intentionally ignores the fallback strings */
> +	ret = of_property_read_string(rkvdec->dev->of_node, "compatible", &compatible);
> +	if (ret)
> +		return ret;
> +
> +	/* The first compatible and available node found is considered the main core */
> +	do {
> +		node = of_find_compatible_node(node, NULL, compatible);
> +		if (of_device_is_available(node))
> +			break;
> +	} while (node);
> +
> +	if (!node)
> +		return -EINVAL;
> +
> +	is_first_core = (rkvdec->dev->of_node == node);
> +
> +	of_node_put(node);
> +
> +	if (!is_first_core) {
> +		dev_info(rkvdec->dev, "missing multi-core support, ignoring this instance\n");
> +		return -ENODEV;
> +	}
> +
> +	return 0;
> +}

The addition of rkvdec_disable_multicore should probably be split into a
separate patch.

Please leave some more time for review before sending next version. I
will try to do a more in depth review of this series this weekend, more
feedback will follow.

Regards,
Jonas

[snip]

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
