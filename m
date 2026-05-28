Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42AD7C43458
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Jul 2026 15:31:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyTHxJTfbjHH8XRTBC8OwNinhABpjF7R+MxWOjfRY58=; b=A6ZdJzGKJKJyx9
	9qpDFEGX8ouujvFOvL4BlllW+gC/BOyl46Vsjlv6OSYlkR0vFEsYMT416AIeqfQkfy7Hijhidql7X
	sqWxfPpMr/tXh4ohOHaCV+JroUVRPrNsgNbGX+8QsgOXVhMeqpiTMGPlFpoYZLJ+UM0QWbkwm25bK
	JGtOuGVP5vGlWJ6vg+sqNV601NPgcm7nca3pLQO/JAWbZTgV3aygBARdNaLcbtsKQDRGstijZXz5r
	D6CybfgMCOEVEOS3ucQmbG75DMe/sh9WQn6IWJUtPUYlQ+5Znhf0HffwcRDYBTpO9WXDqvT6jg7of
	kro6o/W5jRLWEj++Hhjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7lq-0000000FJBm-20Q1;
	Tue, 07 Jul 2026 15:31:38 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSgPj-00000006HFC-3jVG;
	Thu, 28 May 2026 19:29:09 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B27DC43A95;
	Thu, 28 May 2026 19:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9D6A1F000E9;
	Thu, 28 May 2026 19:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linux-foundation.org; s=korg; t=1779996546;
	bh=MSiMjOGrOVK1ttm0stik2ZlQrpSNhFeLqSO2+tHJw3w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=BRfl3ZQdtekMjXz41Z8wneFS2c5zENMxRZFUvr/BbdCqcHgGbHBwuUxEpoBCkK0bm
	 r867gjFOjqye3YVQEflgnVpeg6LvNVfv8SBMh04YGmEJfesoWrvEl2nFSR93pegYLq
	 fp34L3J88lYd0UVwVNcBdPtfPdvU3mSjv+LeVEdU=
Date: Thu, 28 May 2026 12:29:03 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Yury Norov <ynorov@nvidia.com>
Cc: Rasmus Villemoes <linux@rasmusvillemoes.dk>, Russell King
 <linux@armlinux.org.uk>, Frank Li <Frank.Li@nxp.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Madhavan Srinivasan
 <maddy@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>, Nicholas
 Piggin <npiggin@gmail.com>, "Christophe Leroy (CS GROUP)"
 <chleroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, Ingo Molnar
 <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung
 Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>, Alexander
 Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa
 <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, Adrian Hunter
 <adrian.hunter@intel.com>, James Clark <james.clark@linaro.org>, Thomas
 Gleixner <tglx@kernel.org>, Borislav Petkov <bp@alien8.de>, Dave Hansen
 <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Danilo Krummrich
 <dakr@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Heiko Stuebner <heiko@sntech.de>, Lorenzo Pieralisi
 <lpieralisi@kernel.org>, Xu Yilun <yilun.xu@intel.com>, Tom Rix
 <trix@redhat.com>, Moritz Fischer <mdf@kernel.org>, Yicong Yang
 <yangyicong@hisilicon.com>, Jonathan Cameron <jic23@kernel.org>, Dennis
 Dalessandro <dennis.dalessandro@cornelisnetworks.com>, Jason Gunthorpe
 <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>, Dan Williams
 <djbw@kernel.org>, Vishal Verma <vishal.l.verma@intel.com>, Dave Jiang
 <dave.jiang@intel.com>, Ira Weiny <ira.weiny@intel.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Shuai Xue <xueshuai@linux.alibaba.com>, Will Deacon
 <will@kernel.org>, Jiucheng Xu <jiucheng.xu@amlogic.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Kevin Hilman <khilman@baylibre.com>, Jerome
 Brunet <jbrunet@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Robin Murphy <robin.murphy@arm.com>,
 Jing Zhang <renyu.zj@linux.alibaba.com>, Xu Yang <xu.yang_2@nxp.com>, Linu
 Cherian <lcherian@marvell.com>, Gowthami Thiagarajan
 <gthiagarajan@marvell.com>, Ji Sheng Teoh <jisheng.teoh@starfivetech.com>,
 Khuong Dinh <khuong@os.amperecomputing.com>, Daniel Lezcano
 <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, Lukasz Luba
 <lukasz.luba@arm.com>, Yury Norov <yury.norov@gmail.com>, Kees Cook
 <kees@kernel.org>, Thomas =?ISO-8859-1?Q?Wei=DFschuh?=
 <thomas.weissschuh@linutronix.de>, Aboorva Devarajan
 <aboorvad@linux.ibm.com>, "Ritesh Harjani (IBM)" <ritesh.list@gmail.com>,
 Ilkka Koskinen <ilkka@os.amperecomputing.com>, Besar Wicaksono
 <bwicaksono@nvidia.com>, Ma Ke <make24@iscas.ac.cn>, Chengwen Feng
 <fengchengwen@huawei.com>, linux-arm-kernel@lists.infradead.org,
 imx@lists.linux.dev, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-perf-users@vger.kernel.org,
 linux-acpi@vger.kernel.org, driver-core@lists.linux.dev,
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-fpga@vger.kernel.org, linux-rdma@vger.kernel.org,
 nvdimm@lists.linux.dev, linux-pci@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-cxl@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Roman Gushchin <roman.gushchin@linux.dev>
Subject: Re: [PATCH 00/16] lib/cpumask: get rid of cpumap_print_to_pagebuf()
Message-Id: <20260528122903.cf74cf905418ab2d144607c3@linux-foundation.org>
In-Reply-To: <ahiW5LKLiPMC6il_@yury>
References: <20260528183625.870813-1-ynorov@nvidia.com>
	<20260528121806.2b54606ba6e42f7f371d95c3@linux-foundation.org>
	<ahiW5LKLiPMC6il_@yury>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_122907_994276_4725AEAB 
X-CRM114-Status: GOOD (  20.94  )
X-Mailman-Approved-At: Tue, 07 Jul 2026 08:29:52 -0700
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 28 May 2026 15:26:28 -0400 Yury Norov <ynorov@nvidia.com> wrote:

> On Thu, May 28, 2026 at 12:18:06PM -0700, Andrew Morton wrote:
> > On Thu, 28 May 2026 14:36:07 -0400 Yury Norov <ynorov@nvidia.com> wrote:
> > 
> > > cpumap_print_to_pagebuf() is the equivalent for the "&*pb[l]" notation
> > > in printk-like functions. In some cases, it makes people to create
> > > temporary buffers for the printed cpumasks, where it can be avoided.
> > > 
> > > Get rid of it in a favor of more standard printing API.
> > > 
> > > Each patch, except for the last one, is independent and may be moved with
> > > the corresponding subsystem. Or I can take it in bitmap-for-next, at
> > > maintainers' discretion.
> > > 
> > > On top of bitmap-for-next.
> > 
> > Sashiko doesn't attempt bitmap-for-next, so it couldn't apply this series.
> > 	https://sashiko.dev/#/patchset/20260528183625.870813-1-ynorov@nvidia.com
> 
> OK... What should I do about that?

Rebase onto something which Sashiko *does* attempt.  Mainline, a few
mm.git branches.  Maybe linux-next.

Roman, is there a list of trees/branches which Sashiko tries to apply
series to?

Thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
