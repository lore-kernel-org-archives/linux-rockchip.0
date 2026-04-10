Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C42AEF45A0D
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Apr 2026 22:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UbVqgXCZKvaC1r6RYYaYqdSpBjPiNHm8pBAuA6pl7Fw=; b=hBE/CH6/PGYVWe
	CZOmOEFghZDP8+4RLALwq2XZeB67xG2Axkeu33/a5H305tJZp4IpCFyx6893iFpeYeoSkMiXAla0F
	5mArjxpju/BY67f8TQ4wU501M91vuxu7AaI86S432Wj8FBa/hQAw4jyIKFCy+Fr5fSR6M3a6vYK8L
	6sFRXOVX0FRta+lKihvaOtuBeJraOdNh7zla0MWc2CB31daCr/EIqrV0CofhQh5mMIV1QlpQqZHwN
	xT+qWM8f+tWpIzaQwgTsa1OVRFvjwjZxUshXrLmApBOvuu5fdWOMLX/LEj6dhk4dpofGtpj+iuAWI
	Jvqgbzg/QBa8Ojq8Tvqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBKR1-0000000Ct84-13yw;
	Fri, 10 Apr 2026 22:34:43 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBKQx-0000000Ct7Z-402V
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Apr 2026 22:34:41 +0000
Received: by mail-oo1-xc33.google.com with SMTP id 006d021491bc7-679f6ee3fb0so979602eaf.2
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2026 15:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20251104.gappssmtp.com; s=20251104; t=1775860478; x=1776465278; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eDsPdLRtHI1fCBtHGILEh/aBIsv8nBQn0xgQGOjBptQ=;
        b=NlhfN9HltIfWj4xnDaFwuEAuZtOl6eJ6Nqsv452xw0MUTf6Ad8YhK+ydgkM5r1zvfN
         3Qp1GD8FPJoe351xU6Y9u/Uxfaiaj4+lKtdzzAvJHz1PxK/Jc9lpclCxX4FuYWKWLkDY
         AfrP62fuO44rQjpYj5ejLwaPsHQ63Nw7IGrKAZd+GCg36q2T/M0yX0ppqyGiZdZsI8JM
         AJEbLBU0GKVPWefYT1f7jIRWPFwyefnKrcMBHxe3ql+36ix7qf9+Z1V3EObvK75TRW7N
         K7A0JszhxOQJxnk1/u2EA9xjGc/PQD6bWq1iPVQTkBugATqEa6di977XUldQ28IwhQ9a
         UJXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775860478; x=1776465278;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eDsPdLRtHI1fCBtHGILEh/aBIsv8nBQn0xgQGOjBptQ=;
        b=Y/gpW21j4wb6dwl0muViQzdF9tjOEBRaRtr9idmnbwZel1r4UpdKsVUp+URXwXJ/lm
         PCXHBG4IAGXVvljoQtvdNTrsXj6vagHHbXy/LN09SczZl3aYVQ1snqCMilMbISmJMg6z
         PUdZj3svN2zvHiP2gfLD2KqFi4IkmodjomKFGviZumQk8sFv8l//NbdVeFdKUMGZbEnR
         N+wdyumqKUfcScm74xu2HTE/XBkmSG1tTDzCikxFRKMXg8qYg103K/5EXCZ4lJx0L0sF
         hCXb0hoppTNF1H82ex+1fNeVg2MlwFijls1AvaxbJpuVtDiqU+lXhCFwqpyITKapClrX
         OWeA==
X-Forwarded-Encrypted: i=1; AJvYcCU9pDXUHLztkH13X418MQvJjcNG1GWaeH81x8Bt++WJLOuSSPlXzMF+rxWbIW8vGdQBKCB4Uh/54ctRlOuO4A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9k251NucVjU4DeomjRQYHGEcYeejvrAD1Zv5v/7bU88fomnC7
	Rn/9gaySM23lffj3WZrt2S8kSbBikKL1S/8OFYQFwgKRaIcc7DqxZJsXSX0chGEFigU=
