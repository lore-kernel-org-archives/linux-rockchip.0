From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: sound: convert rockchip spdif
 bindings to yaml
Date: Tue, 24 Mar 2020 14:41:45 +0100
Message-ID: <d1225b12-b3d1-3cc7-be0b-8f834e8b08ce@gmail.com>
References: <20200324123155.11858-1-jbx6244@gmail.com>
 <20200324133506.GC7039@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20200324133506.GC7039-GFdadSzt00ze9xe1eoZjHA@public.gmane.org>
Content-Language: en-US
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, alsa-devel-K7yf7f+aM1XWsZ/bQMPhNw@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Mark,

Today I send 2 sets. One for I2S and one for SPDIF.
'power-domains' is added in respons to robh answer to rockchip,vop.txt
conversion.

>> Hi,
>>
>> Question for robh:
>>
>> In the old txt situation we add/describe only properties that are used
>> by the driver/hardware itself. With yaml it also filters things in a
>> node that are used by other drivers like:
>>
>> assigned-clocks:
>> assigned-clock-rates:
>> power-domains:
>>
>> Should we add or not?
> 
> Yes, only pinctrl properties are automatically added.
> 
> We could change 'assigned-clocks', but for now I think they should be 
> added.
> 
> Rob


On 3/24/20 2:35 PM, Mark Brown wrote:
> On Tue, Mar 24, 2020 at 01:31:53PM +0100, Johan Jonker wrote:
>> Current dts files with 'spdif' nodes are manually verified.
>> In order to automate this process rockchip-spdif.txt
>> has to be converted to yaml.
> 
>> Signed-off-by: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>> ---
>> Changed V2:
>>   dmas and dma-names layout
> 
> This is the second v2 you've sent of this today - it adds these but
> drops Rob's ack?
> 
