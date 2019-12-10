From: Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH] mfd: rk808: Always use poweroff when requested
Date: Tue, 10 Dec 2019 18:12:18 +0530
Message-ID: <CANAwSgS9ixhyOE2QYQ3CetA=BUVebMan2=9xBKF=U3YXAwCHNQ@mail.gmail.com>
References: <20191209115746.12953-1-smoch@web.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191209115746.12953-1-smoch@web.de>
Sender: linux-kernel-owner@vger.kernel.org
To: Soeren Moch <smoch@web.de>
Cc: Lee Jones <lee.jones@linaro.org>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, Linux Kernel <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Soeren,

On Mon, 9 Dec 2019 at 17:28, Soeren Moch <smoch@web.de> wrote:
>
> With the device tree property "rockchip,system-power-controller" we
> explicitly request to use this PMIC to power off the system. So always
> register our poweroff function, even if some other handler (probably
> PSCI poweroff) was registered before.
>
> Signed-off-by: Soeren Moch <smoch@web.de>
> ---
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/mfd/rk808.c | 11 ++---------
>  1 file changed, 2 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
> index a69a6742ecdc..616e44e7ef98 100644
> --- a/drivers/mfd/rk808.c
> +++ b/drivers/mfd/rk808.c
> @@ -550,7 +550,7 @@ static int rk808_probe(struct i2c_client *client,
>         const struct mfd_cell *cells;
>         int nr_pre_init_regs;
>         int nr_cells;
> -       int pm_off = 0, msb, lsb;
> +       int msb, lsb;
>         unsigned char pmic_id_msb, pmic_id_lsb;
>         int ret;
>         int i;
> @@ -674,16 +674,9 @@ static int rk808_probe(struct i2c_client *client,
>                 goto err_irq;
>         }
>
> -       pm_off = of_property_read_bool(np,
> -                               "rockchip,system-power-controller");
> -       if (pm_off && !pm_power_off) {
> +       if (of_property_read_bool(np, "rockchip,system-power-controller")) {
>                 rk808_i2c_client = client;
>                 pm_power_off = rk808->pm_pwroff_fn;
> -       }
> -
> -       if (pm_off && !pm_power_off_prepare) {
> -               if (!rk808_i2c_client)
> -                       rk808_i2c_client = client;
>                 pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
>         }
>

I gave this a try on my Rock960 and Odroid N1
both got kernel panic below.

[   58.305868] xhci-hcd xhci-hcd.0.auto: USB bus 5 deregistered
[   58.306747] reboot: Power down
[   58.307106] ------------[ cut here ]------------
[   58.307510] No atomic I2C transfer handler for 'i2c-0'
[   58.308007] WARNING: CPU: 0 PID: 1 at drivers/i2c/i2c-core.h:41
i2c_transfer+0xe4/0xf8
[   58.308696] Modules linked in: snd_soc_hdmi_codec dw_hdmi_i2s_audio
rockchipdrm analogix_dp brcmfmac nvme dw_mipi_dsi nvme_core dw_hdmi
panfrost cec brcmutil drm_kms_helper gpu_sched cfg80211 hci_uart drm
btbcm crct10dif_ce snd_soc_simple_card bluetooth snd_soc_rockchip_i2s
snd_soc_simple_card_utils snd_soc_rockchip_pcm phy_rockchip_pcie
ecdh_generic rtc_rk808 ecc pcie_rockchip_host rfkill rockchip_thermal
ip_tables x_tables ipv6 nf_defrag_ipv6
[   58.312150] CPU: 0 PID: 1 Comm: shutdown Not tainted 5.5.0-rc1-dirty #1
[   58.312725] Hardware name: 96boards Rock960 (DT)
[   58.313131] pstate: 60000085 (nZCv daIf -PAN -UAO)
[   58.313551] pc : i2c_transfer+0xe4/0xf8
[   58.313889] lr : i2c_transfer+0xe4/0xf8
[   58.314225] sp : ffff80001004bb00
[   58.314516] x29: ffff80001004bb00 x28: ffff00007d208000
[   58.314981] x27: 0000000000000000 x26: 0000000000000000
[   58.315446] x25: 0000000000000000 x24: 0000000000000008
[   58.315910] x23: 0000000000000000 x22: ffff80001004bc74
[   58.316375] x21: 0000000000000002 x20: ffff80001004bb58
[   58.316841] x19: ffff0000784f0880 x18: 0000000000000010
[   58.317305] x17: 0000000000000001 x16: 0000000000000019
[   58.317770] x15: ffffffffffffffff x14: ffff8000118398c8
[   58.318236] x13: ffff80009004b867 x12: ffff80001004b86f
[   58.318701] x11: ffff800011851000 x10: ffff80001004b7f0
[   58.319166] x9 : 00000000ffffffd0 x8 : ffff800010699ad8
[   58.319631] x7 : 0000000000000265 x6 : ffff800011a20be9
[   58.320096] x5 : 0000000000000000 x4 : 0000000000000000
[   58.320561] x3 : 00000000ffffffff x2 : ffff800011851ab8
[   58.321026] x1 : d375c0d4f4751f00 x0 : 0000000000000000
[   58.321491] Call trace:
[   58.321710]  i2c_transfer+0xe4/0xf8
[   58.322020]  regmap_i2c_read+0x5c/0x98
[   58.322350]  _regmap_raw_read+0xcc/0x138
[   58.322694]  _regmap_bus_read+0x3c/0x70
[   58.323034]  _regmap_read+0x60/0xe0
[   58.323341]  _regmap_update_bits+0xc8/0x108
[   58.323707]  regmap_update_bits_base+0x60/0x90
[   58.324099]  rk808_device_shutdown+0x38/0x50
[   58.324476]  machine_power_off+0x24/0x30
[   58.324823]  kernel_power_off+0x64/0x70
[   58.325159]  __do_sys_reboot+0x15c/0x240
[   58.325504]  __arm64_sys_reboot+0x20/0x28
[   58.325858]  el0_svc_common.constprop.2+0x88/0x150
[   58.326279]  el0_svc_handler+0x20/0x80
[   58.326607]  el0_sync_handler+0x118/0x188
[   58.326960]  el0_sync+0x140/0x180
[   58.327251] ---[ end trace b1de39d03d724d01 ]---

-Anand
