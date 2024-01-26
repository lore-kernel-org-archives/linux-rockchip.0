Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1209DC47DDB
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jan 2024 19:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLETJhWaylCyjZ/rMBVB+5xr09o391Oc6LsAXc1sEJY=; b=m+b88md3y6gwwA
	qxno615j2bP5XuCJTVuRwo9xfc8v8x/xbUePg5lQBFmu7vU8GY846TliTXvJ8WG6sCNfbM4HDpi60
	YZzAy/TZ/kKCk/rOYbNP2Vgg5lUS5J0MOrKuk2UHlfaTq9QVsRqszuwGxP4X7yhuhfdV/zuM6DryS
	JwhOLUD/z3/10yxyCDPk4P/JpcUvxVMWTLKgluTLdog4SNaSjvSCLmqQsvMbkk0BVOKcKvuAv2PNc
	oY3gQi8W2kpF2fLOvYwAGF++OUI+B/3o7U0yO+VDgXnVmggrN89h88kFu6RSNXypB4Prr0WSwn9xt
	80T4quq8WM+EEfNO/VIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTRnE-00000005DaS-1UPA;
	Fri, 26 Jan 2024 19:23:12 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTRnB-00000005DZj-1BbU;
	Fri, 26 Jan 2024 19:23:10 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-337cf4ac600so861152f8f.3;
        Fri, 26 Jan 2024 11:23:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706296986; x=1706901786; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i7XyfHafPzk4o7TH4Z/Q88VVxtW7j3Tbp7VfVnvGsEc=;
        b=fFyzuuJ5HrH+aSiRy6Kjgkmabt1Kep6UXlyioRp+o93vLwEKjMaZifzDfhyKqZ4cop
         93ouAsaBTvjrz8jUlpTx1bMGr1VsUOzXXncgNjsa40385zxnOnyd/FVZjLkJf6nL7eNo
         RaFyZLpTVE4yRfwYE4a6oQ32C2UvDs8knNsdaMYf7rMmASsruRg1pSfdhtwgYD/0KclC
         olbOslx3FnEDBYY8Kq4qpkXoKZWBp6KMloXf8tH5Mh2tftMWK6o6KCSzrpIw6xQyV2VY
         ZkIWDlI1KI55RvhSAh4nyw5r0Fsl0IOFlxxoUIKpn3CwEvBKTlXvoZoQ5EABR+FB3UJD
         j9UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706296986; x=1706901786;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i7XyfHafPzk4o7TH4Z/Q88VVxtW7j3Tbp7VfVnvGsEc=;
        b=HkFGvUEZRfs91Ik2THVNyGSrxJh2tmUbVqBkhkRkLmaiZUfLk37RblkIg8uAghm9UW
         izghqhLTKgbH655GU8dTScG7E1iWWwVTIQrEKtuPoWQ09k8HV2zzjkLOaxaoB+BEv2rt
         a5x/oQiGTlfbeFIyQs4tNWP2wYFyArHMwT3EEtA/3JJ87UbQUxbZi7qSt20kFjo4zepA
         aO6M5IMz/z4KXgBudDrl2WOxgZVeaSdonMdD0Ps/ufg5fGuO+nSKerGlGtbwiw8etFOT
         En/KLJcgr+LBlJizpoEcGiJ+YqoVMb0ukntGajeqDi/8ZZfX1xpXbB9UelPBAea330IM
         D2sg==
X-Gm-Message-State: AOJu0YygryHmTEs4a0nOzd+ZvN27o9AkZOnyyBE2S7+wYw0Z9m/S8b+K
	Uz+7cSdgwRj09avcFpO4Zdg00LZhLAUrXjDc+VtZbX816XXI5oNf
X-Google-Smtp-Source: AGHT+IF1+PZeX7PZt2kTQgTViZHQHL+3yVD7+6dcQhCOhwvZBDjkk41rFIK3ofAq4p5K5JETMKgALQ==
X-Received: by 2002:a5d:4008:0:b0:337:c7ff:85e1 with SMTP id n8-20020a5d4008000000b00337c7ff85e1mr83945wrp.131.1706296986249;
        Fri, 26 Jan 2024 11:23:06 -0800 (PST)
Received: from [192.168.0.5] (cm-83-97-153-254.telecable.es. [83.97.153.254])
        by smtp.gmail.com with ESMTPSA id ba11-20020a0560001c0b00b003366c058509sm1859765wrb.23.2024.01.26.11.23.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jan 2024 11:23:05 -0800 (PST)
