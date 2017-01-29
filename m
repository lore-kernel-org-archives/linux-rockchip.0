From: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 3/3] Rockchip dts64 updates for 4.11 part1
Date: Sun, 29 Jan 2017 14:42:38 -0800
Message-ID: <20170129224238.GD3133@localhost>
References: <6458001.3c0YmcoF8y@phil>
 <7817230.eJtdPce88n@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
Content-Disposition: inline
In-Reply-To: <7817230.eJtdPce88n@phil>
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

On Sat, Jan 21, 2017 at 01:12:01AM +0100, Heiko Stuebner wrote:
> The following changes since commit 0c744ea4f77d72b3dcebb7a8f2684633ec79be88:
> 
>   Linux 4.10-rc2 (2017-01-01 14:31:53 -0800)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v4.11-rockchip-dts64-1
> 
> for you to fetch changes up to 8cbb59af7ecf183b1761a178835e1c771167fa28:
> 
>   arm64: dts: rockchip: add rockchip,grf property for RK3399 PMUCRU/CRU (2017-01-13 20:03:15 +0100)
> 
> ----------------------------------------------------------------
> 64bit dts changes with some adjustments to the pcie controller,
> usb clocks, grf phandles for the rk3399 CRUs, epd pinctrl settings,
> a phandle to the rk3399 tsadc and converting boards to use the
> recently introduced pin constants.

Merged, thanks.


-Olof
