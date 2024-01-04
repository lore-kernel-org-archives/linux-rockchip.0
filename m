Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06DCAC47073
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 16:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h61Qu1ptsTfA3ek96ye3UfvHkKbDbhZA1DvZ+j3lA7Y=; b=wbZP1P1yQTb2a2
	YrFAaPgtbN9P9WO9JSBFZknxVlucZMALlBUFgKrhdOxY0QnMRMTACUOizfxjH88PTP3a29HKq09DL
	Ujch+b04fKVxVhHEadH2iF9i2x79ZVcvPtPnSKoefyQL5ylQt7Pmjip50dKTuO+o0w04IPBYovRV1
	2oAOl1OAA4CANNtfp6CUzTvOZEeQT15NcPQuHHeoXbJCs7ADXggf0r2Nr+eeAX8Vpl1pmb3b6unBa
	qgTvsWGBZFgLPFC8uDPU4cI+/8QFS46rnsw1aBgJ7a12ifIlN/d0SoZJKPWZTFEYRzgFbKwmQsgvV
	z1lEqUtkK6wpuALguRIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLQc0-00EgSR-2N;
	Thu, 04 Jan 2024 16:30:28 +0000
Received: from mail-qt1-x836.google.com ([2607:f8b0:4864:20::836])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLQbw-00EgOS-0o
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jan 2024 16:30:26 +0000
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-427f21ced6aso3410541cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jan 2024 08:30:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1704385819; x=1704990619; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aj4IIq0tzuh1/OdFywt45Ed5fBVp3SK/t71RwP6JXSw=;
        b=RJ5d7BKtaSga4GFSuuYkAfdbYbgTqapQCmDfCJBjhuLqaFNjkSS1jgqse7FfixZxWl
         lAkejAVf+Rj2sBQgy2PT0jxuk5P8ysso9ESw3m4KlqNFqLpDUWJ+HAlhxhxW3tUEltlb
         FGVRzf5/tIPIorsFSSrCKLzFTMHb+4kmZyj5mmbk0X7hOX7Qk82CxmWrAtMwTgIrQ6UD
         xcVlX69AAUgE6HpmkaUhr7r00w0kymG88kkGB7jgnj3pD0wHN+C7V5eTGWshqTxErhP3
         n7+N5dVWNc1KYju45MHyyu5bLk8CbL8xihFY8EE7pzlB21VtWGU4AmJoYrjxhoU+VPcy
         03HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704385819; x=1704990619;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aj4IIq0tzuh1/OdFywt45Ed5fBVp3SK/t71RwP6JXSw=;
        b=l0W5+L2Gf9pXZILRxY+qUNhPRqJQMolSZlTax4UKFd7Nwqx8xu7J8aL0VKp/zCAalr
         afuiXyA8a6zP9P+ujp7VBJ5nH+SMZxzT+qfy7lefZ/uzKY9vOLe3tv7WDq85FM2UaAUR
         K0CCgDm1U2Cw4rvdZ9ngMj1j2XSj1fw3viqX3DEAxCK/4f4/Cu2F9lds4F0C86D+kkU5
         VWiO9RZEsvQaSlOOiSFuy47bzoTnZsDJZ03BMq6k4Q7DzHpn+ic0IwEgW39oL8yDqJEF
         bIChLB17MOgINt+kyFQTYnnyCdqGDHxoOM4D6+DR9T1hRDIdASRa18Sdn3u1uQ4DXmXb
         bSug==
X-Gm-Message-State: AOJu0YzAKbHDqo+TZQSvjZ8cb9HK+ZHYLMEv6Sh/9/fsl7CYC6+RtCiq
	rAjU0YJUvb51eilevTKQG7m174tQXPCVFQA1iKxaFj+2GS4J7w==
X-Google-Smtp-Source: AGHT+IHbmPwv6z7KPbpI44YRa4bYQfIXyvmSunk5ru1UyVqC5KptkTXxtDOkWoeYljsAtoXlTJC88ShSxszX3+BvyHo=
X-Received: by 2002:ac8:5cce:0:b0:428:3602:4ad8 with SMTP id
 s14-20020ac85cce000000b0042836024ad8mr839527qta.60.1704385819426; Thu, 04 Jan
 2024 08:30:19 -0800 (PST)
