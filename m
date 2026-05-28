Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A61AC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLan1co+3tafnkbM1Ihlf5Uboc+qsuljMnWs+THxn1A=; b=N8PtKU6GSsLkkR
	iIBB0Vl+bSxeI01JxRTGcMBVIYfA88ewq1ASsQML9iT18x3e6Ulw5+L383aoyvs0AKIC46xIFDji9
	w5zo26lhS2oL68sKnFZnXG1nxSuyEx+BDw6GIynBJbmdz/kXU8q2sc2j/T1fP5T30vh3lLCtrfXpn
	euSHwHY7hXTPUYdjtY7RtooMpezyPZ+7E7OVYkDTet5IzBLUk5rGXcFlFJ7NoKyuVeJrDeKTM/xqC
	6Vo0vcReMlkmJFfzCvurT6C+Uas/QsX0vR9kXmFxRO7gmVYdxP5UfSvWDxIlMfxk6on6VsyNds62Q
	0Mv4C6BfYJtAIqygImfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkQr-00000001Uzz-25Xf;
	Thu, 09 Jul 2026 08:48:34 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSgeb-00000006IEq-2RtR
	for linux-rockchip@lists.infradead.org;
	Thu, 28 May 2026 19:44:31 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-2ba3b9bcf69so435ad.0
        for <linux-rockchip@lists.infradead.org>; Thu, 28 May 2026 12:44:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779997468; cv=none;
        d=google.com; s=arc-20240605;
        b=FuiUmRcGyo46oZZO9kSB5sCycpoZlo8pBwOg9IbjH+AiIMcSEPtju1H1h4f1H+kOOz
         I3mn6zA4IQsK68K+cR3XiTvtVUKGteIPU4mSm88g8f847FnBwKgA14hlpjh8wPzlJ6nt
         V6EcdlfuIqhUlM82LF4D5vyaLdNxVCio9Fuy7oBTdDpuLsKR8IZK+kpUVfz2Vf1KFX1K
         Elo3lbfUQnOiAgPevnZeX2PGT/kepz9PfM2quVX799LFABCiOjtWOziIoinZ23yaFLbg
         wX6kaADrvGh3+ZwXiWLrYgHghf+UZ+aBQFcm9I/Sxz6joQ9QGQq7F6/HCHfaSN31R5fA
         M3vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=8IynHu/DX5NF0G96SeXwK1qnUut5hZzt9g6fKpDU65E=;
        fh=yarrFPmoqwtR7KJIhXDLI/MmzNY0z21781h0SkqN0EM=;
        b=Q3Q3fUHYOE4U5EDv3vJZnf0Xa47WU8qyL+bA8OFCUfz/lcVb0SFEXtBQKmMGr63+fM
         XCUxFfQKD/Y22ziqj+b6odV0unORmFUcvoAQptzfQDdYqTaydmJ+vBaNfaoaN+bOvYQq
         KesLqb4cyCQiAwLTLn+5EnK5/NXb2863E4tG4l0zjrkG8RwVujn/dHtbhG7SRzn7PKmZ
         V6S6QX2eBeaEAGEY/Bx7cV4vE+XlJjopYl1gPacn9Vh4NZ6BGtCF6YG6c2cs/j9Xe/qR
         o2q7D8l6KpTYfxzrqcIJSYEqoWyOBFRqEmyRDUGVgaVSi20WrfdbUG9dnD9HDtJvZ877
         3okg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1779997468; x=1780602268; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8IynHu/DX5NF0G96SeXwK1qnUut5hZzt9g6fKpDU65E=;
        b=tVVpDw23UeOaBfzhcTg1w+fvXJHSiKUtJSUBpuksAI7qFes67OLUFEd1219KqH3Jua
         YqDLlKSyTV8r3JJVGJV/vZIqwmP1pNAYB4rinpiO+Z/E6dJY6xWD92raKOfBEQXnStAh
         jOO3x7Ufxj5Cg3/RO4PyKF9PQI5+nUFwLeBTODe2IMBNk63BbevIXEsK/SuQXzAFIFxK
         4YQZvtx37nenVbi50uoVZpoEjhTEFEVZcNd+NEvcq2JXgHEQ3Ex7egI+s+JUvfTYbg9w
         7txbQ7+HQRArVCYkB5rkh7ZaSWirCpo2leVCu2aRIE7NxQEWofmMMOX5H0Nc1MUB53hx
         AiRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779997468; x=1780602268;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8IynHu/DX5NF0G96SeXwK1qnUut5hZzt9g6fKpDU65E=;
        b=fU9niAxL8ZreC3nFAfiuiPJAB6QgxMytELd5JdF6ntzcoF+Zlgs03V+ck/86YHWy5B
         tx4/loBVT9359ZLtTGl9shNQgH1RnPclHA4lqk8r2eYv+5CsqdMHCpO5co+svXrqtfFq
         I0NSv+iMj7Mb8waQkbtWuy6mxhSa7tFkk9yscXi13iwCovggZekt2nyqjbK1ximgqQep
         0F7EbupKpDI/S3kS8+fJq0j2c3Jch5y3ys4PnTa2HiB7SpCfl+FoqvZWpynAk3oAIhw6
         9qohSmCok24WuHHnz9KG64xXiuSGz9akz2MwEgGlhNaJKqC9RUKZGkcWFoZP2s+1ucZ9
         JwLg==
