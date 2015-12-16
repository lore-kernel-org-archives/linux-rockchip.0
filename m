From: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Subject: Re: poweroff-issue with dwc2 on Felipe's testing/next branch
Date: Wed, 16 Dec 2015 09:35:45 -0600
Message-ID: <87zixaflta.fsf@saruman.tx.rr.com>
References: <2855104.z6YbyzHk7K@diego>
 <2B3535C5ECE8B5419E3ECBE30077290901DC40275C@US01WEMBX2.internal.synopsys.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0313042184099425163=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2B3535C5ECE8B5419E3ECBE30077290901DC40275C-Yu2iAY70zvrYN67daEjeMPufCSb+aD3WLzEdoUbNIic@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "john.youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org" <john.youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

--===============0313042184099425163==
Content-Type: multipart/signed; boundary="=-=-="; micalg=pgp-sha1;
	protocol="application/pgp-signature"

--=-=-=
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


Hi,

John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org> writes:
> On 12/15/2015 3:49 PM, Heiko St=C3=BCbner wrote:
>> Hi,
>>=20
>> it seems the recent dwc2 additions to the testing/next branch [0] caused
>> some interesting issue for me.
>>=20
>> Setting is a regular 4.4-rc3/4 (only with some display-stuff added), and=
 the
>> testing/next branch merged in.
>>=20
>> If I attach a single usb device everything still works fine, but once it
>> is connected through a hub, like the following:
>>=20
>> root@localhost:~# lsusb -t
>> /:  Bus 02.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dehci-platform/1p, 4=
80M
>>     |__ Port 1: Dev 2, If 0, Class=3DVideo, Driver=3D, 480M
>>     |__ Port 1: Dev 2, If 1, Class=3DVideo, Driver=3D, 480M
>> /:  Bus 01.Port 1: Dev 1, Class=3Droot_hub, Driver=3Ddwc2/1p, 480M
>>     |__ Port 1: Dev 2, If 0, Class=3DHub, Driver=3Dhub/5p, 480M
>>         |__ Port 1: Dev 3, If 0, Class=3DVendor Specific Class, Driver=
=3Dsmsc95xx, 480M
>>         |__ Port 2: Dev 4, If 0, Class=3DMass Storage, Driver=3Dusb-stor=
age, 480M
>>=20
>> I get strange results when powering off the device with the usb device
>> still attached.
>>=20
>> On regular 4.4-rc3
>> root@localhost:~# poweroff
>> ...
>> reboot: Power down
>> ~20sec delay before actual poweroff
>> [that delay is only present with a usb hub in between, probably due to t=
he
>> big number of interrupts it creates]
>>=20
>>=20
>> With testing/next the device cannot poweroff anymore and instead I get
>> [   40.117160] reboot: Power down
>> [   68.031372] NMI watchdog: BUG: soft lockup - CPU#0 stuck for 22s! [sy=
stemd-shutdow:1]
>> [   68.046575] Modules linked in:
>> [   68.053084] irq event stamp: 1654975
>> [   68.060091] hardirqs last  enabled at (1654974): [<c00156fc>] __irq_s=
vc+0x5c/0x78
>> [   68.074935] hardirqs last disabled at (1654975): [<c00156e8>] __irq_s=
vc+0x48/0x78
>> [   68.089666] softirqs last  enabled at (1654846): [<c002ef84>] __do_so=
ftirq+0x358/0x49c
>> [   68.105261] softirqs last disabled at (1654847): [<c002f400>] irq_exi=
t+0x94/0xd4
>> [   68.120027] CPU: 0 PID: 1 Comm: systemd-shutdow Not tainted 4.4.0-rc4=
+ #2761
>> [   68.133507] Hardware name: Rockchip (Device Tree)
>> [   68.142690] task: ee900d40 ti: ee902000 task.ti: ee902000
>> [   68.153237] PC is at rcu_lockdep_current_cpu_online+0x6c/0x90
>> [   68.164438] LR is at rcu_read_lock_held+0x38/0x58
>> [   68.173683] pc : [<c0095e98>]    lr : [<c0094d00>]    psr: 00010113
>> [   68.173683] sp : ee903be8  ip : ee903bf8  fp : ee903bf4
>> [   68.195300] r10: c0b884f8  r9 : 00000000  r8 : c0b884f8
>> [   68.205429] r7 : ffffbccc  r6 : eed7f680  r5 : 00000001  r4 : ee955800
>> [   68.217938] r3 : ee902028  r2 : 0000000f  r1 : c0b1891c  r0 : 00000001
>> [   68.230482] Flags: nzcv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segm=
ent none
>> [   68.244141] Control: 10c5387d  Table: 2dae806a  DAC: 00000051
>> [   68.255283] CPU: 0 PID: 1 Comm: systemd-shutdow Not tainted 4.4.0-rc4=
+ #2761
>> [   68.268720] Hardware name: Rockchip (Device Tree)
>> [   68.278165] [<c0019914>] (unwind_backtrace) from [<c0014bcc>] (show_s=
tack+0x20/0x24)
>> [   68.293198] [<c0014bcc>] (show_stack) from [<c02c4584>] (dump_stack+0=
x84/0xb8)
>> [   68.307285] [<c02c4584>] (dump_stack) from [<c0010d74>] (show_regs+0x=
1c/0x20)
>> [   68.321205] [<c0010d74>] (show_regs) from [<c00d993c>] (watchdog_time=
r_fn+0x1c8/0x250)
>> [   68.336579] [<c00d993c>] (watchdog_timer_fn) from [<c00a0e0c>] (__hrt=
imer_run_queues+0x2cc/0x55c)
>> [   68.353819] [<c00a0e0c>] (__hrtimer_run_queues) from [<c00a12a0>] (hr=
timer_interrupt+0xac/0x1f8)
>> [   68.370795] [<c00a12a0>] (hrtimer_interrupt) from [<c04f1714>] (arch_=
timer_handler_phys+0x38/0x48)
>> [   68.388044] [<c04f1714>] (arch_timer_handler_phys) from [<c008fd34>] =
(handle_percpu_devid_irq+0x15c/0x314)
>> [   68.406687] [<c008fd34>] (handle_percpu_devid_irq) from [<c008b4b8>] =
(generic_handle_irq+0x28/0x38)
>> [   68.424177] [<c008b4b8>] (generic_handle_irq) from [<c008b830>] (__ha=
ndle_domain_irq+0x9c/0xc4)
>> [   68.440945] [<c008b830>] (__handle_domain_irq) from [<c0009518>] (gic=
_handle_irq+0x58/0x80)
>> [   68.457054] [<c0009518>] (gic_handle_irq) from [<c00156f8>] (__irq_sv=
c+0x58/0x78)
>> [   68.471405] Exception stack(0xee903b98 to 0xee903be0)
>> [   68.481288] 3b80:                                                    =
   00000001 c0b1891c
