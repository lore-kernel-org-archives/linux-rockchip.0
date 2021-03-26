Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1C225C433C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:53:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C49061A32
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 09:53:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4C49061A32
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KIjdV7WK7yFcMoL14Fg4w0qReACJ8DIXnXaJJvkn1qs=; b=UrETiay9HcdBWe8ff6nw4KFsR
	KD85l7w0x0/Se314o6Dytt5E6SxB9ZMNZFSs1YhxXifzeH7EqJvGUa74mc/sQ1WW4bvy7N6UgaCpG
	/i0Vu5NsyNWc0rmiV/PJw9tPuR+mMKpaNCAtlpaOobbClB+pBD5j7vPnj/P0lNhBi/ziuu43k+D58
	q1QixxsQ+SCLY/skMqMuSPzziShBO10SubZFxY0vFk3/hd39DJh5PQUuyLidlMlQtqF50BXak/0/j
	Bx5sqYuxz0LgE94cl4ss8cmTD/wM86TDBBhBLE2Di5F8k1GPXBfSS4xAXVufNXYUw27dD1eE1fn9h
	qY2tS5G/w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPj9U-003FDr-Ba; Fri, 26 Mar 2021 09:53:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPj9C-003F87-Bi; Fri, 26 Mar 2021 09:52:58 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lPj9B-0002rd-Vq; Fri, 26 Mar 2021 10:52:54 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: robh+dt@kernel.org, Elaine Zhang <zhangqing@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 cl@rock-chips.com, huangtao@rock-chips.com, kever.yang@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 Elaine Zhang <zhangqing@rock-chips.com>, enric.balletbo@collabora.com
Subject: Re: [RESEND PATCH v5 07/11] soc: rockchip: pm-domains: Add a
 meaningful power domain name
Date: Fri, 26 Mar 2021 10:52:53 +0100
Message-ID: <7937233.NyiUUSuA9g@diego>
In-Reply-To: <20210326093704.22646-1-zhangqing@rock-chips.com>
References: <20210326091547.12375-1-zhangqing@rock-chips.com>
 <20210326093704.22646-1-zhangqing@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_095254_699130_49779470 
X-CRM114-Status: GOOD (  18.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Elaine,

[also adding that answer to the resend :-) ]

Am Freitag, 26. M=E4rz 2021, 10:17:39 CET schrieb Elaine Zhang:
> Add the power domains names to the power domain info struct so we
> have meaningful name for every power domain.
>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

I like that approach very much, there is one tiny comment below.

