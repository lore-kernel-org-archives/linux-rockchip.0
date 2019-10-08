From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
Date: Tue, 08 Oct 2019 10:08:53 +0200
Message-ID: <5633427.HO9RFyXBYh@diego>
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <0d1c5c50-6fb0-0154-26cc-c7823dd7ea26@arm.com> <39265746.Q1QFhyvV51@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <39265746.Q1QFhyvV51@diego>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: =?ISO-8859-1?Q?Andr=E9?= Przywara <andre.przywara@arm.com>
Cc: Robin Murphy <robin.murphy@arm.com>, vicencb@gmail.com, linux-rockchip@lists.infradead.org, Catalin Marinas <catalin.marinas@arm.com>, Philipp Richter <richterphilipp.pops@gmail.com>, Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 7. Oktober 2019, 16:06:44 CEST schrieb Heiko St=FCbner:
> Am Montag, 7. Oktober 2019, 16:01:05 CEST schrieb Andr=E9 Przywara:
> > On 07/10/2019 14:38, Heiko St=FCbner wrote:
> > > Am Montag, 7. Oktober 2019, 13:51:37 CEST schrieb Robin Murphy:
> > >> On 06/10/2019 14:13, Heiko Stuebner wrote:
> > >>> Am Sonntag, 6. Oktober 2019, 01:45:23 CEST schrieb Robin Murphy:
> > >>>> On 2019-08-19 11:43 am, Will Deacon wrote:
> > >>>>> On Mon, Aug 19, 2019 at 11:07:14AM +0100, Catalin Marinas wrote:
> > >>>>>> On Sat, Aug 17, 2019 at 03:12:41PM +0200, Philipp Richter wrote:
> > >>>>>>> I added "memtest=3D4" to the kernel cmdline and I'm getting ver=
y quicky
> > >>>>>>> a "Internal error: synchronous external abort" panic.
> > >>>>>> [...]
> > >>>>>>> [    0.000000] early_memtest: # of tests: 4
> > >>>>>>> [    0.000000]   0x0000000000200000 - 0x0000000002080000 patter=
n aaaaaaaaaaaaaaaa
> > >>>>>>> [    0.000000]   0x0000000003a95000 - 0x00000000f8400000 patter=
n aaaaaaaaaaaaaaaa
> > >>>>>>> [    0.000000] Internal error: synchronous external abort: 9600=
0210 [#1] SMP
> > >>>>>>
> > >>>>>> At least it's a synchronous error ;).
> > >>>>>>
> > >>>>>>> [    0.000000] pc : early_memtest+0x16c/0x23c
> > >>>>>> [...]
> > >>>>>>> [    0.000000] Code: d2800002 d2800001 eb0400bf 54000309 (f9400=
080)
> > >>>>>>
> > >>>>>> decodecode says:
> > >>>>>>
> > >>>>>>      0:   d2800002        mov     x2, #0x0                      =
  // #0
> > >>>>>>      4:   d2800001        mov     x1, #0x0                      =
  // #0
> > >>>>>>      8:   eb0400bf        cmp     x5, x4
> > >>>>>>      c:   54000309        b.ls    0x6c  // b.plast
> > >>>>>>     10:*  f9400080        ldr     x0, [x4]                <-- tr=
apping instruction
> > >>>>>>
> > >>>>>> I guess that's the read of *p in memtest(). Writing *p probably
> > >>>>>> generates asynchronous errors it you haven't seen it yet.
> > >>>>>>
> > >>>>>>> Is my board completely broken ? :(
> > >>>>>>
> > >>>>>> One possibility is that you don't have any memory where you thin=
k there
> > >>>>>> is, so the mapping just doesn't translate to any valid physical
> > >>>>>> location.
> > >>>>>>
> > >>>>>> Can you add some printk(addr) in do_sea() to see if it always fa=
ults on
> > >>>>>> the same address?
> > >>>>>
> > >>>>> Alternatively, just run it a few more times and see if the regist=
er dump
> > >>>>> changes. Currently we've got:
> > >>>>>
> > >>>>> [    0.000000] x5 : ffff8000f8400000 x4 : ffff800008400000
> > >>>>> [    0.000000] x3 : 0000000008400000 x2 : 0000000000000000
> > >>>>> [    0.000000] x1 : 0000000000000000 x0 : aaaaaaaaaaaaaaaa
> > >>>>>
> > >>>>> so I'd guess that x3 is the faulting pa. The faulting (linear) VA=
s in the
> > >>>>> originl report were 0xffff800009c74aa8 and 0xffff800009c08390, wh=
ich is
> > >>>>> still a way way off from this one :/
> > >>>>>
> > >>>>> Looking at the TRM for the rk3328, there's 4gb of ram starting at=
 pa 0x0,
> > >>>>> so maybe some of it has been configured as secure or the memory c=
ontroller
> > >>>>> hasn't been properly initialised?
> > >>>>
> > >>>> FWIW I've noticed my RK3399 board doing this too, now that I've st=
arted
> > >>>> using it in anger. I'm using a hacky firmware comprising upstream =
U-Boot
> > >>>> munged with the Rockchip miniloader and downstream Trusted Firmware
> > >>>> binaries,
> > >>>
> > >>> any reason for that combination? For example the rockpro64 got ddr4=
 support
> > >>> in upstream uboot recently.
> > >>
> > >> Not really; it's just the "works well enough" setup that made distro =

> > >> boot usable before the SPL support went upstream, and (other than =

> > >> hacking in the CPU PLL initialisation which otherwise gets lost in t=
hat =

> > >> combination) I haven't touched it since.
> > >>
> > >> [ for now I've just hacked a reserved-memory node into my DT... one =
day =

> > >> I'll get round to firmware tinkering ;) ]
> > >>
> > >>
> > >>>> and it looks like that mismatch is the root of this problem.
> > >>>> Booting a different image based on the BSP U-boot shows that that's
> > >>>> passing a memory node with the range 0x8400000-0x9600000 entirely =
carved
> > >>>> out, so this is presumably claimed by the secure firmware/TEE and =
set to
> > >>>> abort Non-Secure accesses.
> > >>>
> > >>> As TEE on PX30 is also one of my current projects, I've stumbled ov=
er that
> > >>> memory issue. At least OP-TEE can get passed a location for a dtb d=
uring
> > >>> startup which it then would modify to add a reserved section for it=
s memory.
> > >>>
> > >>> But that dtb generally is not the one, the kernel will actually use=
, but
> > >>> instead only the one used by uboot. extlinux, tftp or whatever will=
 normally
> > >>> load and use a new dtb for the kernel which will likely not get tha=
t memory
> > >>> reservation automatically?
> > >>>
> > >>> I'm not yet sure how this is supposed to work in an all-upstream
> > >>> configuration - I'm running upstream u-boot + upstream TF-A + upstr=
eam
> > >>> OP-Tee in my project environment right now.
> > >>
> > >> As far as I understand, U-Boot is still responsible for generating t=
he =

> > >> memory node in whatever DTB it loads and passes to the kernel, so it =

> > >> should still be able to adjust that accordingly. Presumably U-Boot n=
eeds =

> > >> to discover any firmware/TEE reservations early on to avoid touching=
 any =

> > >> Secure memory itself, so it should just need to keep track of them u=
ntil =

> > >> finalising the kernel DTB.
> > > =

> > > Yeah, that's similar to what I discovered so far :-D .
> > > =

> > > SPL loads u-boot.itb which should contain, u-boot, tf-a, tee and dt.
> > > [vendor tf-a might do that differently though]
> > > =

> > > It passes the dt-address as param to both tf-a and optee, which then
> > > may add stuff, like optee adding the firmware-node + reserved-memory
> > > sections.
> > > =

> > > This dt is then the basis for the main u-boot, to be found at gd->fdt=
_blob.
> > > So u-boot will need to discover and transplant optee-firmware + optee
> > > reserved-memory sections to any later dt that gets loaded.
> > =

> > Indeed U-Boot is mostly ignoring both /memreserve/ and /reserved-memory
> > for its own purposes so far. There is code
> > (boot_fdt_add_mem_rsv_regions()) to parse those nodes and translate them
> > into an lmb block, but this is then only used for relocating FDT and
> > initrd when loading kernels, AFAICS. I think the idea is that the most
> > of the memory setup (heap) is static anyway and you would take care of
> > not placing any U-Boot components in reserved memory regions in the
> > first place.
> > Is U-Boot actually tripping over something? Or is this just to be safe
> > for the future?
> =

> It's not u-boot that is tripping but a later loaded kernel. As I've writt=
en
> op-tee adds its nodes to the dt loaded by the SPL from a FIT image.
> =

> Which may not necessarily be the same dt that gets used by the later
> kernel. PXE-boot for example may very well just load a different dt
> from emmc / network than the one stored in the firmware image.
> =

> So the reserved memory sections will need to move over to that dt
> as well if we're starting a kernel with a different dt, similar to how
> u-boot will add the core memory there as well.

Yesterday I did implement the relevant code to do this transfer in
	https://patchwork.ozlabs.org/patch/1173030/

This will work with a "regular" atf + optee bringup with optee given
to TF-A as a bl32 param, as the other relevant patches do:
	https://patchwork.ozlabs.org/patch/1172566/
	https://patchwork.ozlabs.org/patch/1172565/

Mileage may vary with Rockchip's binary ATF+Optee combination,
as this is distributed as one image and thus likely does something
strange during the jump from ATF to Optee.


Reviews welcome ;-)

Heiko


> > And I have a gut feeling the implementing no-map will be tricky, AFAIK
> > the page table setup is mostly static and won't change after the MMU is
> > enabled. Which means we would need to do it before the MMU is enabled?
> > =

> > Cheers,
> > Andre
> > =

> =
