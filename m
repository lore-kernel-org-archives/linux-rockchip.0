Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA121C4450D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S9uM5gNarbXDE7ML3c7Otv0uAfIUZ9rN8Nd0rIYBc14=; b=auK9uVsl4IVptX
	XG14pBEN+w6PLHdFH3OtV8nagkPwqtU7ilsbKfb4mkkeVGqM5L0QH3NtTsuto8c8jvCKrAK5HKv2P
	vdaRpJvu2x8ODrxM7uqVB+zBzexW+0tkkG7lobk40jQwJPsHPyXZhKaj8Nlg9iVquYfjbtyGq/pCc
	xqATSrtIsjsBu71Ut+f0Ob3Ia/G3jUaQwWi7pvIQblXNp+46a7ev3l/aN7zYwsIOi55iZem1Y4Mdi
	xi5FmT1HvY+EW9QGWdy2+MqZqMMaeqJxNPJLWKnP/g2EcBLW//RjwX+9KGsiZo2ndh9q4b4G/7uZq
	wEvqWqW5DPPrg7V/AjAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVP-00000001ab0-1D8N;
	Thu, 09 Jul 2026 08:53:15 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSwGJ-00000007NIn-3jmV;
	Fri, 29 May 2026 12:24:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45FEC204C;
	Fri, 29 May 2026 05:24:20 -0700 (PDT)
Received: from [10.57.37.50] (unknown [10.57.37.50])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 16BE13F632;
	Fri, 29 May 2026 05:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1780057465; bh=fjbO4t8XdyU8NOb41mG4ChhG+m/bzPP3BywWNtdYqoA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=aPrsjUKCk50s149VeWZk4F2Llmjdo90qP4DWtdM9ATKguxbUU6gRebVq07f2uJFK0
	 YVnIN2oOqMRDRFm11YWBgDWM/xTptKipB8Q9REDRnovKPHG2ooZaALp7Zti/C2KUQ+
	 b4qPfWs6v4eF/TgyfabaRYMbwAxOu8OUsO69761s=
Message-ID: <3a4e22fe-b8ce-4e62-9139-113e0cd4f16b@arm.com>
Date: Fri, 29 May 2026 13:24:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/16] psci: simplify hotplug_tests()
To: Yury Norov <ynorov@nvidia.com>, Andrew Morton
 <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Russell King <linux@armlinux.org.uk>, Frank Li <Frank.Li@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Madhavan Srinivasan
 <maddy@linux.ibm.com>, Michael Ellerman <mpe@ellerman.id.au>,
 Nicholas Piggin <npiggin@gmail.com>,
 "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>,
 Adrian Hunter <adrian.hunter@intel.com>, James Clark
 <james.clark@linaro.org>, Thomas Gleixner <tglx@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 "H. Peter Anvin" <hpa@zytor.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Len Brown <lenb@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Danilo Krummrich <dakr@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham
 <myungjoo.ham@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Heiko Stuebner <heiko@sntech.de>, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>,
 Moritz Fischer <mdf@kernel.org>, Yicong Yang <yangyicong@hisilicon.com>,
 Jonathan Cameron <jic23@kernel.org>,
 Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Leon Romanovsky <leon@kernel.org>,
 Dan Williams <djbw@kernel.org>, Vishal Verma <vishal.l.verma@intel.com>,
 Dave Jiang <dave.jiang@intel.com>, Ira Weiny <ira.weiny@intel.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Shuai Xue <xueshuai@linux.alibaba.com>,
 Will Deacon <will@kernel.org>, Jiucheng Xu <jiucheng.xu@amlogic.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Jing Zhang <renyu.zj@linux.alibaba.com>, Xu Yang <xu.yang_2@nxp.com>,
 Linu Cherian <lcherian@marvell.com>,
 Gowthami Thiagarajan <gthiagarajan@marvell.com>,
 Ji Sheng Teoh <jisheng.teoh@starfivetech.com>,
 Khuong Dinh <khuong@os.amperecomputing.com>,
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Yury Norov <yury.norov@gmail.com>,
 Kees Cook <kees@kernel.org>,
 =?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>,
 Aboorva Devarajan <aboorvad@linux.ibm.com>,
 "Ritesh Harjani (IBM)" <ritesh.list@gmail.com>,
 Ilkka Koskinen <ilkka@os.amperecomputing.com>,
 Besar Wicaksono <bwicaksono@nvidia.com>, Ma Ke <make24@iscas.ac.cn>,
 Chengwen Feng <fengchengwen@huawei.com>,
 linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev,
 linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-perf-users@vger.kernel.org, linux-acpi@vger.kernel.org,
 driver-core@lists.linux.dev, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-fpga@vger.kernel.org,
 linux-rdma@vger.kernel.org, nvdimm@lists.linux.dev,
 linux-pci@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-cxl@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20260528183625.870813-1-ynorov@nvidia.com>
 <20260528183625.870813-2-ynorov@nvidia.com>
