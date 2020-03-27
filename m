From: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 2/6] arm64: dts: rockchip: rk3328: Replace RK805 PMIC node
 name with "pmic"
Date: Fri, 27 Mar 2020 20:15:57 +0800
Message-ID: <CAGb2v65CL_K-c=fej=5UNseJvApusj7Q1AjZETs-q70kOwey8w@mail.gmail.com>
References: <20200327030414.5903-3-wens@kernel.org> <8bfb3237-4bd3-8452-1860-ac05f3a23503@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <8bfb3237-4bd3-8452-1860-ac05f3a23503@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: Chen-Yu Tsai <wens@kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, linux-kernel <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Mar 27, 2020 at 8:12 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi Chen-Yu Tsai,
>
> The Documentation/ portion of the patch should come in the series before
> the code implementing the binding.

The name is not part of the binding.

> If you like, could you convert the binding as well and fix the example?
>
> Documentation/devicetree/bindings/pinctrl/pinctrl-rk805.txt

I can send an extra patch to fix the example.

ChenYu

> > Example:
> > --------
> > rk805: rk805@18 {
> >       compatible = "rockchip,rk805";
>
