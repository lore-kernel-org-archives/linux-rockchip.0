Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7D17C4450C
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DVnKi2RUQfCT1PLAhpS3f39Mt1ehWAdqRbWoIzJGU9w=; b=MkuCpRRX8aqUHd
	waYtz0p5CcWSpWW0nXmniHNz4Xk03bVeUMM1R/Yjw5KkJQFtU1sFWMgzYQnjjnfc9lIECRHFFtirc
	8mh8GaTRTXS2erkZARHsu2pnIuyEVB/IRoDoMI7LAbkyJjErtgf7104bDpdu9OLnqdH7klFdegOTV
	x8lxtI1NYTEayemiEsh4fnJPfGMAXQwFKpgk70QlIWux8bk4damZTfLxwuO2ZlCwG1CmtX1QQWWbl
	OA/Pr0O2B34lAnpGRidao6+/zKXW8Hp90fAfOB37hRR642eG+ZNc6bAOtAHqAa2Y24zldBC5Iy9v6
	QxJnU2Vq5kqiVG/xcrAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkVP-00000001abD-1cx7;
	Thu, 09 Jul 2026 08:53:15 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU6hT-0000000BbiO-0Gp8
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 17:45:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 8313E44623
	for <linux-rockchip@lists.infradead.org>; Mon,  1 Jun 2026 17:45:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C21B1F0089F
	for <linux-rockchip@lists.infradead.org>; Mon,  1 Jun 2026 17:45:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780335916;
	bh=NQXET+HIwUHzkASejrWXITD/EhCJ1l5nthigBOUX5B4=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc;
	b=gjGRHh/AejulXxkNQAjfjV93VMiqgdq6wRmZ7BNSN1UHb97WguW4+/ZA+WuQC6Kll
	 yhn3UxrX6XHEvJlmkImSQf3opqad40WQNxo0e446ikygz1JQuNxXlxEupqUOOMotfi
	 QZ7zNwyi6Ev4WkeVDBku7OIdn6/NnCxDJfGGNtSBSMm42l8FYQ3sk4gJGLxT/hbqCe
	 K0vFWgCVQinuD4UcX6ltdXhdbZf0cM4k6OQ10FtXjpLK4tNUvA3GQZ7EyhXiE2tkMT
	 OVYBnp+ntfYpsvWr85EAbNEvk2fl/CVRUiYB0mkIo2usdhpYSJ7vIUPsX5pwj59Gzk
	 lW6qoYjQk8e7g==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5aa6792e7b8so1524170e87.1
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 10:45:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9+2z1PlNdJnrJIlwYLhKha90VK31baEtpGiK8ilDphycJNKuPoFJg0vbdcB/fgo51ba1mOI5tp01X8Deg6Mw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz3GKbb0y6bAv25TvWIEG0j/YL+tviMPhZPSJPPiNUxxnaodPtk
	I5+UPSapGX1qwuk31AvSdXV24phGQo2YLoCga8y6LW0EjturxMeNwNittaHQQLKRvzq6rL+WXec
	zrTD3w3D/8p3d3xmyGRysWXOgZ9ub0L8=
X-Received: by 2002:a05:6512:3b97:b0:5aa:6e86:55c8 with SMTP id
 2adb3069b0e04-5aa6e8657c0mr1302970e87.12.1780335912894; Mon, 01 Jun 2026
 10:45:12 -0700 (PDT)
