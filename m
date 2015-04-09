From: David Binderman <dcb314-PkbjNfxxIARBDgjK7y7TUQ@public.gmane.org>
Subject: drivers/gpu/drm/rockchip/rockchip_drm_vop.c:1384: possible bad if
 test ?
Date: Thu, 9 Apr 2015 08:47:11 +0000
Message-ID: <DUB128-W9336448AB2F599EF818D5F9CFB0@phx.gbl>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
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
To: "heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org" <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hello there,

[linux-4.0-rc7/drivers/gpu/drm/rockchip/rockchip_drm_vop.c:1384]: (style) C=
hecking if unsigned variable 'irq' is less than zero.

=A0=A0=A0 vop->irq =3D platform_get_irq(pdev, 0);
=A0=A0=A0 if (vop->irq < 0) {
=A0 =

but

linux-4.0-rc7/include/linux/platform_device.h:extern int platform_get_irq(s=
truct platform_device *, unsigned int);

Suggest put return value from platform_get_irq into an int, then
sanity check it, then put it into vop->irq.

Regards

David Binderman

 		 	   		  =
