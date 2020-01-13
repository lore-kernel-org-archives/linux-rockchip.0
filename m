From: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add reg property to brcmf sub node
Date: Mon, 13 Jan 2020 10:27:12 +0000
Message-ID: <6159eaa4-4729-0c3d-0967-e855e2652772@arm.com>
References: <20200110142128.13522-1-jbx6244@gmail.com>
 <CA+z=w3UjX71Nw7W+iiGkQh=UJkPMsEn1phSdp25d--O8QM-ETQ@mail.gmail.com>
 <2116127.mXfZQK7onI@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2116127.mXfZQK7onI@phil>
Content-Language: en-GB
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On 13/01/2020 9:26 am, Heiko Stuebner wrote:
> Hi Johan,
> 
> Am Freitag, 10. Januar 2020, 16:40:24 CET schrieb Johan Jonker:
>> Hi,
>>
>> Question for Heiko or rob+dt.
>> Where would should #address-cells and #size-cells go in the dts or to the dtsi.
>> In case they become required in a futhure rockchip-dw-mshc.yaml?
>> ie. Should we patch all XXX rockchip,rk3288-dw-mshc nodes with them?
> 
> I don't think it is a required property for the dw-mmc itself, as only
> in special-cases do you need subnodes there. Like emmc and sd-cards
> are completely probeable without needing further information and
> only the wifi/bt chips _might_ need these.
> 
> So I don't think that this is a property of the controller itself, but te
> connected card - hence should stay in the board file.

Indeed, and in general dtc already warns about those properties being 
present unnecessarily, e.g.:

arch/arm64/boot/dts/rockchip/rk3399.dtsi:1812.27-1847.4: Warning 
(avoid_unnecessary_addr_size): /mipi@ff968000: unnecessary 
#address-cells/#size-cells without "ranges" or child "reg" property

Robin.
