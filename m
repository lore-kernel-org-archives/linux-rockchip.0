From: Dan Carpenter <dan.carpenter-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: [bug report] phy: rockchip-inno-usb2: support otg-port for rk3399
Date: Thu, 17 Nov 2016 14:04:57 +0300
Message-ID: <20161117110456.GA10885@mwanda>
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
To: wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello William Wu,

The patch 0c42fe48fd23: "phy: rockchip-inno-usb2: support otg-port
for rk3399" from Nov 7, 2016, leads to the following static checker
warning:

	drivers/phy/phy-rockchip-inno-usb2.c:998 rockchip_usb2phy_otg_port_init()
	warn: 'rphy->edev' isn't an ERR_PTR

drivers/phy/phy-rockchip-inno-usb2.c
   989          ret = devm_request_threaded_irq(rphy->dev, rport->bvalid_irq, NULL,
   990                                          rockchip_usb2phy_bvalid_irq,
   991                                          IRQF_ONESHOT,
   992                                          "rockchip_usb2phy_bvalid", rport);
   993          if (ret) {
   994                  dev_err(rphy->dev, "failed to request otg-bvalid irq handle\n");
   995                  goto out;
   996          }
   997  
   998          if (!IS_ERR(rphy->edev)) {

I think the static checker is correct that this check should be removed.
The rest of the code assumes ->edev is a valid pointer.

   999                  rport->event_nb.notifier_call = rockchip_otg_event;
  1000  
  1001                  ret = extcon_register_notifier(rphy->edev, EXTCON_USB_HOST,
  1002                                                 &rport->event_nb);
  1003                  if (ret)
  1004                          dev_err(rphy->dev, "register USB HOST notifier failed\n");
  1005          }
  1006  
  1007  out:
  1008          return ret;
  1009  }

regards,
dan carpenter
