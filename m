From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: dw-mipi-dsi: Support MIPI_DSI_DCS_READ
Date: Fri, 07 Dec 2018 15:58:06 +0100
Message-ID: <2530200.jDlzaWghUx@phil>
References: <20181205130243.5810-1-richard@puffinpack.se>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20181205130243.5810-1-richard@puffinpack.se>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Richard =?ISO-8859-1?Q?R=F6jfors?= <richard.rojfors@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Richard =?ISO-8859-1?Q?R=F6jfors?= <richard@puffinpack.se>
List-Id: linux-rockchip.vger.kernel.org

Hi Richard,

Am Mittwoch, 5. Dezember 2018, 14:02:43 CET schrieb Richard R=F6jfors:
> There is sometimes a need to be able to read from the other
> end for instance to identify panels.
> =

> Signed-off-by: Richard R=F6jfors <richard@puffinpack.se>

The Rockchip dsi driver got converted to use the generic dw-mipi-dsi
bridge - will be part of 4.21. And there the different methods seem to
be implemented already.

So this patch does not seem to be relevant anymore. Please wait for 4.21-rc1
or check linux-next, if there is still functionality missing.

Also as a general note, please check scripts/get_maintainer.pl when
sending patches, as that should have also listed the dri-devel list, which
missing here.


Thanks
Heiko