Message-ID: <c88d56ba-3214-4053-9533-bec12bf110ef@gmail.com>
Date: Fri, 26 Jan 2024 20:23:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] spi: dt-bindings: spi-rockchip: restrict num-cs
To: Robin Murphy <robin.murphy@arm.com>, Johan Jonker <jbx6244@gmail.com>,
 broonie@kernel.org
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, heiko@sntech.de, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <acc4ff4b-811a-4a6d-8f58-9d8da3be40bb@gmail.com>
 <d6fc0ad6-ce20-4604-89e5-2598dc3fc0a6@gmail.com>
 <344a3de8-7f10-46f0-9524-dca58ceda671@gmail.com>
 <97fcde65-9eb0-44e1-a87a-caa308d1998b@arm.com>
Content-Language: en-US
From: Luis de Arquer <ldearquer@gmail.com>
In-Reply-To: <97fcde65-9eb0-44e1-a87a-caa308d1998b@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_112309_347593_8BAD1758 
X-CRM114-Status: GOOD (  28.58  )
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

SGkgUm9iaW4sCgpPbiAxLzIzLzI0IDE4OjQ1LCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4gT24gMjMv
MDEvMjAyNCAxMDo0OSBhbSwgSm9oYW4gSm9ua2VyIHdyb3RlOgo+Pgo+Pgo+PiBPbiAxLzIzLzI0
IDEwOjE3LCBMdWlzIGRlIEFycXVlciB3cm90ZToKPj4+IE9uIDEvMjIvMjQgMjM6NTksIEpvaGFu
IEpvbmtlciB3cm90ZToKPj4+PiBJbiB0aGUgZHJpdmVyIHNwaS1yb2NrY2hpcC5jIG1heF9uYXRp
dmVfY3MgaXMgbGltaXRlZCB0byA0IGFuZCB0aGUKPj4+PiBkZWZhdWx0IG51bS1jcyBwcm9wZXJ0
eSBpcyAxLiBSZXN0cmljdCBudW0tY3MgaW4gc3BpLXJvY2tjaGlwLnlhbWwuCj4+Pj4KPj4+Cj4+
Cj4+PiBEb2Vzbid0IG51bS1jcyBpbmNsdWRlIGdwaW8gY2hpcCBzZWxlY3RzIHRvbz8KPj4+IEkg
aGF2ZSBhIHNldHVwIHdpdGggbnVtLWNzID0gPDEyPiB3aGljaCB1c2VzIG5vbi1uYXRpdmUgY3Mt
Z3Bpb3MganVzdCAKPj4+IGZpbmUKPj4KPj4gR2l2ZW4gdGhhdCBiaW5kaW5ncyBhbmQgTGludXgg
ZHJpdmVycyBjYXBhYmlsaXRpZXMgYXJlIDIgc2VwYXJhdGUgdGhpbmdzLgo+IAo+IEVyLCB0aGF0
J3MgdGhlIHdob2xlIHBvaW50IC0gYmluZGluZ3MgYW5kIGRyaXZlcnMgKmFyZSogc2VwYXJhdGUg
dGhpbmdzLCAKPiBhbmQgYmluZGluZ3MgZG8gbm90IGRlc2NyaWJlIGRyaXZlcnMuIE5vdCBsZWFz
dCBzaW5jZSB0aGUgZnVuZGFtZW50YWwgCj4gbW9kZWwgaXMgdG8gaGF2ZSBvbmUgY2Fub25pY2Fs
IGJpbmRpbmcgZm9yIG11bHRpcGxlIGRpZmZlcmVudCBkcml2ZXJzIHRvIAo+IGNvbnN1bWUuCj4g
Cj4gVGhlcmUgc2VlbXMgdG8gYmUgc29tZSBhbWJpZ3VpdHkgYXMgdG8gd2hldGhlciB0aGUgY29t
bW9uICJudW0tY3MiIAo+IHByb3BlcnR5IGlzIHN1cHBvc2VkIHRvIGRlc2NyaWJlIHRoZSBudW1i
ZXIgb2YgZGVkaWNhdGVkIGhhcmR3YXJlIAo+IGNoaXBzZWxlY3RzIG9yIHRoZSB0b3RhbCBudW1i
ZXIgaW5jbHVkaW5nIGFkZGl0aW9uYWwgR1BJT3MsIGJ1dCBlaXRoZXIgCj4gd2F5IHRoaXMgY2hh
bmdlIGFwcGVhcnMgdG8gYmUgb2JqZWN0aXZlbHkgd3JvbmcgLSBpZiBpdCdzIHRoZSBmb3JtZXIg
Cj4gdGhhbiB0aGUgY29tbWVudCBpbiB0aGUgZHJpdmVyIHBsdXMgYSBzdXJ2ZXkgb2YgYSBmZXcg
VFJNcyBpbXBsaWVzIHRoYXQgCj4gdGhlIG1heGltdW0gbnVtYmVyIG9mIGhhcmR3YXJlIGxpbmVz
IGlzIDI7IGlmIGl0J3MgdGhlIGxhdHRlciB0aGVuIAo+IG9idmlvdXNseSBpdCdzIHZhbGlkIGZv
ciBhIHBsYXRmb3JtIHRvIHdpcmUgdXAgMyBvciBtb3JlIGFkZGl0aW9uYWwgCj4gR1BJT3MgYXMg
ZGVzaXJlZCwgYW5kIGZvciBhIERUIHRvIGFjY3VyYXRlbHkgZGVzY3JpYmUgdGhhdCwgcmVnYXJk
bGVzcyAKPiBvZiB3aGV0aGVyIGFueSBwYXJ0aWN1bGFyIGNvbnN1bWVyIGhhcHBlbnMgdG8gc3Vw
cG9ydCBpdCB5ZXQgb3Igbm90LiBGb3IgCj4gZXhhbXBsZSwgQUZBSUNTIHRoZSBVLUJvb3QgYW5k
IEZyZWVCU0QgZHJpdmVycyBmb3IgUm9ja2NoaXAgU1BJIGFwcGVhciAKPiBub3QgdG8gc3VwcG9y
dCBHUElPIGNoaXBzZWxlY3RzIGF0IGFsbC4KPiAKCkkgYWx3YXlzIHVuZGVyc3Rvb2QgbnVtLWNz
IHdhcyBhIHNwaSBzdWJzeXN0ZW0gdGhpbmcsIHdoaWNoIGNhbiBiZSAKZXh0ZW5kZWQgd2l0aCBh
cyBtYW55IGdwaW9zIGFzIG5lZWRlZC4KCkhvd2V2ZXIsIGl0IGxvb2tzIHNwaS1yb2NrY2hpcCBt
YXkgYmUgbGltaXRpbmcgbnVtLWNzIHRvIDQgYWZ0ZXIgYWxsLgoKSXQga2VlcHMgYSBjb3B5IG9m
IHRoZSBzdGF0ZSBvZiB0aGUgY2hpcCBzZWxlY3RzIGludG8gYW4gYXJyYXkgCidjc19hc3NlcnRl
ZCcgb2Ygc2l6ZSA0LiBJdCB3b3VsZG4ndCBiZSBhIHByb2JsZW0gaWYgaXQgd2Fzbid0IGJlY2F1
c2UgCnRoZSBkcml2ZXIgc2V0cyB0aGUgZmxhZyBTUElfQ09OVFJPTExFUl9HUElPX1NTLCB3aGlj
aCBtYWtlcyBkcml2ZXIncyAKc2V0X2NzKCkgZnVuY3Rpb24gdG8gYmUgY2FsbGVkIGV2ZW4gZm9y
IGdwaW8gbGluZXMuCgpBbGwgdGhpcyBsZWFkcyB0byBhbiBvdXQgb2YgYm91bmRzIGFjY2VzcyB3
aGVuIG51bS1jcyA+IDQuCgpJIHdhcyBhYmxlIHRvIHJlcHJvZHVjZSB0aGUgaXNzdWUgd2l0aCA2
IHNwaWRldiBkZXZpY2VzIChhbGwgd2l0aCBncGlvIApjcykgYWRkaW5nIDIgZ3VhcmQgdTggdmFy
aWFibGVzIGluICdzdHJ1Y3Qgcm9ja2NoaXBfc3BpJyByaWdodCBhZnRlciAKJ2NzX2Fzc2VydGVk
JyBhcnJheSwgYW5kIHRoZXkgZ290IG92ZXJ3cml0dGVuIHdoZW4gYWNjZXNzaW5nIGRldmljZXMg
CnNwaWRldjAuNCBhbmQgc3BpZGV2MC41CgpFdmVuIHRob3VnaCBJIGRpZCB0aGUgdGVzdCB3aXRo
IGEgZG93bnN0cmVhbSBrZXJuZWwgKEkgbmVlZCBtb3JlIHRpbWUgdG8gCnRlc3Qgb24gbWFpbmxp
bmUpLCB0aGUgZHJpdmVyIGlzIG1vc3RseSBpZGVudGljYWwsIGFuZCB0aGUgcHJvYmxlbSBzZWVt
cyAKdG8gcGVyc2lzdCBpbiBtYWlubGluZS4KCkkgcmV2aWV3ZWQgYW5kIHByZXBhcmVkIGEgZml4
IG9uIG15IHN5c3RlbS4gSSBhbSBidWlsZGluZyB0aGUgZml4IG9uIApsaW51eC1yb2NrY2hpcCB0
cmVlLCBhbmQgSSB3aWxsIHRyeSB0byBwb3N0IGl0IGZvciByZXZpZXcgc29vbi4KCkx1aXMKCj4g
VGhhbmtzLAo+IFJvYmluLgo+IAo+PiBIb3dldmVyIHRoaXMgZG9jdW1lbnQgaGFzIGFsc28gYSBw
dXJwb3NlIHRoYXQgbXVzdCBub3RpZnkgbWFpbmxpbmUgCj4+IG1haW50YWluZXJzIGlmIHVzZXJz
IHN1Ym1pdCBib2d1cyBEVCB2YWx1ZXMuCj4+IEN1cnJlbnRseSB0aGF0IGxpbWl0IGlzIHNldCB0
byA0IGluIHRoZSBtYWlubGluZSBkcml2ZXIuCj4+IFlvdSBhcmUgZnJlZSB0byBzdWJtaXQgYSBy
ZWFsIGJvYXJkIGZpbGUvcGF0Y2ggc2VyaWUgYWZ0ZXJ3b3JkcyBhcyAKPj4gcHJvb2YgZm9yIHJl
dmlldyB3aXRoIDEyIHNwaSBjaGlwcyBhbmQgdGhlbiBhZGp1c3QgdGhpcyBsaW1pdCBhbmQgCj4+
IGluY3JlYXNlIFJPQ0tDSElQX1NQSV9NQVhfQ1NfTlVNLgo+Pgo+PiBKb2hhbgo+Pgo+Pj4KPj4+
IEx1aXMKPj4+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogSm9oYW4gSm9ua2VyIDxqYng2MjQ0QGdtYWls
LmNvbT4KPj4+PiAtLS0KPj4+PiDCoMKgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9zcGkvc3BpLXJvY2tjaGlwLnlhbWwgfCA1ICsrKysrCj4+Pj4gwqDCoCAxIGZpbGUgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktcm9ja2NoaXAueWFtbCAKPj4+PiBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zcGkvc3BpLXJvY2tjaGlwLnlhbWwKPj4+PiBpbmRl
eCBlNDk0MWU5MjEyZDEuLjAwZDU1NWJjYmFkMyAxMDA2NDQKPj4+PiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc3BpL3NwaS1yb2NrY2hpcC55YW1sCj4+Pj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NwaS9zcGktcm9ja2NoaXAueWFtbAo+
Pj4+IEBAIC02NSw2ICs2NSwxMSBAQCBwcm9wZXJ0aWVzOgo+Pj4+IMKgwqDCoMKgwqDCoMKgwqAg
LSBjb25zdDogdHgKPj4+PiDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHJ4Cj4+Pj4KPj4+PiAr
wqAgbnVtLWNzOgo+Pj4+ICvCoMKgwqAgZGVmYXVsdDogMQo+Pj4+ICvCoMKgwqAgbWluaW11bTog
MQo+Pj4+ICvCoMKgwqAgbWF4aW11bTogNAo+Pj4+ICsKPj4+PiDCoMKgwqDCoCByeC1zYW1wbGUt
ZGVsYXktbnM6Cj4+Pj4gwqDCoMKgwqDCoMKgIGRlZmF1bHQ6IDAKPj4+PiDCoMKgwqDCoMKgwqAg
ZGVzY3JpcHRpb246Cj4+Pj4gLS0gCj4+Pj4gMi4zOS4yCj4+Pj4KPj4+Pgo+Pj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+Pj4gTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0Cj4+Pj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+
Pj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAKPj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+PiBMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
