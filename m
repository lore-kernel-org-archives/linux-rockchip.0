From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v1 1/2] dt-bindings: modify document of Rockchip power domains
Date: Fri, 18 Mar 2016 23:16:55 +0100
Message-ID: <21140203.EjVS0MZtuq@phil>
References: <1458285444-31129-1-git-send-email-zhangqing@rock-chips.com> <1458285444-31129-2-git-send-email-zhangqing@rock-chips.com> <7hshznsqs4.fsf@baylibre.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <7hshznsqs4.fsf@baylibre.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kevin Hilman <khilman@baylibre.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, xf@rock-chips.com, wxt@rock-chips.com, linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 18. M=E4rz 2016, 09:18:51 schrieb Kevin Hilman:
> Elaine Zhang <zhangqing@rock-chips.com> writes:
> > Add qos example for power domain which found on Rockchip SoCs.
> > These qos register description in TRMs
> > (rk3036, rk3228, rk3288, rk3366, rk3368, rk3399) looks the same.
>=20
> This should describe in more detail what "qos" is in this context.  A=
t
> first glance, it's just a range of registers that lose context that n=
eed
> to be saved/restored.

I guess that should be something like

---- 8< ----
Rockchip SoCs contain quality of service (qos) blocks managing priority=
,=20
bandwidth, etc of the connection of each domain to the interconnect.
These blocks loose state when their domain gets disabled and therefore
need to be saved when disabling and restored when enabling a power-doma=
in.

These qos blocks also are similar over all currently available Rockchip=
=20
SoCs.
---- 8< ----
