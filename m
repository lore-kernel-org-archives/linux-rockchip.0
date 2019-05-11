From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [Regression] "net: phy: realtek: Add rtl8211e rx/tx delays config"
 breaks rk3328-roc-cc networking
Date: Sat, 11 May 2019 19:17:08 -0400
Message-ID: <066a0d38-2c64-7a1e-d176-04341f0cb6d7@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Serge Semin <fancer.lancer-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Andrew Lunn <andrew-g2DYL2Zd6BY@public.gmane.org>, Florian Fainelli <f.fainelli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Serge Semin <Sergey.Semin-vHJ8rsvMqnUPfZBKTuL5GA@public.gmane.org>, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Heiner Kallweit <hkallweit1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Good Evening,

Commit f81dadbcf7fd067baf184b63c179fc392bdb226e "net: phy: realtek: Add 
rtl8211e rx/tx delays config" breaks networking completely on the 
rk3328-roc-cc.
Reverting the offending commit solves the problem.

The following error occurs:

[   49.442425] Unable to handle kernel execution of user memory at 
virtual address 0000000000000000
[   49.443237] Mem abort info:
[   49.443512]   ESR = 0x86000005
[   49.443798]   Exception class = IABT (current EL), IL = 32 bits
[   49.444331]   SET = 0, FnV = 0
[   49.444613]   EA = 0, S1PTW = 0
[   49.444914] user pgtable: 64k pages, 48-bit VAs, pgdp = 000000008f8d6f90
[   49.445516] [0000000000000000] pgd=0000000000000000, pud=0000000000000000
[   49.446136] Internal error: Oops: 86000005 [#1] PREEMPT SMP
[   49.446641] Modules linked in: snd_soc_hdmi_codec dw_hdmi_i2s_audio 
aes_ce_blk crypto_simd aes_ce_cipher crct10dif_ce ghash_ce aes_arm64 
sha2_ce rockchipdrm sha256_arm64 sha1_ce dw_hdmi lima drm_kms_helper 
gpu_sched pwm_fan snd_soc_simple_card snd_soc_simple_card_utils drm 
snd_soc_rockchip_i2s drm_panel_orientation_quirks snd_soc_rockchip_pcm 
squashfs sch_fq_codel ip_tables x_tables ipv6 crc_ccitt btrfs xor 
xor_neon zstd_compress raid6_pq libcrc32c zstd_decompress rtc_rk808 realtek
[   49.450477] Process NetworkManager (pid: 1814, stack limit = 
0x00000000cc8e3ffb)
[   49.451150] CPU: 2 PID: 1814 Comm: NetworkManager Not tainted 
5.1.0-next-20190510test-00009-g3ed182aaa670 #51
[   49.452036] Hardware name: Firefly roc-rk3328-cc (DT)
[   49.452496] pstate: 80400005 (Nzcv daif +PAN -UAO)
[   49.452938] pc : 0x0
[   49.453158] lr : phy_select_page+0x34/0x78
[   49.453532] sp : ffff0000139cf130
[   49.453841] x29: ffff0000139cf130 x28: ffff80000c9908c0
[   49.454326] x27: ffff800000ba1e10 x26: ffff0000139cf9a0
[   49.454806] x25: ffff80000034a000 x24: 0000000000000000
[   49.455285] x23: 0000000000000000 x22: 0000000000000008
[   49.455762] x21: 0000000000000007 x20: ffff800000344800
[   49.456245] x19: ffff800000344800 x18: 0000000000000030
[   49.456726] x17: 0000000000000000 x16: 0000000000000000
[   49.457207] x15: ffffffffffffffff x14: ffff000010f03688
[   49.457688] x13: 000000cce415c000 x12: 0000000000000001
[   49.458167] x11: 0000000000000000 x10: 00000000000004e5
[   49.458647] x9 : 000000000b94d076 x8 : 00000000000000cc
[   49.459130] x7 : 0000000000ddfd31 x6 : ffff8000feabcf70
[   49.459610] x5 : ffff8000007e9f00 x4 : ffff000010a1cbd8
[   49.460090] x3 : ffff80000034a070 x2 : ffff8000007e9f00
[   49.460569] x1 : 0000000000000000 x0 : ffff800000344800
[   49.461050] Call trace:
[   49.461287]  0x0
[   49.461468]  rtl8211e_config_init+0x40/0xa0 [realtek]
[   49.461927]  phy_init_hw+0x54/0x70
[   49.462243]  phy_attach_direct+0xd4/0x250
[   49.462612]  phy_connect_direct+0x20/0x70
[   49.462978]  phy_connect+0x54/0xa0
[   49.463295]  stmmac_init_phy+0x17c/0x200
[   49.463655]  stmmac_open+0x124/0xac0
[   49.463983]  __dev_open+0xd8/0x158
[   49.464299]  __dev_change_flags+0x164/0x1c8
[   49.464680]  dev_change_flags+0x20/0x60
[   49.465047]  do_setlink+0x288/0xba8
[   49.465366]  __rtnl_newlink+0x5cc/0x6e8
[   49.465720]  rtnl_newlink+0x48/0x70
[   49.466038]  rtnetlink_rcv_msg+0x120/0x368
[   49.466426]  netlink_rcv_skb+0x58/0x118
[   49.466784]  rtnetlink_rcv+0x14/0x20
[   49.467115]  netlink_unicast+0x180/0x1f8
[   49.467479]  netlink_sendmsg+0x190/0x330
[   49.467878]  sock_sendmsg+0x3c/0x58
[   49.468199]  ___sys_sendmsg+0x268/0x2a0
[   49.468554]  __sys_sendmsg+0x68/0xb8
[   49.468884]  __arm64_sys_sendmsg+0x20/0x28
[   49.469266]  el0_svc_common.constprop.0+0x7c/0xe8
[   49.469705]  el0_svc_handler+0x28/0x78
[   49.470052]  el0_svc+0x8/0xc
[   49.470334] Code: bad PC value
[   49.470619] ---[ end trace f330c41329b3e289 ]---
