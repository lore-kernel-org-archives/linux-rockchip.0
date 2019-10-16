From: Joerg Roedel <joro@8bytes.org>
Subject: Re: [PATCH] iommu: rockchip: Free domain on .domain_free
Date: Wed, 16 Oct 2019 09:43:39 +0200
Message-ID: <20191016074339.GA32232@8bytes.org>
References: <20191002172923.22430-1-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191002172923.22430-1-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, iommu@lists.linux-foundation.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com
List-Id: linux-rockchip.vger.kernel.org

On Wed, Oct 02, 2019 at 02:29:23PM -0300, Ezequiel Garcia wrote:
> IOMMU domain resource life is well-defined, managed
> by .domain_alloc and .domain_free.
> 
> Therefore, domain-specific resources shouldn't be tied to
> the device life, but instead to its domain.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/iommu/rockchip-iommu.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)

Applied, thanks.
