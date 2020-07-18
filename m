From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Subject: Re: [PATCH 1/3] media: rkvdec: Fix H264 scaling list order
Date: Sat, 18 Jul 2020 07:54:07 +0200
Message-ID: <20200718075407.765551bb@coco.lan>
References: <2630e1bb0948c3134c6f22ad275ae27cc6023532.1595048742.git.mchehab+huawei@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2630e1bb0948c3134c6f22ad275ae27cc6023532.1595048742.git.mchehab+huawei@kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
Cc: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Boris Brezillon <boris.brezillon@collabora.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, Nicolas Dufresne <nicolas.dufresne@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Em Sat, 18 Jul 2020 07:05:54 +0200
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> escreveu:

> From: Jonas Karlman <jonas@kwiboo.se>
> 
> The Rockchip Video Decoder driver is expecting that the values in a
> scaling list are in zig-zag order and applies the inverse scanning process
> to get the values in matrix order.
> 
> Commit 0b0393d59eb4 ("media: uapi: h264: clarify expected
> scaling_list_4x4/8x8 order") clarified that the values in the scaling list
> should already be in matrix order.
> 
> Fix this by removing the reordering and change to use two memcpy.

Please ignore this one. This patch is already merged, and it is
not related to the 2 atomisp patches on this short series.

Thanks,
Mauro