MIME-Version: 1.0
References: <20260528183625.870813-1-ynorov@nvidia.com> <20260528183625.870813-6-ynorov@nvidia.com>
In-Reply-To: <20260528183625.870813-6-ynorov@nvidia.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Mon, 1 Jun 2026 19:45:01 +0200
X-Gmail-Original-Message-ID: <CAJZ5v0gPZL7Cmi7Sm5pVN01AG7rb8NiwWkUJ9X6gwim67EUZPQ@mail.gmail.com>
X-Gm-Features: AVHnY4L1KYHIevdOf61kuP7a6ocAZfa6dkfv0T6IORvr_Om4IsQ3giCPU7iBHEE
Message-ID: <CAJZ5v0gPZL7Cmi7Sm5pVN01AG7rb8NiwWkUJ9X6gwim67EUZPQ@mail.gmail.com>
Subject: Re: [PATCH 05/16] ACPI: pad: Use sysfs_emit() for idlecpus show
To: Yury Norov <ynorov@nvidia.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	Russell King <linux@armlinux.org.uk>, Frank Li <Frank.Li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Madhavan Srinivasan <maddy@linux.ibm.com>, 
	Michael Ellerman <mpe@ellerman.id.au>, Nicholas Piggin <npiggin@gmail.com>, 
	"Christophe Leroy (CS GROUP)" <chleroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, Namhyung Kim <namhyung@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Jiri Olsa <jolsa@kernel.org>, 
	Ian Rogers <irogers@google.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	James Clark <james.clark@linaro.org>, Thomas Gleixner <tglx@kernel.org>, Borislav Petkov <bp@alien8.de>, 
	Dave Hansen <dave.hansen@linux.intel.com>, "H. Peter Anvin" <hpa@zytor.com>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Danilo Krummrich <dakr@kernel.org>, 
	Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Heiko Stuebner <heiko@sntech.de>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Xu Yilun <yilun.xu@intel.com>, Tom Rix <trix@redhat.com>, 
	Moritz Fischer <mdf@kernel.org>, Yicong Yang <yangyicong@hisilicon.com>, 
	Jonathan Cameron <jic23@kernel.org>, 
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>, Jason Gunthorpe <jgg@ziepe.ca>, 
	Leon Romanovsky <leon@kernel.org>, Dan Williams <djbw@kernel.org>, 
	Vishal Verma <vishal.l.verma@intel.com>, Dave Jiang <dave.jiang@intel.com>, 
	Ira Weiny <ira.weiny@intel.com>, Bjorn Helgaas <bhelgaas@google.com>, 
	Shuai Xue <xueshuai@linux.alibaba.com>, Will Deacon <will@kernel.org>, 
	Jiucheng Xu <jiucheng.xu@amlogic.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Robin Murphy <robin.murphy@arm.com>, 
	Jing Zhang <renyu.zj@linux.alibaba.com>, Xu Yang <xu.yang_2@nxp.com>, 
	Linu Cherian <lcherian@marvell.com>, Gowthami Thiagarajan <gthiagarajan@marvell.com>, 
	Ji Sheng Teoh <jisheng.teoh@starfivetech.com>, Khuong Dinh <khuong@os.amperecomputing.com>, 
	Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Yury Norov <yury.norov@gmail.com>, Kees Cook <kees@kernel.org>, 
	=?UTF-8?Q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>, 
	Aboorva Devarajan <aboorvad@linux.ibm.com>, "Ritesh Harjani (IBM)" <ritesh.list@gmail.com>, 
	Ilkka Koskinen <ilkka@os.amperecomputing.com>, Besar Wicaksono <bwicaksono@nvidia.com>, 
	Ma Ke <make24@iscas.ac.cn>, Chengwen Feng <fengchengwen@huawei.com>, 
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	linux-perf-users@vger.kernel.org, linux-acpi@vger.kernel.org, 
	driver-core@lists.linux.dev, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-fpga@vger.kernel.org, 
	linux-rdma@vger.kernel.org, nvdimm@lists.linux.dev, linux-pci@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-cxl@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_104519_258316_71FFC34D 
X-CRM114-Status: GOOD (  19.22  )
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:23 -0700
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBNYXkgMjgsIDIwMjYgYXQgODozNuKAr1BNIFl1cnkgTm9yb3YgPHlub3JvdkBudmlk
aWEuY29tPiB3cm90ZToKPgo+IGlkbGVjcHVzX3Nob3coKSBpcyBhIHN5c2ZzIHNob3cgY2FsbGJh
Y2suIFVzZSBzeXNmc19lbWl0KCkgYW5kCj4gY3B1bWFza19wcl9hcmdzKCkgdG8gZW1pdCB0aGUg
bWFzay4KPgo+IFRoaXMgcHJlcGFyZXMgZm9yIHJlbW92aW5nIGNwdW1hcF9wcmludF90b19wYWdl
YnVmKCkuCj4KPiBTaWduZWQtb2ZmLWJ5OiBZdXJ5IE5vcm92IDx5bm9yb3ZAbnZpZGlhLmNvbT4K
PiAtLS0KPiAgZHJpdmVycy9hY3BpL2FjcGlfcGFkLmMgfCA0ICsrLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2FjcGkvYWNwaV9wYWQuYyBiL2RyaXZlcnMvYWNwaS9hY3BpX3BhZC5jCj4gaW5kZXggZWM5
NGIwOWJiNzQ3Li4wNGQ2MWE2Y2M5NWYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9hY3BpL2FjcGlf
cGFkLmMKPiArKysgYi9kcml2ZXJzL2FjcGkvYWNwaV9wYWQuYwo+IEBAIC0zMzQsOCArMzM0LDgg
QEAgc3RhdGljIHNzaXplX3QgaWRsZWNwdXNfc3RvcmUoc3RydWN0IGRldmljZSAqZGV2LAo+ICBz
dGF0aWMgc3NpemVfdCBpZGxlY3B1c19zaG93KHN0cnVjdCBkZXZpY2UgKmRldiwKPiAgICAgICAg
IHN0cnVjdCBkZXZpY2VfYXR0cmlidXRlICphdHRyLCBjaGFyICpidWYpCj4gIHsKPiAtICAgICAg
IHJldHVybiBjcHVtYXBfcHJpbnRfdG9fcGFnZWJ1ZihmYWxzZSwgYnVmLAo+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRvX2NwdW1hc2socGFkX2J1c3lfY3B1c19iaXRz
KSk7Cj4gKyAgICAgICByZXR1cm4gc3lzZnNfZW1pdChidWYsICIlKnBiXG4iLAo+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgY3B1bWFza19wcl9hcmdzKHRvX2NwdW1hc2socGFkX2J1c3lfY3B1
c19iaXRzKSkpOwo+ICB9Cj4KPiAgc3RhdGljIERFVklDRV9BVFRSX1JXKGlkbGVjcHVzKTsKPiAt
LQoKQXBwbGllZCAod2l0aCBhIHR3ZWFrZWQgc3ViamVjdCkgYXMgNy4yIG1hdGVyaWFsLCB0aGFu
a3MhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
