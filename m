From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 03/12] media: hantro: Fix H264 motion vector buffer
 offset
Date: Tue, 10 Sep 2019 11:18:34 +0100
Message-ID: <255f22b1ddea5fa81104865769eec0fcb5617b36.camel@collabora.com>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
         <20190901124531.23645-1-jonas@kwiboo.se>
         <HE1PR06MB40115337CD86C429EF24430CACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <HE1PR06MB40115337CD86C429EF24430CACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Boris Brezillon <boris.brezillon@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Jonas,

Thanks for fixing this, I'm happy we are reducing the amount
of black magic here.

On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
> A decoded 8-bit 4:2:0 frame need memory for up to 448 macroblocks
> and is laid out in memory as follow:
> 
> +-------------------+
> > Y-plane   256 MBs |
> +-------------------+
> > UV-plane  128 MBs |
> +-------------------+
> > MV buffer  64 MBs |
> +-------------------+
> 
> The motion vector buffer offset is currently correct for 4:2:0 because
> the extra space for motion vectors is overallocated with an extra 64 MBs.
> 
> Wrong offset for both destination and motion vector buffer are used
> for the bottom field of field encoded content, wrong offset is
> also used for 4:0:0 (monochrome) content.
> 
> Fix this by always setting the motion vector address to the expected
> 384 MBs offset for 4:2:0 and 256 MBs offset for 4:0:0 content.
> 
> Also use correct destination and motion vector buffer offset
> for the bottom field of field encoded content.
> 
> While at it also extend the check for 4:0:0 (monochrome) to include an
> additional check for High Profile (100).
> 

As with the scaling list, I believe it would make a lot of sense
to document this in the driver itself.

Thanks,
Ezequiel
