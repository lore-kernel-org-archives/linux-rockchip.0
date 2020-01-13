From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] ARM: dts: rockchip: add reg property to brcmf sub node for rk3188-bqedison2qc
Date: Mon, 13 Jan 2020 10:52:26 +0100
Message-ID: <2805256.31IRENKq1c@phil>
References: <20200110134420.11280-1-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200110134420.11280-1-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Freitag, 10. Januar 2020, 14:44:20 CET schrieb Johan Jonker:
> An experimental test with the command below gives this error:
> rk3188-bqedison2qc.dt.yaml: dwmmc@10218000: wifi@1:
> 'reg' is a required property
> 
> So fix this by adding a reg property to the brcmf sub node.
> Also add #address-cells and #size-cells to prevent more warnings.
> 
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

applied for 5.6

Thanks
Heiko
