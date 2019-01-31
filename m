From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCHv2 4/9] drm/rockchip/rockchip_drm_gem.c: Convert to use vm_insert_range
Date: Thu, 31 Jan 2019 13:07:05 +0100
Message-ID: <8111278.aDhVmSDgJm@phil>
References: <20190131031040.GA2320@jordon-HP-15-Notebook-PC>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190131031040.GA2320@jordon-HP-15-Notebook-PC>
Sender: linux-kernel-owner@vger.kernel.org
To: Souptick Joarder <jrdr.linux@gmail.com>
Cc: akpm@linux-foundation.org, willy@infradead.org, mhocko@suse.com, hjc@rock-chips.com, airlied@linux.ie, linux@armlinux.org.uk, robin.murphy@arm.com, linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 31. Januar 2019, 04:10:40 CET schrieb Souptick Joarder:
> Convert to use vm_insert_range() to map range of kernel
> memory to user vma.
> 
> Signed-off-by: Souptick Joarder <jrdr.linux@gmail.com>

hmm, I'm missing a changelog here between v1 and v2.
Nevertheless I managed to test v1 on Rockchip hardware
and display is still working, including talking to Lima via prime.

So if there aren't any big changes for v2, on Rockchip
Tested-by: Heiko Stuebner <heiko@sntech.de>

Heiko
