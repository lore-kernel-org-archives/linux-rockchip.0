From: Mylene Josserand <mylene.josserand@collabora.com>
Subject: Re: [PATCH v4 0/2] ARM: Add Rockchip rk3288w support
Date: Mon, 29 Jun 2020 09:59:45 +0200
Message-ID: <66bfd77c-83e4-3689-d8c1-c5ae47b40f02@collabora.com>
References: <20200602080644.11333-1-mylene.josserand@collabora.com>
 <159238429476.1470505.6023847362048785737.b4-ty@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <159238429476.1470505.6023847362048785737.b4-ty@sntech.de>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, robh+dt@kernel.org, sboyd@kernel.org, mturquette@baylibre.com
Cc: linux-clk@vger.kernel.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hello Heiko,

On 6/17/20 10:58 AM, Heiko Stuebner wrote:
> On Tue, 2 Jun 2020 10:06:42 +0200, Mylène Josserand wrote:
>> Context
>> -------
>>
>> Here is my V4 of my patches that add the support for the Rockchip
>> RK3288w which is a revision of the RK3288. It is mostly the same SOC
>> except for, at least, one clock tree which is different.
>> This difference is only known by looking at the BSP kernel [1].
>>
>> [...]
> 
> Applied, thanks!

Thank you!

Best regards,
Mylène

> 
> [1/2] clk: rockchip: Handle clock tree for rk3288w variant
>        commit: 1627f683636df70fb25358b0a7b39a24e8fce5bf
> [2/2] dt-bindings: clocks: add rk3288w variant compatible
>        commit: 00bd404144241155653bb0d0c15be51e4e6983aa
> 
> Best regards,
> 
