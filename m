From: Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Subject: Re: High CPU load produced by USB (DW2)
Date: Wed, 14 Feb 2018 12:07:12 +0000
Message-ID: <410670D7E743164D87FA6160E7907A560113A6B365@am04wembxa.internal.synopsys.com>
References: <CALw8SCXuOCpndakFBRbP7FpJKOSH+nzNStkszWD4XTXVSK1zyQ@mail.gmail.com>
 <410670D7E743164D87FA6160E7907A560113A67F86@am04wembxa.internal.synopsys.com>
 <CALw8SCVALfRZiF5sZKn0AcXaF6m6GSXXxKAGj2O+ndbgpeCiqw@mail.gmail.com>
 <410670D7E743164D87FA6160E7907A560113A68287@am04wembxa.internal.synopsys.com>
 <CALw8SCX2SrR=ukfz1vn_wiTbyTv7_6xyLSPRQhkTdSQ=Y8MA3g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Language: en-US
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Mirza Krak <mirza.krak-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Minas Harutyunyan <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: linux-usb <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, gregkh <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org" <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On 2/14/2018 12:57 PM, Mirza Krak wrote:
> On 8 February 2018 at 14:53, Minas Harutyunyan
> <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
>> On 2/8/2018 5:07 PM, Mirza Krak wrote:
>>> On 8 February 2018 at 12:02, Minas Harutyunyan
>>> <Minas.Harutyunyan-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> wrote:
>>>> Hi Mirza,
>>>>
>>>> On 2/7/2018 1:49 PM, Mirza Krak wrote:
>>>
>>> < snip >
>>>
>>>>
>>>> Could you please provide additional info:
>>>> 1. Does your core support descriptor DMA mode? (bits 31 and 30 of GHWCFG4).
>>>> 2. Version of core (GSNPSID)?
>>>
>>> It does seem to support descriptor DMA mode, and content of both
>>> GHWCFG4 and GSNPSID are posted below.
>>>
>>> root@esp5-d1:~# dmesg | grep -E "GHWCFG4|GSNPSID"
>>> [    1.109298] dwc2 ff540000.usb: GSNPSID @0xF0940040 : 0x4F54310A
>>> [    1.109344] dwc2 ff540000.usb: GHWCFG4 @0xF0940050 : 0xC8004030
>>> [    1.489016] dwc2 ff580000.usb: GSNPSID @0xF09C0040 : 0x4F54310A
>>> [    1.489063] dwc2 ff580000.usb: GHWCFG4 @0xF09C0050 : 0xDBF04030
>>>
>>> Full register dump at boot (no devices connected) can be found at [1].
>>>
>>>> 3. Do you connect any HS HUB between dwc core port and keyboard? Is it
>>>> available connection scenarios when Split traffic generated?
>>>
>>> There is actually an HS HUB (FE1_QFP48) between dwc core and keyboard,
>>> I was not aware of it but it is mounted on the board.
>>>
>>>
>>> [1]. https://urldefense.proofpoint.com/v2/url?u=https-3A__gist.github.com_mirzak_a6245dddd4670f3b908a9783f9db8b0d&d=DwIFaQ&c=DPL6_X_6JkXFx7AXWqB0tg&r=6z9Al9FrHR_ZqbbtSAsD16pvOL2S3XHxQnSzq8kusyI&m=FuRmhDEOJlbUvuyApaxG_YmB514C3IOGSzs6Mq_fzC0&s=ELF0UP4IluOiL35JlnFjiltWZx-BcTIsTaPjaWb0RFk&e=
>>>
>> Actually your core supported DDMA mode, moreover core allow SW to
>> dynamically switch between BDMA and DDMA after core reset.
>> If dwc2 core work in DDMA mode then core can track (u)frames internally
>> and unmasking SOF's not required, but Host in DDMA doesn't support Split
>> transfers. This is why, in your case (FS/LS keyboard connected to HS
>> HUB), core switched to BDMA and unmasking SOF interrupt to track (u)frames.
> 
> Thank you for your valuable respons.
> 
> It is indeed as you mentioned the combination of HS and FS/LS devices
> that trigger the high CPU load. Running HS only devices does not
> produce any noticeable load.
> 
> But I am confused by one thing, I have two different boards with the
> same SoC and same version of the DWC2 IP. Both boards have an internal
> USB hub for the external connectors, though it seems that they have
> different types of HUB' s. And I only have problems with one of them.
> The second board does not have a problem mixing HS and FS/LS devices.
> Is it possible that the USB HUB has some kind of "offloading" for the
> Split transfers?
> 
> Tinkerboard USB hub (works well when mixing HS and FS/LS devices)
> ----------------------------
> 
> $ lsusb -t
> /:  Bus 03.Port 1: Dev 1, Class=root_hub, Driver=ehci-platform/1p, 480M
>      |__ Port 1: Dev 2, If 0, Class=Audio, Driver=, 480M
>      |__ Port 1: Dev 2, If 1, Class=Audio, Driver=, 480M
>      |__ Port 1: Dev 2, If 2, Class=Audio, Driver=, 480M
>      |__ Port 1: Dev 2, If 3, Class=Audio, Driver=, 480M
>      |__ Port 1: Dev 2, If 4, Class=Audio, Driver=, 480M
>      |__ Port 1: Dev 2, If 5, Class=Audio, Driver=, 480M
>      |__ Port 1: Dev 2, If 255, Class=Human Interface Device, Driver=usbhid, 480M
> /:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=dwc2/1p, 480M
> /:  Bus 01.Port 1: Dev 1, Class=root_hub, Driver=dwc2/1p, 480M
>      |__ Port 1: Dev 2, If 0, Class=Hub, Driver=hub/4p, 480M
>          |__ Port 3: Dev 4, If 0, Class=Audio, Driver=, 12M
>          |__ Port 3: Dev 4, If 1, Class=Audio, Driver=, 12M
>          |__ Port 4: Dev 3, If 0, Class=Human Interface Device,
> Driver=usbhid, 12M
> 
> $ lsusb -d 05e3:0610 -v
> 
> Bus 001 Device 002: ID 05e3:0610 Genesys Logic, Inc. 4-port hub
> Device Descriptor:
>    bLength                18
>    bDescriptorType         1
>    bcdUSB               2.00
>    bDeviceClass            9 Hub
>    bDeviceSubClass         0
>    bDeviceProtocol         2 TT per port
>    bMaxPacketSize0        64
>    idVendor           0x05e3 Genesys Logic, Inc.
>    idProduct          0x0610 4-port hub
>    bcdDevice           32.98
>    iManufacturer           0
>    iProduct                1 USB2.0 Hub
>    iSerial                 0
>    bNumConfigurations      1
>    Configuration Descriptor:
>      bLength                 9
>      bDescriptorType         2
>      wTotalLength           41
>      bNumInterfaces          1
>      bConfigurationValue     1
>      iConfiguration          0
>      bmAttributes         0xe0
>        Self Powered
>        Remote Wakeup
>      MaxPower              100mA
>      Interface Descriptor:
>        bLength                 9
>        bDescriptorType         4
>        bInterfaceNumber        0
>        bAlternateSetting       0
>        bNumEndpoints           1
>        bInterfaceClass         9 Hub
>        bInterfaceSubClass      0
>        bInterfaceProtocol      1 Single TT
>        iInterface              0
>        Endpoint Descriptor:
>          bLength                 7
>          bDescriptorType         5
>          bEndpointAddress     0x81  EP 1 IN
>          bmAttributes            3
>            Transfer Type            Interrupt
>            Synch Type               None
>            Usage Type               Data
>          wMaxPacketSize     0x0001  1x 1 bytes
>          bInterval              12
>      Interface Descriptor:
>        bLength                 9
>        bDescriptorType         4
>        bInterfaceNumber        0
>        bAlternateSetting       1
>        bNumEndpoints           1
>        bInterfaceClass         9 Hub
>        bInterfaceSubClass      0
>        bInterfaceProtocol      2 TT per port
>        iInterface              0
>        Endpoint Descriptor:
>          bLength                 7
>          bDescriptorType         5
>          bEndpointAddress     0x81  EP 1 IN
>          bmAttributes            3
>            Transfer Type            Interrupt
>            Synch Type               None
>            Usage Type               Data
>          wMaxPacketSize     0x0001  1x 1 bytes
>          bInterval              12
> Hub Descriptor:
>    bLength               9
>    bDescriptorType      41
>    nNbrPorts             4
>    wHubCharacteristic 0x00e0
>      Ganged power switching
>      Ganged overcurrent protection
>      TT think time 32 FS bits
>      Port indicators
>    bPwrOn2PwrGood       50 * 2 milli seconds
>    bHubContrCurrent    100 milli Ampere
>    DeviceRemovable    0x00
>    PortPwrCtrlMask    0xff
>   Hub Port Status:
>     Port 1: 0000.0100 power
>     Port 2: 0000.0100 power
>     Port 3: 0000.0103 power enable connect
>     Port 4: 0000.0103 power enable connect
> Device Qualifier (for other device speed):
>    bLength                10
>    bDescriptorType         6
>    bcdUSB               2.00
>    bDeviceClass            9 Hub
>    bDeviceSubClass         0
>    bDeviceProtocol         0 Full speed (or root) hub
>    bMaxPacketSize0        64
>    bNumConfigurations      1
> can't get debug descriptor: Resource temporarily unavailable
> Device Status:     0x0001
>    Self Powered
> 
> 
> FireFly USB HUB (does not work well when mixing HS and FS/LS devices)
> -----------------------
> 
> $ lsusb -t
> /:  Bus 02.Port 1: Dev 1, Class=root_hub, Driver=dwc2/1p, 480M
> /:  Bus 01.Port 1: Dev 1, Class=root_hub, Driver=dwc2/1p, 480M
>      |__ Port 1: Dev 2, If 0, Class=Hub, Driver=hub/4p, 480M
>          |__ Port 1: Dev 3, If 0, Class=Vendor Specific Class, Driver=, 480M
>          |__ Port 3: Dev 4, If 0, Class=Audio, Driver=snd-usb-audio, 12M
>          |__ Port 3: Dev 4, If 1, Class=Audio, Driver=snd-usb-audio, 12M
> 
> $ lsusb -d 1a40:0101 -v
> 
> Bus 001 Device 002: ID 1a40:0101 Terminus Technology Inc. Hub
> Device Descriptor:
>    bLength                18
>    bDescriptorType         1
>    bcdUSB               2.00
>    bDeviceClass            9 Hub
>    bDeviceSubClass         0
>    bDeviceProtocol         2 TT per port
>    bMaxPacketSize0        64
>    idVendor           0x1a40 Terminus Technology Inc.
>    idProduct          0x0101 Hub
>    bcdDevice            1.00
>    iManufacturer           0
>    iProduct                1 USB 2.0 Hub [MTT]
>    iSerial                 0
>    bNumConfigurations      1
>    Configuration Descriptor:
>      bLength                 9
>      bDescriptorType         2
>      wTotalLength           41
>      bNumInterfaces          1
>      bConfigurationValue     1
>      iConfiguration          0
>      bmAttributes         0xe0
>        Self Powered
>        Remote Wakeup
>      MaxPower              100mA
>      Interface Descriptor:
>        bLength                 9
>        bDescriptorType         4
>        bInterfaceNumber        0
>        bAlternateSetting       0
>        bNumEndpoints           1
>        bInterfaceClass         9 Hub
>        bInterfaceSubClass      0
>        bInterfaceProtocol      1 Single TT
>        iInterface              0
>        Endpoint Descriptor:
>          bLength                 7
>          bDescriptorType         5
>          bEndpointAddress     0x81  EP 1 IN
>          bmAttributes            3
>            Transfer Type            Interrupt
>            Synch Type               None
>            Usage Type               Data
>          wMaxPacketSize     0x0001  1x 1 bytes
>          bInterval              12
>      Interface Descriptor:
>        bLength                 9
>        bDescriptorType         4
>        bInterfaceNumber        0
>        bAlternateSetting       1
>        bNumEndpoints           1
>        bInterfaceClass         9 Hub
>        bInterfaceSubClass      0
>        bInterfaceProtocol      2 TT per port
>        iInterface              0
>        Endpoint Descriptor:
>          bLength                 7
>          bDescriptorType         5
>          bEndpointAddress     0x81  EP 1 IN
>          bmAttributes            3
>            Transfer Type            Interrupt
>            Synch Type               None
>            Usage Type               Data
>          wMaxPacketSize     0x0001  1x 1 bytes
>          bInterval              12
> Hub Descriptor:
>    bLength               9
>    bDescriptorType      41
>    nNbrPorts             4
>    wHubCharacteristic 0x0080
>      Ganged power switching
>      Ganged overcurrent protection
>      TT think time 8 FS bits
>      Port indicators
>    bPwrOn2PwrGood       50 * 2 milli seconds
>    bHubContrCurrent    100 milli Ampere
>    DeviceRemovable    0x00
>    PortPwrCtrlMask    0xff
>   Hub Port Status:
>     Port 1: 0000.0503 highspeed power enable connect
>     Port 2: 0000.0100 power
>     Port 3: 0000.0103 power enable connect
>     Port 4: 0000.0100 power
> Device Qualifier (for other device speed):
>    bLength                10
>    bDescriptorType         6
>    bcdUSB               2.00
>    bDeviceClass            9 Hub
>    bDeviceSubClass         0
>    bDeviceProtocol         0 Full speed (or root) hub
>    bMaxPacketSize0        64
>    bNumConfigurations      1
> can't get debug descriptor: Resource temporarily unavailable
> Device Status:     0x0001
>    Self Powered
> 

I reviewed your interrupt count log again. About 140,000 interrupts in 2 
seconds, obviously it's not SOF only interrupts. More probably, its NAK 
respond interrupts to SSPLIT/CSPLIT transactions. For this case I can 
recommend you to apply patch from Douglas Anderson: "[PATCH v2] usb: 
dwc2: host: Don't retry NAKed transactions right away" which already 
merged to 4.16-rc1.

In your setups you see different behavior on different HUBs. Your HUBs 
have different "TT think time": 8 and 32. In USB2.0 spec "TT think time" 
described as follow "TT requires at most 8/32 FS bit times of inter
transaction gap on a full-/low-speed downstream bus". So, your "worst" 
HUB with "TT think time"=8 sending more frequently SSPLIT/CSPLIT 
transactions which replied by NAK. As result you see about 4 time more 
interrupts comparing to "good" HUB. Could you please check interrupts 
count for "good" HUB and check "4 time" hypothesis.

Thanks,
Minas

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
