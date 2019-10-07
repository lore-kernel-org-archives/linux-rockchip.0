From: Robin Murphy <robin.murphy@arm.com>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
Date: Mon, 7 Oct 2019 12:51:37 +0100
Message-ID: <7f659a93-81e1-65f3-8239-537307f34f42@arm.com>
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190819104313.fekk5cxxznoctvz5@willie-the-truck>
 <006d3ee0-2711-1b4e-d8cf-6a226fcad0e4@arm.com> <1596764.niU1GBd6P2@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <1596764.niU1GBd6P2@phil>
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, vicencb@gmail.com, linux-rockchip@lists.infradead.org, andre.przywara@arm.com, Philipp Richter <richterphilipp.pops@gmail.com>, Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On 06/10/2019 14:13, Heiko Stuebner wrote:
> Am Sonntag, 6. Oktober 2019, 01:45:23 CEST schrieb Robin Murphy:
>> On 2019-08-19 11:43 am, Will Deacon wrote:
>>> On Mon, Aug 19, 2019 at 11:07:14AM +0100, Catalin Marinas wrote:
>>>> On Sat, Aug 17, 2019 at 03:12:41PM +0200, Philipp Richter wrote:
>>>>> I added "memtest=4" to the kernel cmdline and I'm getting very quicky
>>>>> a "Internal error: synchronous external abort" panic.
>>>> [...]
>>>>> [    0.000000] early_memtest: # of tests: 4
>>>>> [    0.000000]   0x0000000000200000 - 0x0000000002080000 pattern aaaaaaaaaaaaaaaa
>>>>> [    0.000000]   0x0000000003a95000 - 0x00000000f8400000 pattern aaaaaaaaaaaaaaaa
>>>>> [    0.000000] Internal error: synchronous external abort: 96000210 [#1] SMP
>>>>
>>>> At least it's a synchronous error ;).
>>>>
>>>>> [    0.000000] pc : early_memtest+0x16c/0x23c
>>>> [...]
>>>>> [    0.000000] Code: d2800002 d2800001 eb0400bf 54000309 (f9400080)
>>>>
>>>> decodecode says:
>>>>
>>>>      0:   d2800002        mov     x2, #0x0                        // #0
>>>>      4:   d2800001        mov     x1, #0x0                        // #0
>>>>      8:   eb0400bf        cmp     x5, x4
>>>>      c:   54000309        b.ls    0x6c  // b.plast
>>>>     10:*  f9400080        ldr     x0, [x4]                <-- trapping instruction
>>>>
>>>> I guess that's the read of *p in memtest(). Writing *p probably
>>>> generates asynchronous errors it you haven't seen it yet.
>>>>
>>>>> Is my board completely broken ? :(
>>>>
>>>> One possibility is that you don't have any memory where you think there
>>>> is, so the mapping just doesn't translate to any valid physical
>>>> location.
>>>>
>>>> Can you add some printk(addr) in do_sea() to see if it always faults on
>>>> the same address?
>>>
>>> Alternatively, just run it a few more times and see if the register dump
>>> changes. Currently we've got:
>>>
>>> [    0.000000] x5 : ffff8000f8400000 x4 : ffff800008400000
>>> [    0.000000] x3 : 0000000008400000 x2 : 0000000000000000
>>> [    0.000000] x1 : 0000000000000000 x0 : aaaaaaaaaaaaaaaa
>>>
>>> so I'd guess that x3 is the faulting pa. The faulting (linear) VAs in the
>>> originl report were 0xffff800009c74aa8 and 0xffff800009c08390, which is
>>> still a way way off from this one :/
>>>
>>> Looking at the TRM for the rk3328, there's 4gb of ram starting at pa 0x0,
>>> so maybe some of it has been configured as secure or the memory controller
>>> hasn't been properly initialised?
>>
>> FWIW I've noticed my RK3399 board doing this too, now that I've started
>> using it in anger. I'm using a hacky firmware comprising upstream U-Boot
>> munged with the Rockchip miniloader and downstream Trusted Firmware
>> binaries,
> 
> any reason for that combination? For example the rockpro64 got ddr4 support
> in upstream uboot recently.

Not really; it's just the "works well enough" setup that made distro 
boot usable before the SPL support went upstream, and (other than 
hacking in the CPU PLL initialisation which otherwise gets lost in that 
combination) I haven't touched it since.

[ for now I've just hacked a reserved-memory node into my DT... one day 
I'll get round to firmware tinkering ;) ]

>> and it looks like that mismatch is the root of this problem.
>> Booting a different image based on the BSP U-boot shows that that's
>> passing a memory node with the range 0x8400000-0x9600000 entirely carved
>> out, so this is presumably claimed by the secure firmware/TEE and set to
>> abort Non-Secure accesses.
> 
> As TEE on PX30 is also one of my current projects, I've stumbled over that
> memory issue. At least OP-TEE can get passed a location for a dtb during
> startup which it then would modify to add a reserved section for its memory.
> 
> But that dtb generally is not the one, the kernel will actually use, but
> instead only the one used by uboot. extlinux, tftp or whatever will normally
> load and use a new dtb for the kernel which will likely not get that memory
> reservation automatically?
> 
> I'm not yet sure how this is supposed to work in an all-upstream
> configuration - I'm running upstream u-boot + upstream TF-A + upstream
> OP-Tee in my project environment right now.

As far as I understand, U-Boot is still responsible for generating the 
memory node in whatever DTB it loads and passes to the kernel, so it 
should still be able to adjust that accordingly. Presumably U-Boot needs 
to discover any firmware/TEE reservations early on to avoid touching any 
Secure memory itself, so it should just need to keep track of them until 
finalising the kernel DTB.

Robin.
