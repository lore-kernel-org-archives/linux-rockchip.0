From: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH v6 5/6] media: rkvdec: Add the rkvdec driver
Date: Mon, 2 Mar 2020 15:35:29 +0100
Message-ID: <20200302153529.4e2429e7@collabora.com>
References: <20200220163016.21708-1-ezequiel@collabora.com>
        <20200220163016.21708-6-ezequiel@collabora.com>
        <20200302145746.3e94c1d1@coco.lan>
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200302145746.3e94c1d1@coco.lan>
Sender: linux-media-owner@vger.kernel.org
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Rob Herring <robh+dt@kernel.org>, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Sakari Ailus <sakari.ailus@iki.fi>, Hans Verkuil <hverkuil@xs4all.nl>
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2 Mar 2020 14:57:46 +0100
Mauro Carvalho Chehab <mchehab+huawei@kernel.org> wrote:

> > +	for (j = 0; j < 3; j++) {  
> 
> Again a magic number. I guess this came from that big "M_N" table with 4
> elements, right? Please use a define instead of hardcoding a number
> here.

Nope, it's unrelated to the cabac_table size, it's related to how the
HW accesses the P/B reflists (there are 1 P reflist, and 2 B reflists,
hence the 3 here). I guess we can have a '#define NUM_REFLISTS 3'.
