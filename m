Return-Path: <SRS0=ahIP=CO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79327C433E2
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 21:52:00 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DFE4B20796
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2020 21:51:59 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="QlBYWK6/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DFE4B20796
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Zrbo+Z/88ZU+71ryMuGhBnxyYVaWQxi7chuUomv9NyQ=; b=QlBYWK6/EkF5liHU5SW+STtfH
	iK7/2sXASTW+vuDHItPKnGtd8S0dp+eIlDWkRHBPlPDvJQhdkJjV4VBKHj2rNMUiBtRkvJDvWmtHD
	bmSCrVX1Q7TWjhDqSknVxlomwhfUeT3bQXDGIqnzpJsxSLvGYizRgNYzvCwZ8j7oA1+1gH0kjMWIP
	t71GOLly7MiJrixGiLLyTdlgwU2zTuoBiV4MRLonTFLtgFWoOvxWq2tRIHw28j30ZVQGv5GutwODj
	nwJsmZhiLM8i2wD+uU+jK6D8j1+Bbnm4yPOTpfSuUX57W84sWmBvX4lsz8W9sCpJPetwyu748rvHy
	FB/tveb+g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEg69-0005uN-8g; Sat, 05 Sep 2020 21:51:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEg66-0005tn-IL
 for linux-rockchip@lists.infradead.org; Sat, 05 Sep 2020 21:51:47 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kEg5x-0005Z1-8P; Sat, 05 Sep 2020 23:51:37 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Jianqun Xu <jay.xu@rock-chips.com>, linus.walleij@linaro.org,
 kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 1/6] pinctrl: rockchip: make driver be tristate module
Date: Sat, 05 Sep 2020 23:51:36 +0200
Message-ID: <2350331.06pZ62Lms5@diego>
In-Reply-To: <202009011812.LO6Db3sN%lkp@intel.com>
References: <20200831084753.7115-2-jay.xu@rock-chips.com>
 <202009011812.LO6Db3sN%lkp@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200905_175146_736248_25DA6DA6 
