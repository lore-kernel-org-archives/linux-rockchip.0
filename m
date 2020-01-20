From: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [Bug ?] usb :typec :tcpm :fusb302
Date: Mon, 20 Jan 2020 12:26:52 -0800
Message-ID: <d3c847f7-2c8a-3cc0-00db-f46668fd83ca@roeck-us.net>
References: <0ac6bbe7-6395-526d-213c-ac58a19d8673@fivetechno.de>
 <20200120115828.GC32175@kuha.fi.intel.com>
 <e05b6c1f-5e00-c000-23b9-1683230fd9f7@roeck-us.net>
 <546a5723-a974-ed0a-93e3-b46c919b0f7e@fivetechno.de>
 <2e739a08-191b-d7c9-1273-4000cbbca423@roeck-us.net>
 <d985890e-f1a4-a9b4-8f08-1860ea4486f7@fivetechno.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <d985890e-f1a4-a9b4-8f08-1860ea4486f7@fivetechno.de>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Markus Reichl <m.reichl@fivetechno.de>, Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Heiko Stuebner <heiko@sntech.de>, Linux USB Mailing List <linux-usb@vger.kernel.org>, Linux Kernel <linux-kernel@vger.kernel.org>, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 1/20/20 12:14 PM, Markus Reichl wrote:
> Hi Guenter,
> 
> Am 20.01.20 um 17:04 schrieb Guenter Roeck:
>> On 1/20/20 6:34 AM, Markus Reichl wrote:
>>> Hi Guenter,
>>>
>>> Am 20.01.20 um 15:21 schrieb Guenter Roeck:
>>>> On 1/20/20 3:58 AM, Heikki Krogerus wrote:
>>>>> Hi Markus,
>>>>>
>>>>> On Thu, Jan 09, 2020 at 05:29:07PM +0100, Markus Reichl wrote:
>>>>>> Hi,
>>>>>>
>>>>>> I'm working with a ROC-RK3399-PC arm64 board from firefly, circuit sheet [1].
>>>>>> The board is powered from an USB-C type connector via an FUSB302 PD controller.
>>>>>> With measured 15W+ power consumption it should use higher voltage PD modes than
>>>>>> the standard 5V USB-C mode.
>>>>>>
>>>>>> When I add the related connector node in DTS [2] the FUSB302 initializes
>>>>>> the right PD mode (e.g. 15V/3A).
>>>>>>
>>>>>> But during initialisation the PD is switched off shortly and the board has a blackout.
>>>>>> When I inject a backup supply voltage behind the FUSB302 (e.g. at SYS_12V line) during boot
>>>>>> I can remove the backup after succesfull setting up the PD and the board will run fine.
>>>>>>
>>>>>> Is it possible to change the behaviour of the fusb302 driver to not power down the PD supply
>>>>>> during init?
>>>>>
>>>>> I guess it's also possible that the problem is with tcpm.c instead of
>>>>> fusb302.c. tcpm.c provides the USB PD state matchines. Guenter! Can
>>>>> you take a look at this?
>>>>>
>>>>
>>>> There was always a problem with handoff from the bootloader. tcpm_init() calls
>>>> tcpm_reset_port() which turns vbus and vconn off, which I imagine can
>>>> trigger the situation.
>>>>
>>>> Unfortunately I was never able to solve the puzzle. The Type-C protocol does
>>>> not support any kind of "hand-off" from one component in the system to another.
>>>> If the state machine doesn't start from a clean state, there is pretty
>>>> much no guarantee that it ever synchronizes.
>>>>
>>>> Maybe someone can find a better solution, but when I wrote the code I just
>>>> could not get it to work reliably without resetting everything during
>>>> registration.
>>>>
>>>> Note that v4.4 did not include the upstream tcpm code, suggesting the
>>>> code in the vendor kernel was possibly using a different or backported
>>>> state machine. Impossible to say what was done there without access
>>>> to the code.
>>>
>>> The vendor code for fusb302 is here:
>>> https://github.com/FireflyTeam/kernel/tree/rk3399/firefly/drivers/mfd
>>>
>>
>> AFAICS the vendor code don't reset VBUS, and selectively (only) resets the
>> PD state machine in the fusb302 on startup. The tcpm state machine is embedded
>> in the fusb302 driver, making this easier to control.
>>
>> The fusb302 Linux kernel driver, on the other side, resets the entire fusb302
>> on initialization, not just PD (bit 0 of the reset register). Question is if
>> that can be changed to just reset PD (bit 1 of the reset register).
>> Maybe that would already fix the problem. Can you give it a try ?
>>
>> Guenter
> 
> I tried
> 
> diff --git a/drivers/usb/typec/tcpm/fusb302.c b/drivers/usb/typec/tcpm/fusb302.c
> index ed8655c6af8c..6e15e7b22064 100644
> --- a/drivers/usb/typec/tcpm/fusb302.c
> +++ b/drivers/usb/typec/tcpm/fusb302.c
> @@ -334,11 +334,11 @@ static int fusb302_sw_reset(struct fusb302_chip *chip)
>          int ret = 0;
>   
>          ret = fusb302_i2c_write(chip, FUSB_REG_RESET,
> -                               FUSB_REG_RESET_SW_RESET);
> +                               FUSB_REG_RESET_PD_RESET);
>          if (ret < 0)
> -               fusb302_log(chip, "cannot sw reset the chip, ret=%d", ret);
> +               fusb302_log(chip, "cannot pd reset the chip, ret=%d", ret);
>          else
> -               fusb302_log(chip, "sw reset");
> +               fusb302_log(chip, "pd reset");
>   
>          return ret;
>   }
> 
> but did not help, after mmc and ehci initializing the PD-supply gets switched off at 1.95s.

Next step to try would be to skip vbus initialization - drop tcpm_init_vbus()
from tcpm_reset_port(). Can you do that as well ?

Thanks,
Guenter
