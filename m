From: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [PATCH 0/3] Add Rockchip NFC drivers for RK3308 and others
Date: Mon, 2 Mar 2020 10:31:03 +0100
Message-ID: <20200302103103.1eb7df94@xps13>
References: <1582884076-27615-1-git-send-email-yifeng.zhao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1582884076-27615-1-git-send-email-yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: richard-/L3Ra7n9ekc@public.gmane.org, vigneshr-l0cyMroinI0@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mtd-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Yifeng,

Yifeng Zhao <yifeng.zhao-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote on Fri, 28 Feb 2020
18:01:13 +0800:

> Rockchp's NFC(Nand Flash Controller) has three versions: V6, V8 and V9.
> This series patch can support all  three versions.
> 

Your series has been badly created, strangely I received twice patch 1
with two different contents, patch 2 arrived way later than patch 1 and
3 and the commit title of the bindings patch is wrong, it should
besomething like:

	dt-bindings: mtd: Describe Rockchip RK3xxx NAND flash controller

Can you please resend this series in a v2?

Thanks,
Miquèl