X-Gm-Gg: AeBDievoVSpqDZAcXn4qwDAJT5YT9VuaOMjL4JoloJjyubi6cI6QESn/3055ewIoV2V
	Ht4bnLpIivpzykeNPmQITDzPNxI9gBI76LIutYRoVyLLwNWt941voLNFJ7zUJLKk6HHVQyrjDYx
	xjmEwfxeuU3LSfkWJFdDYbOVxWMQ3+mIyxRN6R4e5Q5iahilUcK71MkzsvjHe6IMPhmofo2C+PA
	6FzfYZS543oZp/95jQ409LA6DRgmVwEPbyt0LwoAZxlX+33KUaMCu/WCeav8QtQaAfMAiU+bA6a
	qq0QwN25gZU/GTBglNZwRF5sNkmX1XVGfP/7ufpI+wxlK+RHXzRqg09BKZnLpCDu8PeTSzCGeF0
	jPYDyns4a6/C63RDa6pOs6zwfNk3UsY5Jkx6NwV1g0ogWU4oxYvCtuZv7c4L9cbMJkUr7gxDyM6
	Yn1b999/Fev5HObJFU0APuRTtw4GI4p+bnFWhTyeO3Jcv0WsaNocjuDsAGEWD9IgcBxJ7kIr1Yr
	Fp04KRCZDds
X-Received: by 2002:a05:6820:1805:b0:685:7d77:27 with SMTP id 006d021491bc7-68be7de912dmr2179828eaf.33.1775860478203;
        Fri, 10 Apr 2026 15:34:38 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:b75d:2440:dc10:808b? ([2600:8803:e7e4:500:b75d:2440:dc10:808b])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-423ddb23b07sm3366642fac.12.2026.04.10.15.34.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Apr 2026 15:34:37 -0700 (PDT)
Message-ID: <8b716bc9-1465-4abc-9429-c7e475a01b71@baylibre.com>
Date: Fri, 10 Apr 2026 17:34:36 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 5/9] iio: imu: inv_icm42607: Add Temperature Support in
 icm42607
To: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org
Cc: andy@kernel.org, nuno.sa@analog.com, jic23@kernel.org,
 jean-baptiste.maneyrol@tdk.com, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, andriy.shevchenko@intel.com,
 Chris Morgan <macromorgan@hotmail.com>
References: <20260330195853.392877-1-macroalpha82@gmail.com>
 <20260330195853.392877-6-macroalpha82@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260330195853.392877-6-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_153440_017001_431F60C4 
X-CRM114-Status: GOOD (  19.88  )
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

