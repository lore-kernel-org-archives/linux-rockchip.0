From: Baruch Siach <baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org>
Subject: rockchip-vpu driver usability
Date: Thu, 24 May 2018 13:34:31 +0300
Message-ID: <20180524103431.63eog25qynr72ots@tarshish>
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
To: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Myy Miouyouyou <myy-tmjzNUIc0P1+EYZtW95mkQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Tomasz,

I'm trying to get the RK3288 VPU do h.264 encoding on the Tinkerboard platform 
with latest mainline kernel. I found the v4l2 based rockchip-vpu driver in the 
vendor kernel. But I could not get it work even in the context of that kernel. 
Is this driver in usable state? If not, how far it is from being usable?

Another option is to forward port the rockchip-vcodec shim driver for the MPP 
framework. I'm aware of Myy Miouyouyou's work[1] in this area. But this driver 
seems unusable as well. Testing v4.17-rc6, the PM code fails to enable the 
video power domain (the hvec power domain enables correctly, though). The 
error is:

  rockchip-pm-domain ff730000.power-management:power-controller: failed to get ack on domain 'pd_video', val=0x8021c

With the TinkerOS provided kernel I managed to make the VPU encode to h.264 
using the gstreamer MPP plugin. But I would rather not use that kernel if 
possible, since that would mean backporting other v4l2 code that I need.

Do you have any other idea/direction for me to explore?

Thanks,
baruch

[1] https://github.com/Miouyouyou/rockchip-vcodec

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch-NswTu9S1W3P6gbPvEgmw2w@public.gmane.org - tel: +972.52.368.4656, http://www.tkos.co.il -
