From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/2] ARM: dts: rockchip: update the thermal management on
 rk3288
Date: Tue, 01 Dec 2015 14:39:31 +0100
Message-ID: <3663494.cgIFXjvlv9@diego>
References: <2402718.WBE9iyTUZ2@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <2402718.WBE9iyTUZ2@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: linux-rockchip@lists.infradead.org
Cc: Romain Perier <romain.perier@gmail.com>, linux-arm-kernel@lists.infradead.org, Caesar Wang <wxt@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 30. November 2015, 14:13:17 schrieb Heiko St=FCbner:
> From: Caesar Wang <wxt@rock-chips.com>
> =

> In some cases the machine radiating is very poor,sometime the temperature
> is rising very quickly on heavy loading.So we need have more frequent
> polling and better granularity.
> =

> Signed-off-by: Caesar Wang <wxt@rock-chips.com>
> Reviewed-by: Dmitry Torokhov <dtor@chromium.org>
> Signed-off-by: Heiko Stuebner <heiko.stuebner@collabora.com>

applied both patches to my dts32 branch for 4.5
