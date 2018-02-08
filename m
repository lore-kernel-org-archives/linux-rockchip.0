From: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: High CPU load produced by USB (DW2)
Date: Thu, 8 Feb 2018 11:02:02 +0000
Message-ID: <410670D7E743164D87FA6160E7907A560113A67F86@am04wembxa.internal.synopsys.com>
References: <CALw8SCXuOCpndakFBRbP7FpJKOSH+nzNStkszWD4XTXVSK1zyQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Language: en-US
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Mirza Krak <mirza.krak-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-usb <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: gregkh <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org" <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Mirza,

On 2/7/2018 1:49 PM, Mirza Krak wrote:
> Hi.
> 
> I initially started a thread on a different mailing list [1], and you
> can take look there for some additional background.
> 
> I am using a 4.14.15 stable kernel on a RK3288 SoC (FireFly RK3288
> board) which uses the DW2 USB core. I have noticed that when
> connecting a USB device there is unreasonable high CPU load produced
> by the USB interrupts.
> 
> Here is one example with a MIDI keyboard connected on USB (not really
> doing anything on it)
> 
>     79     2 root     SW       0   0%  19% [irq/45-dwc2_hso]
>     78     2 root     SW       0   0%  11% [irq/45-ff540000]
> 
> Can also see that there is a "HIGH" interrupt count
> 
> root@esp5-d1:~# watch cat /proc/interrupts | grep usb
>   45:   43681938          0          0          0     GIC-0  57 Level
>    ff540000.usb, dwc2_hsotg:usb1
>   46:          0          0          0          0     GIC-0  55 Level
>    ff580000.usb, ff580000.usb, dwc2_hsotg:usb2
>   45:   43829473          0          0          0     GIC-0  57 Level
>    ff540000.usb, dwc2_hsotg:usb1
>   46:          0          0          0          0     GIC-0  55 Level
>    ff580000.usb, ff580000.usb, dwc2_hsotg:usb2
>   45:   43972333          0          0          0     GIC-0  57 Level
>    ff540000.usb, dwc2_hsotg:usb1
>   46:          0          0          0          0     GIC-0  55 Level
>    ff580000.usb, ff580000.usb, dwc2_hsotg:usb2
>   45:   44118769          0          0          0     GIC-0  57 Level
>    ff540000.usb, dwc2_hsotg:usb1
>   46:          0          0          0          0     GIC-0  55 Level
>    ff580000.usb, ff580000.usb, dwc2_hsotg:usb2
>   45:   44267876          0          0          0     GIC-0  57 Level
>    ff540000.usb, dwc2_hsotg:usb1
>   46:          0          0          0          0     GIC-0  55 Level
>    ff580000.usb, ff580000.usb, dwc2_hsotg:usb2
> 
> Again not really doing anything with the device, it is just connected.
> I have also tested with server different devices with same result (BT
> and WLAN).
> 
> The CPU load is exposed when I add "threadirqs" to kernel arguments,
> otherwise it does not seem that it accounted for (not see in "top")
> but the number of interrupts is still high.
> 
> Any thoughts on this? Please let me know if there is additional
> information that I can provide to help debug this.
> 
> 
> [1]. https://urldefense.proofpoint.com/v2/url?u=https-3A__www.spinics.net_lists_linux-2Drt-2Dusers_msg18341.html&d=DwIFaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=6z9Al9FrHR_ZqbbtSAsD16pvOL2S3XHxQnSzq8kusyI&m=DnUeBv1jR8jz4npf8WClUsYhhcd0eYqW0aDc4l7V96o&s=6fpUB5epwB1otF9_hwacG1JIkWJaHN0duhAyZIaiMqM&e=
> 

Could you please provide additional info:
1. Does your core support descriptor DMA mode? (bits 31 and 30 of GHWCFG4).
2. Version of core (GSNPSID)?
3. Do you connect any HS HUB between dwc core port and keyboard? Is it 
available connection scenarios when Split traffic generated?
Thanks,
Minas
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
