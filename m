From: "Huang, Tao" <huangtao@rock-chips.com>
Subject: Re: [RESEND PATCH] rtc: rk808: rename rtc-rk808.c to rtc-rk8xx.c
Date: Tue, 5 Jan 2016 16:31:38 +0800
Message-ID: <568B7F6A.3000607@rock-chips.com>
References: <1451571295-4193-1-git-send-email-zhangqing@rock-chips.com>
 <20160104094546.GB32724@piout.net>
 <20160104145938.6c053b5a@linux.lan.towertech.it>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20160104145938.6c053b5a@linux.lan.towertech.it>
Sender: linux-kernel-owner@vger.kernel.org
To: Alessandro Zummo <a.zummo@towertech.it>, Alexandre Belloni <alexandre.belloni@free-electrons.com>
Cc: zhangqing <zhangqing@rock-chips.com>, heiko@sntech.de, lee.jones@linaro.org, zyw@rock-chips.com, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, rtc-linux@googlegroups.com
List-Id: linux-rockchip.vger.kernel.org

Hi, Alessandro:

On 2016=E5=B9=B401=E6=9C=8804=E6=97=A5 21:59, Alessandro Zummo wrote:
> On Mon, 4 Jan 2016 10:45:46 +0100
> Alexandre Belloni <alexandre.belloni@free-electrons.com> wrote:
>=20
>> I'm not sure it is useful to do that renaming. It is usual to have o=
ne
>> driver that supports multiple chips named with the forst chip it
>> supported.
>>
>> Also, what would happen if for example rk855 is not compatible at al=
l
>> with the previous implementations?
>=20
>  Alexandre is absolutely right. There's no need to rename a driver,
>  it would just piss off people who are used to that name and
>  have it in their scripts. Like when your eth0 gets renamed
>  to some obscure enXXX <g>.
>=20

You and Alexandre are right. The rename is just make the driver more
readable, i.e. let people know this driver suit for more PMIC no just
rk808. In fact, I don't care the name is rk808 or rk8xx.

The key change of this patch is try to dis-coupling rk808 driver and RT=
C
driver. Because of register offset and function is vary between
different PMIC, we believe it is hard to write one PMIC driver to suit
all PMIC. So we hope RTC driver can share between all PMIC from rockchi=
p.

Please review this code:

-static int rk808_rtc_probe(struct platform_device *pdev)
+static int rk8xx_rtc_probe(struct platform_device *pdev)
 {
-	struct rk808 *rk808 =3D dev_get_drvdata(pdev->dev.parent);
	...
+	struct i2c_client *client =3D to_i2c_client(pdev->dev.parent);

	...

-	rk808_rtc->rk808 =3D rk808;
+	rk8xx_rtc->regmap =3D devm_regmap_init_i2c(client,
+					     &rk8xx_rtc_regmap_config);
	...
+	rk8xx_rtc->i2c =3D client;

Old driver have struct rk808 pointer, which defined on
include/linux/mfd/rk808.h
If we write new PMIC driver, for example rk818, define a new struct
rk818. How can we get this pointer from RTC driver?

So another way to solve this problem is introduce common struct share
between all PMIC driver. For example rk8xx.

We solve this problem by create new regmap to access PMIC. As I say
before, it make RTC driver independent of PMIC driver. Do you agree thi=
s
change?

Thanks!
Huang, Tao
