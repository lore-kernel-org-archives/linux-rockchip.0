From: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [PATCH] drm/rockchip: Don't allow zero sized gem buffer
Date: Thu, 25 May 2017 22:52:18 -0700
Message-ID: <20170526055218.GA23802@infradead.org>
References: <1495521583-29151-1-git-send-email-jeffy.chen@rock-chips.com>
 <20170525153045.7svkkmfsqbqkfacp@art_vandelay>
 <59279331.3050402@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <59279331.3050402-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: jeffy <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Sean Paul <seanpaul-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, May 26, 2017 at 10:30:09AM +0800, jeffy wrote:
> Hi sean,
> 
> On 05/25/2017 11:30 PM, Sean Paul wrote:
> > On Tue, May 23, 2017 at 02:39:43PM +0800, Jeffy Chen wrote:
> > > The system would crash when trying to alloc zero sized gem buffer:
> > > [    6.712435] Unable to handle kernel NULL pointer dereference at virtual address 00000010 <--ZERO_SIZE_PTR
> > > ...
> > > [    6.757502] PC is at sg_alloc_table_from_pages+0x170/0x1ec
> > 
> > It's unfortunate that you didn't include the entire stack trace. From code
> > inspection, it seems like the 0 size comes from the fb_probe path? Is there
> > somewhere in the helpers that you could check the mode is sane so all drivers
> > can benefit?
> 
> hmm, sorry, i was testing it on chromeos 4.4 kernel, it turns out that we
> have a custom ioctl for userspace to create gem buffer(the same as exynos
> drm), which might get the the 0 size.
> 
> but on upstream kernel, it could only be called by dump_create, and the
> drm_mode_create_dumb_ioctl already did the size check.
> 
> will resent this patch, and rewrite the commit message, thanx.

That suggests that this patch isn't needed at all.
