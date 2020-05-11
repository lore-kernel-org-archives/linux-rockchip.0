From: Marek Vasut <marex@denx.de>
Subject: Re: [PATCH v4 12/16] usb: dwc3: add make compatible for rockchip
 platform
Date: Mon, 11 May 2020 11:48:20 +0200
Message-ID: <502d8fff-5ae2-b47f-f483-62cd24177ed1@denx.de>
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
 <20200511075725.26665-1-frank.wang@rock-chips.com>
 <20200511075725.26665-3-frank.wang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <u-boot-bounces@lists.denx.de>
In-Reply-To: <20200511075725.26665-3-frank.wang@rock-chips.com>
Content-Language: en-US
List-Unsubscribe: <https://lists.denx.de/options/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=unsubscribe>
List-Archive: <https://lists.denx.de/pipermail/u-boot/>
List-Post: <mailto:u-boot@lists.denx.de>
List-Help: <mailto:u-boot-request@lists.denx.de?subject=help>
List-Subscribe: <https://lists.denx.de/listinfo/u-boot>,
 <mailto:u-boot-request@lists.denx.de?subject=subscribe>
Errors-To: u-boot-bounces@lists.denx.de
Sender: "U-Boot" <u-boot-bounces@lists.denx.de>
To: Frank Wang <frank.wang@rock-chips.com>, heiko@sntech.de, bmeng.cn@gmail.com, philipp.tomsich@theobroma-systems.com, klaus.goger@theobroma-systems.com, jagan@amarulasolutions.com, sjg@chromium.org, kever.yang@rock-chips.com
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com, marek.belisko@gmail.com, william.wu@rock-chips.com, jianing.ren@rock-chips.com, chenjh@rock-chips.com, wmc@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On 5/11/20 9:57 AM, Frank Wang wrote:
[...]

> @@ -394,6 +407,12 @@ static int dwc3_glue_probe(struct udevice *dev)
>  	if (ret)
>  		return ret;
>  
> +	if (glue->resets.count < 1) {

This condition is only true if count == 0 ?
What's the purpose of this test ?

> +		ret = dwc3_glue_reset_init(child, glue);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	while (child) {
>  		enum usb_dr_mode dr_mode;
>  

[...]
