Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB266C46CD3
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 18:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzB15t3nsCDedsTUVNhahAG22MQ03pviOy8IfqVXitc=; b=ichKu7znBCCNeF
	y5yoAwAONm0CQAsFFu3wjEZg1FpbIrMDQCvP8kZ7XSfTjaVATuW41rcakHZGrQO+l8QDNh+BCv0+c
	yWfavKygiRnEu+sTv/oHeVa7i10i1rw9xFX8LqCCi8klo0io5IcnTe+FcWaYbkwLMWRdKCvtErWTd
	68VhWSsTcPZ99jf+vH9qvbhRr0LQX2OY2zbtJ/i2DHIjTNaW/OYMr3RYyXcIotQJYc/ARble8Yc7g
	P3kzEjHdGTOgTvhRj9yWXZNmDy8715WmvbZM8TU35z2Jzld/Jy6Br3S2+Lk4+7295mty9bPpjbbGQ
	QsBIiEUz5j9XcJr6Fnrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIBs0-00DLVE-0F;
	Tue, 26 Dec 2023 18:09:36 +0000
Received: from mail-qt1-x82a.google.com ([2607:f8b0:4864:20::82a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIBrx-00DLUR-2z
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 18:09:35 +0000
Received: by mail-qt1-x82a.google.com with SMTP id d75a77b69052e-427dcdebf8fso10437261cf.3
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 10:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1703614172; x=1704218972; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b7PfHDnomUiobG04nKM0XGBe44UinAFtZn/zdJlhx7E=;
        b=QRGDhJ3hdL+nDydvTrw013xAw1bd2+GfuK2huLd99/6QeZ2PNS7lI32FizhXWhHoGN
         rYzVEGintCnX1fK2IwlpUko/J0dfPMxG8Gkbgn2O+db9LPyrd61lNWrWESAUw8wHG3z4
         hpOpOgV33BrqC9461T6zTGjNc8AbCfyCV6DHcttRhFrktrQxUdYTS7wpTomyk8gxGYYT
         DBXG6NY1SI0Hkd5Va6N7nb4sVXPbaHbEfHDkrLKS1Ocl6oTTz5IbmAveqrY9AnNDH3ak
         Sr7oxOeuWn0VGx/C3EZmdmORd+SWZepH4DmBRoZ9r5hUgN6PZO9zdxDy+9OKT7ijVT63
         c2Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703614172; x=1704218972;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b7PfHDnomUiobG04nKM0XGBe44UinAFtZn/zdJlhx7E=;
        b=uwv3si5OjtOsdMGchomWwXJi+9pclTdH9+VcKq3gFF9n7cQNio0Kjt0HV5l2oT9/il
         /OflA3LOy0A9Rhf469D5HW5ErRml/WW3X/xkXoREo/ctidbBT4RanTvQ+ZmQ96ALkjvv
         iXkwbuJDAA13LA6OVOAXB2FwWR5Jtqq1OIxXw69+qOhu2ahcdkLNwdc5qmL1ul1A2jRI
         njnKq8YVBs2AZiwaT+4igYrtH5fdEAC9eD8hRozDivskRftPPnnrOOmPL1yZiYWM1zFx
         acnRjS4jUHO2WRMrGR74InpOidMT42kk1r91g7Cpnwno5CYysLtAW08qE5HfLcOk0us6
         4aMg==
X-Gm-Message-State: AOJu0Yzo0hB/KQOvpXBgTjykMfsEagPqARp9rhgjkDc/BWsOXSs/cu2v
	p6mPzFRt+ObNTbaZHtnWn5KtpuiUcoiYSCyy9kwp5YraAN6QiQ==
X-Google-Smtp-Source: AGHT+IEtGqiyCZMh5j3F5J6wchinmn9n9fLbR9QT0arAi9kviky2yh3yetb2CEZeXYs1U5tu4B71Z7W+qiWPVjn19sk=
X-Received: by 2002:ac8:5fcf:0:b0:427:8b8f:823a with SMTP id
 k15-20020ac85fcf000000b004278b8f823amr12805036qta.116.1703614172543; Tue, 26
 Dec 2023 10:09:32 -0800 (PST)
MIME-Version: 1.0
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
 <20231130201504.2322355-5-pasha.tatashin@soleen.com> <0db8fdb5-26ee-5069-30d2-118595516926@google.com>
In-Reply-To: <0db8fdb5-26ee-5069-30d2-118595516926@google.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Tue, 26 Dec 2023 13:08:56 -0500
Message-ID: <CA+CK2bBYXdbqTxmw4YxDudnb4+1PwtSbimpff98JFWi+GjnT+g@mail.gmail.com>
Subject: Re: [PATCH v2 04/10] iommu/io-pgtable-dart: use page allocation
 function provided by iommu-pages.h
To: David Rientjes <rientjes@google.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, alyssa@rosenzweig.io, 
	asahi@lists.linux.dev, baolu.lu@linux.intel.com, bhelgaas@google.com, 
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, 
	iommu@lists.linux.dev, jernej.skrabec@gmail.com, jonathanh@nvidia.com, 
	joro@8bytes.org, krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com, marcan@marcan.st, 
	mhiramat@kernel.org, m.szyprowski@samsung.com, paulmck@kernel.org, 
	rdunlap@infradead.org, robin.murphy@arm.com, samuel@sholland.org, 
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev, thierry.reding@gmail.com, 
	tj@kernel.org, tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, 
	will@kernel.org, yu-cheng.yu@intel.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_100933_963155_454E922E 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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

T24gU3VuLCBEZWMgMjQsIDIwMjMgYXQgNDozNuKAr1BNIERhdmlkIFJpZW50amVzIDxyaWVudGpl
c0Bnb29nbGUuY29tPiB3cm90ZToKPgo+IE9uIFRodSwgMzAgTm92IDIwMjMsIFBhc2hhIFRhdGFz
aGluIHdyb3RlOgo+Cj4gPiBDb252ZXJ0IGlvbW11L2lvLXBndGFibGUtZGFydC5jIHRvIHVzZSB0
aGUgbmV3IHBhZ2UgYWxsb2NhdGlvbiBmdW5jdGlvbnMKPiA+IHByb3ZpZGVkIGluIGlvbW11LXBh
Z2VzLmguCj4gPgo+Cj4gLi4uIGFuZCByZW1vdmUgdW5uZWNlc3Nhcnkgc3RydWN0IGlvX3BndGFi
bGVfY2ZnIGZvcm1hbCB0bwo+IF9fZGFydF9hbGxvY19wYWdlcygpIHdoaWxlIHRoZXJlIDopCgpB
ZGRlZCB0byB0aGUgY29tbWl0IGxvZy4KCj4KPiA+IFNpZ25lZC1vZmYtYnk6IFBhc2hhIFRhdGFz
aGluIDxwYXNoYS50YXRhc2hpbkBzb2xlZW4uY29tPgo+ID4gUmV2aWV3ZWQtYnk6IEphbm5lIEdy
dW5hdSA8akBqYW5uYXUubmV0Pgo+Cj4gQWNrZWQtYnk6IERhdmlkIFJpZW50amVzIDxyaWVudGpl
c0Bnb29nbGUuY29tPgoKVGhhbmsgeW91LApQYXNoYQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
