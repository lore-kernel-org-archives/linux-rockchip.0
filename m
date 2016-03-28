From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v6 2/6] power-domain: allow domains only handling idle requests
Date: Mon, 28 Mar 2016 12:09:43 +0200
Message-ID: <2362699.UXTOZsAcz0@diego>
References: <1457558578-22049-1-git-send-email-zhangqing@rock-chips.com> <1457558578-22049-3-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1457558578-22049-3-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>
Cc: khilman@baylibre.com, xf@rock-chips.com, wxt@rock-chips.com, linux-arm-kernel@lists.infradead.org, huangtao@rock-chips.com, zyw@rock-chips.com, xxx@rock-chips.com, jay.xu@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 10. M=E4rz 2016, 05:22:54 schrieb Elaine Zhang:
> On some Rockchip SoC there exist child-domains only handling their
> idle state with the actual power-state handled by a parent-domain.
>=20
> So allow such types of domains. For them, we can determine their
> state (on/of) by checking the inverse idle-state instead.
>=20
> There exist one special case if both idle as well power handling
> were set as not present, but as the domain-data is defined in the
> code itself, we can expect the reasonable developer to define them
>=20
> So allow such types of domains. For them, we can determine their
> state (on/of) by checking the inverse idle-state instead.
>=20
> There exist one special case if both idle as well power handling
> were set as not present, but as the domain-data is defined in the
> code itself, we can expect the reasonable developer to define them
> in a correct, without adding more checks.
>=20
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

applied to my armsoc/drivers branch for 4.7


Thanks
Heiko
