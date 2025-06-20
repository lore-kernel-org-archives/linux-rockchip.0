Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68F39C77B7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jun 2025 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/dGAcGTNBhFK2HU9uuTVOmdzQHCFacmlQAY1/kKW/1U=; b=gd7E/YA4IET7Za
	Zx3s9Iv1P9q0uMCrUDOmaQwWGCCZR80yGRQLG8kPNoWi62BUruXc/ErZ5lYLJFqhEFlp4w8U9/CY5
	nJfoCgFIrHavgWbU/Gmf6F8WJqm2M5dF47JbcpNSGPOeQQMZf432nkRCaElq7TxzYAVh5r8oEGWbZ
	VxGoy4OcRaLvyqP5VA1ltN9w6tiuMLVmP539OgO+5wlN6E5BmooANl/sklQmh8zHdQjsquu8SxYI+
	Sog7p97pV0WjML3ShgSv7cnI+POPwMiuY5lRF7Vl+ITjKmu5LUSa7LNnR6RWD/32iME6Mgb1WmyPZ
	Gs8vUWupFSCK/4INQhew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSZHL-0000000FO7m-0jZf;
	Fri, 20 Jun 2025 10:47:27 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSYSk-0000000FGwD-0nyZ;
	Fri, 20 Jun 2025 09:55:11 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750413294; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=buxEGVBXCHdiuRG7q6sV4d7yeqisQewFmfTArcPMLDMJpVhZiQuhXPN4YH3nsW4EX4A+94uzTa1+mcC9m8i2tpwyZ0YeeVOCMpH8ZmrCpMxWXo+DplH30C870y4PqeaehgSZDEaWTQUTWGuDnJDI/meJgM7KOSAXBSw4B5kIcO8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750413294; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=PwxAthPjmI1ic6P01b6IWTuo7e6HnLmqXzNXxwM6Kuo=; 
	b=UjItsuDRwJWVwiC9s/iFH6yZkARBVy/bUrQwerP4Qq/Z6QProSOvgVbEpymy1IfInMue2XZhMiKIQZv1U3jzMDr5KTL8hSrsrQ2hZW9LzLdDt+YKHzhoauu4oVQYwqcm1UpxZEFPL9CMD9ujT0qy+6LwpkOj0bPjIe6Tgdf91IU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750413294;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=PwxAthPjmI1ic6P01b6IWTuo7e6HnLmqXzNXxwM6Kuo=;
	b=b/q7LDjRPLKkw0j9TTNYtSjmnIfQ0z6/o4T8vE45q5PeXmqtyVFcMk/sRT03KhRl
	tF5z2L3pGW/oYrbRtiwIKTKc4e0wmJDztFMJ3KVwtmtp9gCtQnGtnIfU22blVE1KTen
	jfna8vqrDKhd4aPBUALRvOsCv8aXhBQhrYalZeEc=
Received: by mx.zohomail.com with SMTPS id 17504132917981020.3930091890192;
	Fri, 20 Jun 2025 02:54:51 -0700 (PDT)
Message-ID: <34c871c9-3367-4b62-b2f8-11ed7d3482e5@collabora.com>
Date: Fri, 20 Jun 2025 11:54:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] dt-bindings: iommu: verisilicon: Add binding for
 VSI IOMMU
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, jgg@ziepe.ca, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20250619131232.69208-1-benjamin.gaignard@collabora.com>
 <20250619131232.69208-3-benjamin.gaignard@collabora.com>
 <n5ddeogrpgctrljnxjfxqaz22qfnxsgm6ro7qihbjeyhd5br44@ojlzlz7gsuzb>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <n5ddeogrpgctrljnxjfxqaz22qfnxsgm6ro7qihbjeyhd5br44@ojlzlz7gsuzb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250620_025510_300759_755A4BD0 
X-CRM114-Status: GOOD (  13.09  )
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

