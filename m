From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 0/5] regulator: mp8859: add driver for DC/DC converter used on rk3399-roc-pc board
Date: Sat, 04 Jan 2020 22:19:34 +0100
Message-ID: <9349117.str0dnau1D@phil>
References: <20200104153321.6584-1-m.reichl@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200104153321.6584-1-m.reichl@fivetechno.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>
Cc: linux-rockchip@lists.infradead.org, "Angus Ainslie (Purism)" <angus@akkea.ca>, devicetree@vger.kernel.org, Jagan Teki <jagan@amarulasolutions.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, Rob Herring <robh@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Stephan Gerhold <stephan@gerhold.net>
List-Id: linux-rockchip.vger.kernel.org

Hi Markus,

I've only gotten patches 3+5 of this series (vendor-prefix+dts patch), so
maybe you could teach your git-send-email to include all patches to all
recipients.

Am Samstag, 4. Januar 2020, 16:32:44 CET schrieb Markus Reichl:
> On rk3399-roc-pc board a voltage regulator MP8859 from Monolithic Power Systems
> is used to supply the 12V power line. This delivers 5V as a default value after
> boot. The voltage is controllable via I2C.
> Add a basic driver to set and get the voltage of the MP8859 and add a matching
> node with fixed 12V in the DT of the board. 
> 
> Markus Reichl (5):
>   regulator: mp8859: add driver
>   regulator: mp8859: add config option and build entry

I think these two should only need one patch together.

Heiko

>   dt-bindings: add vendor Monolithic Power Systems
>   dt-bindings: regulator: add MPS mp8859 voltage regulator
>   arm64: dts: rockchip: Enable mp8859 regulator on rk3399-roc-pc
> 
>  .../devicetree/bindings/regulator/mp8859.txt  |  22 +++
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  .../boot/dts/rockchip/rk3399-roc-pc.dtsi      |  32 ++--
>  drivers/regulator/Kconfig                     |  11 ++
>  drivers/regulator/Makefile                    |   1 +
>  drivers/regulator/mp8859.c                    | 156 ++++++++++++++++++
>  6 files changed, 210 insertions(+), 14 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/mp8859.txt
>  create mode 100644 drivers/regulator/mp8859.c
> 
> 
