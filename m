From: Serge Semin <fancer.lancer@gmail.com>
Subject: Re: [Regression] "net: phy: realtek: Add rtl8211e rx/tx delays
 config" breaks rk3328-roc-cc networking
Date: Tue, 14 May 2019 19:19:58 +0300
Message-ID: <20190514161957.yq7mw3wccuie6rr3@mobilestation>
References: <066a0d38-2c64-7a1e-d176-04341f0cb6d7@gmail.com>
 <20190512023754.GK4889@lunn.ch>
 <ae62419b-53f1-395d-eb0e-66d138d294a8@gmail.com>
 <4c6ef3f1-a2c7-f2da-3f2a-cd28624007f8@gmail.com>
 <CAMdYzYqcg3EXhLguTti2hP-0VVi_vX0XvoDSzTCC84p9aSp7Lg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <netdev-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <CAMdYzYqcg3EXhLguTti2hP-0VVi_vX0XvoDSzTCC84p9aSp7Lg@mail.gmail.com>
Sender: netdev-owner@vger.kernel.org
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>, "David S. Miller" <davem@davemloft.net>, Serge Semin <Sergey.Semin@t-platforms.ru>, netdev@vger.kernel.org, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

Hello Peter

On Tue, May 14, 2019 at 07:53:21AM -0400, Peter Geis wrote:
> On Sun, May 12, 2019 at 3:34 AM Heiner Kallweit <hkallweit1@gmail.com> wrote:
> >
> > On 12.05.2019 04:50, Peter Geis wrote:
> > > On 5/11/2019 10:37 PM, Andrew Lunn wrote:
> > >> On Sat, May 11, 2019 at 07:17:08PM -0400, Peter Geis wrote:
> > >>> Good Evening,
> > >>>
> > >>> Commit f81dadbcf7fd067baf184b63c179fc392bdb226e "net: phy: realtek: Add
> > >>> rtl8211e rx/tx delays config" breaks networking completely on the
> > >>> rk3328-roc-cc.
> > >>> Reverting the offending commit solves the problem.
> > >>
> > >> Hi Peter
> > >>
> > >> The fix should be in net, and will soon make its way upwards.
> > >>
> > >>      Andrew
> > >>
> > >
> > >
> > > Good Evening,
> > >
> > > Thanks, is there a link to the patch so I may test it?
> > >
> > https://git.kernel.org/pub/scm/linux/kernel/git/davem/net.git/commit/?id=daf3ddbe11a2ff74c95bc814df8e5fe3201b4cb5
> >
> > > Peter
> > >
> > Heiner
> 
> This patch does correct the error message on boot, however networking
> is still completely broken.
> The current error is as follows:
> 
> [  121.829375] kworker/3:1     D    0    67      2 0x00000028
> [  121.829398] Workqueue: events linkwatch_event
> [  121.829403] Call trace:
> [  121.829412]  __switch_to+0xb8/0x1a8
> [  121.829420]  __schedule+0x220/0x560
> [  121.829423]  schedule+0x38/0xd8
> [  121.829429]  schedule_preempt_disabled+0x20/0x38
> [  121.829435]  __mutex_lock.isra.1+0x1c4/0x500
> [  121.829438]  __mutex_lock_slowpath+0x10/0x18
> [  121.829443]  mutex_lock+0x2c/0x38
> [  121.829449]  rtnl_lock+0x14/0x20
> [  121.829453]  linkwatch_event+0xc/0x38
> [  121.829461]  process_one_work+0x1e0/0x320
> [  121.829466]  worker_thread+0x40/0x428
> [  121.829473]  kthread+0x120/0x128
> [  121.829476]  ret_from_fork+0x10/0x18
> [  121.829533] INFO: task NetworkManager:1833 blocked for more than 61 seconds.
> [  121.830160]       Not tainted
> 5.1.0-next-20190510test-00009-g3ed182aaa670-dirty #55
> [  121.830831] "echo 0 > /proc/sys/kernel/hung_task_timeout_secs"
> disables this message.
> [  121.831589] NetworkManager  D    0  1833      1 0x00000028
> [  121.831601] Call trace:
> [  121.831614]  __switch_to+0xb8/0x1a8
> [  121.831623]  __schedule+0x220/0x560
> [  121.831631]  schedule+0x38/0xd8
> [  121.831639]  schedule_preempt_disabled+0x20/0x38
> [  121.831647]  __mutex_lock.isra.1+0x1c4/0x500
> [  121.831666]  __mutex_lock_slowpath+0x10/0x18
> [  121.831671]  mutex_lock+0x2c/0x38
> [  121.831687]  mdiobus_write+0x40/0x80
> [  121.831698]  rtl8211e_config_init+0x60/0xa0 [realtek]
> [  121.831706]  phy_init_hw+0x54/0x70
> [  121.831714]  phy_attach_direct+0xd4/0x250
> [  121.831720]  phy_connect_direct+0x20/0x70
> [  121.831728]  phy_connect+0x54/0xa0
> [  121.831741]  stmmac_init_phy+0x17c/0x200
> [  121.831748]  stmmac_open+0x124/0xac0
> [  121.831759]  __dev_open+0xd8/0x158
> [  121.831762]  __dev_change_flags+0x164/0x1c8
> [  121.831766]  dev_change_flags+0x20/0x60
> [  121.831774]  do_setlink+0x288/0xba8
> [  121.831778]  __rtnl_newlink+0x5cc/0x6e8
> [  121.831783]  rtnl_newlink+0x48/0x70
> [  121.831786]  rtnetlink_rcv_msg+0x120/0x368
> [  121.831807]  netlink_rcv_skb+0x58/0x118
> [  121.831811]  rtnetlink_rcv+0x14/0x20
> [  121.831816]  netlink_unicast+0x180/0x1f8
> [  121.831822]  netlink_sendmsg+0x190/0x330
> [  121.831837]  sock_sendmsg+0x3c/0x58
> [  121.831844]  ___sys_sendmsg+0x268/0x2a0
> [  121.831849]  __sys_sendmsg+0x68/0xb8
> [  121.831855]  __arm64_sys_sendmsg+0x20/0x28
> [  121.831864]  el0_svc_common.constprop.0+0x7c/0xe8
> [  121.831870]  el0_svc_handler+0x28/0x78
> [  121.831875]  el0_svc+0x8/0xc

Thanks for sending the report. The fix has already been found and applied
to the net-next:
https://git.kernel.org/pub/scm/linux/kernel/git/davem/net-next.git/commit/?id=dffe7d2e04670ff98e4dacf258df30446e2e80d4

-Sergey
