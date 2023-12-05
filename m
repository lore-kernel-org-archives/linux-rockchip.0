Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C077C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 12:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOMjgqZ4KFNc1DpXwlFbxGL3IM+Y0uwL7ji0U62GXZg=; b=FEoxy1Ayon+STc
	WBSNm+DKBFwt9uLSzFztffNC5VmkDo7IB7gWKRdmpUZKxXzX8X1jzz9HeJxY71aKwwRW14+woLzRH
	zRDwu1ZRnRbLfzQiz0h2Lwe2n3the8D9ovLnnWBdon8JZ1fk0qjzI/K//Waxo90iaN6rjFquFwuq9
	fCfvPxQfPF+X03If8Pqs3xPkPDk6DwrbknfklAGECMaLeKJY3/4gAET4h5JxiBZLff/YopLBCWd0p
	yXbfdc5S0+t33SPdb6Fj6kKhmL8O9Q+6kV/Vr5JpPNzvbGHcf7vxBl/DVEOZq/jiO12bi3Pej/+7H
	/gaI7bvPsrCWGzm2fIaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAU8a-007L88-1j;
	Tue, 05 Dec 2023 12:02:52 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAU8X-007L79-0z;
	Tue, 05 Dec 2023 12:02:50 +0000
Received: from [192.168.88.20] (91-158-149-209.elisa-laajakaista.fi [91.158.149.209])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8FC78844;
	Tue,  5 Dec 2023 13:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701777728;
	bh=sx5oWuUdn3t3qiK6cX/NTcFnWy6w1SumUl2/Cl/RrrU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=lqFB+RrgM6kWti3VP4kbZcUumh1Nvyt0ZdDoUYVwEsYxlr61/GY/1pzkKxQ9v7ZE1
	 5Ek1+pmTQS9HwSV1NMcfuxBxUh7lCF4Or2BhlwKQ7aYlGCMOrRSnGNXp3n09wL1ey1
	 aw+ViRS/sKnpj6pthqStJtDrBaWsM8hCnrsdxTPY=
Message-ID: <b61d7adb-5b45-4366-a98c-d0de91d409c8@ideasonboard.com>
Date: Tue, 5 Dec 2023 14:02:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] media: rkisp1: Fix IRQ handler return values
Content-Language: en-US
To: Adam Ford <aford173@gmail.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>,
 Alexander Stein <alexander.stein@ew.tq-group.com>,
 kieran.bingham@ideasonboard.com, umang.jain@ideasonboard.com,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20231205-rkisp-irq-fix-v1-0-f4045c74ba45@ideasonboard.com>
 <20231205-rkisp-irq-fix-v1-2-f4045c74ba45@ideasonboard.com>
 <CAHCN7xJqw-hSD7rWfxFq5NWnF+=RrpCWR+js9358jAL0_WzVFw@mail.gmail.com>
