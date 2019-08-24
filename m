From: Alex Dewar <alex.dewar90-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Broken suspend/resume on RK3399-based Chromebook
Date: Sat, 24 Aug 2019 10:54:46 +0100
Message-ID: <20190824095446.ztcuounx5stnsven@alex-chromebook>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi all,

I've got an Asus Chromebook Flip C101PA, which is based on the Rockchip RK3399
SoC, and it seems like suspend and resume is broken (AFAIK it's never worked).
When I try to suspend, the screen goes blank, but the power light stays on
rather than flashing as it usually does when it suspends. The system then seems
to be frozen.

I tried debugging it as per the documentation by setting
/sys/power/pm_test to different levels, but I was able to get all the way down
to "core" with the test still working (i.e. it suspends then wakes up 5s
later).

Does anyone have any ideas where the problem might lie?

Best,
Alex
