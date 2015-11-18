From: Dan Carpenter <dan.carpenter-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: re: thermal: rockchip: add driver for thermal
Date: Wed, 18 Nov 2015 13:33:01 +0300
Message-ID: <20151118103301.GB15236@mwanda>
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
To: caesar.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello Caesar Wang,

The patch cbac8f639437: "thermal: rockchip: add driver for thermal"
from Nov 24, 2014, leads to the following static checker warning:

	drivers/thermal/rockchip_thermal.c:551 rockchip_configure_from_dt()
	warn: impossible condition '(thermal->tshut_temp > ((~0 >> 1))) => (s32min-s32max > s32max)'

drivers/thermal/rockchip_thermal.c
   542          if (of_property_read_u32(np, "rockchip,hw-tshut-temp", &shut_temp)) {
   543                  dev_warn(dev,
   544                           "Missing tshut temp property, using default %d\n",
   545                           thermal->chip->tshut_temp);
   546                  thermal->tshut_temp = thermal->chip->tshut_temp;
   547          } else {
   548                  thermal->tshut_temp = shut_temp;
   549          }
   550  
   551          if (thermal->tshut_temp > INT_MAX) {

->tshut_temp is an int so comparing it with INT_MAX is probably not
intended.

   552                  dev_err(dev, "Invalid tshut temperature specified: %d\n",
   553                          thermal->tshut_temp);
   554                  return -ERANGE;
   555          }
   556  


regards,
dan carpenter
