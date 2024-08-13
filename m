Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3C47C52D7B
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Aug 2024 18:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D/ZIzFQD3dqJhXmo4R283JbtdrmtIL4PLFrBvM0/nqI=; b=1fjU24m04bDy7H
	//6smle8ZZUBBSr3f/U1rnKCqismndUbqexCb2v1YF249BAauD1izcYS68swHED3SkdOA2Yv863zT
	aHUL9Cc1u9qYmkhODhGLqyZOFrALv1ZKu/ik3uuQ3H+1wQOjgzGSuNdJNSJzmaJjZIDdgavzUxYQa
	G5+G6P5Gs66bCwyxuYUrexgLmObvVs/nUaea2YDPHI1J+9yC9A6LoeyGjRVhyDMNlbSCEmrOuVVqQ
	hdSrJmAhP1n9qA+IOOLouKErNxxP/ys7lrlxl5XiD32fsm+j4h99x9QDnm7G3LqHq5zmle7AgmHyN
	Kk1U9aGaaMRWjL5YgPUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdwJM-00000004dmJ-1oPo;
	Tue, 13 Aug 2024 18:32:00 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdwJJ-00000004dlO-1tt8
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Aug 2024 18:31:58 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5a156557029so6612945a12.2
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Aug 2024 11:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723573915; x=1724178715; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=fZjzboO9UmfdwypV/EQ5V8Ua/shR3HQpQR9CVMCsZhQ=;
        b=eG2AgjPWVM2/txA/mayKhTa+YtK9U2thkbqN/vInNeTIGJZEM4O3HoY0WfmbkxdG8D
         7h+EfzAdPGAhiH9MtAJf1FgW47QkIc1D1GX7cSESTTNsIQlMBln8fC6pNejgUS6PqMD/
         /Urs3MJ2amfvpQ97vNKqDPlsY4IVrxawaP/1E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723573915; x=1724178715;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :references:cc:to:from:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fZjzboO9UmfdwypV/EQ5V8Ua/shR3HQpQR9CVMCsZhQ=;
        b=K1GKiY4XBGL95Dozs03dMKSd2aM9UtpRMzYC8W6OAZnQ3F9D2sFXX94mY8/e4CD1xU
         a2WWxuhhgsS+GT6V85nV9/w5mLbfJwTCyYMo0Mby2akatvcwsf+Ck6gbB/n3aBxdymO+
         qmi/lB8IH5qQVrHBja5W5cg17WbJ6V36KWRyHfVFQEcBAW92n06B+K8yKOrNcsfldb2l
         1Wkl5jxfMuV/kylVZNQdm4dt444Jp0e9m25hU4dgXitkqTxG4BF118zCTCwLOypC21Wt
         xQTAsw8Y96WVnJXXuRvy2NWQLkp4t4BlxQNDG68xyCdFWLByvplHHN/LdX3P0G54FJR4
         bUrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWrM48Dk35UEaDibIc0pO/5I4/3328GUKTJp8qace9lC46Jat/8WH7CJRdQyr5fnFxwltcFxgcN4coScp7rDvHsqCnchae2klo1yroIVfVGOkeI
X-Gm-Message-State: AOJu0YxSdcKf0Fqy8gEWRLE4VRjcyrPd1e5wbjmkJHzKkiYZmTa9xves
	SFbG2HjSq/irNof77DqTvcsnYSw+YRLUYhqW+/+7FK7PG1TSMLJFyZwTVLtC4w==
X-Google-Smtp-Source: AGHT+IGj8fhaeyyoAStEAef22eG7BYdK/y4E+CHsJOWxz3g/Onn/4uKnIX70JYlH5u94sT1HVp9LHA==
X-Received: by 2002:a17:907:f183:b0:a7a:8cc7:ca48 with SMTP id a640c23a62f3a-a8366fef3d1mr15748666b.46.1723573914849;
        Tue, 13 Aug 2024 11:31:54 -0700 (PDT)
Received: from [192.168.178.137] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a80f3fed638sm89497466b.92.2024.08.13.11.31.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Aug 2024 11:31:54 -0700 (PDT)
Message-ID: <de80a665-07d2-4b38-9415-5ee1ed09e690@broadcom.com>
Date: Tue, 13 Aug 2024 20:31:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
From: Arend van Spriel <arend.vanspriel@broadcom.com>
To: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, conor+dt@kernel.org
Cc: efectn@protonmail.com, dsimic@manjaro.org, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 megi@xff.cz, duoming@zju.edu.cn, bhelgaas@google.com,
 minipli@grsecurity.net, brcm80211@lists.linux.dev,
 brcm80211-dev-list.pdl@broadcom.com, nick@khadas.com,
 Sai Krishna <saikrishnag@marvell.com>