>> [   68.497074] 3ba0: 0000000f ee902028 ee955800 00000001 eed7f680 ffffbc=
cc c0b884f8 00000000
>> [   68.512875] 3bc0: c0b884f8 ee903bf4 ee903bf8 ee903be8 c0094d00 c0095e=
98 00010113 ffffffff
>> [   68.528713] [<c00156f8>] (__irq_svc) from [<c0095e98>] (rcu_lockdep_c=
urrent_cpu_online+0x6c/0x90)
>> [   68.545915] [<c0095e98>] (rcu_lockdep_current_cpu_online) from [<c009=
4d00>] (rcu_read_lock_held+0x38/0x58)
>> [   68.564535] [<c0094d00>] (rcu_read_lock_held) from [<c006af0c>] (run_=
rebalance_domains+0x114/0x3e4)
>> [   68.582013] [<c006af0c>] (run_rebalance_domains) from [<c002ee04>] (_=
_do_softirq+0x1d8/0x49c)
>> [   68.598529] [<c002ee04>] (__do_softirq) from [<c002f400>] (irq_exit+0=
x94/0xd4)
>> [   68.612591] [<c002f400>] (irq_exit) from [<c008b834>] (__handle_domai=
n_irq+0xa0/0xc4)
>> [   68.808119] [<c008b834>] (__handle_domain_irq) from [<c0009518>] (gic=
_handle_irq+0x58/0x80)
>> [   69.004792] [<c0009518>] (gic_handle_irq) from [<c00156f8>] (__irq_sv=
c+0x58/0x78)
>> [   69.203767] Exception stack(0xee903d20 to 0xee903d68)
>> [   69.402232] 3d20: 00000001 00000010 c134e8f8 ee900d40 00000000 600100=
13 ee26a834 00000000
>> [   69.608139] 3d40: 00000000 00000000 00000000 ee903db4 00000002 ee903d=
70 ee9012a8 c007f4bc
>> [   69.811985] 3d60: 80010013 ffffffff
>> [   70.007318] [<c00156f8>] (__irq_svc) from [<c007f4bc>] (lock_acquire+=
0x190/0x218)
>> [   70.212947] [<c007f4bc>] (lock_acquire) from [<c0758f5c>] (mutex_lock=
_nested+0x78/0x41c)
>> [   70.419796] [<c0758f5c>] (mutex_lock_nested) from [<c03d5838>] (regma=
p_lock_mutex+0x1c/0x20)
>> [   70.630771] [<c03d5838>] (regmap_lock_mutex) from [<c03d8e6c>] (regma=
p_update_bits+0x34/0x70)
>> [   70.842523] [<c03d8e6c>] (regmap_update_bits) from [<c03e5a4c>] (rk80=
8_device_shutdown+0x4c/0x74)
>> [   71.056896] [<c03e5a4c>] (rk808_device_shutdown) from [<c0012bc8>] (m=
achine_power_off+0x34/0x3c)
>> [   71.271604] [<c0012bc8>] (machine_power_off) from [<c004f3d4>] (kerne=
l_power_off+0x6c/0x80)
>> [   71.486193] [<c004f3d4>] (kernel_power_off) from [<c004f588>] (SyS_re=
boot+0x148/0x1d8)
>> [   71.701543] [<c004f588>] (SyS_reboot) from [<c000ff80>] (ret_fast_sys=
call+0x0/0x1c)
>> [   71.920475] Kernel panic - not syncing: softlockup: hung tasks
>> [   72.134543] CPU: 0 PID: 1 Comm: systemd-shutdow Tainted: G           =
  L  4.4.0-rc4+ #2761