> ---
> drivers/soc/rockchip/pm_domains.c | 217 +++++++++++++++---------------
> 1 file changed, 112 insertions(+), 105 deletions(-)
>
> diff --git a/drivers/soc/rockchip/pm_domains.c b/drivers/soc/rockchip/pm_=
domains.c
> index 54eb6cfc5d5b..d661d967079f 100644
> --- a/drivers/soc/rockchip/pm_domains.c
> +++ b/drivers/soc/rockchip/pm_domains.c
> @@ -29,6 +29,7 @@
> #include <dt-bindings/power/rk3399-power.h>
>
> struct rockchip_domain_info {
> +       const char *name;
> int pwr_mask;
> int status_mask;
> int req_mask;
> @@ -85,8 +86,9 @@ struct rockchip_pmu {
>
> #define to_rockchip_pd(gpd) container_of(gpd, struct rockchip_pm_domain, =
genpd)
>
> -#define DOMAIN(pwr, status, req, idle, ack, wakeup)    \
> +#define DOMAIN(_name, pwr, status, req, idle, ack, wakeup)     \
> {                                                       \
> +       .name =3D _name,                          \
> .pwr_mask =3D (pwr),                              \
> .status_mask =3D (status),                        \
> .req_mask =3D (req),                              \
> @@ -95,8 +97,9 @@ struct rockchip_pmu {
> .active_wakeup =3D (wakeup),                      \
> }
>
> -#define DOMAIN_M(pwr, status, req, idle, ack, wakeup)  \
> +#define DOMAIN_M(_name, pwr, status, req, idle, ack, wakeup)   \
> {                                                       \
> +       .name =3D _name,                          \
> .pwr_w_mask =3D (pwr) << 16,                      \
> .pwr_mask =3D (pwr),                              \
> .status_mask =3D (status),                        \
> @@ -107,8 +110,9 @@ struct rockchip_pmu {
> .active_wakeup =3D wakeup,                        \
> }
>
> -#define DOMAIN_RK3036(req, ack, idle, wakeup)          \
> +#define DOMAIN_RK3036(_name, req, ack, idle, wakeup)           \
> {                                                       \
> +       .name =3D _name,                          \
> .req_mask =3D (req),                              \
> .req_w_mask =3D (req) << 16,                      \
> .ack_mask =3D (ack),                              \
> @@ -119,17 +123,17 @@ struct rockchip_pmu {
> #define DOMAIN_PX30(pwr, status, req, wakeup)           \
> DOMAIN_M(pwr, status, req, (req) << 16, req, wakeup)
>
> -#define DOMAIN_RK3288(pwr, status, req, wakeup)                \
> -       DOMAIN(pwr, status, req, req, (req) << 16, wakeup)
> +#define DOMAIN_RK3288(name, pwr, status, req, wakeup)          \
> +       DOMAIN(name, pwr, status, req, req, (req) << 16, wakeup)
>
> -#define DOMAIN_RK3328(pwr, status, req, wakeup)                \
> -       DOMAIN_M(pwr, pwr, req, (req) << 10, req, wakeup)
> +#define DOMAIN_RK3328(name, pwr, status, req, wakeup)          \
> +       DOMAIN_M(name, pwr, pwr, req, (req) << 10, req, wakeup)
>
> -#define DOMAIN_RK3368(pwr, status, req, wakeup)                \
> -       DOMAIN(pwr, status, req, (req) << 16, req, wakeup)
> +#define DOMAIN_RK3368(name, pwr, status, req, wakeup)          \
> +       DOMAIN(name, pwr, status, req, (req) << 16, req, wakeup)
>
> -#define DOMAIN_RK3399(pwr, status, req, wakeup)                \
> -       DOMAIN(pwr, status, req, req, req, wakeup)
> +#define DOMAIN_RK3399(name, pwr, status, req, wakeup)          \
> +       DOMAIN(name, pwr, status, req, req, req, wakeup)
>
> static bool rockchip_pmu_domain_is_idle(struct rockchip_pm_domain *pd)
> {
> @@ -490,7 +494,10 @@ static int rockchip_pm_add_one_domain(struct rockchi=
p_pmu *pmu,
> goto err_unprepare_clocks;
> }
>
> -       pd->genpd.name =3D node->name;
> +       if (!pd->info->name)
> +               pd->genpd.name =3D node->name;

I guess we should make that "node->full_name" perhaps?
And I guess it might be nicer to swap the cases

if (pd->info->name)
        pd->genpd.name =3D pd->info->name
else
        pd->genpd.name =3D node->full_name;

for easier readability


Heiko

> +       else
> +               pd->genpd.name =3D pd->info->name;
> pd->genpd.power_off =3D rockchip_pd_power_off;
> pd->genpd.power_on =3D rockchip_pd_power_on;
> pd->genpd.attach_dev =3D rockchip_pd_attach_dev;
> @@ -716,129 +723,129 @@ static int rockchip_pm_domain_probe(struct platfo=
rm_device *pdev)
> }
>
> static const struct rockchip_domain_info px30_pm_domains[] =3D {
> -       [PX30_PD_USB]           =3D DOMAIN_PX30(BIT(5),  BIT(5),  BIT(10)=
, false),
> -       [PX30_PD_SDCARD]        =3D DOMAIN_PX30(BIT(8),  BIT(8),  BIT(9),=
  false),
> -       [PX30_PD_GMAC]          =3D DOMAIN_PX30(BIT(10), BIT(10), BIT(6),=
  false),
> -       [PX30_PD_MMC_NAND]      =3D DOMAIN_PX30(BIT(11), BIT(11), BIT(5),=
  false),
> -       [PX30_PD_VPU]           =3D DOMAIN_PX30(BIT(12), BIT(12), BIT(14)=
, false),
> -       [PX30_PD_VO]            =3D DOMAIN_PX30(BIT(13), BIT(13), BIT(7),=
  false),
> -       [PX30_PD_VI]            =3D DOMAIN_PX30(BIT(14), BIT(14), BIT(8),=
  false),
> -       [PX30_PD_GPU]           =3D DOMAIN_PX30(BIT(15), BIT(15), BIT(2),=
  false),
> +       [PX30_PD_USB]           =3D DOMAIN_PX30("usb", BIT(5),  BIT(5),  =
BIT(10), false),
> +       [PX30_PD_SDCARD]        =3D DOMAIN_PX30("sdcard", BIT(8),  BIT(8)=
,  BIT(9),  false),
> +       [PX30_PD_GMAC]          =3D DOMAIN_PX30("gmac", BIT(10), BIT(10),=
 BIT(6),  false),
> +       [PX30_PD_MMC_NAND]      =3D DOMAIN_PX30("mmc_nand", BIT(11), BIT(=
11), BIT(5),  false),
> +       [PX30_PD_VPU]           =3D DOMAIN_PX30("vpu", BIT(12), BIT(12), =
BIT(14), false),
> +       [PX30_PD_VO]            =3D DOMAIN_PX30("vo", BIT(13), BIT(13), B=
IT(7),  false),
> +       [PX30_PD_VI]            =3D DOMAIN_PX30("vi", BIT(14), BIT(14), B=
IT(8),  false),
> +       [PX30_PD_GPU]           =3D DOMAIN_PX30("gpu", BIT(15), BIT(15), =
BIT(2),  false),
> };
>
> static const struct rockchip_domain_info rk3036_pm_domains[] =3D {
> -       [RK3036_PD_MSCH]        =3D DOMAIN_RK3036(BIT(14), BIT(23), BIT(3=
0), true),
> -       [RK3036_PD_CORE]        =3D DOMAIN_RK3036(BIT(13), BIT(17), BIT(2=
4), false),
> -       [RK3036_PD_PERI]        =3D DOMAIN_RK3036(BIT(12), BIT(18), BIT(2=
5), false),
> -       [RK3036_PD_VIO]         =3D DOMAIN_RK3036(BIT(11), BIT(19), BIT(2=
6), false),
> -       [RK3036_PD_VPU]         =3D DOMAIN_RK3036(BIT(10), BIT(20), BIT(2=
7), false),
> -       [RK3036_PD_GPU]         =3D DOMAIN_RK3036(BIT(9),  BIT(21), BIT(2=
8), false),
> -       [RK3036_PD_SYS]         =3D DOMAIN_RK3036(BIT(8),  BIT(22), BIT(2=
9), false),
> +       [RK3036_PD_MSCH]        =3D DOMAIN_RK3036("msch", BIT(14), BIT(23=
), BIT(30), true),
> +       [RK3036_PD_CORE]        =3D DOMAIN_RK3036("core", BIT(13), BIT(17=
), BIT(24), false),
> +       [RK3036_PD_PERI]        =3D DOMAIN_RK3036("peri", BIT(12), BIT(18=
), BIT(25), false),
> +       [RK3036_PD_VIO]         =3D DOMAIN_RK3036("vio", BIT(11), BIT(19)=
, BIT(26), false),
> +       [RK3036_PD_VPU]         =3D DOMAIN_RK3036("vpu", BIT(10), BIT(20)=
, BIT(27), false),
> +       [RK3036_PD_GPU]         =3D DOMAIN_RK3036("gpu", BIT(9),  BIT(21)=
, BIT(28), false),
> +       [RK3036_PD_SYS]         =3D DOMAIN_RK3036("sys", BIT(8),  BIT(22)=
, BIT(29), false),
> };
>
> static const struct rockchip_domain_info rk3066_pm_domains[] =3D {
> -       [RK3066_PD_GPU]         =3D DOMAIN(BIT(9), BIT(9), BIT(3), BIT(24=
), BIT(29), false),
> -       [RK3066_PD_VIDEO]       =3D DOMAIN(BIT(8), BIT(8), BIT(4), BIT(23=
), BIT(28), false),
> -       [RK3066_PD_VIO]         =3D DOMAIN(BIT(7), BIT(7), BIT(5), BIT(22=
), BIT(27), false),
> -       [RK3066_PD_PERI]        =3D DOMAIN(BIT(6), BIT(6), BIT(2), BIT(25=
), BIT(30), false),
> -       [RK3066_PD_CPU]         =3D DOMAIN(0,      BIT(5), BIT(1), BIT(26=
), BIT(31), false),
> +       [RK3066_PD_GPU]         =3D DOMAIN("gpu", BIT(9), BIT(9), BIT(3),=
 BIT(24), BIT(29), false),
> +       [RK3066_PD_VIDEO]       =3D DOMAIN("video", BIT(8), BIT(8), BIT(4=
), BIT(23), BIT(28), false),
> +       [RK3066_PD_VIO]         =3D DOMAIN("vio", BIT(7), BIT(7), BIT(5),=
 BIT(22), BIT(27), false),
> +       [RK3066_PD_PERI]        =3D DOMAIN("peri", BIT(6), BIT(6), BIT(2)=
, BIT(25), BIT(30), false),
> +       [RK3066_PD_CPU]         =3D DOMAIN("cpu", 0,      BIT(5), BIT(1),=
 BIT(26), BIT(31), false),
> };
>
> static const struct rockchip_domain_info rk3128_pm_domains[] =3D {
> -       [RK3128_PD_CORE]        =3D DOMAIN_RK3288(BIT(0), BIT(0), BIT(4),=
 false),
> -       [RK3128_PD_MSCH]        =3D DOMAIN_RK3288(0,      0,      BIT(6),=
 true),
> -       [RK3128_PD_VIO]         =3D DOMAIN_RK3288(BIT(3), BIT(3), BIT(2),=
 false),
> -       [RK3128_PD_VIDEO]       =3D DOMAIN_RK3288(BIT(2), BIT(2), BIT(1),=
 false),
> -       [RK3128_PD_GPU]         =3D DOMAIN_RK3288(BIT(1), BIT(1), BIT(3),=
 false),
> +       [RK3128_PD_CORE]        =3D DOMAIN_RK3288("core", BIT(0), BIT(0),=
 BIT(4), false),
> +       [RK3128_PD_MSCH]        =3D DOMAIN_RK3288("msch", 0,      0,     =
 BIT(6), true),
> +       [RK3128_PD_VIO]         =3D DOMAIN_RK3288("vio", BIT(3), BIT(3), =
BIT(2), false),
> +       [RK3128_PD_VIDEO]       =3D DOMAIN_RK3288("video", BIT(2), BIT(2)=
, BIT(1), false),
> +       [RK3128_PD_GPU]         =3D DOMAIN_RK3288("gpu", BIT(1), BIT(1), =
BIT(3), false),
> };
>
> static const struct rockchip_domain_info rk3188_pm_domains[] =3D {
> -       [RK3188_PD_GPU]         =3D DOMAIN(BIT(9), BIT(9), BIT(3), BIT(24=
), BIT(29), false),
> -       [RK3188_PD_VIDEO]       =3D DOMAIN(BIT(8), BIT(8), BIT(4), BIT(23=
), BIT(28), false),
> -       [RK3188_PD_VIO]         =3D DOMAIN(BIT(7), BIT(7), BIT(5), BIT(22=
), BIT(27), false),
> -       [RK3188_PD_PERI]        =3D DOMAIN(BIT(6), BIT(6), BIT(2), BIT(25=
), BIT(30), false),
> -       [RK3188_PD_CPU]         =3D DOMAIN(BIT(5), BIT(5), BIT(1), BIT(26=
), BIT(31), false),
> +       [RK3188_PD_GPU]         =3D DOMAIN("gpu", BIT(9), BIT(9), BIT(3),=
 BIT(24), BIT(29), false),
> +       [RK3188_PD_VIDEO]       =3D DOMAIN("video", BIT(8), BIT(8), BIT(4=
), BIT(23), BIT(28), false),
> +       [RK3188_PD_VIO]         =3D DOMAIN("vio", BIT(7), BIT(7), BIT(5),=
 BIT(22), BIT(27), false),
> +       [RK3188_PD_PERI]        =3D DOMAIN("peri", BIT(6), BIT(6), BIT(2)=
, BIT(25), BIT(30), false),
> +       [RK3188_PD_CPU]         =3D DOMAIN("cpu", BIT(5), BIT(5), BIT(1),=
 BIT(26), BIT(31), false),
> };
>
> static const struct rockchip_domain_info rk3228_pm_domains[] =3D {
> -       [RK3228_PD_CORE]        =3D DOMAIN_RK3036(BIT(0),  BIT(0),  BIT(1=
6), true),
> -       [RK3228_PD_MSCH]        =3D DOMAIN_RK3036(BIT(1),  BIT(1),  BIT(1=
7), true),
> -       [RK3228_PD_BUS]         =3D DOMAIN_RK3036(BIT(2),  BIT(2),  BIT(1=
8), true),
> -       [RK3228_PD_SYS]         =3D DOMAIN_RK3036(BIT(3),  BIT(3),  BIT(1=
9), true),
> -       [RK3228_PD_VIO]         =3D DOMAIN_RK3036(BIT(4),  BIT(4),  BIT(2=
0), false),
> -       [RK3228_PD_VOP]         =3D DOMAIN_RK3036(BIT(5),  BIT(5),  BIT(2=
1), false),
> -       [RK3228_PD_VPU]         =3D DOMAIN_RK3036(BIT(6),  BIT(6),  BIT(2=
2), false),
> -       [RK3228_PD_RKVDEC]      =3D DOMAIN_RK3036(BIT(7),  BIT(7),  BIT(2=
3), false),
> -       [RK3228_PD_GPU]         =3D DOMAIN_RK3036(BIT(8),  BIT(8),  BIT(2=
4), false),
> -       [RK3228_PD_PERI]        =3D DOMAIN_RK3036(BIT(9),  BIT(9),  BIT(2=
5), true),
> -       [RK3228_PD_GMAC]        =3D DOMAIN_RK3036(BIT(10), BIT(10), BIT(2=
6), false),
> +       [RK3228_PD_CORE]        =3D DOMAIN_RK3036("core", BIT(0),  BIT(0)=
,  BIT(16), true),
> +       [RK3228_PD_MSCH]        =3D DOMAIN_RK3036("msch", BIT(1),  BIT(1)=
,  BIT(17), true),
> +       [RK3228_PD_BUS]         =3D DOMAIN_RK3036("bus", BIT(2),  BIT(2),=
  BIT(18), true),
> +       [RK3228_PD_SYS]         =3D DOMAIN_RK3036("sys", BIT(3),  BIT(3),=
  BIT(19), true),
> +       [RK3228_PD_VIO]         =3D DOMAIN_RK3036("vio", BIT(4),  BIT(4),=
  BIT(20), false),
> +       [RK3228_PD_VOP]         =3D DOMAIN_RK3036("vop", BIT(5),  BIT(5),=
  BIT(21), false),
> +       [RK3228_PD_VPU]         =3D DOMAIN_RK3036("vpu", BIT(6),  BIT(6),=
  BIT(22), false),
> +       [RK3228_PD_RKVDEC]      =3D DOMAIN_RK3036("vdec", BIT(7),  BIT(7)=
,  BIT(23), false),
> +       [RK3228_PD_GPU]         =3D DOMAIN_RK3036("gpu", BIT(8),  BIT(8),=
  BIT(24), false),
> +       [RK3228_PD_PERI]        =3D DOMAIN_RK3036("peri", BIT(9),  BIT(9)=
,  BIT(25), true),
> +       [RK3228_PD_GMAC]        =3D DOMAIN_RK3036("gmac", BIT(10), BIT(10=
), BIT(26), false),
> };
>
> static const struct rockchip_domain_info rk3288_pm_domains[] =3D {
> -       [RK3288_PD_VIO]         =3D DOMAIN_RK3288(BIT(7),  BIT(7),  BIT(4=
), false),
> -       [RK3288_PD_HEVC]        =3D DOMAIN_RK3288(BIT(14), BIT(10), BIT(9=
), false),
> -       [RK3288_PD_VIDEO]       =3D DOMAIN_RK3288(BIT(8),  BIT(8),  BIT(3=
), false),
> -       [RK3288_PD_GPU]         =3D DOMAIN_RK3288(BIT(9),  BIT(9),  BIT(2=
), false),
> +       [RK3288_PD_VIO]         =3D DOMAIN_RK3288("vio", BIT(7),  BIT(7),=
  BIT(4), false),
> +       [RK3288_PD_HEVC]        =3D DOMAIN_RK3288("hevc", BIT(14), BIT(10=
), BIT(9), false),
> +       [RK3288_PD_VIDEO]       =3D DOMAIN_RK3288("video", BIT(8),  BIT(8=
),  BIT(3), false),
> +       [RK3288_PD_GPU]         =3D DOMAIN_RK3288("gpu", BIT(9),  BIT(9),=
  BIT(2), false),
> };
>
> static const struct rockchip_domain_info rk3328_pm_domains[] =3D {
> -       [RK3328_PD_CORE]        =3D DOMAIN_RK3328(0, BIT(0), BIT(0), fals=
e),
> -       [RK3328_PD_GPU]         =3D DOMAIN_RK3328(0, BIT(1), BIT(1), fals=
e),
> -       [RK3328_PD_BUS]         =3D DOMAIN_RK3328(0, BIT(2), BIT(2), true=
),
> -       [RK3328_PD_MSCH]        =3D DOMAIN_RK3328(0, BIT(3), BIT(3), true=
),
> -       [RK3328_PD_PERI]        =3D DOMAIN_RK3328(0, BIT(4), BIT(4), true=
),
> -       [RK3328_PD_VIDEO]       =3D DOMAIN_RK3328(0, BIT(5), BIT(5), fals=
e),
> -       [RK3328_PD_HEVC]        =3D DOMAIN_RK3328(0, BIT(6), BIT(6), fals=
e),
> -       [RK3328_PD_VIO]         =3D DOMAIN_RK3328(0, BIT(8), BIT(8), fals=
e),
> -       [RK3328_PD_VPU]         =3D DOMAIN_RK3328(0, BIT(9), BIT(9), fals=
e),
> +       [RK3328_PD_CORE]        =3D DOMAIN_RK3328("core", 0, BIT(0), BIT(=
0), false),
> +       [RK3328_PD_GPU]         =3D DOMAIN_RK3328("gpu", 0, BIT(1), BIT(1=
), false),
> +       [RK3328_PD_BUS]         =3D DOMAIN_RK3328("bus", 0, BIT(2), BIT(2=
), true),
> +       [RK3328_PD_MSCH]        =3D DOMAIN_RK3328("msch", 0, BIT(3), BIT(=
3), true),
> +       [RK3328_PD_PERI]        =3D DOMAIN_RK3328("peri", 0, BIT(4), BIT(=
4), true),
> +       [RK3328_PD_VIDEO]       =3D DOMAIN_RK3328("video", 0, BIT(5), BIT=
(5), false),
> +       [RK3328_PD_HEVC]        =3D DOMAIN_RK3328("hevc", 0, BIT(6), BIT(=
6), false),
> +       [RK3328_PD_VIO]         =3D DOMAIN_RK3328("vio", 0, BIT(8), BIT(8=
), false),
> +       [RK3328_PD_VPU]         =3D DOMAIN_RK3328("vpu", 0, BIT(9), BIT(9=
), false),
> };
>
> static const struct rockchip_domain_info rk3366_pm_domains[] =3D {
> -       [RK3366_PD_PERI]        =3D DOMAIN_RK3368(BIT(10), BIT(10), BIT(6=
), true),
> -       [RK3366_PD_VIO]         =3D DOMAIN_RK3368(BIT(14), BIT(14), BIT(8=
), false),
> -       [RK3366_PD_VIDEO]       =3D DOMAIN_RK3368(BIT(13), BIT(13), BIT(7=
), false),
> -       [RK3366_PD_RKVDEC]      =3D DOMAIN_RK3368(BIT(11), BIT(11), BIT(7=
), false),
> -       [RK3366_PD_WIFIBT]      =3D DOMAIN_RK3368(BIT(8),  BIT(8),  BIT(9=
), false),
> -       [RK3366_PD_VPU]         =3D DOMAIN_RK3368(BIT(12), BIT(12), BIT(7=
), false),
> -       [RK3366_PD_GPU]         =3D DOMAIN_RK3368(BIT(15), BIT(15), BIT(2=
), false),
> +       [RK3366_PD_PERI]        =3D DOMAIN_RK3368("peri", BIT(10), BIT(10=
), BIT(6), true),
> +       [RK3366_PD_VIO]         =3D DOMAIN_RK3368("vio", BIT(14), BIT(14)=
, BIT(8), false),
> +       [RK3366_PD_VIDEO]       =3D DOMAIN_RK3368("video", BIT(13), BIT(1=
3), BIT(7), false),
> +       [RK3366_PD_RKVDEC]      =3D DOMAIN_RK3368("vdec", BIT(11), BIT(11=
), BIT(7), false),
> +       [RK3366_PD_WIFIBT]      =3D DOMAIN_RK3368("wifibt", BIT(8),  BIT(=
8),  BIT(9), false),
> +       [RK3366_PD_VPU]         =3D DOMAIN_RK3368("vpu", BIT(12), BIT(12)=
, BIT(7), false),
> +       [RK3366_PD_GPU]         =3D DOMAIN_RK3368("gpu", BIT(15), BIT(15)=
, BIT(2), false),
> };
>
> static const struct rockchip_domain_info rk3368_pm_domains[] =3D {
> -       [RK3368_PD_PERI]        =3D DOMAIN_RK3368(BIT(13), BIT(12), BIT(6=
), true),
> -       [RK3368_PD_VIO]         =3D DOMAIN_RK3368(BIT(15), BIT(14), BIT(8=
), false),
> -       [RK3368_PD_VIDEO]       =3D DOMAIN_RK3368(BIT(14), BIT(13), BIT(7=
), false),
> -       [RK3368_PD_GPU_0]       =3D DOMAIN_RK3368(BIT(16), BIT(15), BIT(2=
), false),
> -       [RK3368_PD_GPU_1]       =3D DOMAIN_RK3368(BIT(17), BIT(16), BIT(2=
), false),
> +       [RK3368_PD_PERI]        =3D DOMAIN_RK3368("peri", BIT(13), BIT(12=
), BIT(6), true),
> +       [RK3368_PD_VIO]         =3D DOMAIN_RK3368("vio", BIT(15), BIT(14)=
, BIT(8), false),
> +       [RK3368_PD_VIDEO]       =3D DOMAIN_RK3368("video", BIT(14), BIT(1=
3), BIT(7), false),
> +       [RK3368_PD_GPU_0]       =3D DOMAIN_RK3368("gpu_0", BIT(16), BIT(1=
5), BIT(2), false),
> +       [RK3368_PD_GPU_1]       =3D DOMAIN_RK3368("gpu_1", BIT(17), BIT(1=
6), BIT(2), false),
> };
>
> static const struct rockchip_domain_info rk3399_pm_domains[] =3D {
> -       [RK3399_PD_TCPD0]       =3D DOMAIN_RK3399(BIT(8),  BIT(8),  0,   =
    false),
> -       [RK3399_PD_TCPD1]       =3D DOMAIN_RK3399(BIT(9),  BIT(9),  0,   =
    false),
> -       [RK3399_PD_CCI]         =3D DOMAIN_RK3399(BIT(10), BIT(10), 0,   =
    true),
> -       [RK3399_PD_CCI0]        =3D DOMAIN_RK3399(0,       0,       BIT(1=
5), true),
> -       [RK3399_PD_CCI1]        =3D DOMAIN_RK3399(0,       0,       BIT(1=
6), true),
> -       [RK3399_PD_PERILP]      =3D DOMAIN_RK3399(BIT(11), BIT(11), BIT(1=
),  true),
> -       [RK3399_PD_PERIHP]      =3D DOMAIN_RK3399(BIT(12), BIT(12), BIT(2=
),  true),
> -       [RK3399_PD_CENTER]      =3D DOMAIN_RK3399(BIT(13), BIT(13), BIT(1=
4), true),
> -       [RK3399_PD_VIO]         =3D DOMAIN_RK3399(BIT(14), BIT(14), BIT(1=
7), false),
> -       [RK3399_PD_GPU]         =3D DOMAIN_RK3399(BIT(15), BIT(15), BIT(0=
),  false),
> -       [RK3399_PD_VCODEC]      =3D DOMAIN_RK3399(BIT(16), BIT(16), BIT(3=
),  false),
> -       [RK3399_PD_VDU]         =3D DOMAIN_RK3399(BIT(17), BIT(17), BIT(4=
),  false),
> -       [RK3399_PD_RGA]         =3D DOMAIN_RK3399(BIT(18), BIT(18), BIT(5=
),  false),
> -       [RK3399_PD_IEP]         =3D DOMAIN_RK3399(BIT(19), BIT(19), BIT(6=
),  false),
> -       [RK3399_PD_VO]          =3D DOMAIN_RK3399(BIT(20), BIT(20), 0,   =
    false),
> -       [RK3399_PD_VOPB]        =3D DOMAIN_RK3399(0,       0,       BIT(7=
),  false),
> -       [RK3399_PD_VOPL]        =3D DOMAIN_RK3399(0,       0,       BIT(8=
),  false),
> -       [RK3399_PD_ISP0]        =3D DOMAIN_RK3399(BIT(22), BIT(22), BIT(9=
),  false),
> -       [RK3399_PD_ISP1]        =3D DOMAIN_RK3399(BIT(23), BIT(23), BIT(1=
0), false),
> -       [RK3399_PD_HDCP]        =3D DOMAIN_RK3399(BIT(24), BIT(24), BIT(1=
1), false),
> -       [RK3399_PD_GMAC]        =3D DOMAIN_RK3399(BIT(25), BIT(25), BIT(2=
3), true),
> -       [RK3399_PD_EMMC]        =3D DOMAIN_RK3399(BIT(26), BIT(26), BIT(2=
4), true),
> -       [RK3399_PD_USB3]        =3D DOMAIN_RK3399(BIT(27), BIT(27), BIT(1=
2), true),
> -       [RK3399_PD_EDP]         =3D DOMAIN_RK3399(BIT(28), BIT(28), BIT(2=
2), false),
> -       [RK3399_PD_GIC]         =3D DOMAIN_RK3399(BIT(29), BIT(29), BIT(2=
7), true),
> -       [RK3399_PD_SD]          =3D DOMAIN_RK3399(BIT(30), BIT(30), BIT(2=
8), true),
> -       [RK3399_PD_SDIOAUDIO]   =3D DOMAIN_RK3399(BIT(31), BIT(31), BIT(2=
9), true),
> +       [RK3399_PD_TCPD0]       =3D DOMAIN_RK3399("tcpd0", BIT(8),  BIT(8=
),  0,      false),
> +       [RK3399_PD_TCPD1]       =3D DOMAIN_RK3399("tcpd1", BIT(9),  BIT(9=
),  0,      false),
> +       [RK3399_PD_CCI]         =3D DOMAIN_RK3399("cci", BIT(10), BIT(10)=
, 0,        true),
> +       [RK3399_PD_CCI0]        =3D DOMAIN_RK3399("cci0", 0,       0,    =
   BIT(15), true),
> +       [RK3399_PD_CCI1]        =3D DOMAIN_RK3399("cci1", 0,       0,    =
   BIT(16), true),
> +       [RK3399_PD_PERILP]      =3D DOMAIN_RK3399("perilp", BIT(11), BIT(=
11), BIT(1),  true),
> +       [RK3399_PD_PERIHP]      =3D DOMAIN_RK3399("perihp", BIT(12), BIT(=
12), BIT(2),  true),
> +       [RK3399_PD_CENTER]      =3D DOMAIN_RK3399("center", BIT(13), BIT(=
13), BIT(14), true),
> +       [RK3399_PD_VIO]         =3D DOMAIN_RK3399("vio", BIT(14), BIT(14)=
, BIT(17), false),
> +       [RK3399_PD_GPU]         =3D DOMAIN_RK3399("gpu", BIT(15), BIT(15)=
, BIT(0),  false),
> +       [RK3399_PD_VCODEC]      =3D DOMAIN_RK3399("vcodec", BIT(16), BIT(=
16), BIT(3),  false),
> +       [RK3399_PD_VDU]         =3D DOMAIN_RK3399("vdu", BIT(17), BIT(17)=
, BIT(4),  false),
> +       [RK3399_PD_RGA]         =3D DOMAIN_RK3399("rga", BIT(18), BIT(18)=
, BIT(5),  false),
> +       [RK3399_PD_IEP]         =3D DOMAIN_RK3399("iep", BIT(19), BIT(19)=
, BIT(6),  false),
> +       [RK3399_PD_VO]          =3D DOMAIN_RK3399("vo", BIT(20), BIT(20),=
 0,         false),
> +       [RK3399_PD_VOPB]        =3D DOMAIN_RK3399("vopb", 0,       0,    =
   BIT(7),  false),
> +       [RK3399_PD_VOPL]        =3D DOMAIN_RK3399("vopl", 0,       0,    =
   BIT(8),  false),
> +       [RK3399_PD_ISP0]        =3D DOMAIN_RK3399("isp0", BIT(22), BIT(22=
), BIT(9),  false),
> +       [RK3399_PD_ISP1]        =3D DOMAIN_RK3399("isp1", BIT(23), BIT(23=
), BIT(10), false),
> +       [RK3399_PD_HDCP]        =3D DOMAIN_RK3399("hdcp", BIT(24), BIT(24=
), BIT(11), false),
> +       [RK3399_PD_GMAC]        =3D DOMAIN_RK3399("gmac", BIT(25), BIT(25=
), BIT(23), true),
> +       [RK3399_PD_EMMC]        =3D DOMAIN_RK3399("emmc", BIT(26), BIT(26=
), BIT(24), true),
> +       [RK3399_PD_USB3]        =3D DOMAIN_RK3399("usb3", BIT(27), BIT(27=
), BIT(12), true),
> +       [RK3399_PD_EDP]         =3D DOMAIN_RK3399("edp", BIT(28), BIT(28)=
, BIT(22), false),
> +       [RK3399_PD_GIC]         =3D DOMAIN_RK3399("gic", BIT(29), BIT(29)=
, BIT(27), true),
> +       [RK3399_PD_SD]          =3D DOMAIN_RK3399("sd", BIT(30), BIT(30),=
 BIT(28), true),
> +       [RK3399_PD_SDIOAUDIO]   =3D DOMAIN_RK3399("sdioaudio", BIT(31), B=
IT(31), BIT(29), true),
> };
>
> static const struct rockchip_pmu_info px30_pmu =3D {
>




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
