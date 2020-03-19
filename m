From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: Re: [PATCH] phy: rk-inno-usb2: Decrease verbosity of repeating log.
Date: Thu, 19 Mar 2020 15:22:48 +0100
Message-ID: <2002640.57rdNQtM3Z@diego>
References: <20200319140852.27636-1-christoph.muellner@theobroma-systems.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
In-Reply-To: <20200319140852.27636-1-christoph.muellner@theobroma-systems.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Christoph Muellner <christoph.muellner@theobroma-systems.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 19. M=E4rz 2020, 15:08:52 CET schrieb Christoph Muellner:
> phy-rockchip-inno-usb2 logs the message
> =

>   "phy-ff2c0000.syscon:usb2-phy@100.2: charger =3D INVALID_CHARGER"
> =

> constantly with a frequency of about 1 Hz and a verbosity level
> of INFO. As this is clearly annoying, this patch decreases
> the log level to DEBUG.
> =

> Signed-off-by: Christoph Muellner <christoph.muellner@theobroma-systems.c=
om>

I've noticed these messages in the past as well, but I guess in my short
test-cycles never got annoyed enough to do something about it, but it's
nice to see them go away, so

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
