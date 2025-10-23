Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B386CCD193
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 07:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1RZInMtRldj0zqHMzayzdjlK93D4RsciCWIIWpAuWo=; b=HBBnkRyqn1MCLS
	2aJVYFLVBfksXfFtWbs7T9WZbSNsemZp4Vx4yOZ75nYE/3WmivhESYvq1rnghLXbTNi49zJJYpxHa
	IcCTxUn1rF/iQUjZvW/7/5UvwJJ1flLkchg2RVnp7Q1G8MnRPcor37dos6SHiiRv8O0PEtJiRe1wp
	yGb3+KytlG3BEtH4/DmuAJpuPmrFqkrunt2TnvfOA8ufic/iGV+Tkhj/S9M2SsfbvMr6lxjAPv3WS
	ppxzftzkFITwjTzuIZP2rdsR+TCe12kqRJVb3HEcL+2wFd6Dbe5WSgXn4Hw6CWdoXn/SGrvd9GUba
	zfnpV484aR4OG2QN/3qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBpbh-00000005KZK-0K9C;
	Thu, 23 Oct 2025 07:19:33 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBpbe-00000005KXf-2hfb;
	Thu, 23 Oct 2025 07:19:31 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1761203954; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bsCzS5MDHjxtBJy/3QQFflmrjRjP7+ij7mjvcpmJiVSO9IBjSQQM5C+NSbK6yoChcyE93a8+bTAr7+kIVJWRULaFPG11IwMZ3WWzoX6SRUIHDMxK/i5cFrX6ehbezhmHibQdMECFR8H03JqtHlDHDKEbPztexGSzIGjf9oMA6nk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1761203954; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=SF5pybulDBHW18c8HlGOwb18Vw0zJMzWb3/sOP7yWg4=; 
	b=K6gwCYSwTLEtYSOy4h2jFuHn+3XWcEyPbxPsb1wQlGLIbF5+/BgBuUMey41TiyBaXduGmi2nM8ks69qEK9ix1B5w2w2e+J3ILdm6WHoGf1PwON8jxd0fd0li8TCyDuIHDPiA8DlhlFW1pUeFUSkTQoNXINUVDOKyCp2tTWEgHdw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1761203954;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=SF5pybulDBHW18c8HlGOwb18Vw0zJMzWb3/sOP7yWg4=;
	b=iKy0yYd5IOtoKBRwSPCKhVi9FFId6Ye3aOop8qPa2+O2cHYN3UWhjtdHh4X1+yjG
	Q0AJNOmzRt4ophYTGgJDDO6C9IjCLulhIKjVwwj6tAxj0imhEVNGEc4Noq3KBRtoIqL
	2Kp8ddw0qOQjca+mU5BsgLOAxGQn4mdxpS/Qhj0s=
Received: by mx.zohomail.com with SMTPS id 1761203953036917.0062959568356;
	Thu, 23 Oct 2025 00:19:13 -0700 (PDT)
Message-ID: <40d18130-4aab-47ad-9ed4-00ff6f594cc3@collabora.com>
Date: Thu, 23 Oct 2025 10:19:06 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/rockchip: Set VOP for the DRM DMA device
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Daniel Stone <daniels@collabora.com>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <20251022161948.199731-1-dmitry.osipenko@collabora.com>
 <3705026.LM0AJKV5NW@phil>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <3705026.LM0AJKV5NW@phil>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251023_001930_724196_1FB5C87D 
X-CRM114-Status: GOOD (  12.43  )
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

