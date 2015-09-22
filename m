From: Alexandru M Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH 0/1] usb: dwc2: Fix NULL qh in dwc2_queue_transaction
Date: Tue, 22 Sep 2015 13:10:50 -0700
Message-ID: <1442952651-4341-1-git-send-email-amstan@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
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
To: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Paul Zimmerman <paulz-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, Jonathan Dixon <joth-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Mian Yousaf Kaukab <yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Alexandru M Stan <amstan-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

I have a weird usb device which doesn't a normal connector, so there's
no guarantee that the pins will get removed in the correct order (data
pins first, then ground and vcc). I wouldn't be mad if there was a
weird error or something at connect/disconnect, but in this case I can
actually get a kernel panic.

Part of the panic text:
[  143.654956] [<c044e818>] (dwc2_queue_transaction) from [<c044f3b4>] (dwc2_hcd_queue_transactions+0x24c/0x31c)
[  143.664868] [<c044f3b4>] (dwc2_hcd_queue_transactions) from [<c044f4dc>] (_dwc2_hcd_clear_tt_buffer_complete+0x58/0x68)
[  143.675648] [<c044f4dc>] (_dwc2_hcd_clear_tt_buffer_complete) from [<c04347ec>] (hub_tt_work+0x130/0x164)
[  143.685214] [<c04347ec>] (hub_tt_work) from [<c013768c>] (process_one_work+0x258/0x3c0)
[  143.693217] [<c013768c>] (process_one_work) from [<c0138848>] (worker_thread+0x234/0x38c)
[  143.701394] [<c0138848>] (worker_thread) from [<c013e3dc>] (kthread+0xe4/0xfc)
[  143.708618] [<c013e3dc>] (kthread) from [<c0106278>] (ret_from_fork+0x14/0x20)

I traced it down to a dereference of qh(chan->qh->ping_state) in
dwc2_queue_transaction.

At usb device disconnect, dwc2_hcd_cleanup_channels gets called,
which sets qh to NULL, but dwc2_queue_transaction still manages to
get called after that.

I can reproduce this in an isolated manner on my rk3288 board
with an FTDI/prolific device, having the usb pins easily
disconnectable(independently), then playing with the vcc pin while
leaving the data lines connected.

While my patch is probably not a proper fix for this issue, it's pretty
harmless where it is (and it's consistent with other checks in there).
I also hope this opens up discussions on this issue.


Alexandru M Stan (1):
  usb: dwc2: Fix NULL qh in dwc2_queue_transaction

 drivers/usb/dwc2/hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.6.0.rc0.131.gf624c3d
