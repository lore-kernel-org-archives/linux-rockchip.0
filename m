From: Feichen Shen <jackshencn-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: rkisp FIFO bug in YUV422 mode at 1.2Gbps
Date: Wed, 19 Feb 2020 17:24:01 +0800
Message-ID: <CAOqJxtbgbd_RQv6bo9kpU4JJmta-2tMBdMAu37Wy+OS8PfYJjQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

We found a bug related to the rkisp driver when MIPI is running in
YUV422 mode at above 1.2Gbps x4 lanes. No issue with RAW 12 or RAW 10
mode up to 1.5Gbps. It appears the MIPI hardware FIFO overflowed even
though ISP processing is not required for YUV.

The issue is detailed on github with dmesg log.
https://github.com/rockchip-linux/kernel/issues/204

Thanks!
FShen
