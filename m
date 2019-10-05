From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
Date: Sun, 6 Oct 2019 00:45:23 +0100
Message-ID: <006d3ee0-2711-1b4e-d8cf-6a226fcad0e4@arm.com>
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190815122151.bg7it6ptxwcn2vif@willie-the-truck>
 <8253b02c-0431-6b01-6af4-6132eb992925@arm.com>
 <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
 <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
 <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
 <CA+Vb7hpjX=yzVJj+BguvzwtyASCGUTwx_OXWfBuEoLO_RicMBQ@mail.gmail.com>
 <CA+Vb7hpXfavS0k47Z0o=SkswO_jMmv3HN7RsUMdx=AHjvrD7LA@mail.gmail.com>
 <20190819100713.GA6117@arrakis.emea.arm.com>
 <20190819104313.fekk5cxxznoctvz5@willie-the-truck>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20190819104313.fekk5cxxznoctvz5@willie-the-truck>
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
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
Cc: heiko@sntech.de, andre.przywara@arm.com, vicencb@gmail.com, linux-rockchip@lists.infradead.org, Philipp Richter <richterphilipp.pops@gmail.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 2019-08-19 11:43 am, Will Deacon wrote:
> On Mon, Aug 19, 2019 at 11:07:14AM +0100, Catalin Marinas wrote:
>> On Sat, Aug 17, 2019 at 03:12:41PM +0200, Philipp Richter wrote:
>>> I added "memtest=4" to the kernel cmdline and I'm getting very quicky
>>> a "Internal error: synchronous external abort" panic.
>> [...]
>>> [    0.000000] early_memtest: # of tests: 4
>>> [    0.000000]   0x0000000000200000 - 0x0000000002080000 pattern aaaaaaaaaaaaaaaa
>>> [    0.000000]   0x0000000003a95000 - 0x00000000f8400000 pattern aaaaaaaaaaaaaaaa
>>> [    0.000000] Internal error: synchronous external abort: 96000210 [#1] SMP
>>
>> At least it's a synchronous error ;).
>>
>>> [    0.000000] pc : early_memtest+0x16c/0x23c
>> [...]
>>> [    0.000000] Code: d2800002 d2800001 eb0400bf 54000309 (f9400080)
>>
>> decodecode says:
>>
>>     0:   d2800002        mov     x2, #0x0                        // #0
>>     4:   d2800001        mov     x1, #0x0                        // #0
>>     8:   eb0400bf        cmp     x5, x4
>>     c:   54000309        b.ls    0x6c  // b.plast
>>    10:*  f9400080        ldr     x0, [x4]                <-- trapping instruction
>>
>> I guess that's the read of *p in memtest(). Writing *p probably
>> generates asynchronous errors it you haven't seen it yet.
>>
>>> Is my board completely broken ? :(
>>
>> One possibility is that you don't have any memory where you think there
>> is, so the mapping just doesn't translate to any valid physical
>> location.
>>
>> Can you add some printk(addr) in do_sea() to see if it always faults on
>> the same address?
> 
> Alternatively, just run it a few more times and see if the register dump
> changes. Currently we've got:
> 
> [    0.000000] x5 : ffff8000f8400000 x4 : ffff800008400000
> [    0.000000] x3 : 0000000008400000 x2 : 0000000000000000
> [    0.000000] x1 : 0000000000000000 x0 : aaaaaaaaaaaaaaaa
> 
> so I'd guess that x3 is the faulting pa. The faulting (linear) VAs in the
> originl report were 0xffff800009c74aa8 and 0xffff800009c08390, which is
> still a way way off from this one :/
> 
> Looking at the TRM for the rk3328, there's 4gb of ram starting at pa 0x0,
> so maybe some of it has been configured as secure or the memory controller
> hasn't been properly initialised?

FWIW I've noticed my RK3399 board doing this too, now that I've started 
using it in anger. I'm using a hacky firmware comprising upstream U-Boot 
munged with the Rockchip miniloader and downstream Trusted Firmware 
binaries, and it looks like that mismatch is the root of this problem. 
Booting a different image based on the BSP U-boot shows that that's 
passing a memory node with the range 0x8400000-0x9600000 entirely carved 
out, so this is presumably claimed by the secure firmware/TEE and set to 
abort Non-Secure accesses.

Robin.
