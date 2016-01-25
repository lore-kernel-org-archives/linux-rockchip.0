From: Shuyu Wei <shuyu.w-1ViLX0X+lBJBDgjK7y7TUQ@public.gmane.org>
Subject: RE: rk3188 emac stuck at high load
Date: Mon, 25 Jan 2016 13:33:02 +0000
Message-ID: <SNT151-W396F79221B612690406E88E7C70@phx.gbl>
References: <SNT151-W399C6D5938D0EC43FAD0F0E7E70@phx.gbl>,
 <56A619E0.7060901@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-2022-jp"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <56A619E0.7060901-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Caesar Wang <caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Caesar,

Thanks for your reply, I thought I have fixed the issue by this patch:
http://lists.infradead.org/pipermail/linux-rockchip/2016-January/006412.html
Maybe I sent it to the wrong maintainer so it didn't get noticed.
I'll try your solution and report as soon as possible. 
----------------------------------------
> Subject: Re: rk3188 emac stuck at high load
> To: shuyu.w-1ViLX0X+lBJBDgjK7y7TUQ@public.gmane.org
> CC: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org; heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
> From: caesar.upstream-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
> Date: Mon, 25 Jan 2016 20:49:36 +0800
>
> Hi Shuyu,
>
> Thanks your report! Do you have fixed this issue?
> I guess that caused by the cpufreq.
>
> if you run 'cat sys/kernel/debug/clk/clk_summary' to check the emac
> parent clock, Is it the APLL?
> Maybe you can change the parent clock to fix this issue if it's.
>
> Fox example:
> uboot：
> https://github.com/rockchip-linux/u-boot/commit/d64ef6b272d84c92bd02a7925f500880633c8599
>
> kernel:
> https://patchwork.kernel.org/patch/8108231/
>
>
> I try to install many somethings with ubuntu os on rk3036. (that's also
> working with the emac..)
>
> .....
> Get:35 http://ports.ubuntu.com/ubuntu-ports/ wily/main
> libpython2.7-minimal armhf 2.7.10-4ubuntu1 [338 kB]
> Get:36 http://ports.ubuntu.com/ubuntu-ports/ wily/main
> libpython2.7-stdlib armhf 2.7.10-4ubuntu1 [1750 kB]
> Get:37 http://ports.ubuntu.com/ubuntu-ports/ wily/main libpython2.7
> armhf 2.7.10-4ubuntu1 [935 kB]
> Get:38 http://ports.ubuntu.com/ubuntu-ports/ wily/main vim-runtime all
> 2:7.4.712-2ubuntu4 [4984 kB]
> 85% [38 vim-runtime 4405 kB/4984 kB 88%] 195 kB/s 11s[ 314.685641] BUG:
> Bad page state in process swapper/0 pfn:7e0
> [ 314.691607] page:dffcee00 count:-1 mapcount:0 mapping: (null) index:0x0
> [ 314.698311] flags: 0x0()
> [ 314.700866] page dumped because: nonzero _count
> 88% [38 vim-runtime 4738 kB/4984 kB 95%] 195 kB/s 9s[ 316.096013]
> skbuff: skb_over_panic: text:c04ae19c len:2878 p>
> [ 316.108471] ------------[ cut here ]------------
> [ 316.113109] kernel BUG at
> /home/wxt/work/android/brillo/kernel/net/core/skbuff.c:102!
> [ 316.120938] Internal error: Oops - BUG: 0 [#1] SMP ARM
> [ 316.126079] Modules linked in:
> [ 316.129166] CPU: 0 PID: 0 Comm: swapper/0 Tainted: G B
> 4.4.0-rc8+ #35
> [ 316.136732] Hardware name: Rockchip (Device Tree)
> [ 316.141444] task: c0f0c0b0 ti: c0f00000 task.ti: c0f00000
> [ 316.146862] PC is at skb_panic+0x60/0x6c
> [ 316.150799] LR is at _raw_spin_unlock_irqrestore+0x1c/0x24
> [ 316.156291] pc : [<c093f694>] lr : [<c0947fb0>] psr: 60000113
> [ 316.156291] sp : c0f01d88 ip : c0f01c08 fp : c0f01dbc
> [ 316.167761] r10: df718540 r9 : deabbcc0 r8 : 000003a0
> [ 316.172989] r7 : c0c3ba0a r6 : debb0c00 r5 : debb0c64 r4 : debb17a2
> [ 316.179517] r3 : c0e933b8 r2 : 00000000 r1 : 60000113 r0 : 0000007d
> ...
> [ 316.372994] [<c093f694>] (skb_panic) from [<c07353b8>]
> (skb_put+0x54/0x60)
> [ 316.379888] [<c07353b8>] (skb_put) from [<c04ae19c>]
> (arc_emac_poll+0x26c/0x4bc)
> [ 316.387299] [<c04ae19c>] (arc_emac_poll) from [<c07456b4>]
> (net_rx_action+0xf4/0x308)
> [ 316.395146] [<c07456b4>] (net_rx_action) from [<c012365c>]
> (__do_softirq+0x10c/0x2d8)
> [ 316.402991] [<c012365c>] (__do_softirq) from [<c0123adc>]
> (irq_exit+0x94/0x104)
> [ 316.410313] [<c0123adc>] (irq_exit) from [<c016a778>]
> (__handle_domain_irq+0x98/0xbc)
> [ 316.418156] [<c016a778>] (__handle_domain_irq) from [<c010143c>]
> (gic_handle_irq+0x58/0xa0)
> [ 316.426514] [<c010143c>] (gic_handle_irq) from [<c010be94>]
> (__irq_svc+0x54/
>
> 在 2015年12月24日 23:52, Shuyu Wei 写道:
>> Hi,
>> I'm testing Radxa Rock Pro board with mainline kernel 4.4.0-rc6.
>> The problem can be reproduced by simultaneously wget two large files at high speed to /dev/null.
>>
>> $wget https://192.168.1.1/file.bin -O /dev/null -q &
>> $wget https://192.168.1.1/file.bin -O /dev/null
>>
>> or open two sftp session to download two large files to /dev/null.
>>
>> Some addtional information that might help:
>> Downloading from encrypted https links or sftp server triggers the problem much easier.
>> Disabling SMP in kernel seems to fix the problem.
>> Sometimes the emac just stops sending and receiving frames, sometimes it produces kernel panics like below.
>>
>> [ 2191.975729] BUG: Bad page state in process swapper/0 pfn:8d960
>> [ 2191.982354] page:ef463180 count:-1 mapcount:0 mapping: (null) index:0x0
>> [ 2191.989047] flags: 0x0()
>> [ 2191.991594] page dumped because: nonzero _count
>> [ 2191.996127] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.4.0-rc6 #114
>> [ 2192.002475] Hardware name: Rockchip (Device Tree)
>> [ 2192.007174] Backtrace:
>> [ 2192.009658] [<c00134d4>] (dump_backtrace) from [<c0013680>] (show_stack+0x18/0x1c)
>> [ 2192.017220] r7:c051c4f8 r6:ef463180 r5:c05b7000 r4:00000000
>> [ 2192.022948] [<c0013668>] (show_stack) from [<c0219d90>] (dump_stack+0x90/0xa0)
>> [ 2192.030176] [<c0219d00>] (dump_stack) from [<c00b2cd4>] (bad_page+0xdc/0x12c)
>> [ 2192.037302] r5:c059a100 r4:c05f430c
>> [ 2192.040913] [<c00b2bf8>] (bad_page) from [<c00b606c>] (get_page_from_freelist+0x388/0x95c)
>> [ 2192.049166] r9:00000008 r8:ef463180 r7:c051c4d0 r6:00000000 r5:00000000 r4:c051c4e4
>> [ 2192.056982] [<c00b5ce4>] (get_page_from_freelist) from [<c00b6880>] (__alloc_pages_nodemask+0xd8/0x8e8)
>> [ 2192.066362] r10:c001b068 r9:00000000 r8:ee0b02b0 r7:60000113 r6:00000003 r5:02095220
>> [ 2192.074254] r4:c05ca1c0
>> [ 2192.076809] [<c00b67a8>] (__alloc_pages_nodemask) from [<c00b7140>] (__alloc_page_frag+0xb0/0x160)
>> [ 2192.085757] r10:c001b068 r9:00000000 r8:ee0b02b0 r7:60000113 r6:02080020 r5:00000740
>> [ 2192.093650] r4:eedbc884
>> [ 2192.096207] [<c00b7090>] (__alloc_page_frag) from [<c03273b4>] (__netdev_alloc_skb+0xa0/0x104)
>> [ 2192.104806] r7:60000113 r6:eedbc884 r5:ee0b0000 r4:00000740
>> [ 2192.110525] [<c0327314>] (__netdev_alloc_skb) from [<c02aac00>] (arc_emac_poll+0x318/0x57c)
>> [ 2192.118865] r9:00000000 r8:ee0b02b0 r7:0000019c r6:ee163780 r5:00000670 r4:ee0b0000
>> [ 2192.126683] [<c02aa8e8>] (arc_emac_poll) from [<c0339ed8>] (net_rx_action+0x1f0/0x2ec)
>> [ 2192.134590] r10:c0599df8 r9:c059a100 r8:00073760 r7:0000012c r6:00000028 r5:c02aa8e8
>> [ 2192.142483] r4:ee0b04e0
>> [ 2192.145040] [<c0339ce8>] (net_rx_action) from [<c0026f5c>] (__do_softirq+0x134/0x258)
>> [ 2192.152860] r10:c059a080 r9:40000003 r8:00000003 r7:00000100 r6:c0598000 r5:c059a08c
>> [ 2192.160751] r4:00000000
>> [ 2192.163303] [<c0026e28>] (__do_softirq) from [<c0027344>] (irq_exit+0xb8/0x120)
>> [ 2192.170604] r10:c04818a4 r9:c059a4a0 r8:ee808000 r7:00000000 r6:00000000 r5:0000001a
>> [ 2192.178496] r4:c05943bc
>> [ 2192.181051] [<c002728c>] (irq_exit) from [<c00656a4>] (__handle_domain_irq+0x68/0xbc)
>> [ 2192.188871] r5:0000001a r4:c05943bc
>> [ 2192.192479] [<c006563c>] (__handle_domain_irq) from [<c0009438>] (gic_handle_irq+0x40/0x78)
>> [ 2192.200818] r9:c059a4a0 r8:f0803100 r7:f0802100 r6:c0599f00 r5:f080210c r4:c059a87c
>> [ 2192.208630] [<c00093f8>] (gic_handle_irq) from [<c0014214>] (__irq_svc+0x54/0x70)
>> [ 2192.216105] Exception stack(0xc0599f00 to 0xc0599f48)
>> [ 2192.221161] 9f00: 00000001 00000000 00000000 c001e940 c0598000 c059a454 00000000 c05ca291
>> [ 2192.229336] 9f20: 00000000 c059a4a0 c04818a4 c0599f5c c0599f60 c0599f50 c0010208 c001020c
>> [ 2192.237505] 9f40: 60000013 ffffffff
>> [ 2192.240990] r9:c059a4a0 r8:00000000 r7:c0599f34 r6:ffffffff r5:60000013 r4:c001020c
>> [ 2192.248810] [<c00101cc>] (arch_cpu_idle) from [<c005bbec>] (default_idle_call+0x28/0x34)
>> [ 2192.256899] [<c005bbc4>] (default_idle_call) from [<c005be60>] (cpu_startup_entry+0x214/0x270)
>> [ 2192.265515] [<c005bc4c>] (cpu_startup_entry) from [<c047a6f4>] (rest_init+0x80/0x84)
>> [ 2192.273248] r7:ffffffff
>> [ 2192.275808] [<c047a674>] (rest_init) from [<c055fca0>] (start_kernel+0x348/0x354)
>> [ 2192.283288] [<c055f958>] (start_kernel) from [<60008078>] (0x60008078)
>> [ 2192.289798] Disabling lock debugging due to kernel taint
>> [ 2192.300779] rockchip_emac 10204000.ethernet eth0: BUG! Tx Ring full when queue awake!
>>
>> I'm glad to provide more information if needed.
>>
>> Shuyu Wei
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
>
> --
> Thanks,
> Caesar
>
 		 	   		  
