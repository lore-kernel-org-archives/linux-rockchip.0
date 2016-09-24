From: ayaka <ayaka@soulik.info>
Subject: Re: RK3288 USB Issues
Date: Sun, 25 Sep 2016 02:53:13 +0800
Message-ID: <d668fd3a-e54e-ef0a-59c7-5bb420437b1b@soulik.info>
References: <CADYdroO5sQgLEujisG5-nHbkB90s7upJhbJRxLbykmz5cgU9YQ@mail.gmail.com>
 <46A5EBA0-0F42-4851-9172-E0897AD42B0D@soulik.info>
 <CADYdroP3SE9g5fMo1p3Twmpd7o3u=zOQgHtfc9NKgdVX2wHbxA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CADYdroP3SE9g5fMo1p3Twmpd7o3u=zOQgHtfc9NKgdVX2wHbxA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Norbert Lange <nolange79@gmail.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org


On 09/23/2016 03:10 PM, Norbert Lange wrote:
> Hi,
>
> I wanted to reply to the Linux mailing List (your patch thread), I
> dont know exactly where since the addresses are blanked out.
> Just tell me where I should move this discussion.
>
> The board can use both USB peripherals (haven`t tested the OTG Port).
> The issue starts if the board has *no* USB peripherals attached
> (either booting without any USB peripherals, or disconnecting all
> peripherals).
I have checked my patches with kernel next-20160923, I didn't meet your 
problem. The firefly RK3288 release board works fine.
> *Then* I cant connect a single peripheral, just getting read errors.
>
> Seems like something is getting powered down if no USB peripheral is
> connected, and can`t start up again.
>
> Kind regard,
> Norbert
>
> 2016-09-23 2:48 GMT+02:00 Ayaka <ayaka@soulik.info>:
>>
>> 從我的 iPad 傳送
>>
>>> Norbert Lange <nolange79@gmail.com> 於 2016年9月23日 上午7:37 寫道：
>>>
>>> Hello Randi,
>>> I am Randy
>>> sorry for stalking you, but I have a problem with the USB Ports on
>> You have better CC to Linux-use as well
>>> RK3288 and Heiko pointed me to your patch [1].
>>>
>>> Firefly RK3288
>>> Linux Kernel 4.8rc3 with multi_v7_defconfig and some additional
>>> modules and mali drm driver
>>> Your patch v7 applied [2]
>>>
>>> [1] https://irclog.whitequark.org/linux-rockchip/2016-09-20
>>> [2] https://www.spinics.net/lists/linux-usb/msg146496.html
>>>
>>> I can easily reproduce the issue, if no USB Device is connected then
>>> attaching USB Devices will produce Read Errors.
>>> The only way around that is to always leave one device connected.
>>>
>> So the board could only connect to use one usb peripheral device?
>>> # plug in an USB Stick
>>> Sep 10 23:05:19 hipase2firefly kernel: usb 1-1: reset high-speed USB device numb
>>> Sep 10 23:05:24 hipase2firefly kernel: usb 1-1: device descriptor read/64, error
>>> Sep 10 23:05:40 hipase2firefly kernel: usb 1-1: device descriptor read/64, error
>>> Sep 10 23:05:42 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:05:43 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:05:44 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:05:44 hipase2firefly kernel: usb 1-1: USB disconnect, device number 2
>>> Sep 10 23:05:45 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:05:47 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:05:48 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:05:49 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:05:49 hipase2firefly kernel: usb usb1-port1: unable to enumerate USB d
>>>
>>> # reset without disconnecting USB
>>> # connecting a second USB Device (Logitech Receiver)
>>>
>>> Sep 10 23:03:14 hipase2firefly kernel: usb 1-1.4: new full-speed USB device numb
>>> Sep 10 23:03:14 hipase2firefly mtp-probe[2207]: checking bus 1, device 4: "/sys/
>>> Sep 10 23:03:14 hipase2firefly mtp-probe[2207]: bus: 1, device: 4 was not an MTP
>>> Sep 10 23:03:14 hipase2firefly kernel: logitech-djreceiver 0003:046D:C52B.0003:
>>> Sep 10 23:03:14 hipase2firefly kernel: input: Logitech K400 as /devices/platform
>>> Sep 10 23:03:14 hipase2firefly kernel: logitech-hidpp-device 0003:046D:4024.0004
>>>
>>> # disconnectin 1 USB Device
>>> Sep 10 23:04:00 hipase2firefly kernel: usb 1-1.4: USB disconnect, device number
>>>
>>> #reconnecting the same device
>>> Sep 10 23:05:49 hipase2firefly kernel: usb 1-1.4: new full-speed USB device numb
>>> Sep 10 23:05:49 hipase2firefly kernel: logitech-djreceiver 0003:046D:C52B.0007:
>>> Sep 10 23:05:49 hipase2firefly mtp-probe[2276]: checking bus 1, device 5: "/sys/
>>> Sep 10 23:05:49 hipase2firefly mtp-probe[2276]: bus: 1, device: 5 was not an MTP
>>> Sep 10 23:05:49 hipase2firefly kernel: input: Logitech K400 as /devices/platform
>>> Sep 10 23:05:49 hipase2firefly kernel: logitech-hidpp-device 0003:046D:4024.0008
>>>
>>> # disconnecting both USB Devices
>>> Sep 10 23:06:45 hipase2firefly kernel: usb 1-1.4: USB disconnect, device number
>>> Sep 10 23:06:49 hipase2firefly kernel: usb 1-1.1: USB disconnect, device number
>>> Sep 10 23:06:49 hipase2firefly systemd-udevd[2339]:
>>> inotify_add_watch(9, /dev/sdb, 10) failed: No such file or directory
>>>
>>> # reconnecting the Logitech Receiver
>>> Sep 10 23:08:40 hipase2firefly kernel: usb 1-1: reset high-speed USB
>>> device number 2 using dwc2
>>> Sep 10 23:08:46 hipase2firefly kernel: usb 1-1: device descriptor
>>> read/64, error -110
>>> Sep 10 23:09:01 hipase2firefly kernel: usb 1-1: device descriptor
>>> read/64, error -110
>>> Sep 10 23:09:03 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:09:04 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:09:05 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:09:05 hipase2firefly kernel: usb 1-1: USB disconnect, device number 2
>>> Sep 10 23:09:07 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:09:08 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:09:09 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:09:11 hipase2firefly kernel: usb usb1-port1: Cannot enable. Maybe the
>>> Sep 10 23:09:11 hipase2firefly kernel: usb usb1-port1: unable to
>>> enumerate USB device
>>>
>>> Kind regards,
>>> Norbert
