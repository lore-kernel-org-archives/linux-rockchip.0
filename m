From: Philipp Richter <richterphilipp.pops@gmail.com>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
Date: Thu, 15 Aug 2019 18:00:23 +0200
Message-ID: <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190815122151.bg7it6ptxwcn2vif@willie-the-truck>
 <8253b02c-0431-6b01-6af4-6132eb992925@arm.com>
 <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Robin Murphy <robin.murphy@arm.com>
Cc: heiko@sntech.de, catalin.marinas@arm.com, vicencb@gmail.com, linux-rockchip@lists.infradead.org, andre.przywara@arm.com, Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Reading from the raw eMMC block /dev/mmcblkp1 I can also produce a panic :

sudo dd if=/dev/mmcblk1 of=/dev/null bs=1M status=progress
2846883840 bytes (2.8 GB, 2.7 GiB) copied, 23 s, 124 MB/s

============
[  428.794747] dwmmc_rockchip ff520000.dwmmc: Unexpected command
timeout, state 3
[  428.984736] dwmmc_rockchip ff520000.dwmmc: Unexpected command
timeout, state 3
[  429.174738] dwmmc_rockchip ff520000.dwmmc: Unexpected command
timeout, state 3
[  429.179323] Internal error: synchronous external abort: 96000210
[#1] SMP
[  429.179934] Modules linked in: wireguard(O) ip6_udp_tunnel
udp_tunnel lz4 lz4_compress iptable_filter iptable_raw xt_owner
iptable_nat xt_connmark iptable_mangle bpfilter rc_cec
snd_soc_hdmi_codec dw_hdmi_i2s_audio dw_hdmi_cec
snd_soc_audio_graph_cc
[  429.186527] CPU: 0 PID: 1079 Comm: bash Tainted: G           O
5.2.8-1-ARCH #1
[  429.187193] Hardware name: Pine64 Rock64 (DT)
[  429.187576] pstate: 20000005 (nzCv daif -PAN -UAO)
[  429.188007] pc : copy_page_range+0x124/0x3d0
[  429.188386] lr : dup_mm+0x3fc/0x478
[  429.188692] sp : ffff00001277bb80
[  429.188982] x29: ffff00001277bb80 x28: ffff8000dd17e450
[  429.189446] x27: ffff8000dd17e470 x26: ffff8000dd17e460
[  429.189912] x25: 0000aaaac4a01000 x24: ffff8000dca92a00
[  429.190376] x23: ffff8000dd1fdf80 x22: ffff8000dd30c8a0
[  429.190840] x21: ffff8000dca92a00 x20: ffff8000dd30c8a0
[  429.191306] x19: ffff8000dd1fdf80 x18: 0000000000000000
[  429.191771] x17: 0000000000000000 x16: 0000000000000000
[  429.192236] x15: 0000000000000000 x14: ffff8000dd2b86d0
[  429.192700] x13: 00000000000000f8 x12: 0000000000000000
[  429.193165] x11: 0000000000000000 x10: ffff8000e44bde01
[  429.193630] x9 : 0000000000100871 x8 : 0000000000000000
[  429.194095] x7 : ffff8000e4481760 x6 : 0000000000000000
[  429.194560] x5 : 0000aaaac49fc000 x4 : ffff0000102905c0
[  429.195026] x3 : 0000000000000000 x2 : ffff800009c74aa8
[  429.195491] x1 : 0000aaaac4a00fff x0 : ffff800009c74aa8
[  429.195959] Call trace:
[  429.196178]  copy_page_range+0x124/0x3d0
[  429.196521]  dup_mm+0x3fc/0x478
[  429.196801]  copy_process.isra.4.part.5+0x143c/0x1450
[  429.197244]  _do_fork+0xec/0x410
[  429.197529]  __arm64_sys_clone+0x2c/0x38
[  429.197877]  el0_svc_handler+0xa4/0x180
[  429.198215]  el0_svc+0x8/0xc
[  429.198474] Code: 360812e0 f9403fe0 b4000ac0 f9403fe0 (f9400000)
[  429.199008] ---[ end trace 04beba7bac629e3f ]---
[  429.200049] SError Interrupt on CPU1, code 0xbf000002 -- SError
[  429.200052] CPU: 1 PID: 669 Comm: systemd-journal Tainted: G      D
   O      5.2.8-1-ARCH #1
[  429.200054] Hardware name: Pine64 Rock64 (DT)
[  429.200055] pstate: 20000005 (nzCv daif -PAN -UAO)
[  429.200056] pc : allocate_slab+0x1d0/0x570
[  429.200058] lr : allocate_slab+0x1e0/0x570
[  429.200059] sp : ffff000011d8baa0
[  429.200060] x29: ffff000011d8baa0 x28: 0000000000000003
[  429.200063] x27: ffff7e0000276800 x26: ffff800009da6e00
[  429.200068] x25: 0000000000000009 x24: 0000000000007bc0
[  429.200071] x23: 0000000000000003 x22: 0000000000000003
[  429.200075] x21: ffff800009da0000 x20: 0000000000005280
[  429.200079] x19: ffff8000b3fa3980 x18: 0000000000000000
[  429.200082] x17: 0000000000000000 x16: 0000000000000000
[  429.200086] x15: 0000000000000000 x14: 0000000000000000
[  429.200090] x13: 0000000000000000 x12: 0000000000000000
[  429.200094] x11: 0000000000000000 x10: 0000000000000000
[  429.200098] x9 : 0000000000000000 x8 : 0000000000000000
[  429.200102] x7 : 00000000fee00000 x6 : 0000000000000018
[  429.200106] x5 : 0000000000000040 x4 : 0000000000210d00
[  429.200110] x3 : 0000000000000dc0 x2 : 0000000005a79795
[  429.200112] x1 : 0000000000000000 x0 : ffff8000f2f35a80
[  429.200117] Kernel panic - not syncing: Asynchronous SError
Interrupt
[  429.200137] SMP: stopping secondary CPUs
[  429.200139] Kernel Offset: disabled
[  429.200140] CPU features: 0x0002,20002000
[  429.200141] Memory Limit: none
============

Regards,
Philipp Richter

On Thu, 15 Aug 2019 at 17:35, Philipp Richter
<richterphilipp.pops@gmail.com> wrote:
>
> Yes, it's connected over the USB 3.0 port. I'll also try over USB 2.0
> as soon as possible.
>
> I first noticed the issue when my backup script froze the board, so
> this is while reading from the eMMC.
>
> My script that I invoke over ssh :
> ============
> #!/usr/bin/env bash
> IFS=$'\n\t'
> set -euo pipefail
>
> schedtool -B -n 8 "${BASHPID}"
> ionice -c 3 -p "${BASHPID}"
>
> EXCLUSION_FILE='/etc/tar-system-exclusion.txt'
> TOTAL_SIZE="$(sudo du --bytes --summarize
> --exclude-from="${EXCLUSION_FILE}" / | awk '{print $1}')"
> sudo tar --create --file - --numeric-owner --acls --xattrs
> --exclude-from="${EXCLUSION_FILE}" / | \
>        pv --progress --timer --eta --fineta --rate --average-rate
> --bytes --force --size "${TOTAL_SIZE}" | \
>        lz4 -z
> ============
>
> So it fails also around 2.8GB pushed and I get this panic on my serial
> console in "__memcpy" this time though :
>
> ============
> [12624.268933] SError Interrupt on CPU0, code 0xbf000002 -- SError
> [12624.268940] CPU: 0 PID: 14170 Comm: kworker/u8:4 Tainted: G
>   O      5.2.8-1-ARCH #1
> [12624.268942] Hardware name: Pine64 Rock64 (DT)
> [12624.268944] Workqueue: btrfs-endio btrfs_endio_helper [btrfs]
> [12624.268946] pstate: 20000005 (nzCv daif -PAN -UAO)
> [12624.268948] pc : __memcpy+0x118/0x180
> [12624.268950] lr : btrfs_decompress_buf2page+0x124/0x228 [btrfs]
> [12624.268951] sp : ffff00001c28bb40
> [12624.268952] x29: ffff00001c28bb40 x28: ffff8000f2a2b870
> [12624.268955] x27: 0000000000001000 x26: ffff7e0000270200
> [12624.268958] x25: 0000000000001000 x24: 000000000001f000
> [12624.268961] x23: 0000000000000000 x22: 000000000001f000
> [12624.268964] x21: ffff8000fde46040 x20: 0000000000140000
> [12624.268967] x19: 0000000000001000 x18: ffff8000e830aef5
> [12624.268970] x17: 0000000000000ad3 x16: 0000000000000003
> [12624.268973] x15: 0000000000000002 x14: a8c37bfd9101e042
> [12624.268976] x13: a9425bf552800021 x12: a94153f3f0000b62
> [12624.268979] x11: f9400a80900011a4 x10: aa1603e3d63f0260
> [12624.268982] x9 : 9101c04252800021 x8 : 910003fda9b97bfd
> [12624.268985] x7 : d61f0080f9475c84 x6 : ffff800009c08390
> [12624.268988] x5 : ffff800065005050 x4 : 0000000000000000
> [12624.268990] x3 : 0000000000140000 x2 : 0000000000000c00
> [12624.268993] x1 : ffff8000dac023d0 x0 : ffff800009c08000
> [12624.268997] Kernel panic - not syncing: Asynchronous SError Interrupt
> [12624.269000] CPU: 0 PID: 14170 Comm: kworker/u8:4 Tainted: G
>   O      5.2.8-1-ARCH #1
> [12624.269001] Hardware name: Pine64 Rock64 (DT)
> [12624.269003] Workqueue: btrfs-endio btrfs_endio_helper [btrfs]
> [12624.269004] Call trace:
> [12624.269006]  dump_backtrace+0x0/0x168
> [12624.269007]  show_stack+0x24/0x30
> [12624.269009]  dump_stack+0xa8/0xcc
> [12624.269010]  panic+0x150/0x320
> [12624.269011]  __stack_chk_fail+0x0/0x28
> [12624.269013]  arm64_serror_panic+0x80/0x8c
> [12624.269014]  do_serror+0x11c/0x120
> [12624.269016]  el1_error+0x84/0xf8
> [12624.269017]  __memcpy+0x118/0x180
> [12624.269018]  zstd_decompress_bio+0xf8/0x250 [btrfs]
> [12624.269020]  end_compressed_bio_read+0x2ec/0x3f8 [btrfs]
> [12624.269021]  bio_endio.part.12+0x10c/0x1a8
> [12624.269023]  bio_endio+0x20/0x30
> [12624.269024]  end_workqueue_fn+0x4c/0x58 [btrfs]
> [12624.269025]  normal_work_helper+0x100/0x250 [btrfs]
> [12624.269027]  btrfs_endio_helper+0x20/0x30 [btrfs]
> [12624.269029]  process_one_work+0x1b4/0x408
> [12624.269030]  worker_thread+0x54/0x4b8
> [12624.269031]  kthread+0x12c/0x130
> [12624.269033]  ret_from_fork+0x10/0x1c
> [12624.269068] SMP: stopping secondary CPUs
> [12624.269069] Kernel Offset: disabled
> [12624.269071] CPU features: 0x0002,20002000
> [12624.269072] Memory Limit: none
> ============
>
> Regards,
> Philipp Richter
