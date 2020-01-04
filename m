From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 2/2] dt-bindings: mmc: clarify disable-wp text
Date: Sat, 4 Jan 2020 14:55:31 -0700
Message-ID: <20200104215531.GA28533@bogus>
References: <20191219145843.3823-1-jbx6244@gmail.com>
 <20191228093059.2817-1-jbx6244@gmail.com>
 <20191228093059.2817-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191228093059.2817-2-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>
Cc: robh+dt@kernel.org, mark.rutland@arm.com, ulf.hansson@linaro.org, linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, 28 Dec 2019 10:30:59 +0100, Johan Jonker wrote:
> "disable-wp" has been removed from all Rockchip eMMC and SDIO dts nodes,
> but people still continue to submit new patches with "disable-wp" added
> to other nodes then for the SD card slot,
> what it was designed for in the first place.
> So clarify the "disable-wp" text by adding that this option should
> not be used in combination with eMMC or SDIO.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/mmc/mmc-controller.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks.

Rob
