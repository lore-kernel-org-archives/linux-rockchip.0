Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70239C02182
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 10:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cn7qdxbbzp3iU5jKbOtgL6BpdWr3QSocILGcaVKIWOs=; b=U9K6WSbR4FuzK+
	Kgbn4zhOP85TTqPnolXzm0w5/VO32B2952WdsaKc1VWGiNfpnY8NMabYHkajRt3eGE//2wnpEvJHN
	o5cGX1WPQ31968ZhcJLV0mPQY7+5Xpz/ikhK9kFi8TefiCWKx1dGBUYkVvjp+gZe6oYmjjDySr7ei
	cLhnev5lHyoNt5fepPRuvnEhvsJLQxDG7W6/JCee0M4ZJUFJNn13/Xf3QsIOPNGbzOCj3051o6hLn
	ilhoCBjRnxm3zdLE7w69eX9yh3vyeio2Vu9aXa8pIDVwwyIiTMXUe0bv6vn74kriofn+3osnW8Zuz
	5g+MzoHmokECdPkc44OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZocl-00000005HRf-14qf;
	Mon, 20 Jan 2025 10:03:15 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZoaB-00000005Gv7-04x4
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 10:00:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1737367231; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=b9G/6NzBeeKQZNREnhz8U9epwFn5p9ZDZCo2W6PE50asjCTfLp101o0G0DaQfPUHDUZ0+cwBGXl2Q4nZ2h/Ri0i3M1LKHpwmqy6fNYQgddvFhG+PkJQt/w+g5veEo7EmNtu8HNL6ppZbHFEXitC5ptHcbfNpCngRKiXEKtnnePU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1737367231; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=I1IH9I2LoIXSUcpoXQGZuE0Mnv0U7doshI4vVWFrmzo=; 
	b=m2DH8WZHu4PoQSOokHCXLAZ466oM52cqNsBbzMV7/ajN5GRYRXAT3sULK+G0QBjv927n+JUt/cJJa1GEiBQ9s9z7eml/DoTREdkdm5k4R9kP33Ds3WnqtFj1Y+TvjHhq9Tq+GnkEiRViOz/K82/+RBQGRLbkySJLinTEKGEi1dk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1737367231;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=I1IH9I2LoIXSUcpoXQGZuE0Mnv0U7doshI4vVWFrmzo=;
	b=asiewVR/ouDehvsk5qnudZTANSenn9lFIdPAHz2jTHgCzBcBymfqP/0gfbRkcyFv
	WcC5zjA0NSCLzgGXs1zp9rf4GsBpp3SBX8zlj9lCv8RIfCVS84n/aVD5FGTFYuyMg5o
	Z2AwaygtCCtMPImQO6BHY1T00saC7/CSIZSqgoBs=
Received: by mx.zohomail.com with SMTPS id 1737367230040944.226790523277;
	Mon, 20 Jan 2025 02:00:30 -0800 (PST)
Message-ID: <cc3b22c9-ff98-4328-9e70-4d22c29a6b0d@collabora.com>
Date: Mon, 20 Jan 2025 11:00:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] media: verisilicon: HEVC: Initialize start_bit field
To: nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250120081052.63224-1-benjamin.gaignard@collabora.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250120081052.63224-1-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_020035_875277_96605094 
X-CRM114-Status: GOOD (  10.41  )
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

CkxlIDIwLzAxLzIwMjUgw6AgMDk6MTAsIEJlbmphbWluIEdhaWduYXJkIGEgw6ljcml0wqA6Cj4g
QWx3YXlzIHNldCBzdGFydF9iaXQgZmllbGQgdG8gMCwgaWYgbm90IGl0IGNvdWxkIGxlYWQgdG8g
Y29ycnVwdGVkIGZyYW1lcwo+IHNwZWNpYWxseSB3aGVuIGRlY29kaW5nIFZQOSBiaXRzdHJlYW1z
IGF0IHRoZSBzYW1lIHRpbWUgc2luY2UgVlA5IGRyaXZlcgo+IHNldCBpdCBmb3IgaXQgb3duIHB1
cnBvc2UuCj4KPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2Fp
Z25hcmRAY29sbGFib3JhLmNvbT4KCkkgY291bGQgYWRkIHRoaXMgdGFnOgoKRml4ZXM6IGNiNWRk
NWEwZmE1MTggKCJtZWRpYTogaGFudHJvOiBJbnRyb2R1Y2UgRzIvSEVWQyBkZWNvZGVyIikKCj4g
LS0tCj4gICBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl9oZXZj
X2RlYy5jIHwgMSArCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl9oZXZj
X2RlYy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfaGV2
Y19kZWMuYwo+IGluZGV4IDg1YTQ0MTQzYjM3OC4uMGUyMTIxOThkZDY1IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cyX2hldmNfZGVjLmMK
PiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMl9oZXZj
X2RlYy5jCj4gQEAgLTUxOCw2ICs1MTgsNyBAQCBzdGF0aWMgdm9pZCBzZXRfYnVmZmVycyhzdHJ1
Y3QgaGFudHJvX2N0eCAqY3R4KQo+ICAgCWhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJfc3RyZWFt
X2xlbiwgc3JjX2xlbik7Cj4gICAJaGFudHJvX3JlZ193cml0ZSh2cHUsICZnMl9zdHJtX2J1ZmZl
cl9sZW4sIHNyY19idWZfbGVuKTsKPiAgIAloYW50cm9fcmVnX3dyaXRlKHZwdSwgJmcyX3N0cm1f
c3RhcnRfb2Zmc2V0LCAwKTsKPiArCWhhbnRyb19yZWdfd3JpdGUodnB1LCAmZzJfc3RhcnRfYml0
LCAwKTsKPiAgIAloYW50cm9fcmVnX3dyaXRlKHZwdSwgJmcyX3dyaXRlX212c19lLCAxKTsKPiAg
IAo+ICAgCWhhbnRyb193cml0ZV9hZGRyKHZwdSwgRzJfVElMRV9TSVpFU19BRERSLCBjdHgtPmhl
dmNfZGVjLnRpbGVfc2l6ZXMuZG1hKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
