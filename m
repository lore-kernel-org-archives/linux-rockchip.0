Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 728AFC369C2
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 May 2025 14:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3qcshV7ZbaPDLZvXpEMS4UMa9+d07nvB7l8Wfi7lqw=; b=ji1y0NuuxkwMoM
	xmjq3gmi6944RESZ04tp0X5twUARgoH8jnEfMQJ3Y3Mb02OLAl5vjhoRQfLwirS+aO4cFTXxUoUNV
	HjhcaTx6JHJoQHHSoaIbdk85xxZpIhBB6NH5xg1zUd2jDx0kmernb7te5DuuWIraouDbW4SypQb/m
	2zukkd+AOWCNxkMXIoBwTGHBCFIh6dwU63IAFjTevMFYoyiYBekKV+UYutwGr6Rag+0/QOH4UxR5e
	jHEeRDv+W3cLSP1Sg99fWIRcrfG0uno6/rQYib/RnDm6C7q4MnJ5Hf2rKeoRZVVDqhF4YFNLUJ2Gl
	aLY6E5IZnSx7IaEG92pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBE6T-00000003yxJ-0Dsf;
	Sat, 03 May 2025 14:44:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBE4X-00000003ytu-1UJb;
	Sat, 03 May 2025 14:42:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=EjcDYrHrfsWdwpPP6OffxdP9Ov3fR2yq6A3OOg3IpEs=; b=OI1C6deSV2rWXR8k0KU0g8khKJ
	2sJvPWd5Ln1aVYQ0KnzPXCsLnES7wzDbFTx/hdw0xEOoQo+c4iFZuc2dk0gmLaG/XeH4NRam2M5C9
	ggk629MgT719kvU5Hn2c3ZENEVmx2NwqZBAZtU3UsCYEN7vVhLq+oKdqwRMfKvrhexLe51Jv1nqGO
	dJZQQjUXKQsakZtsUZ0rT69kpHy/thv6c/+qM5GDXyymd2eBKFrQwhPc5/9XIr4T4Y+D1ZYHEDeNp
	rLRd0jjvYFk6tpWTqBASNLP81rNFuYROAB4Dg0x2qBAQLS+qURON1sgvCJFLSRyCvQKnbfA6HQwLU
	zPt78tEA==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uBE45-0003pc-JE; Sat, 03 May 2025 16:42:05 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 hjc@rock-chips.com, mripard@kernel.org, neil.armstrong@linaro.org,
 dmitry.baryshkov@oss.qualcomm.com, knaerzche@gmail.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v4 0/7] Convert inno hdmi to drm bridge
Date: Sat, 03 May 2025 16:42:04 +0200
Message-ID: <9503607.rMLUfLXkoz@diego>
In-Reply-To: <20250422070455.432666-1-andyshrk@163.com>
References: <20250422070455.432666-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250503_074233_414030_E2E49E52 
X-CRM114-Status: GOOD (  17.58  )
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

QW0gRGllbnN0YWcsIDIyLiBBcHJpbCAyMDI1LCAwOTowNDozOSBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEFuZHkgWWFuOgo+IEZyb206IEFuZHkgWWFuIDxhbmR5LnlhbkBy
b2NrLWNoaXBzLmNvbT4KPiAKPiBXaGVuIHByZXBhcmluZyB0byBjb252ZXJ0IHRoZSBjdXJyZW50
IGlubm8gaGRtaSBkcml2ZXIgaW50byBhCj4gYnJpZGdlIGRyaXZlciwgSSBmb3VuZCB0aGF0IHRo
ZXJlIGFyZSBzZXZlcmFsIGlzc3VlcyBjdXJyZW50bHkKPiBleGlzdGluZyB3aXRoIGl0Ogo+IAo+
IDEuIFdoZW4gdGhlIHN5c3RlbSBzdGFydHMgdXAsIHRoZSBmaXJzdCB0aW1lIGl0IHJlYWRzIHRo
ZSBFRElELCBpdAo+ICAgIHdpbGwgZmFpbC4gVGhpcyBpcyBiZWNhdXNlIFJLMzAzNiBIRE1JIERE
QyBidXMgcmVxdWlyZXMgaXQncyBQSFkncwo+ICAgIHJlZmVyZW5jZSBjbG9jayB0byBiZSBlbmFi
bGVkIGZpcnN0IGJlZm9yZSBub3JtYWwgRERDIGNvbW11bmljYXRpb24KPiAgICBjYW4gYmUgY2Fy
cmllZCBvdXQuCj4gCj4gMi4gVGhlIHNpZ25hbCBpcyB1bnN0YWJsZS4gV2hlbiBydW5uaW5nIHRo
ZSBnbG1hcmsyIHRlc3Qgb24gdGhlIHNjcmVlbiwKPiAgICB0aGVyZSBpcyBhIHNtYWxsIHByb2Jh
YmlsaXR5IG9mIHNlZWluZyBzb21lIHNjcmVlbiBmbGlja2VyaW5nLgo+ICAgIFRoaXMgaXMgYmVj
YXVzZSBUaGUgSFNZTkMvVlNZTkMgcG9sYXJpdHkgb2YgcmszMDM2IEhETUkgYXJlIGNvbnRyb2xs
ZWQKPiAgICBieSBHUkYuIFRoaXMgcGFydCBpcyBtaXNzaW5nIGluIHRoZSBjdXJyZW50IGRyaXZl
ci4KPiAKPiBQQVRDSCAxfjYgYXJlIHRyeSB0byBGaXggRG9jdW1lbnQgaW4gdGhlIGR0LWJpbmRp
bmcsIHRoZW4gYWRkIHRoZQo+IG1pc3NpbmcgcGFydCBpbiBkcml2ZXIgYW5kIGR0cy4KPiBQQVRD
SCA3IGNvbnZlcnRzIHRoZSBjdXJyZW4gZHJpdmVyIHRvIGRybSBicmlkZ2UgbW9kZS4KCkFmdGVy
IHJlc3VycmVjdGluZyBteSByazMwMzYta3lsaW4gd2hpY2ggaGFzbid0IHN1Y2Vzc2Z1bGx5IGJv
b3RlZCBpbiBhCndoaWxlLCBJIGNvdWxkIHZlcnlpZnkgdGhpcyBzZXJpZXMsIHNvIG9uIGEgcmsz
MDM2LWt5bGluCgpUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoK
SSdsbCBwcm9iYWJseSBhcHBseSBwYXRjaGVzIDEtNCB0byBkcm0tbWlzYyBsYXRlciB0b2RheSwg
YXMgdGhhdCBzb2xlbHkKdG91Y2hlcyB0aGUgUm9ja2NoaXAgKGFuZCBvbmx5IHJrMzAzNi0pc2lk
ZSBhbmQgcGF0Y2hlcyA1KzYgdG8gdGhlCnJvY2tjaGlwIHRyZWUuCgpQYXRjaCA3IHNob3VsZCBw
cm9iYWJseSBnZXQgc29tZSBhdHRlbnRpb24gYnkgcGVvcGxlIG1vcmUgZmFtaWxpYXIgd2l0aApk
cm0tYnJpZGdlcywgc28gSSdsbCBsZXQgdGhhdCBzaXQgZm9yIGEgYml0IGxvbmdlci4KCgpUaGFu
a3MgYSBsb3QgZm9yIHdvcmtpbmcgb24gYWxsIHRoaXMKSGVpa28KCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