MIME-Version: 1.0
References: <20231226200205.562565-1-pasha.tatashin@soleen.com> <eqkpplwwyeqqd356ka3g6isaoboe62zrii77krsb7zwzmvdusr@5i3lzfhpt2xe>
In-Reply-To: <eqkpplwwyeqqd356ka3g6isaoboe62zrii77krsb7zwzmvdusr@5i3lzfhpt2xe>
From: Pasha Tatashin <pasha.tatashin@soleen.com>
Date: Thu, 4 Jan 2024 11:29:43 -0500
Message-ID: <CA+CK2bBE1bQuqZy3cbWiv8V3vJ8YNJZRayp6Wv-j2_9i37XT4g@mail.gmail.com>
Subject: Re: [PATCH v3 00/10] IOMMU memory observability
To: =?UTF-8?Q?Michal_Koutn=C3=BD?= <mkoutny@suse.com>
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
	will@kernel.org, yu-cheng.yu@intel.com, rientjes@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_083024_287585_059EACF3 
X-CRM114-Status: GOOD (  13.70  )
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

T24gVGh1LCBKYW4gNCwgMjAyNCBhdCAxMDozMeKAr0FNIE1pY2hhbCBLb3V0bsO9IDxta291dG55
QHN1c2UuY29tPiB3cm90ZToKPgo+IEhlbGxvLgo+Cj4gT24gVHVlLCBEZWMgMjYsIDIwMjMgYXQg
MDg6MDE6NTVQTSArMDAwMCwgUGFzaGEgVGF0YXNoaW4gPHBhc2hhLnRhdGFzaGluQHNvbGVlbi5j
b20+IHdyb3RlOgo+ID4gVGhpcyBwYXRjaCBzZXJpZXMgc29sdmVzIHRoaXMgcHJvYmxlbSBieSBh
ZGRpbmcgYm90aCBvYnNlcnZhYmlsaXR5IHRvCj4gPiBhbGwgcGFnZXMgdGhhdCBhcmUgYWxsb2Nh
dGVkIGJ5IElPTU1VLCBhbmQgYWxzbyBhY2NvdW50YWJpbGl0eSwgc28KPiA+IGFkbWlucyBjYW4g
bGltaXQgdGhlIGFtb3VudCBpZiB2aWEgY2dyb3Vwcy4KPgo+IE1heWJlIHRoaXMgaXMgYSBtaXNt
YXRjaCBpbiB2b2NhYnVsYXJ5IHdoYXQgeW91IG1lYW4gYnkgdGhlIHZlcmIKPiAibGltaXQiLiBC
dXQgSSBkb24ndCBzZWUgaW4gdGhlIHBhdGNoc2V0IHRoYXQgdGhlIG9mZmVuZGluZyBwYWdlcyB3
b3VsZAo+IGJlIGFsbG9jYXRlZCB3aXRoIEdGUF9BQ0NPVU5ULiBTbyB0aGUgcmVzdWx0IGlzIHRo
YXQgdGhlIHBhZ2VzIGFyZQo+IGFjY291bnRlZCAoeW91IGNhbiB2aWV3IHRoZSBhbW91bnQgaW4g
bWVtb3J5LnN0YXQpIGJ1dCB0aGV5IGFyZSBub3QKPiBzdWJqZWN0IHRvIG1lbWNnIGxpbWl0cy4K
Pgo+IElzIHRoYXQgd2hhdCB5b3UgaW50ZW5kPwoKSGkgTWljaGFsLAoKVGhhbmsgeW91IGZvciB0
YWtpbmcgYSBsb29rIGF0IHRoaXMuIFRoZSB0d28gcGF0Y2hlcyBbMV0gWzJdIHdoaWNoIGFkZApH
RlBfS0VSTkVMX0FDQ09VTlQgd2VyZSBzZW50IHNlcGFyYXRlIGZyb20gdGhpcyBzZXJpZXMgYXQg
cmVxdWVzdCBvZgpyZXZpZXdlcnM6CgpQYXNoYQoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3Jn
L2xpbnV4LW1tLzIwMjMxMjI2MTgyODI3LjI5NDE1OC0xLXBhc2hhLnRhdGFzaGluQHNvbGVlbi5j
b20KWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LW1tLzIwMjMxMTMwMjAwOTAwLjIz
MjA4MjktMS1wYXNoYS50YXRhc2hpbkBzb2xlZW4uY29tCgo+Cj4KPiBSZWdhcmRzLAo+IE1pY2hh
bAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
