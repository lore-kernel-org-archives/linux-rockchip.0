From: "Kiyanovski, Arthur" <akiyano@amazon.com>
Subject: RE: [PATCH net-next v1 12/18] net/amazon: Ensure that driver version
 is aligned to the linux kernel
Date: Mon, 24 Feb 2020 09:03:14 +0000
Message-ID: <79ed2b392b4e413faef03f4bb2f8d562@EX13D22EUA004.ant.amazon.com>
References: <20200224085311.460338-1-leon@kernel.org>
 <20200224085311.460338-13-leon@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200224085311.460338-13-leon@kernel.org>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Leon Romanovsky <leon@kernel.org>, "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Cc: Leon Romanovsky <leonro@mellanox.com>, Tom Lendacky <thomas.lendacky@amd.com>, Keyur Chudgar <keyur@os.amperecomputing.com>, Don Fry <pcnet32@frontier.com>, Veaceslav Falico <vfalico@gmail.com>, Jay Vosburgh <j.vosburgh@gmail.com>, "linux-acenic@sunsite.dk" <linux-acenic@sunsite.dk>, Maxime Ripard <mripard@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Mark Einon <mark.einon@gmail.com>, Chris Snook <chris.snook@gmail.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Iyappan Subramanian <iyappan@os.amperecomputing.com>, Igor Russkikh <irusskikh@marvell.com>, David Dillow <dave@thedillows.org>, "Belgazal, Netanel" <netanel@amazon.com>, Quan Nguyen <quan@os.amperecomputing.com>, Jay Cliburn <jcliburn@gmail.com>
List-Id: linux-rockchip.vger.kernel.org



> -----Original Message-----
> From: Leon Romanovsky <leon@kernel.org>
> Sent: Monday, February 24, 2020 10:53 AM
> To: David S. Miller <davem@davemloft.net>; Jakub Kicinski <kuba@kernel.or=
g>
> Cc: Leon Romanovsky <leonro@mellanox.com>; Tom Lendacky
> <thomas.lendacky@amd.com>; Keyur Chudgar
> <keyur@os.amperecomputing.com>; Don Fry <pcnet32@frontier.com>;
> Veaceslav Falico <vfalico@gmail.com>; Jay Vosburgh <j.vosburgh@gmail.com>=
;
> linux-acenic@sunsite.dk; Maxime Ripard <mripard@kernel.org>; Heiko Stuebn=
er
> <heiko@sntech.de>; Mark Einon <mark.einon@gmail.com>; Chris Snook
> <chris.snook@gmail.com>; linux-rockchip@lists.infradead.org; Iyappan
> Subramanian <iyappan@os.amperecomputing.com>; Igor Russkikh
> <irusskikh@marvell.com>; David Dillow <dave@thedillows.org>; Belgazal,
> Netanel <netanel@amazon.com>; Quan Nguyen
> <quan@os.amperecomputing.com>; Jay Cliburn <jcliburn@gmail.com>; Lino
> Sanfilippo <LinoSanfilippo@gmx.de>; linux-arm-kernel@lists.infradead.org;
> Andreas Larsson <andreas@gaisler.com>; Andy Gospodarek
> <andy@greyhouse.net>; netdev@vger.kernel.org; Thor Thayer
> <thor.thayer@linux.intel.com>; linux-kernel@vger.kernel.org; Ion Badulesc=
u
> <ionut@badula.org>; Kiyanovski, Arthur <akiyano@amazon.com>; Jes Sorensen
> <jes@trained-monkey.org>; nios2-dev@lists.rocketboards.org; Chen-Yu Tsai
> <wens@csie.org>
> Subject: [PATCH net-next v1 12/18] net/amazon: Ensure that driver version=
 is
> aligned to the linux kernel
>=20
> From: Leon Romanovsky <leonro@mellanox.com>
>=20
> Upstream drivers are managed inside global repository and released all
> together, this ensure that driver version is the same as linux kernel, so=
 update
