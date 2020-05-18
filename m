From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: rockchip: update example
Date: Mon, 18 May 2020 09:20:32 +0200
Message-ID: <CACRpkdYrDHNp7esSYw9y7CQoZ1aZojWkhAU_MG4uvmk7nVJbOQ@mail.gmail.com>
References: <20200512203524.7317-1-jbx6244@gmail.com> <20200512203524.7317-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200512203524.7317-2-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, May 12, 2020 at 10:35 PM Johan Jonker <jbx6244@gmail.com> wrote:

> The Rockchip dtsi and dts files have been bulk-converted for the
> remaining raw gpio numbers into their descriptive counterparts and
> also got rid of the unhelpful RK_FUNC_x -> x and RK_GPIOx -> x
> mappings, so update the example as well.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

This patch applied to the pinctrl tree.

Yours,
Linus Walleij
