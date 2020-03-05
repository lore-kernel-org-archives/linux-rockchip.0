From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 2/3] ARM: dts: rockchip: add missing @0 to memory nodenames
Date: Thu, 05 Mar 2020 22:31:59 +0100
Message-ID: <1784340.9KJLpVao5L@phil>
References: <20200304074051.8742-1-jbx6244@gmail.com> <20200304074051.8742-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200304074051.8742-2-jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Johan,

Am Mittwoch, 4. März 2020, 08:40:50 CET schrieb Johan Jonker:
> A test with the command below gives for example this error:
> 
> arch/arm/boot/dts/rk3288-tinker.dt.yaml: /: memory:
> False schema does not allow
> {'device_type': ['memory'], 'reg': [[0, 0, 0, 2147483648]]}
> 
> The memory nodes all have a reg property that requires '@' in
> the nodename. Fix this error by adding the missing '@0' to
> the involved memory nodenames.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/
> schemas/root-node.yaml

changes to memory nodes you sadly cannot do in such an automated fashion.
If you read the comment in rk3288-veyron.dtsi you'll see that a previous
similar iteration broke all of those machines as their coreboot doesn't
copy with memory@0 and would insert another memory node without @0

In the past iteration the consensus then was that memory without @0
is also ok (as it isn't changeable anyway).

As I don't really want to repeat that, I'd like actual hardware tests
before touching memory nodes.

Heiko
