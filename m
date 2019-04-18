From: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
Subject: =?utf-8?B?UmU6IFtQQVRDSCB2MiAwOS8xNF0gcm9ja2NoaXA6IHJrMzM5OTog?=
 =?utf-8?B?QWRkIDRHQiBMUEREUjMtMTg2NiBETUMgc2V0dGluZ3PjgJDor7fms6jmhI8=?=
 =?utf-8?B?77yM6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytrZXZlci55YW5n?=
 =?utf-8?B?PXJvY2stY2hpcHMuY29tQGxpc3RzLmluZnJhZGVhZC5vcmfku6Plj5HjgJE=?=
Date: Thu, 18 Apr 2019 08:30:42 +0200
Message-ID: <4D33D402-161A-44DD-97D4-284C27B3500C@theobroma-systems.com>
References: <20190416105647.18437-1-jagan@amarulasolutions.com>
 <20190416105647.18437-10-jagan@amarulasolutions.com>
 <275140ce-e159-37c4-c7b3-81d21d07a009@rock-chips.com>
 <CAMty3ZC4fm7GtH91ztdyaozh8v-xpMGa23KhR_GCoZ9saCeknQ@mail.gmail.com>
 <12b48e92-be80-3600-6ab2-2c0d4c132603@rock-chips.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <12b48e92-be80-3600-6ab2-2c0d4c132603-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Liviu Dudau <liviu-I3yL/QOVVjH10XsdtD+oqA@public.gmane.org>, U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, Akash Gajjar <akash-oRp2ZoJdM/RWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org



> On 18.04.2019, at 04:57, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> 
> Hi Jagan,
> 
> 
> On 04/17/2019 07:11 PM, Jagan Teki wrote:
>> On Wed, Apr 17, 2019 at 1:10 PM Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
>>> Hi Jagan,
>>> 
>>> 
>>> On 04/16/2019 06:56 PM, Jagan Teki wrote:
>>>> Add sdram dtsi file for 4GB LPDDR3-1866 DMC settings by reverse
>>>> engineered from the rk3399_ddr_933Mhz_v1.14.bin file.
>>>> 
>>>> Full credits to 'Liviu Dudau' who is the real author for this change.
>>>> 
>>>> Signed-off-by: Liviu Dudau <liviu-I3yL/QOVVjH10XsdtD+oqA@public.gmane.org>
>>>> Signed-off-by: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
>>>> ---
>>>> .../arm/dts/rk3399-sdram-lpddr3-4GB-1866.dtsi | 1535 +++++++++++++++++
>>> Could you use rk3399-sdram-lpddr3-samsung-4GB-1866.dtsi directly?
>>> I think it should able to work.
>> I supposed to take the same, but thought that it would be some samsung
>> specific setting. but seems like it is nearly same and it worked. will
>> update to use this. thanks!
> 
> I have check with rockchip dram driver owner, this setting is more generic
> while the -samsung- dtsi is more for dedicate chromebook.
> So I think we can merge this patch for other boards who using Rockchip
> reference design.
> 
> Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

Reviewed-by: Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>
