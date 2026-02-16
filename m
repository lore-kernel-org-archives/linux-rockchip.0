Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F8D6E81A3B
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Feb 2026 15:30:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fCOK5YCpIzNEcvxE+LsfLDqkAfyZ506lMIzxhSw71qE=; b=KJEh3oS6ACrm0C
	5KzWz/7kPvj8p8S4Ny3tGsdczb9aPgXe4pzwDzL984uzS35qM+2h14TGqeYOh5qZ3LLcPn+yHZ2Pe
	WSlFWICSMUkJ9lPbmcuvYpblY+OJrBv9B4g61VcUopAMZNyDnfKB+03C+TWQhn8rtyd5yvS7KAQQH
	MW4BNw3TGE/7LPsO3dRIRsgVhcsWDpKs8lZCAsCbkWsZF6ygha+onwR+jrj75FPTuKkKNx3Yzh68V
	xIltmp3PeZs1uGHbCvFgwtQxW4s8o4ftB64x+V3mYUq2pTBrdmHKw3sMhyOsx+hYIjZFR8Ol6ug28
	Uy0wh9vt/q6sHUhob7ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs0Yh-00000006u54-2ycL;
	Mon, 16 Feb 2026 15:30:47 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vs0Yf-00000006u4J-1ok1;
	Mon, 16 Feb 2026 15:30:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1771255838; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TvcWoI1Uy75QsBx2SWl+GJ7QfpFv3dQVyYATezKi9ECZSn1FJE8BRIbEjrm2sye70WTW3Cj08vlCoUgdiugN4I9V144gbgxWRkC1KGP9lX629DEkHxAn0//ryMSghYVshYKeiBedDzZxt3o+uCzJ9AEBb3EWfUJSFPgbyNuw1N8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1771255838; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=xTKzSo0m4MUPpEAgib4DKtRAuR0nDfthFRJAVbg5eIQ=; 
	b=g5+0CSpTrkqKwti0l+aGUjKhbJI44WlzDyAlYW4koe+v4TyIVlBoGGD8DjBQYzXAW/7Wyn86wiFxpNnvz6OFfgid6zaGrNqbxGO+UJHTO0qpMakyqLnkpmNJPYuDhUgnOZ5SvFvywcHeeNWnH/lslrl50k86J/hKRHkq8jycfJM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1771255838;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:To:To:Cc:Cc:References:From:From:Subject:Subject:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=xTKzSo0m4MUPpEAgib4DKtRAuR0nDfthFRJAVbg5eIQ=;
	b=ajPNtAFwzTNbO+oplWBn2oy1PNrd4ALkhk/OBecJl3vOoEQ8oCF604lbpUNrpoTB
	OkjCsG4jP4STtkPOYROnFWVvu4KKVV8wSOvzU0DHzKnLLnuPDxHgDKB2vUhj+LW2VTf
	DdQxj3Qu30YOV1l5grp3w7bkOsxymvq34uZBg3tk=
Received: by mx.zohomail.com with SMTPS id 1771255836497792.8581418577553;
	Mon, 16 Feb 2026 07:30:36 -0800 (PST)
Message-ID: <16e32780-07bb-42c9-a5c8-aa61f2366efa@collabora.com>
Date: Mon, 16 Feb 2026 16:30:31 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Krzysztof Kozlowski <krzk@kernel.org>, joro@8bytes.org, will@kernel.org,
 robin.murphy@arm.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, nicolas.dufresne@collabora.com,
 p.zabel@pengutronix.de, mchehab@kernel.org
Cc: iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org
References: <20260216095144.107356-1-benjamin.gaignard@collabora.com>
 <20260216095144.107356-7-benjamin.gaignard@collabora.com>
 <07b62f39-d27b-4439-a60e-42fd47f49b13@kernel.org>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: Re: [PATCH v13 6/6] arm64: defconfig: enable Verisilicon IOMMU for
 Rockchip RK3588
In-Reply-To: <07b62f39-d27b-4439-a60e-42fd47f49b13@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_073045_515356_70FF192E 
X-CRM114-Status: GOOD (  10.04  )
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

CkxlIDE2LzAyLzIwMjYgw6AgMTY6MTYsIEtyenlzenRvZiBLb3psb3dza2kgYSDDqWNyaXTCoDoK
PiBPbiAxNi8wMi8yMDI2IDEwOjUxLCBCZW5qYW1pbiBHYWlnbmFyZCB3cm90ZToKPj4gRW5hYmxl
IFZlcmlzaWxpY29uIElPTU1VIHVzZWQgYnkgUm9ja2NoaXAgUkszNTg4IEFWMSBoYXJkd2FyZSBj
b2RlYy4KPj4gVGhpcyBoYXJkd2FyZSBibG9jayBjb3VsZCBiZSBmb3VuZCBpbiBSYWR4YSBSb2Nr
IDVCIGJvYXJkLgo+IEkgY291bGQgbm90IGZpbmQgc3VjaCBib2FyZC4gSSBldmVuIGdpdCBncmVw
cGVkIGZvciBzb21lIHZhcmlhbnRzLi4uIEl0Cj4gc2VlbXMgeW91IGFyZSBhZGRpbmcgaXQgZWFy
bGllciB0byBhIGtub3duIERUU0ksIHNvIGl0IHdpbGwgcmVhY2ggc29tZQo+IGJvYXJkLCBzbyB0
aGUgcG9pbnQgaXMgdG8gdXNlIGhlcmUgUkVBTCBuYW1lIG9mIHRoZSBib2FyZCB3ZSBkbyBzdXBw
b3J0LgoKQW55IHJrMzU1OCBiYXNlZCBib2FyZCBoYXZlIHRoaXMgaGFyZHdhcmUgYmxvY2sKYW5k
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIGRlc2NyaWJl
cyBSYWR4YSBSb2NrIDVCIGJvYXJkLgoKQnV0IG1heWJlIEkgbWlzcyB1bmRlcnN0b29kIHlvdXIg
cG9pbnQgPwoKUmVnYXJkcywKQmVuamFtaW4KCj4KPj4gU2lnbmVkLW9mZi1ieTogQmVuamFtaW4g
R2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+IEJlc3Qg
cmVnYXJkcywKPiBLcnp5c3p0b2YKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