X-Forwarded-Encrypted: i=1; AFNElJ9n2NeI1mBA4/Kb9ow3fGe9VvrW/xWlFMVxc6iAAMlMFDTbZxhnIpL2AS/tlEfa6s1kSE94dnYYJ3ZUYKOTjg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJEvPRV91bL8inTTW4wsg11Rcb/17pxi3KfpIsA97KrcS/Ih+O
	7FHvGHZ5sLcadnU9Pmu4CJyrs56M+bqDk2ibD+m2CXQBvp5FSHjMBsXnM2K9bWykc08AQ/9owbx
	tch3gCNyaMHyPyibCn0L7/TixWoyO9W8Y5gwCFyjv
X-Gm-Gg: Acq92OGt6dwaHcF+JvG+4eFEHvhV2D8gc8PLgIH0nMXuJJl00humjJDRIDMl0BXnj0c
	1DadMB0TVEbSiTc3pa4av7/zep4YcT+SI3PVTdi27XVeTbqYyfzgPJqi6NdemKeguOVgTZnz1eu
	ZchJofUI+32J/4wbcmpUwoGWAZYECtexbbApx3Ql1jgZiOrDUXCjf9DPEAodNkAqn/Cb0Qqq4u+
	Eh+AOVdH+Ox/oIVPxLA1LqaesUsSfZMb1Nzak65OzqDG84lHURxKqki/wLor233wvRVJZ1UvN20
	YvME1W+G10jI9C+jcDo=
X-Received: by 2002:a17:902:f64b:b0:2bd:3bfd:74f1 with SMTP id
 d9443c01a7336-2bf1fb9d40amr92235ad.2.1779997467341; Thu, 28 May 2026 12:44:27
 -0700 (PDT)
MIME-Version: 1.0
References: <20260528183625.870813-1-ynorov@nvidia.com> <20260528121806.2b54606ba6e42f7f371d95c3@linux-foundation.org>
 <ahiW5LKLiPMC6il_@yury> <20260528122903.cf74cf905418ab2d144607c3@linux-foundation.org>
 <ahiYUr0dO_dhOHTU@yury>
In-Reply-To: <ahiYUr0dO_dhOHTU@yury>
From: Ian Rogers <irogers@google.com>
Date: Thu, 28 May 2026 12:44:15 -0700
X-Gm-Features: AVHnY4KU3_bl6PIogc_loULa1uZ5IugP9iETmiYVnKICvK-frgUxDB4nRARXI20
Message-ID: <CAP-5=fXXg+PqH7EZ8X599CKYFWCwQgyH2H-4-+5M3_b9w_dTNw@mail.gmail.com>
Subject: Re: [PATCH 00/16] lib/cpumask: get rid of cpumap_print_to_pagebuf()
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
	Adrian Hunter <adrian.hunter@intel.com>, James Clark <james.clark@linaro.org>, 
	Thomas Gleixner <tglx@kernel.org>, Borislav Petkov <bp@alien8.de>, 
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
	linux-arm-msm@vger.kernel.org, Roman Gushchin <roman.gushchin@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_124429_658580_F0B5B5BC 
