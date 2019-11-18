From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix NanoPC-T4 cooling maps
Date: Mon, 18 Nov 2019 12:09:38 +0000
Message-ID: <59e03b94-87af-6d75-6036-c02b9dd89dbe@arm.com>
References: <5bb39f3115df1a487d717d3ae87e523b03749379.1573908197.git.robin.murphy@arm.com>
 <4249681.hKoAvgd4aH@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <4249681.hKoAvgd4aH@phil>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 18/11/2019 12:52 am, Heiko Stuebner wrote:
> Am Samstag, 16. November 2019, 13:47:19 CET schrieb Robin Murphy:
>> Although it appeared to follow logically from the bindings, apparently
>> the thermal framework can't properly cope with a single cooling device
>> being shared between multiple maps. The CPU zone is probably easier to
>> overheat, so remove the references to the (optional) fan from the GPU
>> cooling zone to avoid things getting confused. Hopefully GPU-intensive
>> tasks will leak enough heat across to the CPU zone to still hit the
>> fan trips before reaching critical GPU temperatures.
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> 
> applied, after little bit of editing.
> 
>>   &i2s0 {
>>   	status = "okay";
>>   };
> 
> although my nano-pc dts does not seem to have that &i2s0 node yet.
> Did I miss a patch somewhere?

Oops, no, my fault - there were more changes in the middle of my local 
branch which I thought were entirely orthogonal. I should have checked 
the diff context more closely... thanks for cleaning it up!

Robin.
