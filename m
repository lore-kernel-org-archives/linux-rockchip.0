From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add rk3399 UART DMAs
Date: Tue, 26 Mar 2019 11:48:17 +0000
Message-ID: <f2d0a95f-33c0-cdeb-80e3-0cd04bd0871d@arm.com>
References: <20190321162244.10080-1-katsuhiro@katsuster.net>
 <8309531.dRdlsDmmhi@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <8309531.dRdlsDmmhi@phil>
Content-Language: en-GB
Sender: linux-kernel-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>, Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 25/03/2019 12:34, Heiko Stuebner wrote:
> Am Donnerstag, 21. März 2019, 17:22:44 CET schrieb Katsuhiro Suzuki:
>> Add UART dma channels as specified by the rk3399 TRM.
>>
>> Refer:
>> RK3399 TRM V1.4: Chapter 12 DMA Controller
>>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> 
> applied for 5.2

As a heads-up, I did manage to try my board with this patch applied over 
the weekend, and it makes probing the bluetooth adapter fail with 
communication errors, so I'm not sure the 8250 and pl330 drivers are 
really cooperating well enough :(

Robin.
