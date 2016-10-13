From: Dan Carpenter <dan.carpenter-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: [bug report] drm/rockchip: add an common abstracted PSR driver
Date: Thu, 13 Oct 2016 12:26:06 +0300
Message-ID: <20161013092606.GA23977@mwanda>
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
To: ykk-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello Yakir Yang,

This is a semi-automatic email about new static checker warnings.

The patch 5182c1a556d7: "drm/rockchip: add an common abstracted PSR 
driver" from Jul 24, 2016, leads to the following Smatch complaint:

drivers/gpu/drm/rockchip/rockchip_drm_psr.c:228 rockchip_drm_psr_register()
	 warn: variable dereferenced before check 'encoder' (see line 224)

drivers/gpu/drm/rockchip/rockchip_drm_psr.c
   223	{
   224		struct rockchip_drm_private *drm_drv = encoder->dev->dev_private;
                                                       ^^^^^^^^^
Dereference.

   225		struct psr_drv *psr;
   226		unsigned long flags;
   227	
   228		if (!encoder || !psr_set)
                     ^^^^^^^
Check.

   229			return -EINVAL;
   230	

regards,
dan carpenter