From: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Autocrypt: addr=tomi.valkeinen@ideasonboard.com; keydata=
 xsFNBE6ms0cBEACyizowecZqXfMZtnBniOieTuFdErHAUyxVgtmr0f5ZfIi9Z4l+uUN4Zdw2
 wCEZjx3o0Z34diXBaMRJ3rAk9yB90UJAnLtb8A97Oq64DskLF81GCYB2P1i0qrG7UjpASgCA
 Ru0lVvxsWyIwSfoYoLrazbT1wkWRs8YBkkXQFfL7Mn3ZMoGPcpfwYH9O7bV1NslbmyJzRCMO
 eYV258gjCcwYlrkyIratlHCek4GrwV8Z9NQcjD5iLzrONjfafrWPwj6yn2RlL0mQEwt1lOvn
 LnI7QRtB3zxA3yB+FLsT1hx0va6xCHpX3QO2gBsyHCyVafFMrg3c/7IIWkDLngJxFgz6DLiA
 G4ld1QK/jsYqfP2GIMH1mFdjY+iagG4DqOsjip479HCWAptpNxSOCL6z3qxCU8MCz8iNOtZk
 DYXQWVscM5qgYSn+fmMM2qN+eoWlnCGVURZZLDjg387S2E1jT/dNTOsM/IqQj+ZROUZuRcF7
 0RTtuU5q1HnbRNwy+23xeoSGuwmLQ2UsUk7Q5CnrjYfiPo3wHze8avK95JBoSd+WIRmV3uoO
 rXCoYOIRlDhg9XJTrbnQ3Ot5zOa0Y9c4IpyAlut6mDtxtKXr4+8OzjSVFww7tIwadTK3wDQv
 Bus4jxHjS6dz1g2ypT65qnHen6mUUH63lhzewqO9peAHJ0SLrQARAQABzTBUb21pIFZhbGtl
 aW5lbiA8dG9taS52YWxrZWluZW5AaWRlYXNvbmJvYXJkLmNvbT7CwY4EEwEIADgWIQTEOAw+
 ll79gQef86f6PaqMvJYe9QUCX/HruAIbAwULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRD6
 PaqMvJYe9WmFD/99NGoD5lBJhlFDHMZvO+Op8vCwnIRZdTsyrtGl72rVh9xRfcSgYPZUvBuT
 VDxE53mY9HaZyu1eGMccYRBaTLJSfCXl/g317CrMNdY0k40b9YeIX10feiRYEWoDIPQ3tMmA
 0nHDygzcnuPiPT68JYZ6tUOvAt7r6OX/litM+m2/E9mtp8xCoWOo/kYO4mOAIoMNvLB8vufi
 uBB4e/AvAjtny4ScuNV5c5q8MkfNIiOyag9QCiQ/JfoAqzXRjVb4VZG72AKaElwipiKCWEcU
 R4+Bu5Qbaxj7Cd36M/bI54OrbWWETJkVVSV1i0tghCd6HHyquTdFl7wYcz6cL1hn/6byVnD+
 sR3BLvSBHYp8WSwv0TCuf6tLiNgHAO1hWiQ1pOoXyMEsxZlgPXT+wb4dbNVunckwqFjGxRbl
 Rz7apFT/ZRwbazEzEzNyrBOfB55xdipG/2+SmFn0oMFqFOBEszXLQVslh64lI0CMJm2OYYe3
 PxHqYaztyeXsx13Bfnq9+bUynAQ4uW1P5DJ3OIRZWKmbQd/Me3Fq6TU57LsvwRgE0Le9PFQs
 dcP2071rMTpqTUteEgODJS4VDf4lXJfY91u32BJkiqM7/62Cqatcz5UWWHq5xeF03MIUTqdE
 qHWk3RJEoWHWQRzQfcx6Fn2fDAUKhAddvoopfcjAHfpAWJ+ENc7BTQROprNHARAAx0aat8GU
 hsusCLc4MIxOQwidecCTRc9Dz/7U2goUwhw2O5j9TPqLtp57VITmHILnvZf6q3QAho2QMQyE
 DDvHubrdtEoqaaSKxKkFie1uhWNNvXPhwkKLYieyL9m2JdU+b88HaDnpzdyTTR4uH7wk0bBa
 KbTSgIFDDe5lXInypewPO30TmYNkFSexnnM3n1PBCqiJXsJahE4ZQ+WnV5FbPUj8T2zXS2xk
 0LZ0+DwKmZ0ZDovvdEWRWrz3UzJ8DLHb7blPpGhmqj3ANXQXC7mb9qJ6J/VSl61GbxIO2Dwb
 xPNkHk8fwnxlUBCOyBti/uD2uSTgKHNdabhVm2dgFNVuS1y3bBHbI/qjC3J7rWE0WiaHWEqy
 UVPk8rsph4rqITsj2RiY70vEW0SKePrChvET7D8P1UPqmveBNNtSS7In+DdZ5kUqLV7rJnM9
 /4cwy+uZUt8cuCZlcA5u8IsBCNJudxEqBG10GHg1B6h1RZIz9Q9XfiBdaqa5+CjyFs8ua01c
 9HmyfkuhXG2OLjfQuK+Ygd56mV3lq0aFdwbaX16DG22c6flkkBSjyWXYepFtHz9KsBS0DaZb
 4IkLmZwEXpZcIOQjQ71fqlpiXkXSIaQ6YMEs8WjBbpP81h7QxWIfWtp+VnwNGc6nq5IQDESH
 mvQcsFS7d3eGVI6eyjCFdcAO8eMAEQEAAcLBXwQYAQIACQUCTqazRwIbDAAKCRD6PaqMvJYe
 9fA7EACS6exUedsBKmt4pT7nqXBcRsqm6YzT6DeCM8PWMTeaVGHiR4TnNFiT3otD5UpYQI7S
 suYxoTdHrrrBzdlKe5rUWpzoZkVK6p0s9OIvGzLT0lrb0HC9iNDWT3JgpYDnk4Z2mFi6tTbq
 xKMtpVFRA6FjviGDRsfkfoURZI51nf2RSAk/A8BEDDZ7lgJHskYoklSpwyrXhkp9FHGMaYII
 m9EKuUTX9JPDG2FTthCBrdsgWYPdJQvM+zscq09vFMQ9Fykbx5N8z/oFEUy3ACyPqW2oyfvU
 CH5WDpWBG0s5BALp1gBJPytIAd/pY/5ZdNoi0Cx3+Z7jaBFEyYJdWy1hGddpkgnMjyOfLI7B
 CFrdecTZbR5upjNSDvQ7RG85SnpYJTIin+SAUazAeA2nS6gTZzumgtdw8XmVXZwdBfF+ICof
 92UkbYcYNbzWO/GHgsNT1WnM4sa9lwCSWH8Fw1o/3bX1VVPEsnESOfxkNdu+gAF5S6+I6n3a
 ueeIlwJl5CpT5l8RpoZXEOVtXYn8zzOJ7oGZYINRV9Pf8qKGLf3Dft7zKBP832I3PQjeok7F
 yjt+9S+KgSFSHP3Pa4E7lsSdWhSlHYNdG/czhoUkSCN09C0rEK93wxACx3vtxPLjXu6RptBw
 3dRq7n+mQChEB1am0BueV1JZaBboIL0AGlSJkm23kw==
