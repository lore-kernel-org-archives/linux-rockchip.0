From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Move xin32k fixed-clock out of PX30
 DTSI
Date: Wed, 04 Dec 2019 18:31:46 +0100
Message-ID: <2665233.YyXs6BPQ7y@diego>
References: <20191204171537.14163-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191204171537.14163-1-miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Miquel,

Am Mittwoch, 4. Dezember 2019, 18:15:37 CET schrieb Miquel Raynal:
> This clock has nothing to do in the PX30 DTSI as it is supposed to be
> an input of the SoC. Moving it to the EVB DTS (only board file using
> this DTSI) makes more sense. Also, when this clock is not a fixed
> clock and comes from eg. a PMIC the situation can be described cleanly
> in the device tree (avoids having to delete the fixed-clock node
> first).
> 
> This clock is not mandatory to boot so it should not break existing
> users.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>

Sorry foo being the bearer of bad news again, but that issue got already
fixed by:

arm64: dts: rockchip: remove static xin32k from px30
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v5.5-armsoc/dts64&id=00519137f7d4fc19ff27f3d3f4fc45b5b222ae82

arm64: dts: rockchip: fix the px30-evb power tree
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v5.5-armsoc/dts64&id=915b6a8b54a6d436885a458867e59fb20fc6356d


On most/all Rockchip the xin32k clock is actually provided by the boards
pmic - the rk809 in this case.


Heiko
