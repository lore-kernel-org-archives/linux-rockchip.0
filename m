Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B64FFCCD1BF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Oct 2025 19:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZAYfOLAhfyQIlewyxeu6/MpqDnd2wvHBqmziIQRQZg8=; b=0ms95268xCI7Cj
	MqDZEnLiR9HQWiSEoHh84zUQdrmotWkdQQwFHCIjBIA31LMSBf636pjq2ggxnKgKrOUjTz+0v3xsN
	IjggSxeOZqAubh46UYgl2EDrQEk6WWJhEmznqfYKoafsz7uS5RKH4Ph5dEC5AEL0ziQeOQTGwVtQW
	kCfOcirCNv0c0+RXsxt8XRjrm4A6OsNlpuhpYD8OAufe9rK4SSaj2CQYVFntjKnGbKDLv7oH+F58D
	BpFocquMVXANGb2Up/xohxpjE1XXd0ziaLFEBRVLNoFPNovNlnm8TcUpeQjrtcgh+JA4spCOD39Le
	KwoXV2+7s2wo7/2rRRRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCNTM-0000000ANQ4-3ojb;
	Fri, 24 Oct 2025 19:29:12 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCNTL-0000000ANPv-3yPs
	for linux-rockchip@bombadil.infradead.org;
	Fri, 24 Oct 2025 19:29:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Ggn924Jo/a6Uw5L8/KmtY5GySzQfHwM27dKTjuJUgLA=; b=HYvKd5pw4rCmyaT7h2OHUZ1m3T
	oAuVQsAwA1Lu4uw9G/CG8Xbmgk+7OJd3r63IOqVGZ/4buHbUc2b63yYs+X6deUnyEEUCwC7fXSxz3
	lfkHBnaLzgqIS3HZnDIAjzX35K1KmDhCU34citIsQX+xaHTnjQq1ELZD97lcXobkHKeDHp34hEeWM
	VUpm0MbTdaL1/AqWYpyGTG9OVRNfG8NGMoUUYc9WprRbzAL3u1xKIzfEOt3nzCbTlF9aMTMFYfV2t
	+hyHJv1s2NsWjMbPrgwzl7cjUs5e8S6XoJvFqgosp1oMnAw7dfWBhb04lgFZHpfBJmWPqF2miupL8
	HP9Eegqg==;
Received: from sea.source.kernel.org ([172.234.252.31])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCMbf-00000002V6g-0RTf
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Oct 2025 18:33:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id DCC6A438BD;
	Fri, 24 Oct 2025 19:29:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 919E5C4CEF1;
	Fri, 24 Oct 2025 19:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761334144;
	bh=N5IIqjmOeWmLOz2zHVxqEA+WLcaesU5e/utvVwXoDkA=;
	h=Date:From:To:Cc:Subject:From;
	b=jpjzvzA1haU4EZKYPT016IUISm/tXebW5eU1fIiWnCJpsXoXf1t6Q7nAERG06TFYw
	 2g7TYeXPbCeNxibyuMz1D18FSfzzQilOj2bHhL6ixjwhHqExW4YMWp1kLp9L0RGxCj
	 W5ux/6aSa7HWxGQvM06f3Fv8hA5oOnSoPE8cSq9cCH62RwrWSsSrRVpL3XVVFHY3nz
	 zjZR5SbdW3WYzyAdVdytz1atd1iXpEr38IO7x7R/KgTIEmsidbDZFvQKK+xv8PDbYf
	 bkTo2jj1VHWhpXiDVHGQ7C69rCFGL/QzKvKL1btgFoiS3h1BBQflOm+Mao1p3231nq
	 b8qNc1Jo7v+5A==
Date: Fri, 24 Oct 2025 14:29:03 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
	Ron Economos <re@w6rz.net>, "Maciej W. Rozycki" <macro@orcam.me.uk>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Christian Zigotzky <chzigotzky@xenosoft.de>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Herve Codina <herve.codina@bootlin.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Dragan Simic <dsimic@manjaro.org>, Johan Hovold <johan@kernel.org>,
	linuxppc-dev@lists.ozlabs.org, linux-rockchip@lists.infradead.org,
	linux-mips@vger.kernel.org
Subject: [GIT PULL] PCI fixes for v6.18
Message-ID: <20251024192903.GA1360890@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_193343_546345_D2AA3D3A 
X-CRM114-Status: UNSURE (   7.87  )
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

VGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCAzYTg2NjA4Nzg4MzlmYWFkYjRmMWE2
ZGQ3MmMzMTc5YzFkZjU2Nzg3OgoKICBMaW51eCA2LjE4LXJjMSAoMjAyNS0xMC0xMiAxMzo0Mjoz
NiAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBnaXQ6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvcGNpL3BjaS5naXQgdGFn
cy9wY2ktdjYuMTgtZml4ZXMtMwoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIGRmNTE5
MmQ5YmIwZTM4YmY4MzFmYjkzZTgwMjZlMzQ2YWEwMTdjYTg6CgogIFBDSS9BU1BNOiBFbmFibGUg
b25seSBMMHMgYW5kIEwxIGZvciBkZXZpY2V0cmVlIHBsYXRmb3JtcyAoMjAyNS0xMC0yMyAyMDow
ODoxNCAtMDUwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0KCi0gQWRkIERXQyBjdXN0b20gcGNpX29wcyBmb3IgdGhlIHJv
b3QgYnVzIGluc3RlYWQgb2Ygb3ZlcndyaXRpbmcgdGhlIERCSQogIGJhc2UgYWRkcmVzcywgd2hp
Y2ggYnJva2UgZHJpdmVycyB0aGF0IHJlbHkgb24gdGhlIERCSSBhZGRyZXNzIGZvciBpQVRVCiAg
cHJvZ3JhbW1pbmc7IGZpeGVzIGFuIEZVNzQwIHByb2JlIHJlZ3Jlc3Npb24gKEtyaXNobmEgQ2hh
aXRhbnlhIENodW5kcnUpCgotIFJldmVydCBxY29tIEVDQU0gZW5hYmxlbWVudCwgd2hpY2ggaXMg
cmVuZGVyZWQgdW5uZWNlc3NhcnkgYnkgdGhlIERXQwogIGN1c3RvbSBwY2lfb3BzIChLcmlzaG5h
IENoYWl0YW55YSBDaHVuZHJ1KQoKLSBGaXggbG9uZ3N0YW5kaW5nIE1JUFMgTWFsdGEgcmVzb3Vy
Y2UgcmVnaXN0cmF0aW9uIGlzc3VlcyB0byBhdm9pZAogIGV4cG9zaW5nIHRoZW0gd2hlbiB0aGUg
bmV4dCBjb21taXQgZml4ZXMgdGhlIGJvb3QgZmFpbHVyZSAoTWFjaWVqIFcuCiAgUm96eWNraSkK
Ci0gVXNlIHBjaWJpb3NfYWxpZ25fcmVzb3VyY2UoKSBvbiBNSVBTIE1hbHRhIHRvIGZpeCBib290
IGZhaWx1cmUgY2F1c2VkIGJ5CiAgdXNpbmcgdGhlIGdlbmVyaWMgcGNpX2VuYWJsZV9yZXNvdXJj
ZXMoKSAoSWxwbyBKw6RydmluZW4pCgotIEVuYWJsZSBvbmx5IEFTUE0gTDBzIGFuZCBMMSwgbm90
IEwxIFBNIFN1YnN0YXRlcywgZm9yIGRldmljZXRyZWUKICBwbGF0Zm9ybXMgYmVjYXVzZSB3ZSBs
YWNrIGluZm9ybWF0aW9uIHJlcXVpcmVkIHRvIGNvbmZpZ3VyZSBMMSBTdWJzdGF0ZXM7CiAgZml4
ZXMgcmVncmVzc2lvbnMgb24gcG93ZXJwYyBhbmQgcm9ja2NoaXAuICBBIHFjb20gcmVncmVzc2lv
biAoTDEKICBTdWJzdGF0ZXMgbm8gbG9uZ2VyIGVuYWJsZWQpIHJlbWFpbnMgYW5kIHdpbGwgYmUg
YWRkcmVzc2VkIG5leHQgKEJqb3JuCiAgSGVsZ2FhcykKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KQmpvcm4gSGVsZ2FhcyAo
MSk6CiAgICAgIFBDSS9BU1BNOiBFbmFibGUgb25seSBMMHMgYW5kIEwxIGZvciBkZXZpY2V0cmVl
IHBsYXRmb3JtcwoKSWxwbyBKw6RydmluZW4gKDEpOgogICAgICBNSVBTOiBNYWx0YTogVXNlIHBj
aWJpb3NfYWxpZ25fcmVzb3VyY2UoKSB0byBibG9jayBpbyByYW5nZQoKS3Jpc2huYSBDaGFpdGFu
eWEgQ2h1bmRydSAoMik6CiAgICAgIFBDSTogZHdjOiBVc2UgY3VzdG9tIHBjaV9vcHMgZm9yIHJv
b3QgYnVzIERCSSB2cyBFQ0FNIGNvbmZpZyBhY2Nlc3MKICAgICAgUmV2ZXJ0ICJQQ0k6IHFjb206
IFByZXBhcmUgZm9yIHRoZSBEV0MgRUNBTSBlbmFibGVtZW50IgoKTWFjaWVqIFcuIFJvenlja2kg
KDIpOgogICAgICBNSVBTOiBNYWx0YTogRml4IGtleWJvYXJkIHJlc291cmNlIHByZXZlbnRpbmcg
aTgwNDIgZHJpdmVyIGZyb20gcmVnaXN0ZXJpbmcKICAgICAgTUlQUzogTWFsdGE6IEZpeCBQQ0kg
c291dGhicmlkZ2UgbGVnYWN5IHJlc291cmNlIHJlc2VydmF0aW9ucwoKIGFyY2gvbWlwcy9tdGkt
bWFsdGEvbWFsdGEtc2V0dXAuYyAgICAgICAgICAgICAgICAgfCAgNCArLQogYXJjaC9taXBzL3Bj
aS9wY2ktbWFsdGEuYyAgICAgICAgICAgICAgICAgICAgICAgICB8ICAzICstCiBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9wY2llLWRlc2lnbndhcmUtaG9zdC5jIHwgMjggKysrKysrKystLQog
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1xY29tLmMgICAgICAgICAgICB8IDY4IC0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL3BjaS9wY2llL2FzcG0uYyAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwgMzQgKysrLS0tLS0tLS0tCiA1IGZpbGVzIGNoYW5nZWQsIDM2IGlu
c2VydGlvbnMoKyksIDEwMSBkZWxldGlvbnMoLSkKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
