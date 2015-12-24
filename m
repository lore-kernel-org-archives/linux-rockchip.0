From: Shuyu Wei <shuyu.w-1ViLX0X+lBJBDgjK7y7TUQ@public.gmane.org>
Subject: rk3188 emac stuck at high load
Date: Thu, 24 Dec 2015 15:52:06 +0000
Message-ID: <SNT151-W399C6D5938D0EC43FAD0F0E7E70@phx.gbl>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,
I'm testing Radxa Rock Pro board with mainline kernel 4.4.0-rc6. =

The problem can be reproduced by simultaneously wget two large files at hig=
h speed to /dev/null.

$wget https://192.168.1.1/file.bin -O /dev/null -q &
$wget https://192.168.1.1/file.bin -O /dev/null

or open two sftp session to download two large files to /dev/null.

Some addtional information that might help:
=A0=A0=A0 Downloading from encrypted https links or sftp server triggers th=
e problem much easier.
=A0=A0=A0 Disabling SMP in kernel seems to fix the problem.
=A0=A0=A0 Sometimes the emac just stops sending and receiving frames, somet=
imes it produces kernel panics like below.

[ 2191.975729] BUG: Bad page state in process swapper/0=A0 pfn:8d960
[ 2191.982354] page:ef463180 count:-1 mapcount:0 mapping:=A0 (null) index:0=
x0
[ 2191.989047] flags: 0x0()
[ 2191.991594] page dumped because: nonzero _count
[ 2191.996127] CPU: 0 PID: 0 Comm: swapper/0 Not tainted 4.4.0-rc6 #114
[ 2192.002475] Hardware name: Rockchip (Device Tree)
[ 2192.007174] Backtrace: =

[ 2192.009658] [<c00134d4>] (dump_backtrace) from [<c0013680>] (show_stack+=
0x18/0x1c)
[ 2192.017220]=A0 r7:c051c4f8 r6:ef463180 r5:c05b7000 r4:00000000
[ 2192.022948] [<c0013668>] (show_stack) from [<c0219d90>] (dump_stack+0x90=
/0xa0)
[ 2192.030176] [<c0219d00>] (dump_stack) from [<c00b2cd4>] (bad_page+0xdc/0=
x12c)
[ 2192.037302]=A0 r5:c059a100 r4:c05f430c
[ 2192.040913] [<c00b2bf8>] (bad_page) from [<c00b606c>] (get_page_from_fre=
elist+0x388/0x95c)
[ 2192.049166]=A0 r9:00000008 r8:ef463180 r7:c051c4d0 r6:00000000 r5:000000=
00 r4:c051c4e4
[ 2192.056982] [<c00b5ce4>] (get_page_from_freelist) from [<c00b6880>] (__a=
lloc_pages_nodemask+0xd8/0x8e8)
[ 2192.066362]=A0 r10:c001b068 r9:00000000 r8:ee0b02b0 r7:60000113 r6:00000=
003 r5:02095220
[ 2192.074254]=A0 r4:c05ca1c0
[ 2192.076809] [<c00b67a8>] (__alloc_pages_nodemask) from [<c00b7140>] (__a=
lloc_page_frag+0xb0/0x160)
[ 2192.085757]=A0 r10:c001b068 r9:00000000 r8:ee0b02b0 r7:60000113 r6:02080=
020 r5:00000740
[ 2192.093650]=A0 r4:eedbc884
[ 2192.096207] [<c00b7090>] (__alloc_page_frag) from [<c03273b4>] (__netdev=
_alloc_skb+0xa0/0x104)
[ 2192.104806]=A0 r7:60000113 r6:eedbc884 r5:ee0b0000 r4:00000740
[ 2192.110525] [<c0327314>] (__netdev_alloc_skb) from [<c02aac00>] (arc_ema=
c_poll+0x318/0x57c)
[ 2192.118865]=A0 r9:00000000 r8:ee0b02b0 r7:0000019c r6:ee163780 r5:000006=
70 r4:ee0b0000
[ 2192.126683] [<c02aa8e8>] (arc_emac_poll) from [<c0339ed8>] (net_rx_actio=
n+0x1f0/0x2ec)
[ 2192.134590]=A0 r10:c0599df8 r9:c059a100 r8:00073760 r7:0000012c r6:00000=
028 r5:c02aa8e8
[ 2192.142483]=A0 r4:ee0b04e0
[ 2192.145040] [<c0339ce8>] (net_rx_action) from [<c0026f5c>] (__do_softirq=
+0x134/0x258)
[ 2192.152860]=A0 r10:c059a080 r9:40000003 r8:00000003 r7:00000100 r6:c0598=
000 r5:c059a08c
[ 2192.160751]=A0 r4:00000000
[ 2192.163303] [<c0026e28>] (__do_softirq) from [<c0027344>] (irq_exit+0xb8=
/0x120)
[ 2192.170604]=A0 r10:c04818a4 r9:c059a4a0 r8:ee808000 r7:00000000 r6:00000=
000 r5:0000001a
[ 2192.178496]=A0 r4:c05943bc
[ 2192.181051] [<c002728c>] (irq_exit) from [<c00656a4>] (__handle_domain_i=
rq+0x68/0xbc)
[ 2192.188871]=A0 r5:0000001a r4:c05943bc
[ 2192.192479] [<c006563c>] (__handle_domain_irq) from [<c0009438>] (gic_ha=
ndle_irq+0x40/0x78)
[ 2192.200818]=A0 r9:c059a4a0 r8:f0803100 r7:f0802100 r6:c0599f00 r5:f08021=
0c r4:c059a87c
[ 2192.208630] [<c00093f8>] (gic_handle_irq) from [<c0014214>] (__irq_svc+0=
x54/0x70)
[ 2192.216105] Exception stack(0xc0599f00 to 0xc0599f48)
[ 2192.221161] 9f00: 00000001 00000000 00000000 c001e940 c0598000 c059a454 =
00000000 c05ca291
[ 2192.229336] 9f20: 00000000 c059a4a0 c04818a4 c0599f5c c0599f60 c0599f50 =
c0010208 c001020c
[ 2192.237505] 9f40: 60000013 ffffffff
[ 2192.240990]=A0 r9:c059a4a0 r8:00000000 r7:c0599f34 r6:ffffffff r5:600000=
13 r4:c001020c
[ 2192.248810] [<c00101cc>] (arch_cpu_idle) from [<c005bbec>] (default_idle=
_call+0x28/0x34)
[ 2192.256899] [<c005bbc4>] (default_idle_call) from [<c005be60>] (cpu_star=
tup_entry+0x214/0x270)
[ 2192.265515] [<c005bc4c>] (cpu_startup_entry) from [<c047a6f4>] (rest_ini=
t+0x80/0x84)
[ 2192.273248]=A0 r7:ffffffff
[ 2192.275808] [<c047a674>] (rest_init) from [<c055fca0>] (start_kernel+0x3=
48/0x354)
[ 2192.283288] [<c055f958>] (start_kernel) from [<60008078>] (0x60008078)
[ 2192.289798] Disabling lock debugging due to kernel taint
[ 2192.300779] rockchip_emac 10204000.ethernet eth0: BUG! Tx Ring full when=
 queue awake!

I'm glad to provide more information if needed.

Shuyu Wei
 		 	   		  =
