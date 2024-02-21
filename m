Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 314D7C48BF6
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 13:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6w2XWmCL/ah4kvW8c7chEr9CsVzkH4NHPkRZmGQ2A4=; b=w+EaFIGIhkpYfZ
	phrllWL9vRVSP0fm9LdsDmsE7/mXoOwt/0HTw1lp1Ho/Yyf2NKT30cJvt/47zb531/Ncek/a4XVeO
	QJl0ZTyz0pl72Dt7E0yhz0WRRt3bOMmSGOb+VP1ptcqqSTvEAONzEmqx0gFMuj+MQZ9a7YByAhFVg
	qW+X+KZdBT06aFDZYmtlUvcS24RZK8EoTsGRUp/fKIaUsWA4jo/Iup/omYuqG33FgFFAo74PBxv4O
	iLT2+l03wE6EhC9NFA0tM8gELQJ9jVQ0YcKO2jWb40RNr4o3+ttdrsaUsPIVZC2KXqiddh7KA0XAG
	mMTHO63TzvcRyMng9Y1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcmfH-0000000144q-47tr;
	Wed, 21 Feb 2024 13:29:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcmfF-000000013ul-1kpI
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Feb 2024 13:29:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id D5729614FA;
	Wed, 21 Feb 2024 13:29:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31A34C43390;
	Wed, 21 Feb 2024 13:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708522170;
	bh=1uXA3tuk5DSrYBKlcNHOd+IpgOiOvjcTfXfos632w+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YiBXL6VxZWpc4KOcEK2JVTNsblnglRNXqfOhTGNFEOOP3Z05SEHo/yJJZgGTfy6Yy
	 x5i2ENXsswo0PsZfBbOQAsZyHoNv/onQNmWuZpA+8n/oxElvFdoqRi0mzLwWVmnusP
	 4o020bDIPLnaGgwRaawuQ6ExPSxEwS9tjNHSOU3RRAgwx0t3fpNdN4N9xYYf8nH+f/
	 AOtHcMNsU9xJMldnzfakVY3MacOvm0l/CKsIgCAZnZ61GsXNnBfAEtA1aDxQgVd0+n
	 jM6rpcQZPk7BVwHx5KaEP4lSa8C5hCRPVxHKvPn3uCLDMLLgfnPAlq21qZXhNA05QB
	 jflhzGp8tFFOg==
Date: Wed, 21 Feb 2024 13:29:19 +0000
From: Will Deacon <will@kernel.org>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com,
	alyssa@rosenzweig.io, asahi@lists.linux.dev,
	baolu.lu@linux.intel.com, bhelgaas@google.com,
	cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com,
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de,
	iommu@lists.linux.dev, jernej.skrabec@gmail.com,
	jonathanh@nvidia.com, joro@8bytes.org,
	krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mm@kvack.org, linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org, lizefan.x@bytedance.com,
	marcan@marcan.st, mhiramat@kernel.org, m.szyprowski@samsung.com,
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com,
	samuel@sholland.org, suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org,
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org,
	yu-cheng.yu@intel.com, rientjes@google.com
Subject: Re: [PATCH v3 10/10] iommu: account IOMMU allocated memory
Message-ID: <20240221132919.GC7273@willie-the-truck>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <20231226200205.562565-11-pasha.tatashin@soleen.com>
 <20240213131210.GA28926@willie-the-truck>
 <CA+CK2bB4Z+z8tocO79AdsAy+gmN_4aVHgFUsm_gYLUJ2zV1A6A@mail.gmail.com>
 <20240216175752.GB2374@willie-the-truck>
 <CA+CK2bDURTkZFo9uE9Bgfrz-NwgXqo4SAzLOW6Jb35M+eqUEaA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+CK2bDURTkZFo9uE9Bgfrz-NwgXqo4SAzLOW6Jb35M+eqUEaA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_052933_564644_350B76B7 
X-CRM114-Status: GOOD (  27.83  )
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

