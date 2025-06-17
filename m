Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2D364C71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 17:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V5qMkqUIyHVvloqMI45axZjv2K7NsJbxnOcwLXhKJ58=; b=bnYYihlYPH++9T
	gyM95rjAHwFY4aiA7mUnXZ5NlnzVcK7q8YVc1LjJ/nPy5SEbJ/ze9Qwma7oAX7ylbWvktl1HCuUoY
	lrkYaBbYkSI0VFI6unT+3oVJFxUbu33zMcZxZdsAM53Rph0kcVJI1Py2/Rxz2jgDc44XGWhFxalkM
	NIEO2lC++mFV11Lpa7JhhelkBDLJ4jGvAP7buceNOiGmjBDoDmvLIzkuiRgQGlzZiPi+rHTn9mE3R
	2ypFYUKgPfOBzclKx78SgO+BhGKQpKv1TZkXtld+5Hnu6+l8Qy/azBjAMf2ixBrjaG7yiCJ7Vd2pn
	l35SBVO6dIrHIzr6BLGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRZr9-00000007ziV-3Tkn;
	Tue, 17 Jun 2025 17:12:19 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRYl9-00000007p24-0XYC;
	Tue, 17 Jun 2025 16:02:04 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750176100; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=mmO+Alr6kQQXRa0SJVWm+b4p0d0PO0kWFXmacsiV+zFpHlrkpTljUui27K7SbsVyZgK4xBfJ4OCyi3iwRj9kUhB5qC79j9nbvoM/2RX+/i58sFtPCHUCiX0u3xKGT8WIbUtW8ZCWip6ZB1XkD1YgYEdUQXFZfwOPXYU9lhmjflo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750176100; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=TorOeLYGo8DxParn34xnnfB8pnXI12Opq9BZvAUKlQQ=; 
	b=aWh0O/5Tp5bLOSObnkuu0O1sB9gk6qA7kSaBWNOsuSyTbh3x+NecyXnJnmUEBgalYAjlcu3Uuz49nHTb4sw3bMi16+12UqfpW8NsQ5HesSJMlvU7r8S6UQfABdF358zNuu9WFbV5kRGcTnMBZqzJbJPXRtaaM5ExmbpCKPkxzAM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750176100;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=TorOeLYGo8DxParn34xnnfB8pnXI12Opq9BZvAUKlQQ=;
	b=NuaGdrHJ97ZwgdVUJeSfzo9qAbE9wjsfOfrx9UNJAr8B6dPp/vpZcyAMuHn/kxU+
	/p5m4mr1GDQ3Xze8r1Oi4Taa18BZ89QToQy3oCelUgnt0PfJqr1ONqcr+9MSs4yRlud
	x36VTLbw3MZJVMXnA3CKGicFf24NRPHO/7xgsAbs=
Received: by mx.zohomail.com with SMTPS id 1750176095913785.9876014183155;
	Tue, 17 Jun 2025 09:01:35 -0700 (PDT)
Message-ID: <30a48107-8e98-42dd-a5a7-9c87c9eb538d@collabora.com>
Date: Tue, 17 Jun 2025 18:01:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] media: verisilicon: Flush IOMMU before decoding a
 frame
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 kernel@collabora.com
References: <20250616145607.116639-1-benjamin.gaignard@collabora.com>
 <20250616145607.116639-6-benjamin.gaignard@collabora.com>
 <20250617155822.GE1376515@ziepe.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250617155822.GE1376515@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_090203_230565_8ED2B376 
X-CRM114-Status: GOOD (  13.95  )
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

CkxlIDE3LzA2LzIwMjUgw6AgMTc6NTgsIEphc29uIEd1bnRob3JwZSBhIMOpY3JpdMKgOgo+IE9u
IE1vbiwgSnVuIDE2LCAyMDI1IGF0IDA0OjU1OjUzUE0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJk
IHdyb3RlOgo+PiBGbHVzaCB0aGUgSU9NTVUgbWFwcGluZyBiZWZvcmUgZGVjb2RpbmcgYSBmcmFt
ZSB0byBlbnN1cmUgdGhhdCBhbGwgbWVtb3J5Cj4+IHRyYW5zbGF0aW9ucyBhcmUgcHJvcGVybHkg
YXBwbGllZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWlu
LmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jIHwgMTEgKysrKysrKysrKysKPj4gICAxIGZpbGUg
Y2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQo+IFRoaXMgaXMgYSByZWFsbHkgYmlnIHJlZCBmbGFn
Lgo+Cj4gaW9tbXUgdHJhbnNsYXRpb25zIGFyZSBzdXBwb3NlZCB0byBiZSBjb250cm9sbGVkIGJ5
IHRoZSBpb21tdSBkcml2ZXIKPiBhbmQgc2hvdWxkIGJlIGZsdXNoZWQgYXMgcGFydCBvZiB0aGUg
aW9tbXUgbWFwL3VubWFwIGZsb3dzLiBJdCBzaG91bGQKPiBuZXZlciBiZSBuZWNlc3NhcnkgdG8g
ZG8gc29tZXRoaW5nIGxpa2UgdGhpcy4KCkkgaGF2ZSByZWRvbmUgdGVzdHMgd2l0aG91dCB0aGlz
IHBhdGNoIGFuZCB0aGUgZGVjb2RlIGlzIHBlcmZvcm0gY29ycmVjdGx5LgpJIHdpbGwgZHJvcCBp
dCBpbiB0aGUgbmV4dCB2ZXJzaW9uLgpJIHRoaW5rIEkgaGF2ZSBmaXggdGhlIHJlZmVyZW5jZSBm
cmFtZSBtYW5hZ2VtZW50IGluIHRoZSBkcml2ZXIgc28gaXQgYmVjb21lcwp1c2VsZXNzLgoKQmVu
amFtaW4KCj4KPiBKYXNvbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