T24gMy8zMC8yNiAyOjU4IFBNLCBDaHJpcyBNb3JnYW4gd3JvdGU6Cj4gRnJvbTogQ2hyaXMgTW9y
Z2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiAKPiBBZGQgZnVuY3Rpb25zIGZvciByZWFk
aW5nIHRlbXBlcmF0dXJlIHNlbnNvciBkYXRhLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIE1v
cmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvaWlvL2ltdS9p
bnZfaWNtNDI2MDcvaW52X2ljbTQyNjA3LmggICB8ICAzICsKPiAgLi4uL2lpby9pbXUvaW52X2lj
bTQyNjA3L2ludl9pY200MjYwN19jb3JlLmMgIHwgMTcgKysrKwo+ICAuLi4vaWlvL2ltdS9pbnZf
aWNtNDI2MDcvaW52X2ljbTQyNjA3X3RlbXAuYyAgfCA4MSArKysrKysrKysrKysrKysrKysrCj4g
IC4uLi9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2MDdfdGVtcC5oICB8IDMwICsrKysr
KysKPiAgNCBmaWxlcyBjaGFuZ2VkLCAxMzEgaW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2MDdfdGVtcC5jCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2lpby9pbXUvaW52X2ljbTQyNjA3L2ludl9pY200
MjYwN190ZW1wLmgKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vaW11L2ludl9pY200MjYw
Ny9pbnZfaWNtNDI2MDcuaCBiL2RyaXZlcnMvaWlvL2ltdS9pbnZfaWNtNDI2MDcvaW52X2ljbTQy
NjA3LmgKPiBpbmRleCA1NTMwZmQzYmMwM2YuLjA4Njg0OGM4ZmQzYiAxMDA2NDQKPiAtLS0gYS9k
cml2ZXJzL2lpby9pbXUvaW52X2ljbTQyNjA3L2ludl9pY200MjYwNy5oCj4gKysrIGIvZHJpdmVy
cy9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2MDcuaAo+IEBAIC00MzMsNiArNDMzLDkg
QEAgZXh0ZXJuIGNvbnN0IHN0cnVjdCBkZXZfcG1fb3BzIGludl9pY200MjYwN19wbV9vcHM7Cj4g
IAo+ICB1MzIgaW52X2ljbTQyNjA3X29kcl90b19wZXJpb2QoZW51bSBpbnZfaWNtNDI2MDdfb2Ry
IG9kcik7Cj4gIAo+ICtpbnQgaW52X2ljbTQyNjA3X3NldF90ZW1wX2NvbmYoc3RydWN0IGludl9p
Y200MjYwN19zdGF0ZSAqc3QsIGJvb2wgZW5hYmxlLAo+ICsJCQkgICAgICAgdW5zaWduZWQgaW50
ICpzbGVlcF9tcyk7Cj4gKwo+ICBpbnQgaW52X2ljbTQyNjA3X2RlYnVnZnNfcmVnKHN0cnVjdCBp
aW9fZGV2ICppbmRpb19kZXYsIHVuc2lnbmVkIGludCByZWcsCj4gIAkJCSAgICAgdW5zaWduZWQg
aW50IHdyaXRldmFsLCB1bnNpZ25lZCBpbnQgKnJlYWR2YWwpOwo+ICAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2MDdfY29yZS5jIGIvZHJpdmVy
cy9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2MDdfY29yZS5jCj4gaW5kZXggMzQ0MDcx
MDg5MDQyLi43MzVhMjYyZGMxMDMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9paW8vaW11L2ludl9p
Y200MjYwNy9pbnZfaWNtNDI2MDdfY29yZS5jCj4gKysrIGIvZHJpdmVycy9paW8vaW11L2ludl9p
Y200MjYwNy9pbnZfaWNtNDI2MDdfY29yZS5jCj4gQEAgLTE2NCw2ICsxNjQsMjMgQEAgc3RhdGlj
IGludCBpbnZfaWNtNDI2MDdfc2V0X3B3cl9tZ210MChzdHJ1Y3QgaW52X2ljbTQyNjA3X3N0YXRl
ICpzdCwKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtpbnQgaW52X2ljbTQyNjA3X3NldF90ZW1w
X2NvbmYoc3RydWN0IGludl9pY200MjYwN19zdGF0ZSAqc3QsIGJvb2wgZW5hYmxlLAo+ICsJCQkg
ICAgICAgdW5zaWduZWQgaW50ICpzbGVlcF9tcykKPiArewo+ICsJdW5zaWduZWQgaW50IHZhbDsK
PiArCWludCByZXQ7Cj4gKwo+ICsJdmFsID0gSU5WX0lDTTQyNjA3X1RFTVBfQ09ORklHMF9GSUxU
RVIoSU5WX0lDTTQyNjA3X0ZJTFRFUl9CV18zNEhaKTsKPiArCXJldCA9IHJlZ21hcF91cGRhdGVf
Yml0cyhzdC0+bWFwLCBJTlZfSUNNNDI2MDdfUkVHX1RFTVBfQ09ORklHMCwKPiArCQkJCSBJTlZf
SUNNNDI2MDdfVEVNUF9DT05GSUcwX0ZJTFRFUl9NQVNLLCB2YWwpOwo+ICsJaWYgKHJldCkKPiAr
CQlyZXR1cm4gcmV0Owo+ICsKPiArCXJldHVybiBpbnZfaWNtNDI2MDdfc2V0X3B3cl9tZ210MChz
dCwgc3QtPmNvbmYuZ3lyby5tb2RlLAo+ICsJCQkJCSAgc3QtPmNvbmYuYWNjZWwubW9kZSwgZW5h
YmxlLAo+ICsJCQkJCSAgc2xlZXBfbXMpOwo+ICt9Cj4gKwo+ICBpbnQgaW52X2ljbTQyNjA3X2Rl
YnVnZnNfcmVnKHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsIHVuc2lnbmVkIGludCByZWcsCj4g
IAkJCSAgICAgdW5zaWduZWQgaW50IHdyaXRldmFsLCB1bnNpZ25lZCBpbnQgKnJlYWR2YWwpCj4g
IHsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2
MDdfdGVtcC5jIGIvZHJpdmVycy9paW8vaW11L2ludl9pY200MjYwNy9pbnZfaWNtNDI2MDdfdGVt
cC5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLmI0MmViNzhj
ZDk2MAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2lpby9pbXUvaW52X2ljbTQyNjA3
L2ludl9pY200MjYwN190ZW1wLmMKPiBAQCAtMCwwICsxLDgxIEBACj4gKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9yLWxhdGVyCj4gKy8qCj4gKyAqIENvcHlyaWdodCAoQykg
MjAyNiBJbnZlblNlbnNlLCBJbmMuCj4gKyAqLwo+ICsKPiArI2luY2x1ZGUgPGxpbnV4L2tlcm5l
bC5oPgo+ICsjaW5jbHVkZSA8bGludXgvZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9tdXRl
eC5oPgo+ICsjaW5jbHVkZSA8bGludXgvcG1fcnVudGltZS5oPgo+ICsjaW5jbHVkZSA8bGludXgv
cmVnbWFwLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9paW8vaWlvLmg+Cj4gKwo+ICsjaW5jbHVkZSAi
aW52X2ljbTQyNjA3LmgiCj4gKyNpbmNsdWRlICJpbnZfaWNtNDI2MDdfdGVtcC5oIgo+ICsKPiAr
c3RhdGljIGludCBpbnZfaWNtNDI2MDdfdGVtcF9yZWFkKHN0cnVjdCBpbnZfaWNtNDI2MDdfc3Rh
dGUgKnN0LCBzMTYgKnRlbXApCj4gK3sKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9IHJlZ21hcF9n
ZXRfZGV2aWNlKHN0LT5tYXApOwo+ICsJX19iZTE2ICpyYXc7Cj4gKwlpbnQgcmV0Owo+ICsKPiAr
CVBNX1JVTlRJTUVfQUNRVUlSRV9BVVRPU1VTUEVORChkZXYsIHBtKTsKPiArCWlmIChQTV9SVU5U
SU1FX0FDUVVJUkVfRVJSKCZwbSkpCj4gKwkJcmV0dXJuIC1FTlhJTzsKPiArCj4gKwlndWFyZCht
dXRleCkoJnN0LT5sb2NrKTsKPiArCj4gKwlyZXQgPSBpbnZfaWNtNDI2MDdfc2V0X3RlbXBfY29u
ZihzdCwgdHJ1ZSwgTlVMTCk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiByZXQ7Cj4gKwo+ICsJ
cmF3ID0gKF9fYmUxNiAqKSZzdC0+YnVmZmVyWzBdOwoKQ2FuIHdlIG1ha2UgYnVmZmVyIF9fYmUx
NiBidWZmZXJbXSB0byBhdm9pZCBjYXN0IGFuZCBlbnN1cmUgcHJvcGVyIGFsaWdubWVudD8KCj4g
KwlyZXQgPSByZWdtYXBfYnVsa19yZWFkKHN0LT5tYXAsIElOVl9JQ000MjYwN19SRUdfVEVNUF9E
QVRBMSwgcmF3LCBzaXplb2YoKnJhdykpOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4gcmV0Owo+
ICsKPiArCSp0ZW1wID0gKHMxNiliZTE2X3RvX2NwdXAocmF3KTsKCmNhc3QgaXMgbm90IG5lZWRl
ZC4gdGVtcCBpcyBhbHJlYWR5IHMxNi4KCj4gKwlpZiAoKnRlbXAgPT0gSU5WX0lDTTQyNjA3X0RB
VEFfSU5WQUxJRCkKPiArCQlyZXQgPSAtRUlOVkFMOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30K
PiArCj4gK2ludCBpbnZfaWNtNDI2MDdfdGVtcF9yZWFkX3JhdyhzdHJ1Y3QgaWlvX2RldiAqaW5k
aW9fZGV2LAo+ICsJCQkJc3RydWN0IGlpb19jaGFuX3NwZWMgY29uc3QgKmNoYW4sCj4gKwkJCQlp
bnQgKnZhbCwgaW50ICp2YWwyLCBsb25nIG1hc2spCj4gK3sKPiArCXN0cnVjdCBpbnZfaWNtNDI2
MDdfc3RhdGUgKnN0ID0gaWlvX2RldmljZV9nZXRfZHJ2ZGF0YShpbmRpb19kZXYpOwo+ICsJczE2
IHRlbXA7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCWlmIChjaGFuLT50eXBlICE9IElJT19URU1QKQo+
ICsJCXJldHVybiAtRUlOVkFMOwo+ICsKPiArCXN3aXRjaCAobWFzaykgewo+ICsJY2FzZSBJSU9f
Q0hBTl9JTkZPX1JBVzoKPiArCQlpZiAoIWlpb19kZXZpY2VfY2xhaW1fZGlyZWN0KGluZGlvX2Rl
dikpCj4gKwkJCXJldHVybiAtRUJVU1k7Cj4gKwkJcmV0ID0gaW52X2ljbTQyNjA3X3RlbXBfcmVh
ZChzdCwgJnRlbXApOwo+ICsJCWlpb19kZXZpY2VfcmVsZWFzZV9kaXJlY3QoaW5kaW9fZGV2KTsK
PiArCQlpZiAocmV0KQo+ICsJCQlyZXR1cm4gcmV0Owo+ICsJCSp2YWwgPSB0ZW1wOwo+ICsJCXJl
dHVybiBJSU9fVkFMX0lOVDsKPiArCS8qCj4gKwkgKiBUwrBDID0gKHRlbXAgLyAxMjgpICsgMjUK
PiArCSAqIFRtwrBDID0gMTAwMCAqICgodGVtcCAqIDEwMCAvIDEyODAwKSArIDI1KQo+ICsJICog
c2NhbGU6IDEwMDAwMCAvIDEyODAwIH49IDcuODEyNQo+ICsJICogb2Zmc2V0OiAyNTAwMAo+ICsJ
ICovCj4gKwljYXNlIElJT19DSEFOX0lORk9fU0NBTEU6Cj4gKwkJKnZhbCA9IDc7Cj4gKwkJKnZh
bDIgPSA4MTI1MDA7Cj4gKwkJcmV0dXJuIElJT19WQUxfSU5UX1BMVVNfTUlDUk87CgpDb3VsZCB1
c2UgSUlPX1ZBTF9JTlRfUExVU19OQU5PIHRvIGdldCBtb3JlIGV4YWN0IHZhbHVlLgoKPiArCWNh
c2UgSUlPX0NIQU5fSU5GT19PRkZTRVQ6Cj4gKwkJKnZhbCA9IDI1MDAwOwo+ICsJCXJldHVybiBJ
SU9fVkFMX0lOVDsKPiArCWRlZmF1bHQ6Cj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwl9Cj4gK30K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
