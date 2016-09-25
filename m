From: Norbert Lange <nolange79@gmail.com>
Subject: Re: RK3288 USB Issues
Date: Sun, 25 Sep 2016 23:59:03 +0200
Message-ID: <CADYdroOatZaNGzR-W+R6+KoAoN3piE8UKKub6dxMunWbh8fNyg@mail.gmail.com>
References: <CADYdroO5sQgLEujisG5-nHbkB90s7upJhbJRxLbykmz5cgU9YQ@mail.gmail.com>
 <46A5EBA0-0F42-4851-9172-E0897AD42B0D@soulik.info> <CADYdroP3SE9g5fMo1p3Twmpd7o3u=zOQgHtfc9NKgdVX2wHbxA@mail.gmail.com>
 <d668fd3a-e54e-ef0a-59c7-5bb420437b1b@soulik.info> <CADYdroMADjBKccdtZ7PnW3AvY8oAp1Mw6hzz+nXLjyG5zB1E1g@mail.gmail.com>
 <1340bbc1-224e-27cf-4d3b-3cbc66d5f5a0@soulik.info>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1340bbc1-224e-27cf-4d3b-3cbc66d5f5a0@soulik.info>
Sender: linux-kernel-owner@vger.kernel.org
To: ayaka <ayaka@soulik.info>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

I built a kernel with the sources from your branch, and the problem is
gone. Looking at the differences I had added the reset to the wrong
usb port in the dtb (phy1 instead of phy 2)

Thanks for your help figuring this out

usbphy1: usb-phy@334 {
#phy-cells =3D <0>;
reg =3D <0x334>;
clocks =3D <&cru SCLK_OTGPHY1>;
clock-names =3D "phyclk";
#clock-cells =3D <0>;
resets =3D <&cru SRST_USBHOST1_PHY>;
reset-names =3D "phy-reset";
};