From: Robin Murphy <robin.murphy@arm.com>
Content-Language: en-GB
In-Reply-To: <20260528183625.870813-2-ynorov@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260529_052428_097263_AA6238A7 
X-CRM114-Status: GOOD (  19.60  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2026-05-28 7:36 pm, Yury Norov wrote:
> Switch to pr_info("... %pbl"), and drop the temporary buffer allocation.

I would say this is simply an improvement in its own right, regardless 
of whether cpumap_print_to_pagebuf() deserves to be removed or not. For 
the change itself, FWIW,

Reviewed-by: Robin Murphy <robin.murphy@arm.com>

> This prepares for removing cpumap_print_to_pagebuf().
> 
> Signed-off-by: Yury Norov <ynorov@nvidia.com>
> ---
>   drivers/firmware/psci/psci_checker.c | 14 ++------------
>   1 file changed, 2 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/firmware/psci/psci_checker.c b/drivers/firmware/psci/psci_checker.c
> index e67ba9891082..ecd745bb90bf 100644
> --- a/drivers/firmware/psci/psci_checker.c
> +++ b/drivers/firmware/psci/psci_checker.c
> @@ -186,7 +186,6 @@ static int hotplug_tests(void)
>   {
>   	int i, nb_cpu_group, err = -ENOMEM;
>   	cpumask_var_t offlined_cpus, *cpu_groups;
> -	char *page_buf;
>   
>   	if (!alloc_cpumask_var(&offlined_cpus, GFP_KERNEL))
>   		return err;
> @@ -194,10 +193,6 @@ static int hotplug_tests(void)
>   	nb_cpu_group = alloc_init_cpu_groups(&cpu_groups);
>   	if (nb_cpu_group < 0)
>   		goto out_free_cpus;
> -	page_buf = (char *)__get_free_page(GFP_KERNEL);
> -	if (!page_buf)
> -		goto out_free_cpu_groups;
> -
>   	/*
>   	 * Of course the last CPU cannot be powered down and cpu_down() should
>   	 * refuse doing that.
> @@ -210,16 +205,11 @@ static int hotplug_tests(void)
>   	 * off, the cpu group itself should shut down.
>   	 */
>   	for (i = 0; i < nb_cpu_group; ++i) {
> -		ssize_t len = cpumap_print_to_pagebuf(true, page_buf,
> -						      cpu_groups[i]);
> -		/* Remove trailing newline. */
> -		page_buf[len - 1] = '\0';
> -		pr_info("Trying to turn off and on again group %d (CPUs %s)\n",
> -			i, page_buf);
> +		pr_info("Trying to turn off and on again group %d (CPUs %*pbl)\n",
> +			i, cpumask_pr_args(cpu_groups[i]));
>   		err += down_and_up_cpus(cpu_groups[i], offlined_cpus);
>   	}
>   
> -	free_page((unsigned long)page_buf);
>   out_free_cpu_groups:
>   	free_cpu_groups(nb_cpu_group, &cpu_groups);
>   out_free_cpus:


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