X-CRM114-Status: GOOD (  24.83  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-gpio@vger.kernel.org, Jianqun Xu <jay.xu@rock-chips.com>,
 kbuild-all@lists.01.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Dienstag, 1. September 2020, 12:13:16 CEST schrieb kernel test robot:
> Hi Jianqun,
> =

> Thank you for the patch! Yet something to improve:
> =

> [auto build test ERROR on rockchip/for-next]
> [also build test ERROR on pinctrl/devel v5.9-rc3 next-20200828]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> =

> url:    https://github.com/0day-ci/linux/commits/Jianqun-Xu/rockchip-pinc=
trl-fixes-for-GKI/20200831-165040
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockc=
hip.git for-next
> config: x86_64-randconfig-m031-20200901 (attached as .config)
> compiler: gcc-9 (Debian 9.3.0-15) 9.3.0
> reproduce (this is a W=3D1 build):
>         # save the attached .config to linux build tree
>         make W=3D1 ARCH=3Dx86_64 =

> =

> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> =

> All errors (new ones prefixed by >>):
> =

>    drivers/pinctrl/pinctrl-rockchip.c: In function 'rockchip_pinctrl_pars=
e_groups':
> >> drivers/pinctrl/pinctrl-rockchip.c:2881:9: error: implicit declaration=
 of function 'pinconf_generic_parse_dt_config'; did you mean 'pinconf_gener=
ic_dump_config'? [-Werror=3Dimplicit-function-declaration]
>     2881 |   ret =3D pinconf_generic_parse_dt_config(np_config, NULL,
>          |         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>          |         pinconf_generic_dump_config
>    drivers/pinctrl/pinctrl-rockchip.c: In function 'rockchip_gpiolib_regi=
ster':
> >> drivers/pinctrl/pinctrl-rockchip.c:3473:5: error: 'struct gpio_chip' h=
as no member named 'of_node'
>     3473 |   gc->of_node =3D bank->of_node;
>          |     ^~
>    At top level:
>    drivers/pinctrl/pinctrl-rockchip.c:2804:34: warning: 'rockchip_bank_ma=
tch' defined but not used [-Wunused-const-variable=3D]
>     2804 | static const struct of_device_id rockchip_bank_match[] =3D {
>          |                                  ^~~~~~~~~~~~~~~~~~~
>    cc1: some warnings being treated as errors

these errors are unrelated to this patch, and I addressed them in
[PATCH] pinctrl: rockchip: depend on OF [0]

Heiko

[0] http://lore.kernel.org/r/20200905214955.907950-1-heiko@sntech.de


> =

> # https://github.com/0day-ci/linux/commit/38fa905767d010bbbc1035b48494d4a=
83bb72410
> git remote add linux-review https://github.com/0day-ci/linux
> git fetch --no-tags linux-review Jianqun-Xu/rockchip-pinctrl-fixes-for-GK=
I/20200831-165040
> git checkout 38fa905767d010bbbc1035b48494d4a83bb72410
> vim +2881 drivers/pinctrl/pinctrl-rockchip.c
> =

> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2823  =

> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2824  static int rockchip_pi=
nctrl_parse_groups(struct device_node *np,
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2825  					      struct rock=
chip_pin_group *grp,
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2826  					      struct rock=
chip_pinctrl *info,
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2827  					      u32 index)
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2828  {
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2829  	struct rockchip_pin_b=
ank *bank;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2830  	int size;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2831  	const __be32 *list;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2832  	int num;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2833  	int i, j;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2834  	int ret;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2835  =

> 94f4e54cecaf3e Rob Herring     2018-08-27  2836  	dev_dbg(info->dev, "gro=
up(%d): %pOFn\n", index, np);
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2837  =

> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2838  	/* Initialise group */
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2839  	grp->name =3D np->nam=
e;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2840  =

> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2841  	/*
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2842  	 * the binding format=
 is rockchip,pins =3D <bank pin mux CONFIG>,
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2843  	 * do sanity check an=
d calculate pins number
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2844  	 */
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2845  	list =3D of_get_prope=
rty(np, "rockchip,pins", &size);
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2846  	/* we do not check re=
turn since it's safe node passed down */
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2847  	size /=3D sizeof(*lis=
t);
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2848  	if (!size || size % 4=
) {
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2849  		dev_err(info->dev, "=
wrong pins number or pins and configs should be by 4\n");
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2850  		return -EINVAL;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2851  	}
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2852  =

> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2853  	grp->npins =3D size /=
 4;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2854  =

> a86854d0c599b3 Kees Cook       2018-06-12  2855  	grp->pins =3D devm_kcal=
loc(info->dev, grp->npins, sizeof(unsigned int),
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2856  						GFP_KERNEL);
> a86854d0c599b3 Kees Cook       2018-06-12  2857  	grp->data =3D devm_kcal=
loc(info->dev,
> a86854d0c599b3 Kees Cook       2018-06-12  2858  					grp->npins,
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2859  					sizeof(struct roc=
kchip_pin_config),
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2860  					GFP_KERNEL);
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2861  	if (!grp->pins || !gr=
p->data)
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2862  		return -ENOMEM;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2863  =

> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2864  	for (i =3D 0, j =3D 0=
; i < size; i +=3D 4, j++) {
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2865  		const __be32 *phandl=
e;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2866  		struct device_node *=
np_config;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2867  =

> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2868  		num =3D be32_to_cpu(=
*list++);
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2869  		bank =3D bank_num_to=
_bank(info, num);
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2870  		if (IS_ERR(bank))
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2871  			return PTR_ERR(bank=
);
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2872  =

> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2873  		grp->pins[j] =3D ban=
k->pin_base + be32_to_cpu(*list++);
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2874  		grp->data[j].func =
=3D be32_to_cpu(*list++);
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2875  =

> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2876  		phandle =3D list++;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2877  		if (!phandle)
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2878  			return -EINVAL;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2879  =

> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2880  		np_config =3D of_fin=
d_node_by_phandle(be32_to_cpup(phandle));
> dd4d01f7bad886 Soren Brinkmann 2015-01-09 @2881  		ret =3D pinconf_generi=
c_parse_dt_config(np_config, NULL,
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2882  				&grp->data[j].conf=
igs, &grp->data[j].nconfigs);
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2883  		if (ret)
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2884  			return ret;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2885  	}
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2886  =

> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2887  	return 0;
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2888  }
> d3e5116119bd02 Heiko St=FCbner   2013-06-10  2889  =

> =

> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> =






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
