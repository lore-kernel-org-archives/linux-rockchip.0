Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B116FC47DDB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jan 2024 10:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l7MvtpSLm2RNm2xc1Qjrx3yc99mn2EsyYsU2KWANtRQ=; b=Scqn6jJMm5JPCG
	2ZOrZGh8wHEr3JRcZ4zan9ccaTgwxScUQrlL/+/N7tPBUE8z7M94hDNOe27PftuGdnTMTLMkwbR16
	87LIKBF6RKeDQkWH4qr6MxYW8LxvMew6MG52p8zgdr0FruvTzwNCiNNSt8KaKRgl31GcziO5M8l0E
	41MJk8I1TC0W1qcWeb+Uua+GfjZ+jWifTKOTBlQDyStfhr2kaUYPv35cD+uaNYYbe+hJl2EUXyisR
	w15jB027lI2kn4vrzNSOd/zbYvR9zJkXVC/0q2MimA3JgmN0snTlY6UsQvvT+u1QXux+gGA1lARGa
	DamdrawXm1iAyz06cw2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSELr-00G18G-2N;
	Tue, 23 Jan 2024 10:49:55 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSELn-00G16D-2z;
	Tue, 23 Jan 2024 10:49:53 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-55a44bb66d3so4631759a12.1;
        Tue, 23 Jan 2024 02:49:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706006990; x=1706611790; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j1tTcpctKr7+to+rDFJ+mLDlkTkuMFtvhVWhYOJfG4o=;
        b=ch3on0h2l4dsigjcGbaZn5DIfe41xeNMxhqFfuFKDBoo+5CT1txyYkPxIRquT2bxuu
         DGZbVNTkB1qv8kiT8eB5VSkTJBhbEiQdbeH8H5Pco4J5yuy9JTjR0XJMg2jzD40WoUnm
         Z0IMYF+VBWZNBHD829yAyPGuMm0GrnmgB4oFV1w7sIbMM2/GJSBdjv/ro/6IBmy3a534
         qKB80VkKJIHmcW7DbFYkPDocJ2qXylCutBoZww53DH9obYmDrLJ1JteZmKVjsFEPPvCu
         EIfDH3qfVS5K0iHcmhiaUFkzuAT6QzB/lGNj03G+83U0UrPXYCnnqmglmzZLWQHiufDp
         6e2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706006990; x=1706611790;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j1tTcpctKr7+to+rDFJ+mLDlkTkuMFtvhVWhYOJfG4o=;
        b=dgMt+oC0lZsBOi4mQx9qDwyI3uOU6aGGSiKJUJh2m8hPkzk5n11hSejg2c8HbY57qQ
         Pp3x1OwF7cA5tyzmHhsRkIDHQWvhyaXQHWXkJ3FNbGrygWcscCdPodxIBK2aCXeY9apx
         BYkJMRfvBG2IFvFbLFtCrl49siQYn/TtylA6CZvKuLB5lb126kqdqYQXhUltI+L2GBHn
         7Fo+r6j2WBPg17s+LVY6acYbkJPuWHYnR8Stb9HpL2vKUWXY+A9/Qpx2ZCSwThYTcDY4
         mPxo0VrUttndyVre9rfG0oqiozl/XJSDDd5kJYQa4kb4GSw+QRZXve46R3t3dm41Wvuc
         2y+w==
X-Gm-Message-State: AOJu0YycNl+Th7tbkoL0rhfsyipXnHEHykYWPfoUvLaBgUkqyQxeQNFd
	525sMAhuGxsQOCGjWg6jZReyXu93x2GyJxReZQ1fnUJLFbOsoeaR
X-Google-Smtp-Source: AGHT+IERL/uUCLXkfWZSoUxkEgKCiGTldKue+P4EfKPsE7LACeSUpjZSr2Q4PWCPOqOJQIifcX9wPQ==
X-Received: by 2002:a05:6402:1502:b0:55a:b97:f79f with SMTP id f2-20020a056402150200b0055a0b97f79fmr751898edw.45.1706006989876;
        Tue, 23 Jan 2024 02:49:49 -0800 (PST)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id eo3-20020a056402530300b0055c76eebbdbsm779591edb.30.2024.01.23.02.49.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jan 2024 02:49:49 -0800 (PST)
