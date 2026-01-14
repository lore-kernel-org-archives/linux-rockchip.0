Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 683A5D37E2E
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 13:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=td0kGyroTXuzHK8FVNgmmYzAhtHFDM+0j7joi5KIjSM=; b=jbIjRWNdTwJia7
	r8WXos+4H8XpLr4y2nlIEkqHYEnSanD9KH/su/fc3YUi1YG5y7Ll009aKQAwguU2uLOuq3Md10lVc
	ow7sFxwyGU7FfbDpjPi23GVNkpK8p7a+Jd9ZcgmnPoK/aVRuC9RGkWS0DIlJJpLigD1JJZ06uKeLn
	3sL5NPmewItM6T3I2es8izDw58jEDC5ZZ1FtdApDXx5dPU4tP7XelBnufP6ZTmVeq+s8pzhez5Coj
	AkgD2UfKoZbWqgcdV6x2cJkwr7RRHSNaXTrKOQzxY1UwBiREPOd2ytPZcoLxyos42+r00EpkBUGIN
	kHIq3lB10HVygZH6HC1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg0ed-00000009Hbi-0wuN;
	Wed, 14 Jan 2026 13:11:19 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vg0eT-00000009HYz-2wUl;
	Wed, 14 Jan 2026 13:11:13 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1768396254; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=fzE7FgxAedH8uxX0VAeiDhzKipXVqRZ2kiSaXoud202thrp2+5O0CXyk+xIlkiRZd5FelhJ7OfDbg7xjDiPjBQHnMrFQA4eg5yMHe2vJFDsPFTzStZaMYkZ+0a6VwBMQrDybVis6CkxQNWYIKk2FvDI+mq8EJsjL31tFIBxCJhE=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1768396254; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=4hNT9bMCTFBIbSQvqXd0vDReNnQZh/9obugkKAGLY2o=; 
	b=Z3ypKbyrmN4UqyBQ/OpBF0Xt+PTnoN3lrsmi+bnS58U5VogPFE79P61hocJTfKf5V4yeQUd9Dfy44nOaW/WC25OHnrTWbgoBS3LtfodwTnaOr6emvOzBy7xsnqNFLv3pUEjJzX10wSd/uftfocWF4QyMhk9grdCDQXvxtzl1+lU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1768396254;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=4hNT9bMCTFBIbSQvqXd0vDReNnQZh/9obugkKAGLY2o=;
	b=X0ks54VN6tfrUJdG2MPakQ5UFB3h6zKvKNfKKUpWpfUgWbgTHNnEgeD2+PI0HybV
	/b/+j9T6abRwqDw2PyUsCs8QMYnRBo+QkfQoyl0BFB0gA9BjsbvJnHM3TbfTefcK6+5
	tNFmo4rlMi7g8x4CgqPkwptI/h8vsuTzlNYwEVbs=
Received: by mx.zohomail.com with SMTPS id 1768396253114813.88687353656;
	Wed, 14 Jan 2026 05:10:53 -0800 (PST)
Message-ID: <db0950f1-b357-47c2-9829-e33262ab456d@collabora.com>
Date: Wed, 14 Jan 2026 14:10:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/7] iommu: Add verisilicon IOMMU driver
To: Will Deacon <will@kernel.org>
Cc: joro@8bytes.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 kernel@collabora.com
References: <20260107101005.84039-1-benjamin.gaignard@collabora.com>
 <20260107101005.84039-4-benjamin.gaignard@collabora.com>
 <aWZui-rn5RDPwpEO@willie-the-truck>
 <68a49f8b-178c-4fa2-b4a9-315ad602271d@collabora.com>
 <aWeTQ50DOtntcniN@willie-the-truck>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <aWeTQ50DOtntcniN@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_051110_746956_E905CDAA 
