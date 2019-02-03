From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rock960: Enable HDMI audio devices
Date: Sun, 03 Feb 2019 09:49:34 +0100
Message-ID: <3467399.GglsX2lTEV@phil>
References: <20190129113324.29440-1-ezequiel@collabora.com>
 <20190129114031.GA17014@Mani-XPS-13-9360>
 <e80f7cea65a51a2746aaef2c4efb1c1a474fbc1e.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <e80f7cea65a51a2746aaef2c4efb1c1a474fbc1e.camel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Manivannan Sadhasivam <manivannan.sadhasivam-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 29. Januar 2019, 13:08:11 CET schrieb Ezequiel Garcia:
> On Tue, 2019-01-29 at 17:10 +0530, Manivannan Sadhasivam wrote:
> > On Tue, Jan 29, 2019 at 08:33:24AM -0300, Ezequiel Garcia wrote:
> > > This commit enable the hdmi-sound and i2s2 devices needed
> > > to have audio over HDMI.
> > > 
> > > Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > 
> > Since this patch affects both Rock960 and Ficus, it should be mentioned
> > in the description. Other than that,

I've adapted the subject a bit (arm64: dts: rockchip: Eanble HDMI audio
devices on rk3399-rock960), mentioned rock960 and ficus in the message
and applied the result for 5.1

Thanks
Heiko