X-CRM114-Status: GOOD (  23.68  )
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

T24gVGh1LCBNYXkgMjgsIDIwMjYgYXQgMTI6MzLigK9QTSBZdXJ5IE5vcm92IDx5bm9yb3ZAbnZp
ZGlhLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIE1heSAyOCwgMjAyNiBhdCAxMjoyOTowM1BNIC0w
NzAwLCBBbmRyZXcgTW9ydG9uIHdyb3RlOgo+ID4gT24gVGh1LCAyOCBNYXkgMjAyNiAxNToyNjoy
OCAtMDQwMCBZdXJ5IE5vcm92IDx5bm9yb3ZAbnZpZGlhLmNvbT4gd3JvdGU6Cj4gPgo+ID4gPiBP
biBUaHUsIE1heSAyOCwgMjAyNiBhdCAxMjoxODowNlBNIC0wNzAwLCBBbmRyZXcgTW9ydG9uIHdy
b3RlOgo+ID4gPiA+IE9uIFRodSwgMjggTWF5IDIwMjYgMTQ6MzY6MDcgLTA0MDAgWXVyeSBOb3Jv
diA8eW5vcm92QG52aWRpYS5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gPiBjcHVtYXBfcHJp
bnRfdG9fcGFnZWJ1ZigpIGlzIHRoZSBlcXVpdmFsZW50IGZvciB0aGUgIiYqcGJbbF0iIG5vdGF0
aW9uCj4gPiA+ID4gPiBpbiBwcmludGstbGlrZSBmdW5jdGlvbnMuIEluIHNvbWUgY2FzZXMsIGl0
IG1ha2VzIHBlb3BsZSB0byBjcmVhdGUKPiA+ID4gPiA+IHRlbXBvcmFyeSBidWZmZXJzIGZvciB0
aGUgcHJpbnRlZCBjcHVtYXNrcywgd2hlcmUgaXQgY2FuIGJlIGF2b2lkZWQuCj4gPiA+ID4gPgo+
ID4gPiA+ID4gR2V0IHJpZCBvZiBpdCBpbiBhIGZhdm9yIG9mIG1vcmUgc3RhbmRhcmQgcHJpbnRp
bmcgQVBJLgo+ID4gPiA+ID4KPiA+ID4gPiA+IEVhY2ggcGF0Y2gsIGV4Y2VwdCBmb3IgdGhlIGxh
c3Qgb25lLCBpcyBpbmRlcGVuZGVudCBhbmQgbWF5IGJlIG1vdmVkIHdpdGgKPiA+ID4gPiA+IHRo
ZSBjb3JyZXNwb25kaW5nIHN1YnN5c3RlbS4gT3IgSSBjYW4gdGFrZSBpdCBpbiBiaXRtYXAtZm9y
LW5leHQsIGF0Cj4gPiA+ID4gPiBtYWludGFpbmVycycgZGlzY3JldGlvbi4KPiA+ID4gPiA+Cj4g
PiA+ID4gPiBPbiB0b3Agb2YgYml0bWFwLWZvci1uZXh0Lgo+ID4gPiA+Cj4gPiA+ID4gU2FzaGlr
byBkb2Vzbid0IGF0dGVtcHQgYml0bWFwLWZvci1uZXh0LCBzbyBpdCBjb3VsZG4ndCBhcHBseSB0
aGlzIHNlcmllcy4KPiA+ID4gPiAgIGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDUyODE4MzYyNS44NzA4MTMtMS15bm9yb3ZAbnZpZGlhLmNvbQo+ID4gPgo+ID4gPiBPSy4uLiBX
aGF0IHNob3VsZCBJIGRvIGFib3V0IHRoYXQ/Cj4gPgo+ID4gUmViYXNlIG9udG8gc29tZXRoaW5n
IHdoaWNoIFNhc2hpa28gKmRvZXMqIGF0dGVtcHQuICBNYWlubGluZSwgYSBmZXcKPiA+IG1tLmdp
dCBicmFuY2hlcy4gIE1heWJlIGxpbnV4LW5leHQuCj4KPiBJcyBTYXNoaWtvIGEgbmV3IG1hbmRh
dG9yeSByZXF1aXJlbWVudCBub3c/IERvY3VtZW50YXRpb24gZG9lc24ndCBldmVuCj4gbWVudGlv
biB0aGUgYm90Lgo+Cj4gPiBSb21hbiwgaXMgdGhlcmUgYSBsaXN0IG9mIHRyZWVzL2JyYW5jaGVz
IHdoaWNoIFNhc2hpa28gdHJpZXMgdG8gYXBwbHkKPiA+IHNlcmllcyB0bz8KPgo+IEhpIFJvbWFu
LAo+Cj4gQ2FuIHlvdSBhZGQgYml0bWFwLWZvci1uZXh0IGluIHRoZSBsaXN0PwoKRndpdywgeW91
IGNhbiBzZWUgdGhlIGxpc3Qgb2YgYnJhbmNoZXMgYXR0ZW1wdGVkIGFuZCB0aGUgU0hBIHRoZXkg
YXJlCmF0IGluIHRoZSBCYXNlbGluZSBkcm9wIGRvd246CgpCYXNlbGluZSBTdGF0dXMgTG9nCnRp
cC94ODYvY29yZSAoMGY2MWIxODYwY2MzZjUyYWVmOTAzNmQ3MjM1ZWQxZjAxNzYzMjE5MykgRmFp
bGVkIFZpZXcgTG9nCnBvd2VycGMvSEVBRCAoNjkxNmQ1NzAzZGRmOWEzOGYxZjZjMmNjNzkzMzgx
YTI0ZWU5MTRjNikgRmFpbGVkIFZpZXcgTG9nCmNoYW53b28vSEVBRCAoN2ZkMmRmMjA0ZjM0MmZj
MTdkMWEwYmZjZDQ3NGIyNDIzMmZiMGYzMikgRmFpbGVkIFZpZXcgTG9nCmxpbnV4LWFybS9IRUFE
IChkZDZjNDM4YzNlNjRhNWZmMGI1ZDdlNzhmN2Y5YmU1NDc4MDNlZjFiKSBGYWlsZWQgVmlldyBM
b2cKbGludXgtcG0vSEVBRCAoZTdhZTg5YTBjOTdjZTJiNjhiMDk4M2NkMDFlZGE2N2NmMzczNTE3
ZCkgRmFpbGVkIFZpZXcgTG9nCmxpbnV4LWZwZ2EvSEVBRCBGYWlsZWQgVmlldyBMb2cKcGNpL0hF
QUQgKDI1NGY0OTYzNGVlMTZhNzMxMTc0ZDJhZTM0YmM1MGJkNWY0NWU3MzEpIEZhaWxlZCBWaWV3
IExvZwpsaW51eC1wbS90aGVybWFsICgyMWMzMTUzNDJiODE1MjY4NzRhY2ZhMzExZjExYjNmNzJi
ZWQ0ZTE0KSBGYWlsZWQgVmlldyBMb2cKcmRtYS9IRUFEICg2NzQ2NGYzODhkNTJlYzE3MmJlNjJj
OTlmYzQzNjk3NDM3ZmZhMzg0KSBGYWlsZWQgVmlldyBMb2cKbGludXgtbmV4dC9IRUFEIChmN2Fm
OTFhZGMyMzBhYTk5ZTIzMzMwZWNmODViYzliYWRkOTc4MGFkKSBGYWlsZWQgVmlldyBMb2cKSEVB
RCAoOTE3NzE5YzQxMmM0ODY4N2Q0YTE3Njk2NWQxZmEzNTMyMGVjNDU3YykgRmFpbGVkIFZpZXcg
TG9nCgpUaGFua3MsCklhbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
