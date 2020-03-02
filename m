From: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH 1/3] mtd: rawnand: rockchip: NFC drivers for RK3308,
 RK3188 and others
Date: Mon, 2 Mar 2020 10:47:54 +0100
Message-ID: <20200302104754.61204e72@xps13>
References: <20200302024744.28185-1-yifeng.zhao@rock-chips.com>
        <20200302024744.28185-2-yifeng.zhao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200302024744.28185-2-yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Yifeng,

Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote on Mon,  2 Mar 2020
10:47:42 +0800:

> This driver supports Rockchip NFC (NAND Flash Controller) found on RK3308,
> RK3368, RKPX30, RV1108 and other SOCs. The driver has been tested using
> 8-bit NAND interface on the ARM based RK3308 platform.

I missed this series, you should have it prefixed "v2". Please use
git-format-patch to generate your series. This time you miss the cover
letter (or at least your second and third patches should be answers to
the first one) otherwise it is not easy to follow when people start
discussing:

	git format-patch --cover-letter -v<x> [commits]
	git send-email v<x>-*.patch --to ... --cc ...

For the next iteration, <x> should be 3.

Also, mind the title change for the bindings changes.

Good luck,
Miquèl