> amazon drivers to properly reflect it.
>=20
> Signed-off-by: Leon Romanovsky <leonro@mellanox.com>
> ---
>  drivers/net/ethernet/amazon/ena/ena_ethtool.c |  1 -
> drivers/net/ethernet/amazon/ena/ena_netdev.c  | 17 ++---------------
> drivers/net/ethernet/amazon/ena/ena_netdev.h  | 11 -----------
>  3 files changed, 2 insertions(+), 27 deletions(-)
>=20
> diff --git a/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> index ced1d577b62a..19262f37db84 100644
> --- a/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> +++ b/drivers/net/ethernet/amazon/ena/ena_ethtool.c
> @@ -404,7 +404,6 @@ static void ena_get_drvinfo(struct net_device *dev,
>  	struct ena_adapter *adapter =3D netdev_priv(dev);
>=20
>  	strlcpy(info->driver, DRV_MODULE_NAME, sizeof(info->driver));
> -	strlcpy(info->version, DRV_MODULE_VERSION, sizeof(info->version));
>  	strlcpy(info->bus_info, pci_name(adapter->pdev),
>  		sizeof(info->bus_info));
>  }
> diff --git a/drivers/net/ethernet/amazon/ena/ena_netdev.c
> b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> index 0b2fd96b93d7..4faf81c456d8 100644
> --- a/drivers/net/ethernet/amazon/ena/ena_netdev.c
> +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.c
> @@ -49,12 +49,9 @@
>  #include <linux/bpf_trace.h>
>  #include "ena_pci_id_tbl.h"
>=20
> -static char version[] =3D DEVICE_NAME " v" DRV_MODULE_VERSION "\n";
> -
>  MODULE_AUTHOR("Amazon.com, Inc. or its affiliates");
> MODULE_DESCRIPTION(DEVICE_NAME);  MODULE_LICENSE("GPL"); -
> MODULE_VERSION(DRV_MODULE_VERSION);
>=20
>  /* Time in jiffies before concluding the transmitter is hung. */  #defin=
e
> TX_TIMEOUT  (5 * HZ) @@ -3093,11 +3090,7 @@ static void
> ena_config_host_info(struct ena_com_dev *ena_dev,
>  	host_info->os_dist =3D 0;
>  	strncpy(host_info->os_dist_str, utsname()->release,
>  		sizeof(host_info->os_dist_str) - 1);
> -	host_info->driver_version =3D
> -		(DRV_MODULE_VER_MAJOR) |
> -		(DRV_MODULE_VER_MINOR <<
> ENA_ADMIN_HOST_INFO_MINOR_SHIFT) |
> -		(DRV_MODULE_VER_SUBMINOR <<
> ENA_ADMIN_HOST_INFO_SUB_MINOR_SHIFT) |
> -		("K"[0] << ENA_ADMIN_HOST_INFO_MODULE_TYPE_SHIFT);
> +	host_info->driver_version =3D LINUX_VERSION_CODE;
>  	host_info->num_cpus =3D num_online_cpus();
>=20
>  	host_info->driver_supported_features =3D @@ -3476,9 +3469,7 @@
> static int ena_restore_device(struct ena_adapter *adapter)
>  		netif_carrier_on(adapter->netdev);
>=20
>  	mod_timer(&adapter->timer_service, round_jiffies(jiffies + HZ));
> -	dev_err(&pdev->dev,
> -		"Device reset completed successfully, Driver info: %s\n",
> -		version);
> +	dev_err(&pdev->dev, "Device reset completed successfully\n");
>=20
>  	return rc;
>  err_disable_msix:
> @@ -4116,8 +4107,6 @@ static int ena_probe(struct pci_dev *pdev, const
> struct pci_device_id *ent)
>=20
>  	dev_dbg(&pdev->dev, "%s\n", __func__);
>=20
> -	dev_info_once(&pdev->dev, "%s", version);
> -
>  	rc =3D pci_enable_device_mem(pdev);
>  	if (rc) {
>  		dev_err(&pdev->dev, "pci_enable_device_mem() failed!\n");
> @@ -4429,8 +4418,6 @@ static struct pci_driver ena_pci_driver =3D {
>=20
>  static int __init ena_init(void)
>  {
> -	pr_info("%s", version);
> -
>  	ena_wq =3D create_singlethread_workqueue(DRV_MODULE_NAME);
>  	if (!ena_wq) {
>  		pr_err("Failed to create workqueue\n"); diff --git
> a/drivers/net/ethernet/amazon/ena/ena_netdev.h
> b/drivers/net/ethernet/amazon/ena/ena_netdev.h
> index 8795e0b1dc3c..74c7f10b60dd 100644
> --- a/drivers/net/ethernet/amazon/ena/ena_netdev.h
> +++ b/drivers/net/ethernet/amazon/ena/ena_netdev.h
> @@ -45,18 +45,7 @@
>  #include "ena_com.h"
>  #include "ena_eth_com.h"
>=20
> -#define DRV_MODULE_VER_MAJOR	2
> -#define DRV_MODULE_VER_MINOR	1
> -#define DRV_MODULE_VER_SUBMINOR 0
> -
>  #define DRV_MODULE_NAME		"ena"
> -#ifndef DRV_MODULE_VERSION
> -#define DRV_MODULE_VERSION \
> -	__stringify(DRV_MODULE_VER_MAJOR) "."	\
> -	__stringify(DRV_MODULE_VER_MINOR) "."	\
> -	__stringify(DRV_MODULE_VER_SUBMINOR) "K"
> -#endif
> -
>  #define DEVICE_NAME	"Elastic Network Adapter (ENA)"
>=20
>  /* 1 for AENQ + ADMIN */
> --
> 2.24.1

Hi Leon, David,

This patch is not good for the ENA driver as it breaks the interface with t=
he FW of the ENA device in ena_config_host_info(), host_info is later repor=
ted to the FW.
Please do not merge it yet.
We are now working on altering your patch so that it won't break this inter=
face and will send it to you in the next few hours.

Thanks,
Arthur