T24gRnJpLCBGZWIgMTYsIDIwMjQgYXQgMDI6NDg6MDBQTSAtMDUwMCwgUGFzaGEgVGF0YXNoaW4g
d3JvdGU6Cj4gT24gRnJpLCBGZWIgMTYsIDIwMjQgYXQgMTI6NTjigK9QTSBXaWxsIERlYWNvbiA8
d2lsbEBrZXJuZWwub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBUdWUsIEZlYiAxMywgMjAyNCBhdCAx
MDo0NDo1M0FNIC0wNTAwLCBQYXNoYSBUYXRhc2hpbiB3cm90ZToKPiA+ID4gPiA+ICBTZWNQYWdl
VGFibGVzCj4gPiA+ID4gPiAtICAgICAgICAgICAgICBNZW1vcnkgY29uc3VtZWQgYnkgc2Vjb25k
YXJ5IHBhZ2UgdGFibGVzLCB0aGlzIGN1cnJlbnRseQo+ID4gPiA+ID4gLSAgICAgICAgICAgICAg
Y3VycmVudGx5IGluY2x1ZGVzIEtWTSBtbXUgYWxsb2NhdGlvbnMgb24geDg2IGFuZCBhcm02NC4K
PiA+ID4gPiA+ICsgICAgICAgICAgICAgIE1lbW9yeSBjb25zdW1lZCBieSBzZWNvbmRhcnkgcGFn
ZSB0YWJsZXMsIHRoaXMgY3VycmVudGx5IGluY2x1ZGVzCj4gPiA+ID4gPiArICAgICAgICAgICAg
ICBLVk0gbW11IGFuZCBJT01NVSBhbGxvY2F0aW9ucyBvbiB4ODYgYW5kIGFybTY0Lgo+ID4gPgo+
ID4gPiBIaSBXaWxsLAo+ID4gPgo+ID4gPiA+IFdoaWxlIEkgY2FuIHNlZSB0aGUgdmFsdWUgaW4g
dGhpcyBmb3IgSU9NTVUgbWFwcGluZ3MgbWFuYWdlZCBieSBWRklPLAo+ID4gPiA+IGRvZXNuJ3Qg
dGhpcyBlbmQgdXAgY29uZmxhdGluZyB0aGF0IHdpdGggdGhlIG5vcm1hbCBjYXNlIG9mIERNQSBk
b21haW5zPwo+ID4gPiA+IEZvciBzeXN0ZW1zIHRoYXQgZS5nLiByZWx5IG9uIGFuIElPTU1VIGZv
ciBmdW5jdGlvbmFsIGhvc3QgRE1BLCBpdCBzZWVtcwo+ID4gPiA+IHdyb25nIHRvIHN1YmplY3Qg
dGhhdCB0byBhY2NvdW50aW5nIGNvbnN0cmFpbnRzLgo+ID4gPgo+ID4gPiBUaGUgYWNjb3VudGlu
ZyBjb25zdHJhaW50cyBhcmUgb25seSBhcHBsaWNhYmxlIHdoZW4gR0ZQX0tFUk5FTF9BQ0NPVU5U
Cj4gPiA+IGlzIHBhc3NlZCB0byB0aGUgaW9tbXUgbWFwcGluZyBmdW5jdGlvbnMuIFdlIGRvIHRo
YXQgZnJvbSB0aGUgdmZpbywKPiA+ID4gaW9tbXVmZCwgYW5kIHZob3N0LiBXaXRob3V0IHRoaXMg
ZmxhZywgdGhlIG1lbW9yeSB1c2VhZ2UgaXMgcmVwb3J0ZWQKPiA+ID4gaW4gL3Byb2MvbWVtaW5m
byBhcyBwYXJ0IG9mICBTZWNQYWdlVGFibGVzIGZpZWxkLCBidXQgbm90IGNvbnN0cmFpbmVkCj4g
PiA+IGluIGNncm91cC4KPiA+Cj4gPiBUaGFua3MsIFBhc2hhLCB0aGF0IGV4cGxhbmF0aW9uIG1h
a2VzIHNlbnNlLiBJIHN0aWxsIGZpbmQgaXQgYml6YXJyZSB0bwo+ID4gaW5jbHVkZSBJT01NVSBh
bGxvY2F0aW9ucyBmcm9tIHRoZSBETUEgQVBJIGluIFNlY1BhZ2VUYWJsZXMgdGhvdWdoLCBhbmQK
PiA+IEkgd29ycnkgdGhhdCBpdCB3aWxsIGNvbmZ1c2UgcGVvcGxlIHdobyBhcmUgdXNpbmcgdGhh
dCBtZXRyaWMgYXMgYSB3YXkKPiA+IHRvIGdldCBhIGZlZWxpbmcgZm9yIGhvdyBtdWNoIG1lbW9y
eSBpcyBiZWluZyB1c2VkIGJ5IEtWTSdzIHNlY29uZGFyeQo+ID4gcGFnZS10YWJsZXMuIEFzIGFu
IGV4dHJlbWUgZXhhbXBsZSwgaGF2aW5nIGEgbm9uLXplcm8gU2VjUGFnZVRhYmxlcyBjb3VudAo+
ID4gd2l0aG91dCBLVk0gZXZlbiBjb21waWxlZCBpbiBpcyBwcmV0dHkgYml6YXJyZS4KPiAKPiBJ
IGFncmVlOyBJIGFsc28gcHJlZmVyIGEgbmV3IGZpZWxkIGluIC9wcm9jL21lbWluZm8gbmFtZWQK
PiAnSU9NTVVQYWdlVGFibGVzJy4gVGhpcyBpcyB3aGF0IEkgcHJvcG9zZWQgYXQgTFBDLCBidXQg
SSB3YXMgYXNrZWQgdG8KPiByZXVzZSB0aGUgZXhpc3RpbmcgJ1NlY1BhZ2VUYWJsZXMnIGZpZWxk
IGluc3RlYWQuIFRoZSByYXRpb25hbGUgd2FzCj4gdGhhdCAnc2Vjb25kYXJ5JyBpbXBsaWVzIG5v
dCBvbmx5IEtWTSBwYWdlIHRhYmxlcywgYnV0IGFueSBvdGhlcgo+IG5vbi1yZWd1bGFyIHBhZ2Ug
dGFibGVzLgo+IAo+IEkgd291bGQgYXBwcmVjaWF0ZSB0aGUgb3BpbmlvbiBvZiBJT01NVSBtYWlu
dGFpbmVycyBvbiB0aGlzOiBpcyBpdAo+IHByZWZlcmFibGUgdG8gYnVuZGxlIHRoZSBpbmZvcm1h
dGlvbiB3aXRoICdTZWNQYWdlVGFibGVzJyBvciBtYWludGFpbgo+IGEgc2VwYXJhdGUgZmllbGQ/
CgpJIHBlcnNvbmFsbHkgZmluZCBpdCBjb25mdXNpbmcgdG8gYWRkIGFsbCBJT01NVSBwYWdlLXRh
YmxlIGFsbG9jYXRpb25zCnRvIFNlY1BhZ2VUYWJsZXMsIGNvbnNpZGVyaW5nIHRoYXQgdXNlcnNw
YWNlIGNvdWxkIGJlIHVzaW5nIHRoYXQgdG9kYXkKd2l0aCBhIHJlYXNvbmFibGUgZXhwZWN0YXRp
b24gdGhhdCBpdCdzIGNvbmNlcm5lZCBvbmx5IHdpdGggdmlydHVhbAptYWNoaW5lIG92ZXJoZWFk
LiBIb3dldmVyLCBpZiB0aGUgb3Bwb3NpdGUgY29uY2x1c2lvbiB3YXMgcmVhY2hlZCBhdCBMUEMs
CnRoZW4gSSByZWFsbHkgZG9uJ3Qgd2FudCB0byByZS1vcGVuIHRoZSBkaXNjdXNzaW9uIGFuZCBk
ZXJhaWwgeW91cgpwYXRjaHNldC4KCldpbGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
