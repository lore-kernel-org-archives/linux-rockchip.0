From: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] MAINTAINERS: add RV1108 Rockchip soc to maintained files
Date: Sun, 18 Jun 2017 18:54:29 -0700
Message-ID: <20170619015429.GA30022@localhost>
References: <20170607110627.4678-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <20170607110627.4678-1-heiko@sntech.de>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, arm@kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jun 07, 2017 at 01:06:27PM +0200, Heiko Stuebner wrote:
> The RV1108, as a soc targetted at visual applications, does not follow
> the usual RKxxxx naming scheme and thus falls through the cracks of
> the current file list for Rockchip socs in MAINTAINERS.
> 
> The driver side does not pose a problem, as the rv1108 shares most
> functionality with other Rockchip socs as usual, so we only need to
> add an expression catching the rv1108* arm32 devicetree files.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
> This could either be applied by arm-soc people directly, or I can
> integrate it into my arm32-dts-branch.

Applied to next/fixes-non-critical


-Olof