In-Reply-To: <CAHCN7xJqw-hSD7rWfxFq5NWnF+=RrpCWR+js9358jAL0_WzVFw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231205_040249_485848_A2E96ECC 
X-CRM114-Status: GOOD (  22.12  )
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

T24gMDUvMTIvMjAyMyAxMzo1NywgQWRhbSBGb3JkIHdyb3RlOgo+IE9uIFR1ZSwgRGVjIDUsIDIw
MjMgYXQgMjoxMOKAr0FNIFRvbWkgVmFsa2VpbmVuCj4gPHRvbWkudmFsa2VpbmVuQGlkZWFzb25i
b2FyZC5jb20+IHdyb3RlOgo+Pgo+PiBUaGUgSVJRIGhhbmRsZXIgcmtpc3AxX2lzcigpIGNhbGxz
IHN1Yi1oYW5kbGVycywgYWxsIG9mIHdoaWNoIHJldHVybnMgYW4KPj4gaXJxcmV0dXJuX3QgdmFs
dWUsIGJ1dCBya2lzcDFfaXNyKCkgaWdub3JlcyB0aG9zZSB2YWx1ZXMgYW5kIGFsd2F5cwo+PiBy
ZXR1cm5zIElSUV9IQU5ETEVELgo+Pgo+PiBGaXggdGhpcyBieSBjb2xsZWN0aW5nIHRoZSByZXR1
cm4gdmFsdWVzLCBhbmQgcmV0dXJuaW5nIElSUV9IQU5ETEVEIG9yCj4+IElSUV9OT05FIGFzIGFw
cHJvcHJpYXRlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUb21pIFZhbGtlaW5lbiA8dG9taS52YWxr
ZWluZW5AaWRlYXNvbmJvYXJkLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9ya2lzcDEvcmtpc3AxLWRldi5jIHwgMTggKysrKysrKysrKysrKystLS0tCj4+
ICAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4+Cj4+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lz
cDEtZGV2LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEt
ZGV2LmMKPj4gaW5kZXggNzZmOTM2MTRiNGNmLi4xZDYwZjRiOGJkMDkgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1kZXYuYwo+PiAr
KysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtZGV2LmMK
Pj4gQEAgLTQ0NSwxNyArNDQ1LDI3IEBAIHN0YXRpYyBpbnQgcmtpc3AxX2VudGl0aWVzX3JlZ2lz
dGVyKHN0cnVjdCBya2lzcDFfZGV2aWNlICpya2lzcDEpCj4+Cj4+ICAgc3RhdGljIGlycXJldHVy
bl90IHJraXNwMV9pc3IoaW50IGlycSwgdm9pZCAqY3R4KQo+PiAgIHsKPj4gKyAgICAgICBpcnFy
ZXR1cm5fdCByZXQ7Cj4+ICsKPj4gICAgICAgICAgLyoKPj4gICAgICAgICAgICogQ2FsbCBya2lz
cDFfY2FwdHVyZV9pc3IoKSBmaXJzdCB0byBoYW5kbGUgdGhlIGZyYW1lIHRoYXQKPj4gICAgICAg
ICAgICogcG90ZW50aWFsbHkgY29tcGxldGVkIHVzaW5nIHRoZSBjdXJyZW50IGZyYW1lX3NlcXVl
bmNlIG51bWJlciBiZWZvcmUKPj4gICAgICAgICAgICogaXQgaXMgcG90ZW50aWFsbHkgaW5jcmVt
ZW50ZWQgYnkgcmtpc3AxX2lzcF9pc3IoKSBpbiB0aGUgdmVydGljYWwKPj4gICAgICAgICAgICog
c3luYy4KPj4gICAgICAgICAgICovCj4+IC0gICAgICAgcmtpc3AxX2NhcHR1cmVfaXNyKGlycSwg
Y3R4KTsKPj4gLSAgICAgICBya2lzcDFfaXNwX2lzcihpcnEsIGN0eCk7Cj4+IC0gICAgICAgcmtp
c3AxX2NzaV9pc3IoaXJxLCBjdHgpOwo+Pgo+PiAtICAgICAgIHJldHVybiBJUlFfSEFORExFRDsK
Pj4gKyAgICAgICByZXQgPSBJUlFfTk9ORTsKPj4gKwo+PiArICAgICAgIGlmIChya2lzcDFfY2Fw
dHVyZV9pc3IoaXJxLCBjdHgpID09IElSUV9IQU5ETEVEKQo+PiArICAgICAgICAgICAgICAgcmV0
ID0gSVJRX0hBTkRMRUQ7Cj4+ICsKPj4gKyAgICAgICBpZiAocmtpc3AxX2lzcF9pc3IoaXJxLCBj
dHgpID09IElSUV9IQU5ETEVEKQo+PiArICAgICAgICAgICAgICAgcmV0ID0gSVJRX0hBTkRMRUQ7
Cj4+ICsKPj4gKyAgICAgICBpZiAocmtpc3AxX2NzaV9pc3IoaXJxLCBjdHgpID09IElSUV9IQU5E
TEVEKQo+PiArICAgICAgICAgICAgICAgcmV0ID0gSVJRX0hBTkRMRUQ7Cj4+ICsKPiAKPiBJdCBz
ZWVtcyBsaWtlIHdlJ3JlIHRocm93aW5nIGF3YXkgdGhlIHZhbHVlIG9mIHJldCBlYWNoIHRpbWUg
dGhlCj4gc3Vic2VxdWVudCBpZiBzdGF0ZW1lbnQgaXMgZXZhbHVhdGVkLiAgV2hldGhlciBvciBu
b3QgdGhleSByZXR1cm4KPiBkaWRuJ3QgbWF0dGVyIGJlZm9yZSwgYW5kIHRoZSBvbmx5IG9uZSB0
aGF0IHNlZW1zIHVzaW5nIHRoZSByZXR1cm4KPiBjb2RlIGlzIHRoZSBsYXN0IG9uZS4KPiAKPiBX
b3VsZG4ndCBpdCBiZSBzaW1wbGVyIHRvIHVzZSByZXQgPSBya2lzcDFfY2FwdHVyZV9pc3IoaXJx
LCBjdHgpLCByZXQKPiA9IHJraXNwMV9pc3BfaXNyKGlycSwgY3R4KSBhbmQgcmV0ID0gcmtpc3Ax
X2NzaV9pc3IoaXJxLCBjdHgpIGlmIHdlCj4gY2FyZSBhYm91dCB0aGUgcmV0dXJuIGNvZGU/Cj4g
Cj4gSG93IGRvIHlvdSBleHBlY3QgdGhpcyB0byByZXR1cm4gaWYgb25lIG9mIHRoZSBmaXJzdCB0
d28gZG9uJ3QgcmV0dXJuCj4gSVJRX0hBTkRMRUQ/CgpJJ20gc29ycnksIEkgZG9uJ3QgcXVpdGUg
Zm9sbG93IHdoYXQgeW91IG1lYW4uIENhbiB5b3UgZWxhYm9yYXRlIGEgYml0PwoKV2Ugd2FudCB0
aGUgcmtpc3AxX2lzcigpIHRvIHJldHVybiBJUlFfTk9ORSBpZiBub25lIG9mIHRoZSBzdWItaGFu
ZGxlcnMgCmhhbmRsZWQgdGhlIGludGVycnVwdC4gT3RoZXJ3aXNlLCBpZiBhbnkgb2YgdGhlIHN1
Yi1oYW5kbGVycyByZXR1cm4gCklSUV9IQU5ETEVELCBya2lzcDFfaXNyKCkgcmV0dXJucyBJUlFf
SEFORExFRC4KCiAgVG9taQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
