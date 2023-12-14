Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BA1FC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Dec 2023 19:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Ul5FTCko4BpgJuBtz5xC0hbsBxT6g5KSDv70hDM8nA=; b=vVPdkIkhCgvXXS
	ym1ZgSLRYhNORKkuAS79OqPddASaG5vGO9qehkS0DUKyMgtp9WSAlRbBPyBsO7IpD1lhObMRAralM
	bhLVQvrw/MMmUWGnuXCMGpG7ccPyytA9txlXkKbEAHyLLqxua+WhswHdv/wOLACpqbckEubY8YFt6
	X3s8QDkXFcU3xyr6HFfJiCH19lWSrfvcLOoO40Hn9EdEzn2shry7MxsfcxQva3dgjxcW7r4W0WTMs
	nO7R0lD5Nijl2lC/OKBttdA20bZnmShXfeU7P6MoqH/60t65mSL1Mtu4XXXde1IFx3smIFPomExMF
	HyErXdWX/OGz16I4eA/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDrF6-0016Yu-1n;
	Thu, 14 Dec 2023 19:19:32 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDrF3-0016XS-1g
	for linux-rockchip@lists.infradead.org;
	Thu, 14 Dec 2023 19:19:30 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-203349901d5so1157847fac.0
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Dec 2023 11:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1702581566; x=1703186366; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZGqN9VyFA6bGzLMvanbVJ9xu/V9dzBL2qAxRA0SNydY=;
        b=E9QYdWrEFUzhDZZIgShjXVcnmyW/LnOg4Uyv4de80fatAWPdppt6T0Nk5g154o4w3r
         UswPJ0tWuIgJBsZboG8KqzqWZhMMus/I3qcfepf1+h5rNCc2LajvxHsB+wey+hZC7UMm
         eX/r79MShVOZICcdXoJ5RGDWO8vqskoFeQ2I77C70g0xWmxnIYzHzFvLw3d67tFSfWtr
         dAyxWRVAziFBjyql8NlX0SQ3RHfhK5jUZyp0jsxEt5FU/342mpc4D4hJhuKVT+IssbMG
         Kf7GRqOEC2xXQ+yuSv2mlaKfTFjaPWSUFLQV3yKB+uNruaSgNVtJ0A8ClWcJMIN5xeR8
         zkkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702581566; x=1703186366;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZGqN9VyFA6bGzLMvanbVJ9xu/V9dzBL2qAxRA0SNydY=;
        b=c9YLfI2y0JjhrMbnGI+yKtKX7se1efhV3hgbSXbcD0p9Ab2O1jleUOif1xnatdbAc5
         ta3tik416FU4mxn6RrGovl/hWSVLGc6W5uZHkHXxNfenV1e3/DkQoPeFaySj+LoI7mkn
         ruduZkWBlEVhgB/4MwdNzkGMswC56JB/9j/vAcvYn/WGCM9cHMEpAk+0B+VfBzhanaYM
         TGzurVOOZeA/qFxZs3/jq+eDi0HB4IL0aIyK2xM9C3iZOP/v6MuYORq6HHb9+jir7LdW
         DrSS17WiAvwtYOH69vUoibNt3o6QvrDC1OQY7psSW05pfC0XgkgWqQykIYxlDW0+oJ9U
         d6hg==
X-Gm-Message-State: AOJu0Yy7qNAvxqFVpbqgGfb+PyIEKlLBFVBQpcLHYE8m6lANJmFt6aP7
	4C0YCiR6SUlPrbEy3Kvg3bf4a41c7h9N/ZNVOjCR5g==
X-Google-Smtp-Source: AGHT+IHAnrtenlddaWtCyLx9aBi69QrVuHVWG2rdYXiv2yuQ5vKdApOHPoLr5i+XPih06QNJDodZZT5+m5u6D1Em/48=
X-Received: by 2002:a05:6871:4099:b0:1ff:805:b3e6 with SMTP id
 kz25-20020a056871409900b001ff0805b3e6mr13641663oab.6.1702581566484; Thu, 14
 Dec 2023 11:19:26 -0800 (PST)
MIME-Version: 1.0
References: <20231130201504.2322355-1-pasha.tatashin@soleen.com>
 <20231130201504.2322355-10-pasha.tatashin@soleen.com> <88519685-abfb-e2f8-38b4-d94340b40d1d@google.com>
In-Reply-To: <88519685-abfb-e2f8-38b4-d94340b40d1d@google.com>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 14 Dec 2023 14:18:49 -0500
Message-ID: <CA+CK2bD-phEK4aWQv-xK74_uR_agRN+cmt5Wq-a8YVB1Gm_gVA@mail.gmail.com>
Subject: Re: [PATCH v2 09/10] iommu: observability of the IOMMU allocations
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
X-CRM114-CacheID: sfid-20231214_111929_558704_FF61E90E 
X-CRM114-Status: UNSURE (   9.81  )
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

T24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMTI6NTnigK9QTSBEYXZpZCBSaWVudGplcyA8cmllbnRq
ZXNAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4KPiBPbiBUaHUsIDMwIE5vdiAyMDIzLCBQYXNoYSBUYXRh
c2hpbiB3cm90ZToKPgo+ID4gQWRkIE5SX0lPTU1VX1BBR0VTIGludG8gbm9kZV9zdGF0X2l0ZW0g
dGhhdCBjb3VudHMgbnVtYmVyIG9mIHBhZ2VzCj4gPiB0aGF0IGFyZSBhbGxvY2F0ZWQgYnkgdGhl
IElPTU1VIHN1YnN5c3RlbS4KPiA+Cj4gPiBUaGUgYWxsb2NhdGlvbnMgY2FuIGJlIHZpZXcgcGVy
LW5vZGUgdmlhOgo+ID4gL3N5cy9kZXZpY2VzL3N5c3RlbS9ub2RlL25vZGVOL3Ztc3RhdC4KPiA+
Cj4gPiBGb3IgZXhhbXBsZToKPiA+Cj4gPiAkIGdyZXAgaW9tbXUgL3N5cy9kZXZpY2VzL3N5c3Rl
bS9ub2RlL25vZGUqL3Ztc3RhdAo+ID4gL3N5cy9kZXZpY2VzL3N5c3RlbS9ub2RlL25vZGUwL3Zt
c3RhdDpucl9pb21tdV9wYWdlcyAxMDYwMjUKPiA+IC9zeXMvZGV2aWNlcy9zeXN0ZW0vbm9kZS9u
b2RlMS92bXN0YXQ6bnJfaW9tbXVfcGFnZXMgMzQ2NAo+ID4KPiA+IFRoZSB2YWx1ZSBpcyBpbiBw
YWdlLWNvdW50LCB0aGVyZWZvcmUsIGluIHRoZSBhYm92ZSBleGFtcGxlCj4gPiB0aGUgaW9tbXUg
YWxsb2NhdGlvbnMgYW1vdW50IHRvIH40MjhNLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFBhc2hh
IFRhdGFzaGluIDxwYXNoYS50YXRhc2hpbkBzb2xlZW4uY29tPgo+Cj4gQWNrZWQtYnk6IERhdmlk
IFJpZW50amVzIDxyaWVudGplc0Bnb29nbGUuY29tPgoKVGhhbmsgeW91LApQYXNoYQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
