From: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 02/12] media: hantro: Do not reorder H264 scaling list
Date: Tue, 03 Sep 2019 14:53:04 +0200
Message-ID: <1567515184.5229.5.camel@pengutronix.de>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
         <20190901124531.23645-1-jonas@kwiboo.se>
         <HE1PR06MB40116C92C3D52C5957EF48E9ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
         <1567432843.3666.6.camel@pengutronix.de>
         <HE1PR06MB4011A8F99D58E5ACFAE3CECAACBE0@HE1PR06MB4011.eurprd06.prod.outlook.com>
         <DB6PR06MB4007C140420365E83064C5BEACB90@DB6PR06MB4007.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <DB6PR06MB4007C140420365E83064C5BEACB90@DB6PR06MB4007.eurprd06.prod.outlook.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Boris Brezillon <boris.brezillon@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 2019-09-03 at 07:54 +0000, Jonas Karlman wrote:
[...]
> After a closer look both ffmpeg and rkmpp only apply zig-zag scan and not field scan,
> ffmpeg will memcpy the scaling_matrix4/8 as is for vaapi, vdpau and nvdec,
> for dxva2 there is a workaround flag that controls if zig-zag should be applied or not.
> 
> I suggest a clarification of the expect order of values and use of the same value order as vaapi, vdpau and nvdec.
> i.e. have the scaling list values in "matrix order"/"raster order", after zig-zag scan has been applied,
> as is currently expected by cedrus and hantro after this patch.
> 
> I would also suggest a change to the expected order of the 8x8 scaling lists to follow the H264 standard,
> instead of the ffmpeg order like this patch and cedrus driver currently expects.
> 
> Expected scaling list order would then be,
> for 4x4: Intra Y, Intra Cb, Intra Cr, Inter Y, Inter Cb, Inter Cr,
> for 8x8: Intra Y, Inter Y, Intra Cb, Inter Cb, Intra Cr, Inter Cr.

I'm in favor of both, it seems unnecessary to reorder the lists in
userspace only to have the kernel reorder them back before passing them
to the hardware.

regards
Philipp