CkxlIDE5LzA2LzIwMjUgw6AgMTY6MTksIFNlYmFzdGlhbiBSZWljaGVsIGEgw6ljcml0wqA6Cj4g
SGksCj4KPiBPbiBUaHUsIEp1biAxOSwgMjAyNSBhdCAwMzoxMjoyM1BNICswMjAwLCBCZW5qYW1p
biBHYWlnbmFyZCB3cm90ZToKPj4gK3Byb3BlcnRpZXM6Cj4+ICsgIGNvbXBhdGlibGU6Cj4+ICsg
ICAgaXRlbXM6Cj4+ICsgICAgICAtIGNvbnN0OiB2ZXJpc2lsaWNvbixpb21tdQo+PiArICAgICAg
LSBjb25zdDogcm9ja2NoaXAscmszNTg4LWlvbW11LTEuMgo+IFRoZSBlbnRyaWVzIHNob3VsZCBi
ZSBvcmRlcmVkIHRoZSBvdGhlciB3YXkgYXJvdW5kLCBzbyB0aGF0IHRoZQo+ICJnZW5lcmljIiBj
b21wYXRpYmxlIGlzIHRoZSBmYWxsYmFjay4gQWxzbyB0aGUgMS4yIHZlcnNpb24gaXMgZnJvbQo+
IFZlcmlzaWxpY29uLiBJdCBkb2VzIG5vdCByZWFsbHkgbWFrZSBzZW5zZSBmb3IgUm9ja2NoaXAu
IFNvIEkKPiB0aGluayBpdCBzaG91bGQgbG9vayBsaWtlIHRoaXM6Cj4KPiBwcm9wZXJ0aWVzOgo+
ICAgIGNvbXBhdGlibGU6Cj4gICAgICBpdGVtczoKPiAgICAgICAgLSBjb25zdDogcm9ja2NoaXAs
cmszNTg4LWF2MS1pb21tdQo+ICAgICAgICAtIGNvbnN0OiB2ZXJpc2lsaWNvbixpb21tdS0xLjIK
Pgo+IE90aGVyd2lzZSBMR1RNLgoKVGhhbmtzIEkgd2lsbCBkbyBsaWtlIHRoYXQuCgpSZWdhcmRz
LApCZW5qYW1pbgoKPgo+IC0tIFNlYmFzdGlhbgo+Cj4+ICsKPj4gKyAgcmVnOgo+PiArICAgIG1h
eEl0ZW1zOiAxCj4+ICsKPj4gKyAgaW50ZXJydXB0czoKPj4gKyAgICBtYXhJdGVtczogMQo+PiAr
Cj4+ICsgIGNsb2NrczoKPj4gKyAgICBpdGVtczoKPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IENv
cmUgY2xvY2sKPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEludGVyZmFjZSBjbG9jawo+PiArCj4+
ICsgIGNsb2NrLW5hbWVzOgo+PiArICAgIGl0ZW1zOgo+PiArICAgICAgLSBjb25zdDogY29yZQo+
PiArICAgICAgLSBjb25zdDogaWZhY2UKPj4gKwo+PiArICAiI2lvbW11LWNlbGxzIjoKPj4gKyAg
ICBjb25zdDogMAo+PiArCj4+ICsgIHBvd2VyLWRvbWFpbnM6Cj4+ICsgICAgbWF4SXRlbXM6IDEK
Pj4gKwo+PiArcmVxdWlyZWQ6Cj4+ICsgIC0gY29tcGF0aWJsZQo+PiArICAtIHJlZwo+PiArICAt
IGludGVycnVwdHMKPj4gKyAgLSBjbG9ja3MKPj4gKyAgLSBjbG9jay1uYW1lcwo+PiArICAtICIj
aW9tbXUtY2VsbHMiCj4+ICsKPj4gK2FkZGl0aW9uYWxQcm9wZXJ0aWVzOiBmYWxzZQo+PiArCj4+
ICtleGFtcGxlczoKPj4gKyAgLSB8Cj4+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2Nsb2Nr
L3JvY2tjaGlwLHJrMzU4OC1jcnUuaD4KPj4gKyAgICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvaW50
ZXJydXB0LWNvbnRyb2xsZXIvYXJtLWdpYy5oPgo+PiArCj4+ICsgICAgYnVzIHsKPj4gKyAgICAg
ICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+PiArICAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4+ICsK
Pj4gKyAgICAgIGlvbW11QGZkY2EwMDAwIHsKPj4gKyAgICAgICAgY29tcGF0aWJsZSA9ICJ2ZXJp
c2lsaWNvbixpb21tdSIsInJvY2tjaGlwLHJrMzU4OC1pb21tdS0xLjIiOwo+PiArICAgICAgICBy
ZWcgPSA8MHgwIDB4ZmRjYTAwMDAgMHgwIDB4NjAwPjsKPj4gKyAgICAgICAgaW50ZXJydXB0cyA9
IDxHSUNfU1BJIDEwOSBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+Owo+PiArICAgICAgICBjbG9ja3Mg
PSA8JmNydSBBQ0xLX0FWMT4sIDwmY3J1IFBDTEtfQVYxPjsKPj4gKyAgICAgICAgY2xvY2stbmFt
ZXMgPSAiY29yZSIsICJpZmFjZSI7Cj4+ICsgICAgICAgICNpb21tdS1jZWxscyA9IDwwPjsKPj4g
KyAgICAgIH07Cj4+ICsgICAgfTsKPj4gLS0gCj4+IDIuNDMuMAo+PgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
