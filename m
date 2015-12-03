From: Jianqun Xu <jay.xu@rock-chips.com>
Subject: Re: [PATCH] clk: rockchip: rk3368: protect aclk_bus and aclk_peri
 clocks
Date: Thu, 3 Dec 2015 08:30:01 +0800
Message-ID: <565F8D09.4010402@rock-chips.com>
References: <1449062551-2498-1-git-send-email-jay.xu@rock-chips.com>
 <4430667.DaSfi9RHQ7@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=gbk;
	format=flowed
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-clk-owner@vger.kernel.org>
In-Reply-To: <4430667.DaSfi9RHQ7@diego>
Sender: linux-clk-owner@vger.kernel.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
Cc: huangtao@rock-chips.com, mturquette@baylibre.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi heiko

I can see the patches on your clk branch for next
thanks

=D4=DA 03/12/2015 07:31, Heiko St=A8=B9bner =D0=B4=B5=C0:
> Hi Jianqun,
>
> Am Mittwoch, 2. Dezember 2015, 21:22:31 schrieb jianqun.xu:
>> From: Jianqun xu <jay.xu@rock-chips.com>
>>
>> Add aclk_bus and aclk_peri to the list of rk3368 critical clocks,
>> which are the base clocks that supply for all peripherals, never
>> to be disabled automatically.
>>
>> Signed-off-by: Jianqun xu <jay.xu@rock-chips.com>
>
> applied to my clk branch for 4.5
> [after adapting to Caesar's other critical clock]
>
>
> Thanks
> Heiko
>
>
>

--=20
***********************************************************************=
*****
=D0=ED=BD=A3=C8=BA
=46uzhou Rockchip Electronics Co., Ltd
=B5=D8=D6=B7=A3=BA=B8=A3=BD=A8=CA=A1=B8=A3=D6=DD=CA=D0=CD=AD=C5=CC=C2=B7=
=C8=ED=BC=FE=B4=F3=B5=C089=BA=C5=C8=ED=BC=FE=D4=B0A=C7=F821=BA=C5=C2=A5
ADDR: No.21 bldg, Fuzhou Software Park,Fuzhou,Fujian,P.R.China
Email: xjq@rock-chips.com
***********************************************************************=
*****
=B1=A3=C3=DC=CC=E1=CA=BE=A3=BA=B1=BE=D3=CA=BC=FE=BC=B0=C6=E4=B8=BD=BC=FE=
=BA=AC=D3=D0=BB=FA=C3=DC=D0=C5=CF=A2=C0=B4=D7=D4=B8=A3=D6=DD=C8=F0=D0=BE=
=CE=A2=B5=E7=D7=D3=B9=C9=B7=DD=D3=D0=CF=DE=B9=AB=CB=BE=A3=AC=BD=F6=B7=A2=
=20
=CB=CD=B8=F8=B1=BE=D3=CA=BC=FE=CB=F9=D6=B8=CC=D8=B6=A8=CA=D5=BC=FE=C8=CB=
=A1=A3=C8=F4=B7=C7=B8=C3=CC=D8=B6=A8=CA=D5=BC=FE=C8=CB=A3=AC=C7=EB=CE=F0=
=B8=B4=D6=C6=A1=A2 =CA=B9=D3=C3=BB=F2=C5=FB=C2=B6=B1=BE=D3=CA=BC=FE=20
=B5=C4=C8=CE=BA=CE=C4=DA=C8=DD=A1=A3=C8=F4=CE=F3=CA=D5=B1=BE=D3=CA=BC=FE=
=A3=AC=C7=EB=B4=D3=CF=B5=CD=B3=D6=D0=D3=C0=BE=C3=D0=D4=C9=BE=B3=FD=B1=BE=
=D3=CA=BC=FE=BC=B0=CB=F9=D3=D0=B8=BD=BC=FE=A3=AC=B2=A2=D2=D4=BB=D8=B8=B4=
=20
=D3=CA=BC=FE=BB=F2=C6=E4=CB=FB=B7=BD=CA=BD=BC=B4=BF=CC=B8=E6=D6=AA=B7=A2=
=BC=FE=C8=CB=A1=A3=B8=A3=D6=DD=C8=F0=D0=BE=CE=A2=B5=E7=D7=D3=D3=D0=CF=DE=
=B9=AB=CB=BE=D3=B5=D3=D0=B1=BE=D3=CA=BC=FE=D0=C5=CF=A2=B5=C4=D6=F8=D7=F7=
=20
=C8=A8=BC=B0=BD=E2=CA=CD=C8=A8=A3=AC=BD=FB=D6=B9=C8=CE=BA=CE=CE=B4=BE=AD=
=CA=DA=C8=A8=D0=ED=BF=C9=B5=C4=C7=D6=C8=A8=D0=D0=CE=AA=A1=A3
IMPORTANT NOTICE: This email is from Fuzhou Rockchip Electronics Co.,=20
Ltd .The contents of this email and any attachments may contain=20
information that is privileged, confidential and/or exempt from=20
disclosure under applicable law and relevant NDA. If you are not the=20
intended recipient, you are hereby notified that any disclosure,=20
copying, distribution, or use of the information is STRICTLY PROHIBITED=
=2E=20
Please immediately contact the sender as soon as possible and destroy=20
the material in its entirety in any format. Thank you.
***********************************************************************=
*****

