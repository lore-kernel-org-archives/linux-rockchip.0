From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] ARM: dts: rockchip: swap clock-names of gpu nodes
Date: Mon, 27 Apr 2020 21:42:27 +0200
Message-ID: <158801649141.50507.12679129425303471594.b4-ty@sntech.de>
References: <20200425192500.1808-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200425192500.1808-1-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, 25 Apr 2020 21:25:00 +0200, Johan Jonker wrote:
> Dts files with Rockchip 'gpu' nodes were manually verified.
> In order to automate this process arm,mali-utgard.txt
> has been converted to yaml. In the new setup dtbs_check with
> arm,mali-utgard.yaml expects clock-names values
> in the same order, so fix that.
> 
> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 
> [...]

Applied, thanks!

[1/1] ARM: dts: rockchip: swap clock-names of gpu nodes
      commit: b14f3898d2c25a9b47a61fb879d0b1f3af92c59b

Best regards,
-- 
Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