>> [   72.353754] Hardware name: Rockchip (Device Tree)
>> [   72.567683] [<c0019914>] (unwind_backtrace) from [<c0014bcc>] (show_s=
tack+0x20/0x24)
>> [   72.789719] [<c0014bcc>] (show_stack) from [<c02c4584>] (dump_stack+0=
x84/0xb8)
>> [   73.012087] [<c02c4584>] (dump_stack) from [<c01157e4>] (panic+0x9c/0=
x210)
>> [   73.233823] [<c01157e4>] (panic) from [<c00d9984>] (watchdog_timer_fn=
+0x210/0x250)
>> [   73.456871] [<c00d9984>] (watchdog_timer_fn) from [<c00a0e0c>] (__hrt=
imer_run_queues+0x2cc/0x55c)
>> [   73.683212] [<c00a0e0c>] (__hrtimer_run_queues) from [<c00a12a0>] (hr=
timer_interrupt+0xac/0x1f8)
>> [   73.909999] [<c00a12a0>] (hrtimer_interrupt) from [<c04f1714>] (arch_=
timer_handler_phys+0x38/0x48)
>> [   74.137596] [<c04f1714>] (arch_timer_handler_phys) from [<c008fd34>] =
(handle_percpu_devid_irq+0x15c/0x314)
>> [   74.367459] [<c008fd34>] (handle_percpu_devid_irq) from [<c008b4b8>] =
(generic_handle_irq+0x28/0x38)
>> [   74.596433] [<c008b4b8>] (generic_handle_irq) from [<c008b830>] (__ha=
ndle_domain_irq+0x9c/0xc4)
>> [   74.826935] [<c008b830>] (__handle_domain_irq) from [<c0009518>] (gic=
_handle_irq+0x58/0x80)
>> [   75.057263] [<c0009518>] (gic_handle_irq) from [<c00156f8>] (__irq_sv=
c+0x58/0x78)
>> [   75.285610] Exception stack(0xee903b98 to 0xee903be0)
>> [   75.509201] 3b80:                                                    =
   00000001 c0b1891c
