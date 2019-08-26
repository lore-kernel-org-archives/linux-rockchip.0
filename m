From: Jagan Teki <jagan-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org>
Subject: dw_mmc: CMD17 Data Error while rebooting
Date: Mon, 26 Aug 2019 07:32:56 +0530
Message-ID: <CAMty3ZDn5K44554LYsRY37Z1o1DHd0AseN0QUydBqEYcU-sJ4w@mail.gmail.com>
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
To: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jason Zhu <jason.zhu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Jaehoon Chung <jh80.chung-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: U-Boot-Denx <u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi All,

I have seen the data error with CMD17 while rebooting the system from
Linux, below shows the detailed log.

Anyone encounter this issue? let me know if any inputs on this?

Log:
U-Boot TPL 2019.10-rc2-00154-gd6758c282a-dirty (Aug 26 2019 - 04:46:03)
Trying to boot from BOOTROM
Returning to boot ROM...

U-Boot SPL 2019.10-rc2-00154-gd6758c282a-dirty (Aug 26 2019 - 04:46:03 +0530)
WDT:   Started with servicing (60s timeout)
Trying to boot from MMC1
Buswidth = 0, clock: 0
Buswidth = 1, clock: 0
Buswidth = 1, clock: 400000
Sending CMD0
Sending CMD8
Sending CMD55
Sending CMD41
Sending CMD55
Sending CMD41
Sending CMD2
Sending CMD3
Sending CMD9
Sending CMD7
Sending CMD55
Sending CMD51
Sending CMD6
Sending CMD55
Sending CMD6
Buswidth = 4, clock: 400000
Sending CMD6
Buswidth = 4, clock: 50000000
Sending CMD16
Sending CMD17
dwmci_data_transfer: DATA ERROR!
Sending CMD16
Sending CMD17
dwmci_data_transfer: DATA ERROR!
FIT: ret = -1
mmc_load_image_raw_sector: mmc block read error
SPL: failed to boot from all boot devices
### ERROR ### Please RESET the board ###

Jagan.
