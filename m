From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2] ARM: rockchip: Fix use of plain integer as NULL pointer
Date: Sat, 19 Mar 2016 09:31:08 +0100
Message-ID: <1774724.ZvGCkNYnIY@phil>
References: <1458222191-26023-1-git-send-email-peter.griffin@linaro.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1458222191-26023-1-git-send-email-peter.griffin@linaro.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Peter Griffin <peter.griffin@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, patches@linaro.org, lee.jones@linaro.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 17. M=E4rz 2016, 13:43:11 schrieb Peter Griffin:
> This fixes the following sparse build warning:
>=20
>      mach-rockchip/platsmp.c:68:43: Using plain integer as NULL point=
er
>=20
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>

applied to soc32-fixes for 4.6 with Lee's Ack


Thanks
Heiko
