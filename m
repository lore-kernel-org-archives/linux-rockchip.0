From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v1 1/2] dt-bindings: modify document of Rockchip power domains
Date: Tue, 12 Apr 2016 04:00:10 +0200
Message-ID: <1560475.Omi7ovI7oB@phil>
References: <1458285444-31129-1-git-send-email-zhangqing@rock-chips.com> <7hshznsqs4.fsf@baylibre.com> <21140203.EjVS0MZtuq@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <21140203.EjVS0MZtuq@phil>
Sender: linux-kernel-owner@vger.kernel.org
To: Kevin Hilman <khilman@baylibre.com>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, xf@rock-chips.com, wxt@rock-chips.com, linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Kevin,

Am Freitag, 18. M=E4rz 2016, 23:16:55 schrieb Heiko Stuebner:
> Am Freitag, 18. M=E4rz 2016, 09:18:51 schrieb Kevin Hilman:
> > Elaine Zhang <zhangqing@rock-chips.com> writes:
> > > Add qos example for power domain which found on Rockchip SoCs.
> > > These qos register description in TRMs
> > > (rk3036, rk3228, rk3288, rk3366, rk3368, rk3399) looks the same.
> >=20
> > This should describe in more detail what "qos" is in this context. =
 At
> > first glance, it's just a range of registers that lose context that=
 need
> > to be saved/restored.
>=20
> I guess that should be something like
>=20
> ---- 8< ----
> Rockchip SoCs contain quality of service (qos) blocks managing priori=
ty,
> bandwidth, etc of the connection of each domain to the interconnect.
> These blocks loose state when their domain gets disabled and therefor=
e
> need to be saved when disabling and restored when enabling a power-do=
main.
>=20
> These qos blocks also are similar over all currently available Rockch=
ip
> SoCs.
> ---- 8< ----

does this look sane to you in terms of description, or do we need somet=
hing=20
more?


Heiko
