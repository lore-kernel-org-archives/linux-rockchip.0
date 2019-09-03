From: Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [RFC 08/12] media: hantro: Fix H264 decoding of field encoded
 content
Date: Tue, 03 Sep 2019 17:01:56 +0200
Message-ID: <1567522916.5229.11.camel@pengutronix.de>
References: <HE1PR06MB40117D0EE96E6FA638A04B78ACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
         <20190901124531.23645-1-jonas@kwiboo.se>
         <HE1PR06MB4011EA39133818A85768B91FACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com>
         <1567516908.5229.7.camel@pengutronix.de>
         <DB6PR06MB4007C0F89BAEC6F9F1F2AA18ACB90@DB6PR06MB4007.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <DB6PR06MB4007C0F89BAEC6F9F1F2AA18ACB90@DB6PR06MB4007.eurprd06.prod.outlook.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonas Karlman <jonas@kwiboo.se>, Ezequiel Garcia <ezequiel@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Boris Brezillon <boris.brezillon@collabora.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, 2019-09-03 at 14:02 +0000, Jonas Karlman wrote:
> On 2019-09-03 15:21, Philipp Zabel wrote:
> > On Sun, 2019-09-01 at 12:45 +0000, Jonas Karlman wrote:
> > > This need code cleanup and formatting
> > > 
> > > Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> > 
> > The previous patches all work, but this patch breaks decoding of
> > progressive content for me (i.MX8MQ with FFmpeg based on Ezequiel's
> > branch).
> 
> Please try with ffmpeg based on my v4l2-request-hwaccel-4.0.4-hantro branch at [1],
> up to and including the commit "HACK: add dpb flags for reference usage and field picture".
> That commit adds code to set reference flags needed by the changes in this patch.
> 
> There is probably also some other minor difference between our two ffmpeg branches.
> I have not observed any issues with progressive content with this patch and my ffmpeg branch (on a RK3288 device).
> Some H264 reference samples do have visual issues after this patch, however all my real world samples does seem to work.
> 
> My branch use libudev to probe media/video devices and needs to be configured with:
> --enable-v4l2-request --enable-libudev --enable-libdrm
> 
> [1] https://github.com/Kwiboo/FFmpeg/commits/v4l2-request-hwaccel-4.0.4-hantro

I hadn't realized that this is a backwards incompatible change. With
your branch rebased onto n4.2, and this patch applied, decoding seems to
work.

regards
Philipp
