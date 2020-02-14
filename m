From: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [PATCH] media: staging: rkisp1: don't lock media's graph_mutex
 when calling rkisp1_create_links
Date: Fri, 14 Feb 2020 11:47:06 +0200
Message-ID: <20200214094706.GH22481@paasikivi.fi.intel.com>
References: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20200204214446.20381-1-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-media@vger.kernel.org, helen.koike@collabora.com, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Feb 04, 2020 at 10:44:44PM +0100, Dafna Hirschfeld wrote:
> The function rkisp1_create_links calls media_entity_get_fwnode_pad
> and media_create_pad_link in the mc api. Those calls don't require
> locking the graph_mutex so remove the locking.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

For the three patches:

Acked-by: Sakari Ailus <sakari.ailus@linux.intel.com>

-- 
Sakari Ailus
