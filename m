From: Dan Johansen <strit@manjaro.org>
Subject: Re: [PATCH] fix usb2 on rock64
Date: Fri, 23 Aug 2019 11:56:03 +0200
Message-ID: <4d415a1c775a768274f5780911acdf53@manjaro.org>
References: <693449761bdd3e435089e849b0114018@manjaro.org>
 <991ac738-1f5d-8bbd-9c0e-a7e6c05514d9@iris.mystia.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <991ac738-1f5d-8bbd-9c0e-a7e6c05514d9@iris.mystia.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Tomohiro Mayama <parly-gh@iris.mystia.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Tomohiro Mayama skrev den 2019-03-08 11:48:
> Hello Dan,
> 
> On 2019/03/08 16:35, Dan Johansen wrote:
>> -        gpio = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>> +        gpio = <&gpio0 RK_PD3 GPIO_ACTIVE_HIGH>;
> 
> According to Robin's advice by reading the schematic, correct GPIO pin
> assignment is RK_PA2, but GPIO_ACTIVE_LOW. This fixed the USB problem
> for me.
> 
> Please see the following thread:
> https://lists.infradead.org/pipermail/linux-rockchip/2019-March/023298.html
> 
> Also please see this patch:
> https://lists.infradead.org/pipermail/linux-rockchip/2019-March/023300.html
> 
> Or won't your problem be fixed with this patch?
> 
> Regards,
> Tomohiro

Ah, didn't see that one.
Yes it does.
Sorry. Please remove this patch submission.

-- 
Sincerely

Dan "Strit" Johansen

Project Lead on the Manjaro ARM project
https://www.manjaro.org

Catch me on:
Mastodon: @strit@mastodon.social
Matrix: @strit:matrix.org
Wire: @strit
Email: strit@manjaro.org