2016-09-25 6:02 GMT+02:00 ayaka <ayaka@soulik.info>:
>
>
> On 09/25/2016 04:10 AM, Norbert Lange wrote:
>>
>> Hello,
>>
>> did you try without your patches, to see if you can reproduce the proble=
m?
>> I can fix my issues if I disable usb autosuspend
>>
>> To narrow down the causes I can think of:
>> *) Some hardware issue only on my side -> please try to reproduce it
>> with an unpached kernel
>
> Of course it does. Without those patch it won't work.
>>
>> *) Some other stuff I modified -> gonna try a clean kernel with just
>> your patches (hopefully will find time on sunday
>
> Of course I did that. You could check my kernel repository at github
> https://github.com/hizukiayaka/linux-kernel/tree/firefly-rk3288-reload-ne=
xt
>
>> *) Maybe some different kernel config options -> mine are
>> multi_v7_defconfig with a few modules added
>
> Not sure with that defconfig, even I didn't know whether you enabled the =
USB
> module
>>
>>
>> Kind regards,
>> Norbert
>>
>> 2016-09-24 20:53 GMT+02:00 ayaka <ayaka@soulik.info>:
>>>
>>> On 09/23/2016 03:10 PM, Norbert Lange wrote:
>>>>
>>>> Hi,
>>>>
>>>> I wanted to reply to the Linux mailing List (your patch thread), I
>>>> dont know exactly where since the addresses are blanked out.
>>>> Just tell me where I should move this discussion.
>>>>
>>>> The board can use both USB peripherals (haven`t tested the OTG Port).
>>>> The issue starts if the board has *no* USB peripherals attached
>>>> (either booting without any USB peripherals, or disconnecting all
>>>> peripherals).
>>>
>>> I have checked my patches with kernel next-20160923, I didn't meet your
>>> problem. The firefly RK3288 release board works fine.
>>>
>>>> *Then* I cant connect a single peripheral, just getting read errors.
>
> I may not match your situation, there is always a usb hub at firefly boar=
d,
> unless I would remove that chip, there is always a USB peripheral device
> there.
>
>>>> Seems like something is getting powered down if no USB peripheral is
>>>> connected, and can`t start up again.
>>>>
>>>> Kind regard,
>>>> Norbert
>>>>
>>>> 2016-09-23 2:48 GMT+02:00 Ayaka <ayaka@soulik.info>:
>>>>>
>>>>>
>>>>> =E5=BE=9E=E6=88=91=E7=9A=84 iPad =E5=82=B3=E9=80=81
>>>>>
>>>>>> Norbert Lange <nolange79@gmail.com> =E6=96=BC 2016=E5=B9=B49=E6=9C=
=8823=E6=97=A5 =E4=B8=8A=E5=8D=887:37 =E5=AF=AB=E9=81=93=EF=BC=9A
>>>>>>
>>>>>> Hello Randi,
>>>>>> I am Randy
>>>>>> sorry for stalking you, but I have a problem with the USB Ports on
>>>>>
>>>>> You have better CC to Linux-use as well
>>>>>>
>>>>>> RK3288 and Heiko pointed me to your patch [1].
>>>>>>
>>>>>> Firefly RK3288
>>>>>> Linux Kernel 4.8rc3 with multi_v7_defconfig and some additional
>>>>>> modules and mali drm driver
>>>>>> Your patch v7 applied [2]
>>>>>>
>>>>>> [1] https://irclog.whitequark.org/linux-rockchip/2016-09-20
>>>>>> [2] https://www.spinics.net/lists/linux-usb/msg146496.html
>>>>>>
>>>>>> I can easily reproduce the issue, if no USB Device is connected then
>>>>>> attaching USB Devices will produce Read Errors.
>>>>>> The only way around that is to always leave one device connected.
>>>>>>
>>>>> So the board could only connect to use one usb peripheral device?
>>>>>>
>>>>>> # plug in an USB Stick
>>>>>> Sep 10 23:05:19 hipase2firefly kernel: usb 1-1: reset high-speed USB
>>>>>> device numb
>>>>>> Sep 10 23:05:24 hipase2firefly kernel: usb 1-1: device descriptor
>>>>>> read/64, error
>>>>>> Sep 10 23:05:40 hipase2firefly kernel: usb 1-1: device descriptor
>>>>>> read/64, error
>>>>>> Sep 10 23:05:42 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:05:43 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:05:44 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:05:44 hipase2firefly kernel: usb 1-1: USB disconnect, devi=
ce
>>>>>> number 2
>>>>>> Sep 10 23:05:45 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:05:47 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:05:48 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:05:49 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:05:49 hipase2firefly kernel: usb usb1-port1: unable to
>>>>>> enumerate USB d
>>>>>>
>>>>>> # reset without disconnecting USB
>>>>>> # connecting a second USB Device (Logitech Receiver)
>>>>>>
>>>>>> Sep 10 23:03:14 hipase2firefly kernel: usb 1-1.4: new full-speed USB
>>>>>> device numb
>>>>>> Sep 10 23:03:14 hipase2firefly mtp-probe[2207]: checking bus 1, devi=
ce
>>>>>> 4: "/sys/
>>>>>> Sep 10 23:03:14 hipase2firefly mtp-probe[2207]: bus: 1, device: 4 wa=
s
>>>>>> not an MTP
>>>>>> Sep 10 23:03:14 hipase2firefly kernel: logitech-djreceiver
>>>>>> 0003:046D:C52B.0003:
>>>>>> Sep 10 23:03:14 hipase2firefly kernel: input: Logitech K400 as
>>>>>> /devices/platform
>>>>>> Sep 10 23:03:14 hipase2firefly kernel: logitech-hidpp-device
>>>>>> 0003:046D:4024.0004
>>>>>>
>>>>>> # disconnectin 1 USB Device
>>>>>> Sep 10 23:04:00 hipase2firefly kernel: usb 1-1.4: USB disconnect,
>>>>>> device
>>>>>> number
>>>>>>
>>>>>> #reconnecting the same device
>>>>>> Sep 10 23:05:49 hipase2firefly kernel: usb 1-1.4: new full-speed USB
>>>>>> device numb
>>>>>> Sep 10 23:05:49 hipase2firefly kernel: logitech-djreceiver
>>>>>> 0003:046D:C52B.0007:
>>>>>> Sep 10 23:05:49 hipase2firefly mtp-probe[2276]: checking bus 1, devi=
ce
>>>>>> 5: "/sys/
>>>>>> Sep 10 23:05:49 hipase2firefly mtp-probe[2276]: bus: 1, device: 5 wa=
s
>>>>>> not an MTP
>>>>>> Sep 10 23:05:49 hipase2firefly kernel: input: Logitech K400 as
>>>>>> /devices/platform
>>>>>> Sep 10 23:05:49 hipase2firefly kernel: logitech-hidpp-device
>>>>>> 0003:046D:4024.0008
>>>>>>
>>>>>> # disconnecting both USB Devices
>>>>>> Sep 10 23:06:45 hipase2firefly kernel: usb 1-1.4: USB disconnect,
>>>>>> device
>>>>>> number
>>>>>> Sep 10 23:06:49 hipase2firefly kernel: usb 1-1.1: USB disconnect,
>>>>>> device
>>>>>> number
>>>>>> Sep 10 23:06:49 hipase2firefly systemd-udevd[2339]:
>>>>>> inotify_add_watch(9, /dev/sdb, 10) failed: No such file or directory
>>>>>>
>>>>>> # reconnecting the Logitech Receiver
>>>>>> Sep 10 23:08:40 hipase2firefly kernel: usb 1-1: reset high-speed USB
>>>>>> device number 2 using dwc2
>>>>>> Sep 10 23:08:46 hipase2firefly kernel: usb 1-1: device descriptor
>>>>>> read/64, error -110
>>>>>> Sep 10 23:09:01 hipase2firefly kernel: usb 1-1: device descriptor
>>>>>> read/64, error -110
>>>>>> Sep 10 23:09:03 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:09:04 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:09:05 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:09:05 hipase2firefly kernel: usb 1-1: USB disconnect, devi=
ce
>>>>>> number 2
>>>>>> Sep 10 23:09:07 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:09:08 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:09:09 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:09:11 hipase2firefly kernel: usb usb1-port1: Cannot enable=
.
>>>>>> Maybe the
>>>>>> Sep 10 23:09:11 hipase2firefly kernel: usb usb1-port1: unable to
>>>>>> enumerate USB device
>>>>>>
>>>>>> Kind regards,
>>>>>> Norbert
>>>
>>>
>