T24gMTAvMjMvMjUgMDk6NTYsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+IEhpIERtaXRyeSwKPiAK
PiBBbSBNaXR0d29jaCwgMjIuIE9rdG9iZXIgMjAyNSwgMTg6MTk6NDggTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBEbWl0cnkgT3NpcGVua286Cj4+IFVzZSBWT1AgZm9yIERN
QSBvcGVyYXRpb25zIHBlcmZvcm1lZCBieSBEUk0gY29yZS4gUm9ja2NoaXAgRFJNIGRyaXZlcgo+
PiBpcyBiYWNrZWQgYnkgYSB2aXJ0dWFsIGRldmljZSB0aGF0IGlzbid0IElPTU1VLWNhcGFibGUs
IHdoaWxlIFZPUCBpcyB0aGUKPj4gYWN0dWFsIGRpc3BsYXkgY29udHJvbGxlciBkZXZpY2UgYmFj
a2VkIGJ5IElPTU1VLiBGaXhlcyAic3dpb3RsYiBidWZmZXIKPj4gaXMgZnVsbCIgd2FybmluZyBt
ZXNzYWdlcyBvcmlnaW5hdGVkIGZyb20gR0VNIHByaW1lIGNvZGUgcGF0aHMuCj4+Cj4+IE5vdGUs
IHRoYXQgYmFja3BvcnRpbmcgaXMgbm9uLXRyaXZpYWwgYXMgdGhpcyBkZXBlbmRzIG9uIDE0M2Vj
OGQzZjkzOTYKPj4gKCJkcm0vcHJpbWU6IFN1cHBvcnQgZGVkaWNhdGVkIERNQSBkZXZpY2UgZm9y
IGRtYS1idWYgaW1wb3J0cyIpLCB3aGljaAo+PiBsYW5kZWQgaW4gdjYuMTYgYW5kIDQyMWJlM2Vl
MzZhNCAoImRybS9yb2NrY2hpcDogUmVmYWN0b3IgSU9NTVUKPj4gaW5pdGlhbGlzYXRpb24iKSwg
d2hpY2ggbGFuZGVkIGluIHY1LjE5Lgo+Pgo+PiBSZXBvcnRlZC1ieTogRGFuaWVsIFN0b25lIDxk
YW5pZWxzQGNvbGxhYm9yYS5jb20+Cj4+IEZpeGVzOiAyMDQ4ZTMyODZmMzQgKCJkcm06IHJvY2tj
aGlwOiBBZGQgYmFzaWMgZHJtIGRyaXZlciIpCj4+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3Jn
ICMgdjYuMTYrCj4+IFJldmlld2VkLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxk
bWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4KPiAKPiBqdXN0IGEgcHJvY2VzcyByZW1hcmsg
Zm9yIG5vdy4gVGhpcyB2MSBzbyBpdCBkZWZpbml0bHkgc2hvdWxkbid0IGNvbWUKPiB3aXRoIGFu
eSBSZXZpZXdlZC1ieS1zIHByZS1hcHBsaWVkLCBiZWNhdXNlIHRoaXMgc2hvdWxkIGhhcHBlbiBp
biBwdWJsaWMuCj4gCj4gSXQncyBub3QgYSBodWdlIGlzc3VlIGhlcmUsIGJlY2F1c2UgSSBkbyB0
cnVzdCB0aGUgcGVvcGxlIGludm9sdmVkICh5b3UsCj4gU2ViYXN0aWFuLCBEYW5pZWwpIGFuZCB0
aGUgY2hhbmdlIGlzIHNtYWxsIGVub3VnaCwgYnV0IHBsZWFzZSBmb3IgZnV0dXJlCj4gY2hhbmdl
cywgbGV0IFJldmlldyBoYXBwZW4gb24gdGhlIGxpc3QsIG5vdCBvbiBwcml2YXRlIGNoYW5uZWxz
Lgo+IAo+IAo+IFdpbGwgbG9vayBhdCB0aGUgY2hhbmdlIGl0c2VsZiB3aGVuIGJhY2sgaG9tZS4K
ClRoYW5rcy4gSSBhbHNvIGZlbHQgdW5jb21mb3J0YWJsZSBhZGRpbmcgci1iIHRvIHYxLiBUaGVy
ZSB3YXMgbm8gbXVjaApkaXNjdXNzaW9uIG9uIHRoZSBjaGFuZ2UgdGhhdCB5b3UgY2FuIGZpbmQg
b24gWzFdIGFuZCB0aGUgY2hhbmdlIGlzCmluZGVlZCBzbWFsbCwgc28gSSBqdXN0IGFkZGVkIHRo
ZSByLWIuIFNob3VsZCd2ZSBsaW5rZWQgaXQgdGhlIHBhdGNoLgoKWzFdCmh0dHBzOi8vZ2l0bGFi
LmNvbGxhYm9yYS5jb20vaGFyZHdhcmUtZW5hYmxlbWVudC9yb2NrY2hpcC0zNTg4L2xpbnV4Ly0v
aXNzdWVzLzUwCgotLSAKQmVzdCByZWdhcmRzLApEbWl0cnkKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
