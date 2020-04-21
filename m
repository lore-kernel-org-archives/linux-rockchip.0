From: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v8 4/5] media: rkvdec: Add the rkvdec driver
Date: Tue, 21 Apr 2020 16:38:11 +0200
Message-ID: <f596299f-9a4b-6fc7-17c5-b8a720301c86@gmail.com>
References: <20200403221345.16702-5-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200403221345.16702-5-ezequiel@collabora.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: ezequiel@collabora.com
Cc: boris.brezillon@collabora.com, heiko@sntech.de, hverkuil@xs4all.nl, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

The MAINTAINERS document is now sort by entry name and the field names
sort for all entries.
Ask Joe Perches.

Johan


> diff --git a/MAINTAINERS b/MAINTAINERS
> index 2b8b3e7f3df3..3cd32c54dcec 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -14298,6 +14298,13 @@ F:	drivers/hid/hid-roccat*
>  F:	include/linux/hid-roccat*
>  F:	Documentation/ABI/*/sysfs-driver-hid-roccat*
>  
> +ROCKCHIP VIDEO DECODER DRIVER
> +M:	Ezequiel Garcia <ezequiel@collabora.com>
> +L:	linux-media@vger.kernel.org
> +S:	Maintained
> +F:	drivers/staging/media/rkvdec/
> +F:	Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> +
>  ROCKCHIP ISP V1 DRIVER
>  M:	Helen Koike <helen.koike@collabora.com>
>  L:	linux-media@vger.kernel.org