Message-ID: <344a3de8-7f10-46f0-9524-dca58ceda671@gmail.com>
Date: Tue, 23 Jan 2024 11:49:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] spi: dt-bindings: spi-rockchip: restrict num-cs
To: Luis de Arquer <ldearquer@gmail.com>, broonie@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <acc4ff4b-811a-4a6d-8f58-9d8da3be40bb@gmail.com>
 <d6fc0ad6-ce20-4604-89e5-2598dc3fc0a6@gmail.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <d6fc0ad6-ce20-4604-89e5-2598dc3fc0a6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240123_024951_960231_C59992F8 
X-CRM114-Status: GOOD (  12.57  )
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

CgpPbiAxLzIzLzI0IDEwOjE3LCBMdWlzIGRlIEFycXVlciB3cm90ZToKPiBPbiAxLzIyLzI0IDIz
OjU5LCBKb2hhbiBKb25rZXIgd3JvdGU6Cj4+IEluIHRoZSBkcml2ZXIgc3BpLXJvY2tjaGlwLmMg
bWF4X25hdGl2ZV9jcyBpcyBsaW1pdGVkIHRvIDQgYW5kIHRoZQo+PiBkZWZhdWx0IG51bS1jcyBw
cm9wZXJ0eSBpcyAxLiBSZXN0cmljdCBudW0tY3MgaW4gc3BpLXJvY2tjaGlwLnlhbWwuCj4+Cj4g
Cgo+IERvZXNuJ3QgbnVtLWNzIGluY2x1ZGUgZ3BpbyBjaGlwIHNlbGVjdHMgdG9vPwo+IEkgaGF2
ZSBhIHNldHVwIHdpdGggbnVtLWNzID0gPDEyPiB3aGljaCB1c2VzIG5vbi1uYXRpdmUgY3MtZ3Bp
b3MganVzdCBmaW5lCgpHaXZlbiB0aGF0IGJpbmRpbmdzIGFuZCBMaW51eCBkcml2ZXJzIGNhcGFi
aWxpdGllcyBhcmUgMiBzZXBhcmF0ZSB0aGluZ3MuCkhvd2V2ZXIgdGhpcyBkb2N1bWVudCBoYXMg
YWxzbyBhIHB1cnBvc2UgdGhhdCBtdXN0IG5vdGlmeSBtYWlubGluZSBtYWludGFpbmVycyBpZiB1
c2VycyBzdWJtaXQgYm9ndXMgRFQgdmFsdWVzLgpDdXJyZW50bHkgdGhhdCBsaW1pdCBpcyBzZXQg
dG8gNCBpbiB0aGUgbWFpbmxpbmUgZHJpdmVyLgpZb3UgYXJlIGZyZWUgdG8gc3VibWl0IGEgcmVh
bCBib2FyZCBmaWxlL3BhdGNoIHNlcmllIGFmdGVyd29yZHMgYXMgcHJvb2YgZm9yIHJldmlldyB3
aXRoIDEyIHNwaSBjaGlwcyBhbmQgdGhlbiBhZGp1c3QgdGhpcyBsaW1pdCBhbmQgaW5jcmVhc2Ug
Uk9DS0NISVBfU1BJX01BWF9DU19OVU0uCgpKb2hhbgoKPiAKPiBMdWlzCj4gCj4+IFNpZ25lZC1v
ZmYtYnk6IEpvaGFuIEpvbmtlciA8amJ4NjI0NEBnbWFpbC5jb20+Cj4+IC0tLQo+PiDCoCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1yb2NrY2hpcC55YW1sIHwgNSAr
KysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1n
aXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1yb2NrY2hpcC55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktcm9ja2NoaXAu
eWFtbAo+PiBpbmRleCBlNDk0MWU5MjEyZDEuLjAwZDU1NWJjYmFkMyAxMDA2NDQKPj4gLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktcm9ja2NoaXAueWFtbAo+
PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1yb2NrY2hp
cC55YW1sCj4+IEBAIC02NSw2ICs2NSwxMSBAQCBwcm9wZXJ0aWVzOgo+PiDCoMKgwqDCoMKgwqDC
oCAtIGNvbnN0OiB0eAo+PiDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByeAo+Pgo+PiArwqAgbnVt
LWNzOgo+PiArwqDCoMKgIGRlZmF1bHQ6IDEKPj4gK8KgwqDCoCBtaW5pbXVtOiAxCj4+ICvCoMKg
wqAgbWF4aW11bTogNAo+PiArCj4+IMKgwqDCoCByeC1zYW1wbGUtZGVsYXktbnM6Cj4+IMKgwqDC
oMKgwqAgZGVmYXVsdDogMAo+PiDCoMKgwqDCoMKgIGRlc2NyaXB0aW9uOgo+PiAtLSAKPj4gMi4z
OS4yCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+PiBMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
