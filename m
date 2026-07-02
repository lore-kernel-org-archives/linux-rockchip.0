Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8519CC44501
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:54:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Md5cZwfPO52fpLC82pkaAF+3kLCt6xCoRn1XF4UWEz8=; b=4H/ETBYyHypuPL
	1+OVHTj/ZZbM84pF1S6eClZ6VpQt98II+wOwYWU9BknAa6gMdvsdiMoWHuoeGEKs4wcSBllqZpPil
	pSlbnrfKdX/2CP14wP50IEvvMZbR2c9p03iTLQgdoR1c0mTHN1dwHDQOj4F6my4C7pnydUkXx/2g/
	mGmqL//nYj+o/OxKj7ess3K33F1fORlvkhegwEGmaSZ3hr7b+NZK7DMeyKKKsW8oRV3o1iPQqN0hC
	xRFRIf6jNxuaUyBK0e4hvX2mWUUtA5OW/LV1+kvGcRzWU3v9rczfdbQzhyyF3He/ra2YD0IXcmA/J
	yQkwsoGyElZt7AGrRwSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkWL-00000001dGQ-1n8M;
	Thu, 09 Jul 2026 08:54:13 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJne-00000004tTM-2kJP;
	Thu, 02 Jul 2026 15:58:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 009C143313;
	Thu,  2 Jul 2026 15:58:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B03FE1F000E9;
	Thu,  2 Jul 2026 15:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxfoundation.org;
	s=korg; t=1783007881;
	bh=2GojpbKbN4k2MdbuYx8HDDnbJJg9jcM6tSbyryOEvMk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SJnNNRP+EGmmhh6KRiH7vrp7U5tcCQ4uUkk74aV3dBETWeDGJ2fYnPrhWEpA4mIVF
	 a7YX2/PcQ1r9wtser/tab+01pWo35DpJF6WKp0qvZ0Uv0rU/X657DvwsQuIkVvEpqV
	 TtOxbKTWJHUe4wOVptSf0WzHL3aO90+5UHJi4or4=
Date: Thu, 2 Jul 2026 17:58:11 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Yury Norov <ynorov@nvidia.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	Russell King <linux@armlinux.org.uk>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Madhavan Srinivasan <maddy@linux.ibm.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Nicholas Piggin <npiggin@gmail.com>,
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Ingo Molnar <mingo@redhat.com>,
	Arnaldo Carvalho de Melo <acme@kernel.org>,
	Namhyung Kim <namhyung@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>,
	Adrian Hunter <adrian.hunter@intel.com>,
	James Clark <james.clark@linaro.org>,
	Thomas Gleixner <tglx@kernel.org>, Borislav Petkov <bp@alien8.de>,
	Dave Hansen <dave.hansen@linux.intel.com>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	Heiko Stuebner <heiko@sntech.de>, Xu Yilun <yilun.xu@intel.com>,
	Tom Rix <trix@redhat.com>, Moritz Fischer <mdf@kernel.org>,
	Yicong Yang <yangyicong@hisilicon.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Shuai Xue <xueshuai@linux.alibaba.com>,
	Will Deacon <will@kernel.org>,
	Jiucheng Xu <jiucheng.xu@amlogic.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Robin Murphy <robin.murphy@arm.com>,
	Jing Zhang <renyu.zj@linux.alibaba.com>,
	Xu Yang <xu.yang_2@nxp.com>, Linu Cherian <lcherian@marvell.com>,
	Gowthami Thiagarajan <gthiagarajan@marvell.com>,
	Ji Sheng Teoh <jisheng.teoh@starfivetech.com>,
	Khuong Dinh <khuong@os.amperecomputing.com>,
	Yury Norov <yury.norov@gmail.com>, Kees Cook <kees@kernel.org>,
	Thomas =?iso-8859-1?Q?Wei=DFschuh?= <thomas.weissschuh@linutronix.de>,
	Aboorva Devarajan <aboorvad@linux.ibm.com>,
	Ilkka Koskinen <ilkka@os.amperecomputing.com>,
	Besar Wicaksono <bwicaksono@nvidia.com>, Ma Ke <make24@iscas.ac.cn>,
	Chengwen Feng <fengchengwen@huawei.com>,
	Ritesh Harjani <ritesh.list@gmail.com>,
	Yushan Wang <wangyushan12@huawei.com>,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-perf-users@vger.kernel.org, x86@kernel.org,
	driver-core@lists.linux.dev, linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-fpga@vger.kernel.org,
	linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-amlogic@lists.infradead.org, linux-cxl@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 01/11] arm: Use sysfs_emit() for cpumask show callbacks
Message-ID: <2026070244-flier-large-17d1@gregkh>
References: <20260702154725.185376-1-ynorov@nvidia.com>
 <20260702154725.185376-2-ynorov@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260702154725.185376-2-ynorov@nvidia.com>
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

On Thu, Jul 02, 2026 at 11:47:14AM -0400, Yury Norov wrote:
> These callbacks are sysfs show paths.
> 
> Use sysfs_emit() and cpumask_pr_args() to emit the masks.
> 
> This prepares for removing cpumap_print_to_pagebuf().
> 
> Signed-off-by: Yury Norov <ynorov@nvidia.com>
> ---
>  arch/arm/mach-imx/mmdc.c     | 2 +-
>  arch/arm/mm/cache-l2x0-pmu.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/mmdc.c b/arch/arm/mach-imx/mmdc.c
> index b71467c48b87..f6d993b9b1d4 100644
> --- a/arch/arm/mach-imx/mmdc.c
> +++ b/arch/arm/mach-imx/mmdc.c
> @@ -127,7 +127,7 @@ static ssize_t mmdc_pmu_cpumask_show(struct device *dev,
>  {
>  	struct mmdc_pmu *pmu_mmdc = dev_get_drvdata(dev);
>  
> -	return cpumap_print_to_pagebuf(true, buf, &pmu_mmdc->cpu);
> +	return sysfs_emit(buf, "%*pbl\n", cpumask_pr_args(&pmu_mmdc->cpu));

Really?  Looks like the original is much simpler to understand, why must
this function go away?

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
