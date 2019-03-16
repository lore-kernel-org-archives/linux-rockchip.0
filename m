From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add PWM fan for NanoPC-T4
Date: Sat, 16 Mar 2019 20:50:46 +0100
Message-ID: <31057340.371mUUntNj@phil>
References: <c5a0100395d44fe460c460bb4f8e8d7324ae63b3.1552611953.git.robin.murphy@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <c5a0100395d44fe460c460bb4f8e8d7324ae63b3.1552611953.git.robin.murphy-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 15. M=E4rz 2019, 02:05:53 CET schrieb Robin Murphy:
> NanoPC-T4 has a dedicated circuit for driving a 12V fan from PWM1,
> so let's add that along with some rough empirically-derived thermal
> settings for the benefit of anyone determined enough to hook one up.
> =

> The vendor does not currently offer a suitable fan, but this seems as
> good a place as any to note that pre-terminated 3-pin JST GH connectors
> are readily available online, and if you even have to ask, then splicing
> one of those really will be orders of magnitude cheaper and simpler than
> getting set up to crimp the teeny-tiny things by hand.
> =

> Signed-off-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>

applied for 5.2

Thanks
Heiko