X-CRM114-Status: GOOD (  21.35  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CkxlIDE0LzAxLzIwMjYgw6AgMTM6NTksIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4gT24gVHVl
LCBKYW4gMTMsIDIwMjYgYXQgMDU6MjU6MzhQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+IExlIDEzLzAxLzIwMjYgw6AgMTc6MTAsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4+
PiBIaSBCZW5qYW1pbiwKPj4+Cj4+PiBUaGFua3MgZm9yIHBvc3RpbmcgYSB2MTEuCj4+Pgo+Pj4g
T24gV2VkLCBKYW4gMDcsIDIwMjYgYXQgMTE6MDk6NTNBTSArMDEwMCwgQmVuamFtaW4gR2FpZ25h
cmQgd3JvdGU6Cj4+Pj4gVGhlIFZlcmlzaWxpY29uIElPTU1VIGhhcmR3YXJlIGJsb2NrIGNhbiBi
ZSBmb3VuZCBpbiBjb21iaW5hdGlvbgo+Pj4+IHdpdGggVmVyaXNpbGljb24gaGFyZHdhcmUgdmlk
ZW8gY29kZWNzIChlbmNvZGVycyBvciBkZWNvZGVycykgb24KPj4+PiBkaWZmZXJlbnQgU29Dcy4K
Pj4+PiBFbmFibGUgaXQgd2lsbCBhbGxvdyB1cyB0byB1c2Ugbm9uIGNvbnRpZ3VvdXMgbWVtb3J5
IGFsbG9jYXRvcnMKPj4+PiBmb3IgVmVyaXNpbGljb24gdmlkZW8gY29kZWNzLgo+Pj4+IElmIGJv
dGggZGVjb2RlciBhbmQgdGhpcyBpb21tdSBkcml2ZXIgYXJlIGNvbXBpbGVkIGhhcyBtb2R1bGVz
Cj4+Pj4gdGhlcmUgaXMgdW5kZWZpbmVkIHN5bWJvbGVzIGlzc3VlcyBzbyB0aGlzIGlvbW11IGRy
aXZlciBjb3VsZAo+Pj4+IG9ubHkgYmUgY29tcGlsZWQgaGFzIGJ1aWx0LWluLgo+Pj4+Cj4+Pj4g
U2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxh
Ym9yYS5jb20+Cj4+Pj4gLS0tCj4+Pj4gY2hhbmdlcyBpbiB2ZXJzaW9uIDExOgo+Pj4+IC0gRml4
IGRlcGVuZGVuY3kgaXNzdWUgd2hlbiBkZWNvZGVyIGRyaXZlciBpcyBidWlsZCBhcyBtb2R1bGUu
Cj4+Pj4KPj4+PiAgICBkcml2ZXJzL2lvbW11L0tjb25maWcgICAgIHwgIDExICsKPj4+PiAgICBk
cml2ZXJzL2lvbW11L01ha2VmaWxlICAgIHwgICAxICsKPj4+PiAgICBkcml2ZXJzL2lvbW11L3Zz
aS1pb21tdS5jIHwgODA4ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4+
Pj4gICAgaW5jbHVkZS9saW51eC92c2ktaW9tbXUuaCB8ICAyMSArCj4+Pj4gICAgNCBmaWxlcyBj
aGFuZ2VkLCA4NDEgaW5zZXJ0aW9ucygrKQo+Pj4+ICAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2lvbW11L3ZzaS1pb21tdS5jCj4+Pj4gICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUv
bGludXgvdnNpLWlvbW11LmgKPj4+IEJhc2VkIG9uIHlvdXIgcmVwbHkgdG8gdjk6Cj4+Pgo+Pj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzBlZmY4YjFhLWM0NWYtNDdiMS1hODcxLTU5ZjRh
MDEwMWYwZkBjb2xsYWJvcmEuY29tLwo+Pj4KPj4+IEkgdG9vayBhbm90aGVyIGxvb2sgYXQgdGhp
cyB0byBzZWUgd2hldGhlciBpdCBoYWQgY2hhbmdlZCBzaWduaWZpY2FudGx5Cj4+PiBmcm9tIHY2
IHdoZW4gY29tcGFyZWQgdG8gdGhlIHJvY2tjaGlwIGRyaXZlci4gU2FkbHksIHRoZXkgc3RpbGwg
bG9vawo+Pj4gdmVyeSBzaW1pbGFyIHRvIG1lIGFuZCBJIGNvbnRpbnVlIHRvIHN1c3BlY3QgdGhh
dCB0aGUgaGFyZHdhcmUgaXMgYQo+Pj4gZGVyaXZhdGl2ZS4gSSByZWFsbHkgZG9uJ3QgdW5kZXJz
dGFuZCB3aHkgaGF2aW5nIGEgc2hhcmVkIGltcGxlbWVudGF0aW9uCj4+PiBvZiB0aGUgZGVmYXVs
dCBkb21haW4gb3BzIGlzIGRpZmZpY3VsdCBvciBjb250cm92ZXJzaWFsLiBIYXZlIHlvdSB0cmll
ZAo+Pj4gdG8gd3JpdGUgaXQ/Cj4+Pgo+Pj4gSG93ZXZlciwgZ2l2ZW4gdGhhdCBub2JvZHkgZnJv
bSB0aGUgUm9ja2NoaXAgc2lkZSBoYXMgY29udHJpYnV0ZWQgdG8gdGhlCj4+PiBkaXNjdXNzaW9u
IGFuZCB5b3UgY2xhaW0gdGhhdCB0aGlzIGlzIGEgZGlzdGluY3QgcGllY2Ugb2YgSVAsIEkgZG9u
J3QKPj4+IHdhbnQgdG8gYmxvY2sgdGhlIG1lcmdpbmcgb2YgdGhlIGRyaXZlciBieSBsZWF2aW5n
IHRoZSBjb252ZXJzYXRpb24KPj4+IGhhbmdpbmcuCj4+Pgo+Pj4gVGhlcmUgaXMgc3RpbGwgb25l
IHRoaW5nIEkgZG9uJ3QgdW5kZXJzdGFuZCAod2hpY2gsIGFtdXNpbmdseSwgdGhlCj4+PiByb2Nr
Y2hpcCBkcml2ZXIgZG9lc24ndCBzZWVtIHRvIHN1ZmZlciBmcm9tKToKPj4+Cj4+Pj4gK3N0YXRp
YyB2b2lkIHZzaV9pb21tdV9mbHVzaF90bGJfYWxsKHN0cnVjdCBpb21tdV9kb21haW4gKmRvbWFp
bikKPj4+PiArewo+Pj4+ICsJc3RydWN0IHZzaV9pb21tdV9kb21haW4gKnZzaV9kb21haW4gPSB0
b192c2lfZG9tYWluKGRvbWFpbik7Cj4+Pj4gKwlzdHJ1Y3QgbGlzdF9oZWFkICpwb3M7Cj4+Pj4g
Kwl1bnNpZ25lZCBsb25nIGZsYWdzOwo+Pj4+ICsKPj4+PiArCXNwaW5fbG9ja19pcnFzYXZlKCZ2
c2lfZG9tYWluLT5sb2NrLCBmbGFncyk7Cj4+Pj4gKwo+Pj4+ICsJbGlzdF9mb3JfZWFjaChwb3Ms
ICZ2c2lfZG9tYWluLT5pb21tdXMpIHsKPj4+PiArCQlzdHJ1Y3QgdnNpX2lvbW11ICppb21tdTsK
Pj4+PiArCQlpbnQgcmV0Owo+Pj4+ICsKPj4+PiArCQlpb21tdSA9IGxpc3RfZW50cnkocG9zLCBz
dHJ1Y3QgdnNpX2lvbW11LCBub2RlKTsKPj4+PiArCQlyZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9h
bmRfZ2V0KGlvbW11LT5kZXYpOwo+Pj4+ICsJCWlmIChyZXQgPCAwKQo+Pj4+ICsJCQljb250aW51
ZTsKPj4+PiArCj4+Pj4gKwkJc3Bpbl9sb2NrKCZpb21tdS0+bG9jayk7Cj4+Pj4gKwo+Pj4+ICsJ
CXdyaXRlbChWU0lfTU1VX0JJVF9GTFVTSCwgaW9tbXUtPnJlZ3MgKyBWU0lfTU1VX0ZMVVNIX0JB
U0UpOwo+Pj4+ICsJCXdyaXRlbCgwLCBpb21tdS0+cmVncyArIFZTSV9NTVVfRkxVU0hfQkFTRSk7
Cj4+Pj4gKwo+Pj4+ICsJCXNwaW5fdW5sb2NrKCZpb21tdS0+bG9jayk7Cj4+Pj4gKwkJcG1fcnVu
dGltZV9wdXRfYXV0b3N1c3BlbmQoaW9tbXUtPmRldik7Cj4+Pj4gKwl9Cj4+Pj4gKwo+Pj4+ICsJ
c3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmdnNpX2RvbWFpbi0+bG9jaywgZmxhZ3MpOwo+Pj4+ICt9
Cj4+PiBbLi4uXQo+Pj4KPj4+PiArc3RhdGljIGNvbnN0IHN0cnVjdCBpb21tdV9vcHMgdnNpX2lv
bW11X29wcyA9IHsKPj4+PiArCS5pZGVudGl0eV9kb21haW4gPSAmdnNpX2lkZW50aXR5X2RvbWFp
biwKPj4+PiArCS5yZWxlYXNlX2RvbWFpbiA9ICZ2c2lfaWRlbnRpdHlfZG9tYWluLAo+Pj4+ICsJ
LmRvbWFpbl9hbGxvY19wYWdpbmcgPSB2c2lfaW9tbXVfZG9tYWluX2FsbG9jX3BhZ2luZywKPj4+
PiArCS5vZl94bGF0ZSA9IHZzaV9pb21tdV9vZl94bGF0ZSwKPj4+PiArCS5wcm9iZV9kZXZpY2Ug
PSB2c2lfaW9tbXVfcHJvYmVfZGV2aWNlLAo+Pj4+ICsJLnJlbGVhc2VfZGV2aWNlID0gdnNpX2lv
bW11X3JlbGVhc2VfZGV2aWNlLAo+Pj4+ICsJLmRldmljZV9ncm91cCA9IGdlbmVyaWNfc2luZ2xl
X2RldmljZV9ncm91cCwKPj4+PiArCS5vd25lciA9IFRISVNfTU9EVUxFLAo+Pj4+ICsJLmRlZmF1
bHRfZG9tYWluX29wcyA9ICYoY29uc3Qgc3RydWN0IGlvbW11X2RvbWFpbl9vcHMpIHsKPj4+PiAr
CQkuYXR0YWNoX2RldgkJPSB2c2lfaW9tbXVfYXR0YWNoX2RldmljZSwKPj4+PiArCQkubWFwX3Bh
Z2VzCQk9IHZzaV9pb21tdV9tYXAsCj4+Pj4gKwkJLnVubWFwX3BhZ2VzCQk9IHZzaV9pb21tdV91
bm1hcCwKPj4+PiArCQkuZmx1c2hfaW90bGJfYWxsCT0gdnNpX2lvbW11X2ZsdXNoX3RsYl9hbGws
Cj4+PiBUaGlzIGhhcyBubyBjYWxsZXJzIGFuZCBzbyB5b3VyIHVubWFwIHJvdXRpbmUgYXBwZWFy
cyB0byBiZSBicm9rZW4uCj4+IEl0IGlzIGEgbGVmdG92ZXIgb2YgcHJldmlvdXMgYXR0ZW1wdCB0
byBhbGxvdyB2aWRlbyBkZWNvZGVyIHRvIGNsZWFuL2ZsdXNoCj4+IHRoZSBpb21tdSBieSB1c2lu
ZyBhIGZ1bmN0aW9uIGZyb20gdGhlIEFQSS4KPj4gTm93IGl0IGlzIHVzaW5nIHZzaV9pb21tdV9y
ZXN0b3JlX2N0eCgpLgo+PiBJIHdoaWxlIHJlbW92ZSBpdCBpbiB2ZXJzaW9uIDEyLgo+IERvbid0
IHlvdSBzdGlsbCBuZWVkIHNvbWUgaW52YWxpZGF0aW9uIG9uIHRoZSB1bm1hcCBwYXRoPwoKSW4g
dnNpX2lvbW11X3VubWFwX2lvdmEoKSBwYWdlIGlzIGludmFsaWRlZCBieSBjYWxsaW5nIHZzaV9t
a19wdGVfaW52YWxpZCgpLgpUaGF0IGNsZWFyIEJJVCgwKSBzbyB0aGUgaGFyZHdhcmUga25vd3Mg
dGhlIHBhZ2UgaXMgaW52YWxpZC4KRG8gSSBoYXZlIG1pc3Mgc29tZXRoaW5nIGhlcmUgPwoKQmVu
amFtaW4KCj4KPiBXaWxsCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
