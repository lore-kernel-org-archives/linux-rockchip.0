From: ayaka <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>
Subject: rockchip: drm: analogix_dp-rockchip would stock the kernel
Date: Sun, 16 Oct 2016 02:03:11 +0800
Message-ID: <1a7ebbe4-a9d8-610d-7cd5-41f5fe8355a5@soulik.info>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
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
To: Mark yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, airlied-cv59FeDIM0c@public.gmane.org, randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello:
    I meet a problem with eDP in rk3288 with the linux next 20161006, it 
is just like the early stage of 4.4
kernel.  I have added a eDP panel entry in the firefly reload board, 
once the kernel loaded analogix_dp-rockchip.ko, after printed the 
following two lines, the kernel stop working.
rockchip-drm display-subsystem: bound ff940000.vop (ops 
vop_component_ops [rockchipdrm])
rockchip-drm display-subsystem: bound ff930000.vop (ops 
vop_component_ops [rockchipdrm])
In the early June of the 4.4 kernel, I meet the same problem with rk3288 
evb board with different error message, I have to disable the display 
system that time.
   In the today test, I meet the same problem with rk3399 evb board in 4.4.
   I have no idea what caused that, and it is a little hard to debug as 
kernel still would never kill that task.
                                                             Randy Li