References: <20240813082007.2625841-1-jacobe.zang@wesion.com>
 <20240813082007.2625841-5-jacobe.zang@wesion.com>
 <721da64c-42ec-4be6-8ad3-e2685a84823a@broadcom.com>
Content-Language: en-US
Autocrypt: addr=arend.vanspriel@broadcom.com; keydata=
 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
In-Reply-To: <721da64c-42ec-4be6-8ad3-e2685a84823a@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_113157_524100_4B182E1D 
X-CRM114-Status: GOOD (  25.56  )
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

T24gOC8xMy8yMDI0IDE6NTcgUE0sIEFyZW5kIHZhbiBTcHJpZWwgd3JvdGU6Cj4gT24gOC8xMy8y
MDI0IDEwOjIwIEFNLCBKYWNvYmUgWmFuZyB3cm90ZToKPj4gV2lGaSBtb2R1bGVzIG9mdGVuIHJl
cXVpcmUgMzJrSHogY2xvY2sgdG8gZnVuY3Rpb24uIEFkZCBzdXBwb3J0IHRvCj4+IGVuYWJsZSB0
aGUgY2xvY2sgdG8gUENJZSBkcml2ZXIgYW5kIG1vdmUgImJyY20sYmNtNDMyOS1mbWFjIiBjaGVj
awo+PiB0byB0aGUgdG9wIG9mIGJyY21mX29mX3Byb2JlLiBDaGFuZ2UgZnVuY3Rpb24gcHJvdG90
eXBlcyBmcm9tIHZvaWQKPj4gdG8gaW50IGFuZCBhZGQgYXBwcm9wcmlhdGUgZXJybm8ncyBmb3Ig
cmV0dXJuIHZhbHVlcyB0aGF0IHdpbGwgYmUKPj4gc2VuZCB0byBidXMgd2hlbiBlcnJvciBvY2N1
cnJlZC4KPiAKPiBJIHdhcyBnb2luZyB0byBzYXkgaXQgbG9va3MgZ29vZCB0byBtZSwgYnV0Li4u
Lgo+IAo+PiBDby1kZXZlbG9wZWQtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+PiBT
aWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPj4gQ28tZGV2ZWxvcGVk
LWJ5OiBBcmVuZCB2YW4gU3ByaWVsIDxhcmVuZC52YW5zcHJpZWxAYnJvYWRjb20uY29tPgo+PiBT
aWduZWQtb2ZmLWJ5OiBBcmVuZCB2YW4gU3ByaWVsIDxhcmVuZC52YW5zcHJpZWxAYnJvYWRjb20u
Y29tPgo+PiBSZXZpZXdlZC1ieTogU2FpIEtyaXNobmEgPHNhaWtyaXNobmFnQG1hcnZlbGwuY29t
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBKYWNvYmUgWmFuZyA8amFjb2JlLnphbmdAd2VzaW9uLmNvbT4K
Pj4gLS0tCj4+IMKgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvYmNtc2RoLmPCoMKg
wqDCoMKgIHzCoCA0ICstCj4+IMKgIC4uLi9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvY29t
bW9uLmPCoMKgwqDCoMKgIHzCoCAzICstCj4+IMKgIC4uLi93aXJlbGVzcy9icm9hZGNvbS9icmNt
ODAyMTEvYnJjbWZtYWMvb2YuYyB8IDUzICsrKysrKysrKysrLS0tLS0tLS0KPj4gwqAgLi4uL3dp
cmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5oIHzCoCA5ICsrLS0KPj4gwqAg
Li4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9wY2llLmPCoMKgwqDCoMKgwqDCoCB8wqAg
MyArKwo+PiDCoCAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL3NkaW8uY8KgwqDCoMKg
wqDCoMKgIHwgMjIgKysrKystLS0KPj4gwqAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1h
Yy91c2IuY8KgwqDCoMKgwqDCoMKgwqAgfMKgIDMgKysKPj4gwqAgNyBmaWxlcyBjaGFuZ2VkLCA2
MSBpbnNlcnRpb25zKCspLCAzNiBkZWxldGlvbnMoLSkKPiAKPiBbLi4uXQo+IAo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29m
LmMgCj4+IGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFj
L29mLmMKPj4gaW5kZXggZTQwNmUxMTQ4MWE2Mi4uZjE5ZGM3MzU1ZTBlOCAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmMK
Pj4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFj
L29mLmMKPiAKPiBbLi4uXQo+IAo+PiBAQCAtMTEzLDMzICsxMTgsMzkgQEAgdm9pZCBicmNtZl9v
Zl9wcm9iZShzdHJ1Y3QgZGV2aWNlICpkZXYsIGVudW0gCj4+IGJyY21mX2J1c190eXBlIGJ1c190
eXBlLAo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgb2Zfbm9kZV9wdXQocm9vdCk7Cj4+IMKgwqDCoMKg
wqAgfQo+PiAtwqDCoMKgIGlmICghbnAgfHwgIW9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAi
YnJjbSxiY200MzI5LWZtYWMiKSkKPj4gLcKgwqDCoMKgwqDCoMKgIHJldHVybjsKPj4gLQo+PiDC
oMKgwqDCoMKgIGVyciA9IGJyY21mX29mX2dldF9jb3VudHJ5X2NvZGVzKGRldiwgc2V0dGluZ3Mp
Owo+PiDCoMKgwqDCoMKgIGlmIChlcnIpCj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBicmNtZl9lcnIo
ImZhaWxlZCB0byBnZXQgT0YgY291bnRyeSBjb2RlIG1hcCAoZXJyPSVkKVxuIiwgZXJyKTsKPj4g
wqDCoMKgwqDCoCBvZl9nZXRfbWFjX2FkZHJlc3MobnAsIHNldHRpbmdzLT5tYWMpOwo+PiAtwqDC
oMKgIGlmIChidXNfdHlwZSAhPSBCUkNNRl9CVVNUWVBFX1NESU8pCj4+IC3CoMKgwqDCoMKgwqDC
oCByZXR1cm47Cj4+ICvCoMKgwqAgaWYgKGJ1c190eXBlID09IEJSQ01GX0JVU1RZUEVfU0RJTykg
ewo+IAo+IERvbid0IGxpa2UgdGhlIGZhY3QgdGhhdCB0aGlzIG5vdyBoYXMgYW4gZXh0cmEgaW5k
ZW50YXRpb24gbGV2ZWwgYW5kIGl0IAo+IG9mZmVycyBubyBleHRyYSBiZW5lZml0LiBKdXN0IGtl
ZXAgdGhlIG9yaWdpbmFsIGlmLXN0YXRlbWVudCBhbmQgcmV0dXJuIAo+IDAuIENvbnNlcXVlbnRs
eSB0aGUgTFBPIGNsb2NrIGNvZGUgc2hvdWxkIG1vdmUganVzdCBiZWZvcmUgdGhlIAo+IGlmLXN0
YXRlbWVudC4KPiAKPj4gK8KgwqDCoMKgwqDCoMKgIGlmIChvZl9wcm9wZXJ0eV9yZWFkX3UzMihu
cCwgImJyY20sZHJpdmUtc3RyZW5ndGgiLCAmdmFsKSA9PSAwKQo+PiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBzZGlvLT5kcml2ZV9zdHJlbmd0aCA9IHZhbDsKPj4gLcKgwqDCoCBpZiAob2ZfcHJv
cGVydHlfcmVhZF91MzIobnAsICJicmNtLGRyaXZlLXN0cmVuZ3RoIiwgJnZhbCkgPT0gMCkKPj4g
LcKgwqDCoMKgwqDCoMKgIHNkaW8tPmRyaXZlX3N0cmVuZ3RoID0gdmFsOwo+PiArwqDCoMKgwqDC
oMKgwqAgLyogbWFrZSBzdXJlIHRoZXJlIGFyZSBpbnRlcnJ1cHRzIGRlZmluZWQgaW4gdGhlIG5v
ZGUgKi8KPj4gK8KgwqDCoMKgwqDCoMKgIGlmICghb2ZfcHJvcGVydHlfcHJlc2VudChucCwgImlu
dGVycnVwdHMiKSkKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+IC3CoMKg
wqAgLyogbWFrZSBzdXJlIHRoZXJlIGFyZSBpbnRlcnJ1cHRzIGRlZmluZWQgaW4gdGhlIG5vZGUg
Ki8KPj4gLcKgwqDCoCBpZiAoIW9mX3Byb3BlcnR5X3ByZXNlbnQobnAsICJpbnRlcnJ1cHRzIikp
Cj4+IC3CoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+ICvCoMKgwqDCoMKgwqDCoCBpcnEgPSBpcnFf
b2ZfcGFyc2VfYW5kX21hcChucCwgMCk7Cj4+ICvCoMKgwqDCoMKgwqDCoCBpZiAoIWlycSkgewo+
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBicmNtZl9lcnIoImludGVycnVwdCBjb3VsZCBub3Qg
YmUgbWFwcGVkXG4iKTsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIDA7Cj4+ICvC
oMKgwqDCoMKgwqDCoCB9Cj4+ICvCoMKgwqDCoMKgwqDCoCBpcnFmID0gaXJxZF9nZXRfdHJpZ2dl
cl90eXBlKGlycV9nZXRfaXJxX2RhdGEoaXJxKSk7Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIHNk
aW8tPm9vYl9pcnFfc3VwcG9ydGVkID0gdHJ1ZTsKPj4gK8KgwqDCoMKgwqDCoMKgIHNkaW8tPm9v
Yl9pcnFfbnIgPSBpcnE7Cj4+ICvCoMKgwqDCoMKgwqDCoCBzZGlvLT5vb2JfaXJxX2ZsYWdzID0g
aXJxZjsKPj4gK8KgwqDCoCB9Cj4+IC3CoMKgwqAgaXJxID0gaXJxX29mX3BhcnNlX2FuZF9tYXAo
bnAsIDApOwo+PiAtwqDCoMKgIGlmICghaXJxKSB7Cj4+IC3CoMKgwqDCoMKgwqDCoCBicmNtZl9l
cnIoImludGVycnVwdCBjb3VsZCBub3QgYmUgbWFwcGVkXG4iKTsKPj4gLcKgwqDCoMKgwqDCoMKg
IHJldHVybjsKPj4gK8KgwqDCoCBjbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWxfZW5hYmxlZChk
ZXYsICJscG8iKTsKPj4gK8KgwqDCoCBpZiAoIUlTX0VSUl9PUl9OVUxMKGNsaykpIHsKPj4gK8Kg
wqDCoMKgwqDCoMKgIGJyY21mX2RiZyhJTkZPLCAiZW5hYmxpbmcgMzJrSHogY2xvY2tcbiIpOwo+
PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIGNsa19zZXRfcmF0ZShjbGssIDMyNzY4KTsKPj4gK8Kg
wqDCoCB9IGVsc2Ugewo+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIFBUUl9FUlJfT1JfWkVSTyhj
bGspOwo+PiDCoMKgwqDCoMKgIH0KPiAKPiBDaGFuZ2UgdGhpcyB0bzoKPiAKPiAgPiArwqDCoMKg
IGNsayA9IGRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFibGVkKGRldiwgImxwbyIpOwo+ICA+ICvC
oMKgwqAgaWYgKElTX0VSUl9PUl9OVUxMKGNsaykpIHsKPiAgPiArwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIFBUUl9FUlJfT1JfWkVSTyhjbGspOwo+ICA+ICvCoMKgwqAgfQo+ICA+ICvCoMKgwqAgYnJj
bWZfZGJnKElORk8sICJlbmFibGluZyAzMmtIeiBjbG9ja1xuIik7Cj4gID4gK8KgwqDCoCBjbGtf
c2V0X3JhdGUoY2xrLCAzMjc2OCk7CgpEbyB3ZSByZWFsbHkgbmVlZCB0byBzZXQgdGhlIGNsb2Nr
IHJhdGUgb3IgY291bGQgdGhhdCBiZSBkZWZpbmVkIGluIHRoZSAKZGV2aWNldHJlZT8gSnVzdCB3
b25kZXJpbmcuIEkgaGF2ZSBsb29rZWQgYXQgdGhlIGNsb2NrLnlhbWwgc2NoZW1hLCBidXQgCm5v
dCByZWFsbHkgYW4gaWRlYSB3aGF0IGlzIG5lZWRlZCBpbiB0aGUgZGV2aWNldHJlZSBzcGVjLiBB
bnkgcG9pbnRlcnMgCmZyb20gRFQgZGV2cyB3b3VsZCBiZSBhcHByZWNpYXRlZCBvciBhIGhhcmQg
bm8tZG8tbm90LWRvLXRoYXQgaXMgYWxzbyAKZmluZSA7LSkKClJlZ2FyZHMsCkFyZW5kCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
