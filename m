From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3328 rgmii high tx error rate
Date: Sat, 16 Mar 2019 21:00:24 +0100
Message-ID: <5627989.CJK7gzyIMr@phil>
References: <20190313184535.15759-1-pgwipeout@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20190313184535.15759-1-pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, "Leonidas P . Papadakos" <papadakospan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 13. M=E4rz 2019, 19:45:36 CET schrieb Peter Geis:
> Resubmitting, after further research, review, comments, and suggestions.
> =

> Several rk3328 based boards experience high rgmii tx error rates.
> This is due to several pins in the rk3328.dtsi rgmii pinmux that are
> missing a defined pull strength setting.
> This causes the pinmux driver to default to 2ma (bit mask 00).
> =

> These pins are only defined in the rk3328.dtsi, and are not listed in
> the rk3328 specification.
> The TRM only lists them as "Reserved"
> (RK3328 TRM V1.1, 3.3.3 Detail Register Description, GRF_GPIO0B_IOMUX,
> GRF_GPIO0C_IOMUX, GRF_GPIO0D_IOMUX).
> However, removal of these pins from the rgmii pinmux definition causes
> the interface to fail to transmit.
> =

> Also, the rgmii tx and rx pins defined in the dtsi are not consistent
> with the rk3328 specification, with tx pins currently set to 12ma and
> rx pins set to 2ma.
> =

> Fix this by setting tx pins to 8ma and the rx pins to 4ma, consistent
> with the specification.
> Defining the drive strength for the undefined pins eliminated the high
> tx packet error rate observed under heavy data transfers.
> Aligning the drive strength to the TRM values eliminated the occasional
> packet retry errors under iperf3 testing.
> This allows much higher data rates with no recorded tx errors.
> =

> Tested on the rk3328-roc-cc board.
> =

> Signed-off-by: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

applied as fix for 5.1 after adding Fixes and Cc-stable-tags

Thanks
Heiko
