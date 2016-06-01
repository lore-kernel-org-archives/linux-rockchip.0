From: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH 1/2] Documentation: bindings: add DT documentation for
 Rockchip USB2PHY
Date: Wed, 1 Jun 2016 16:09:41 +0800
Message-ID: <574E9845.30501@rock-chips.com>
References: <1464676811-7418-1-git-send-email-frank.wang@rock-chips.com>
 <1464676811-7418-2-git-send-email-frank.wang@rock-chips.com>
 <6548390.RQDBBuPzBf@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <6548390.RQDBBuPzBf@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, pawel.moll-5wv7dgnIgG8@public.gmane.org, ijc+devicetree-KcIKpvwj1kUDXYZnReoRVg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, kishon-l0cyMroinI0@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, frank.wang-TNX95d0MmH54rWYiEK1NRB2eb7JE58TQ@public.gmane.org, galak-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

On 05/31/2016 05:02 PM, Heiko St=FCbner wrote:
> Hi Frank,
>
> Am Dienstag, 31. Mai 2016, 14:40:10 schrieb Frank Wang:
>> Signed-off-by: Frank Wang <frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
>> ---
>>   .../bindings/phy/phy-rockchip-inno-usb2.txt        |   48
>> ++++++++++++++++++++ 1 file changed, 48 insertions(+)
>>   create mode 100644
>> Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>>
>> diff --git
>> a/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>> b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt new f=
ile
>> mode 100644
>> index 0000000..4e537b2
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-inno-usb2.txt
>> @@ -0,0 +1,48 @@
>> +ROCKCHIP USB2.0 PHY WITH INNO IP BLOCK
>> +
>> +Required properties (phy (parent) node):
>> + - compatible: should contain:
>> +	* "rockchip,rk3366-usb2phy"
>> + - #clock-cells: should be 0.
>> + - clock-names: specify the 480m output clk name.
>> +
>> +Optional properties:
>> + - vbus_host-gpio: pull gpio high/low to control the host vbus power.
>
> sorry for not catching that in our earlier talks, but I believe this shou=
ld be
> a regulator instead. See for example vcc5_host1, vcc5v_otg in rk3288-veyr=
on-
> chromebook.dtsi .
>

That is OK, I will correct it in the next version.

>
>> +Required nodes: a sub-node is required for each port the phy provides.
>> +		The sub-node name is used to identify host or otg port.
>> +
>> +Required properties (port (child) node):
>> + - #phy-cells: must be 0. See ./phy-bindings.txt for details.
>> + - interrupts: irq number for host/otg port.
>
> make that something like:
> Specify an interrupt for each entry in interrupt-names.
>
>> + - interrupt-names: interrupt name, in line with irq number.
>
> make that something like:
> Shall be "linestate" for the linestate interrupt.

Yeah, Got it.

> ---
>
> You might want to add the bvalid and id interrupts for the otg phys as we=
ll
> already - would make handling legacy devicetree files easier. [=3D if the=
y get
> specified later, the driver would always need to also handle devicetrees =
where
> they aren't specified].
>

Hmmm! you mean that I can specify these properties into documentation, =

even if the driver have not handled (implemented) them in current?

BR.
Frank
