From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 2/2] ARM: dts: rockchip: remove #address-cells and #size-cells from i2s nodes
Date: Tue, 17 Mar 2020 01:30:36 +0100
Message-ID: <17804728.xSKf3K9Wuf@phil>
References: <20200311162524.19748-1-jbx6244@gmail.com> <20200311162524.19748-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200311162524.19748-2-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 11. März 2020, 17:25:24 CET schrieb Johan Jonker:
> An experimental test with the command below gives
> for example this error:
> 
> arch/arm/boot/dts/rk3036-evb.dt.yaml: i2s@10220000:
> '#address-cells', '#size-cells'
> do not match any of the regexes: 'pinctrl-[0-9]+'
> 
> '#address-cells' and '#size-cells' are not a valid property
> for i2s nodes, so remove them.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.7

Thanks
Heiko