>> [   75.737970] 3ba0: 0000000f ee902028 ee955800 00000001 eed7f680 ffffbc=
cc c0b884f8 00000000
>> [   75.965750] 3bc0: c0b884f8 ee903bf4 ee903bf8 ee903be8 c0094d00 c0095e=
98 00010113 ffffffff
>> [   76.193210] [<c00156f8>] (__irq_svc) from [<c0095e98>] (rcu_lockdep_c=
urrent_cpu_online+0x6c/0x90)
>> [   76.422735] [<c0095e98>] (rcu_lockdep_current_cpu_online) from [<c009=
4d00>] (rcu_read_lock_held+0x38/0x58)
>> [   76.654439] [<c0094d00>] (rcu_read_lock_held) from [<c006af0c>] (run_=
rebalance_domains+0x114/0x3e4)
>> [   76.885606] [<c006af0c>] (run_rebalance_domains) from [<c002ee04>] (_=
_do_softirq+0x1d8/0x49c)
>> [   77.116138] [<c002ee04>] (__do_softirq) from [<c002f400>] (irq_exit+0=
x94/0xd4)
>> [   77.342544] [<c002f400>] (irq_exit) from [<c008b834>] (__handle_domai=
n_irq+0xa0/0xc4)
>> [   77.569812] [<c008b834>] (__handle_domain_irq) from [<c0009518>] (gic=
_handle_irq+0x58/0x80)
>> [   77.801452] [<c0009518>] (gic_handle_irq) from [<c00156f8>] (__irq_sv=
c+0x58/0x78)
>> [   78.030528] Exception stack(0xee903d20 to 0xee903d68)
>> [   78.254326] 3d20: 00000001 00000010 c134e8f8 ee900d40 00000000 600100=
13 ee26a834 00000000
>> [   78.483633] 3d40: 00000000 00000000 00000000 ee903db4 00000002 ee903d=
70 ee9012a8 c007f4bc
>> [   78.710987] 3d60: 80010013 ffffffff
>> [   78.929606] [<c00156f8>] (__irq_svc) from [<c007f4bc>] (lock_acquire+=
0x190/0x218)
>> [   79.156074] [<c007f4bc>] (lock_acquire) from [<c0758f5c>] (mutex_lock=
_nested+0x78/0x41c)
>> [   79.383616] [<c0758f5c>] (mutex_lock_nested) from [<c03d5838>] (regma=
p_lock_mutex+0x1c/0x20)
>> [   79.611793] [<c03d5838>] (regmap_lock_mutex) from [<c03d8e6c>] (regma=
p_update_bits+0x34/0x70)
>> [   79.839125] [<c03d8e6c>] (regmap_update_bits) from [<c03e5a4c>] (rk80=
8_device_shutdown+0x4c/0x74)
>> [   80.066755] [<c03e5a4c>] (rk808_device_shutdown) from [<c0012bc8>] (m=
achine_power_off+0x34/0x3c)
>> [   80.296308] [<c0012bc8>] (machine_power_off) from [<c004f3d4>] (kerne=
l_power_off+0x6c/0x80)
>> [   80.525430] [<c004f3d4>] (kernel_power_off) from [<c004f588>] (SyS_re=
boot+0x148/0x1d8)
>> [   80.753737] [<c004f588>] (SyS_reboot) from [<c000ff80>] (ret_fast_sys=
call+0x0/0x1c)
>> [   80.986626] ---[ end Kernel panic - not syncing: softlockup: hung tas=
ks
>>=20
>>=20
>> There are more pending patches I haven't looked at - so maybe one of them
>> improves that, but maybe one of you also has some idea :-) .
>>=20
>>=20
>> Heiko
>>=20
>>=20
>> [0] https://git.kernel.org/cgit/linux/kernel/git/balbi/usb.git/log/?h=3D=
testing/next
>>=20
>>=20
>
>
> Hi Heiko,
>
> Felipe's testing/next tree has some commits on it that I found
> problems with and that I'm reworking now. I'm not sure if anything
> there is related.
>
> You can try from commit a105c257 to see if it resolves it. Or you can
> wait until I resubmit those patches.

I can drop them, which ones should I drop ?

=2D-=20
balbi

--=-=-=
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBAgAGBQJWcYTSAAoJEIaOsuA1yqREI00P/3QkAesfZAJPX9ocQs7P5g4F
1zFUQh35YOicT+QzjSAMhMZ0FVL/OqjCOkk9hcsq8goXDW0RyMBvCXNcoVmWlxAF
Q2dWqpNBHJsGruBmcE79laGR250ll7LBF1aPrKP7pp3FJcjQg60M1HDU66qJjinI
LsrbA377BXAy/ulZxmz1vzwY0WiDgi/QahUY1BQUejaNIb+ZLRMSlYsPZSiTSQ0S
dxHr6ZluY1yHWrz6VpIKUI2JWZRgGFdN5S+nObSaufTuMtC/NMQqq+3j0vY1E1qL
cW7jiMkgGXE4XMeSnwS3NJC2fj3ZFFr8kHGBasdOL+k+ITbRJEW5kZ+u8gSEQUXm
iLvQqCMPzIvPEmaTc38qZ+LDDolpI5S05+StfCT2J0cjCFs14AuC16vpuUN6aVGo
RIJ+hBTuuevlbDwUYc9Y34M/Uz89HCLy02misul7BpMv5U0OSxBNvgEDAdE1JmMM
D2hGDxCi6SKKzohRrF37naS7a00+WxvAduvqoYYTihjnwqB6qtOYMVqi62U9C81+
G6NkMsuP380axXwt3t8Wwjt9DXXkPyl71z4nnsknMiOAzhg5oDlHlCyXfnBs3TTE
GzxLvZQzp9/sU9pA68CtWphvwiYlpgQBTI0XUkoEgKVYUNhqZaygSJ+zKzy71xk9
I4ljRdu8/d4iBHt3GbAb
=8Km3
-----END PGP SIGNATURE-----
--=-=-=--


--===============0313042184099425163==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0313042184099425163==--
