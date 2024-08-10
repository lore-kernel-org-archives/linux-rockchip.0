Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 512FCC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 18:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iQqekmMoJgnvIfodMgYDJnvqwUM8YfMVNLBsYBAJDlI=; b=4zUObAWZo451BT3z5i/5h/+Eki
	KpoewG6SwE3QVd+egYIieqrMWi+/Kw19aJpS+p3L7vpY+hj4gQ1jWKPs5Im62OvNjvrJI61IT/OQI
	+iaV6DpOpeFpLd5VHasPxzAICZJBek0HqSpAjDhAmyJ8rGWXDenvEAV3dAhaKRB7MX+A34tKk4i1Y
	zqEzQecOth1mBmcVYqwpDA7t8IrwpH70mH8HUi40su5iHsUAEx/JpEu32lmkrVayusTKOttA+UKCl
	FVBvYwIaTRg7Tss/mhidXd3AZYu3O1hVmU0WpfIuZ97w2nBKF5fDztgnmqDcHtNcdxULRPFVyYfPI
	MoJQA5TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scqu6-0000000ERJB-41R2;
	Sat, 10 Aug 2024 18:33:26 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scqtZ-0000000ERBL-3ly4
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Aug 2024 18:32:55 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a728f74c23dso344806766b.1
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Aug 2024 11:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723314771; x=1723919571; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=u8muDajrGX3FO5dD48egl2aXV9/qSThjd9VJkKWphN4=;
        b=cWb7BDGFaloPRmgQ4qiODwDIhLWiLZvOi0Bh2EsHciHlsj65sUTP3w3fFoqGsEeCDt
         YF7T+y0pSfWAtbO2nIymXpj+CPzHBkgz6O9YchxKEN2h9u2fadp6eWz4Vfk/ujjBZXzU
         wQwm6A8YKg3jvHnEDyqNqcWVumursf62CQ2fU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723314771; x=1723919571;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u8muDajrGX3FO5dD48egl2aXV9/qSThjd9VJkKWphN4=;
        b=ThrBYslAqvViF9EnQV4i/Z/kLQhBgnGrxcS61uAieSbRZj11A8stE39GsqctYsNdb2
         yfn7KY/0sCxyZGkXdli1mFkWkIvj8LH5VIxKlxuJs5J8ReLW7+WPdtScHyl+303fv7wd
         /TqoKex1NN24YnJPxpDqLWV4NwFYFSia7QlQXLy0cDSVPbsaYRjNJClrUmqQtVHjQykX
         ETj/Lj+Mm/oq+0rY5UirFzmCXrYW3uUxVD1flVxVICAak3308DVYPEAqB8njn3n6YIBy
         y3BHdU3ykvj7SRrtvEpvhdOYOGU3F3R8QECWnaOmjN41QWjGcsxo1Wj0qKi+xC7d7C9b
         Pt7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVHGFNFX0s6/r8SVLSHYETmC8mCHCI6c6f4do4JyJOEIM0/rMe2Qs+F3qFXCYOyD3gVh7bCtQW73P7D71swao7MGDnmkrkt+BCdVbRZOYpeBQsF
X-Gm-Message-State: AOJu0YzCT8+oW8zwHZ9aBTe6NlUJ8y4x5c/ypKDH2UVVL9fgU5+CgBN5
	OQeNt99VwD/qY3yXhkXfQVQFmqfmp8TvnEMhHQ2faGKD+p39NZZVR2hgo/bONw==
X-Google-Smtp-Source: AGHT+IFXh7cTxFRswFB21Qe1oiRIGT9vU7kgXTaII9dWIL3bZbqeNjqAb2dSA1bo5MXu4eCB4cG/2Q==
X-Received: by 2002:a17:907:e69e:b0:a6f:4a42:1976 with SMTP id a640c23a62f3a-a80aa5dff21mr428744866b.37.1723314771330;
        Sat, 10 Aug 2024 11:32:51 -0700 (PDT)
Received: from [192.168.178.137] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a80bb08ffa0sm88575466b.9.2024.08.10.11.32.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Aug 2024 11:32:50 -0700 (PDT)
Message-ID: <ff518c21-fcbb-4cfc-b5e3-40c0d4d18f0c@broadcom.com>
Date: Sat, 10 Aug 2024 20:32:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
To: jacobe.zang@wesion.com, Sai Krishna Gajula <saikrishnag@marvell.com>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "heiko@sntech.de" <heiko@sntech.de>,
 "kvalo@kernel.org" <kvalo@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "efectn@protonmail.com" <efectn@protonmail.com>,
 "dsimic@manjaro.org" <dsimic@manjaro.org>,
 "jagan@edgeble.ai" <jagan@edgeble.ai>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "arend@broadcom.com" <arend@broadcom.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "megi@xff.cz"
 <megi@xff.cz>, "duoming@zju.edu.cn" <duoming@zju.edu.cn>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "minipli@grsecurity.net" <minipli@grsecurity.net>,
 "brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>,
 "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
 "nick@khadas.com" <nick@khadas.com>
References: <20240810035141.439024-1-jacobe.zang@wesion.com>
 <20240810035141.439024-5-jacobe.zang@wesion.com>
 <BY3PR18MB47072A9CC7E1EEB4BD1FC063A0BB2@BY3PR18MB4707.namprd18.prod.outlook.com>
 <d9a182e4-c620-476d-8eb2-752dfd1ba4f8@wesion.com>
Content-Language: en-US
From: Arend van Spriel <arend.vanspriel@broadcom.com>
Autocrypt: addr=arend.vanspriel@broadcom.com; keydata=
 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
In-Reply-To: <d9a182e4-c620-476d-8eb2-752dfd1ba4f8@wesion.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_113253_953654_69BCEE5C 
X-CRM114-Status: GOOD (  22.98  )
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

T24gOC8xMC8yMDI0IDEyOjA4IFBNLCBqYWNvYmUuemFuZ0B3ZXNpb24uY29tIHdyb3RlOgo+IAo+
IAo+IE9uIDIwMjQvOC8xMCAxNzo0NCwgU2FpIEtyaXNobmEgR2FqdWxhIDxzYWlrcmlzaG5hZ0Bt
YXJ2ZWxsLmNvbT4gd3JvdGU6Cj4+Cj4+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4g
PiBGcm9tOiBKYWNvYmUgWmFuZyA8amFjb2JlLnphbmdAd2VzaW9uLmNvbT4KPj4gPiBTZW50OiBT
YXR1cmRheSwgQXVndXN0IDEwLCAyMDI0IDk6MjIgQU0KPj4gPiBUbzogcm9iaEBrZXJuZWwub3Jn
OyBrcnprK2R0QGtlcm5lbC5vcmc7IGhlaWtvQHNudGVjaC5kZTsKPj4gPiBrdmFsb0BrZXJuZWwu
b3JnOyBkYXZlbUBkYXZlbWxvZnQubmV0OyBlZHVtYXpldEBnb29nbGUuY29tOwo+PiA+IGt1YmFA
a2VybmVsLm9yZzsgcGFiZW5pQHJlZGhhdC5jb207IGNvbm9yK2R0QGtlcm5lbC5vcmc7Cj4+ID4g
YXJlbmQudmFuc3ByaWVsQGJyb2FkY29tLmNvbQo+PiA+IENjOiBlZmVjdG5AcHJvdG9ubWFpbC5j
b207IGRzaW1pY0BtYW5qYXJvLm9yZzsgamFnYW5AZWRnZWJsZS5haTsKPj4gPiBkZXZpY2V0cmVl
QHZnZXIua2VybmVsLm9yZzsgbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnOyAK
Pj4gbGludXgtCj4+ID4gcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZzsgbGludXgta2VybmVs
QHZnZXIua2VybmVsLm9yZzsKPj4gPiBhcmVuZEBicm9hZGNvbS5jb207IGxpbnV4LXdpcmVsZXNz
QHZnZXIua2VybmVsLm9yZzsKPj4gPiBuZXRkZXZAdmdlci5rZXJuZWwub3JnOyBtZWdpQHhmZi5j
ejsgZHVvbWluZ0B6anUuZWR1LmNuOwo+PiA+IGJoZWxnYWFzQGdvb2dsZS5jb207IG1pbmlwbGlA
Z3JzZWN1cml0eS5uZXQ7IGJyY204MDIxMUBsaXN0cy5saW51eC5kZXY7Cj4+ID4gYnJjbTgwMjEx
LWRldi1saXN0LnBkbEBicm9hZGNvbS5jb207IG5pY2tAa2hhZGFzLmNvbTsgSmFjb2JlIFphbmcK
Pj4gPiA8amFjb2JlLnphbmdAd2VzaW9uLmNvbT4KPj4gPiBTdWJqZWN0OsKgIFtQQVRDSCB2OSA0
LzVdIHdpZmk6IGJyY21mbWFjOiBBZGQgb3B0aW9uYWwgbHBvIGNsb2NrCj4+ID4gZW5hYmxlIHN1
cHBvcnQKPj4gPgo+PiA+IFdpRmkgbW9kdWxlcyBvZnRlbiByZXF1aXJlIDMya0h6IGNsb2NrIHRv
IGZ1bmN0aW9uLiBBZGQgc3VwcG9ydCB0byAKPj4gZW5hYmxlCj4+ID4gdGhlIGNsb2NrIHRvIFBD
SWUgZHJpdmVyIGFuZCBtb3ZlICJicmNtLGJjbTQzMjktZm1hYyIgY2hlY2sgdG8gdGhlIAo+PiB0
b3Agb2YKPj4gPiBicmNtZl9vZl9wcm9iZS4gQ2hhbmdlIGZ1bmN0aW9uIHByb3RvdHlwZXMgZnJv
bSB2b2lkIHRvIGludCBhbmQgYWRkCj4+ID4gYXBwcm9wcmlhdGUgZXJybm8ncyBmb3IgcmV0dXJu
Cj4+ID4gV2lGaSBtb2R1bGVzIG9mdGVuIHJlcXVpcmUgMzJrSHogY2xvY2sgdG8gZnVuY3Rpb24u
IEFkZCBzdXBwb3J0IHRvIAo+PiBlbmFibGUKPj4gPiB0aGUgY2xvY2sgdG8gUENJZSBkcml2ZXIg
YW5kIG1vdmUgImJyY20sYmNtNDMyOS1mbWFjIiBjaGVjayB0byB0aGUgCj4+IHRvcCBvZgo+PiA+
IGJyY21mX29mX3Byb2JlLiBDaGFuZ2UgZnVuY3Rpb24gcHJvdG90eXBlcyBmcm9tIHZvaWQgdG8g
aW50IGFuZCBhZGQKPj4gPiBhcHByb3ByaWF0ZSBlcnJubydzIGZvciByZXR1cm4gdmFsdWVzIHRo
YXQgd2lsbCBiZSBzZW5kIHRvIGJ1cyB3aGVuIAo+PiBlcnJvcgo+PiA+IG9jY3VycmVkLgo+PiA+
Cj4+ID4gQ28tZGV2ZWxvcGVkLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPj4gPiBT
aWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPj4gPiBDby1kZXZlbG9w
ZWQtYnk6IEFyZW5kIHZhbiBTcHJpZWwgPGFyZW5kLnZhbnNwcmllbEBicm9hZGNvbS5jb20+Cj4+
ID4gU2lnbmVkLW9mZi1ieTogQXJlbmQgdmFuIFNwcmllbCA8YXJlbmQudmFuc3ByaWVsQGJyb2Fk
Y29tLmNvbT4KPj4gPiBTaWduZWQtb2ZmLWJ5OiBKYWNvYmUgWmFuZyA8amFjb2JlLnphbmdAd2Vz
aW9uLmNvbT4KPj4gPiAtLS0KPj4gPsKgwqAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1h
Yy9iY21zZGguY8KgwqDCoMKgwqAgfMKgIDQgKy0KPj4gPsKgwqAgLi4uL2Jyb2FkY29tL2JyY204
MDIxMS9icmNtZm1hYy9jb21tb24uY8KgwqDCoMKgwqAgfMKgIDMgKy0KPj4gPsKgwqAgLi4uL3dp
cmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9vZi5jIHwgNTMgCj4+ICsrKysrKysr
KysrLS0tLS0tLS0KPj4gPiAuLi4vd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFj
L29mLmggfMKgIDkgKystLQo+PiA+wqDCoCAuLi4vYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFj
L3BjaWUuY8KgwqDCoMKgwqDCoMKgIHzCoCAzICsrCj4+ID7CoMKgIC4uLi9icm9hZGNvbS9icmNt
ODAyMTEvYnJjbWZtYWMvc2Rpby5jwqDCoMKgwqDCoMKgwqAgfCAyNCArKysrKystLS0KPj4gPsKg
wqAgLi4uL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy91c2IuY8KgwqDCoMKgwqDCoMKgwqAg
fMKgIDMgKysKPj4gPsKgwqAgNyBmaWxlcyBjaGFuZ2VkLCA2MyBpbnNlcnRpb25zKCspLCAzNiBk
ZWxldGlvbnMoLSkKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL25ldC93aXJlbGVzcy9i
cm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvYmNtc2RoLmMKPj4gPiBiL2RyaXZlcnMvbmV0L3dp
cmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9iY21zZGguYwo+PiA+IGluZGV4IDEz
MzkxYzJkODJhYWUuLmIyZWRlNGU1NzljNWMgMTAwNjQ0Cj4+ID4gLS0tIGEvZHJpdmVycy9uZXQv
d2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2JjbXNkaC5jCj4+ID4gKysrIGIv
ZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2JjbXNkaC5j
Cj4+ID4gQEAgLTk0Nyw4ICs5NDcsOCBAQCBpbnQgYnJjbWZfc2Rpb2RfcHJvYmUoc3RydWN0IGJy
Y21mX3NkaW9fZGV2Cj4+ID4gKnNkaW9kZXYpCj4+ID4KPj4gPsKgwqDCoMKgwqDCoCAvKiB0cnkg
dG8gYXR0YWNoIHRvIHRoZSB0YXJnZXQgZGV2aWNlICovCj4+ID7CoMKgwqDCoMKgwqAgc2Rpb2Rl
di0+YnVzID0gYnJjbWZfc2Rpb19wcm9iZShzZGlvZGV2KTsKPj4gPiAtwqDCoMKgIGlmICghc2Rp
b2Rldi0+YnVzKSB7Cj4+ID4gLcKgwqDCoMKgwqDCoMKgIHJldCA9IC1FTk9ERVY7Cj4+ID4gK8Kg
wqDCoCBpZiAoSVNfRVJSKHNkaW9kZXYtPmJ1cykpIHsKPj4gPiArwqDCoMKgwqDCoMKgwqAgcmV0
ID0gUFRSX0VSUihzZGlvZGV2LT5idXMpOwo+PiA+wqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBv
dXQ7Cj4+ID7CoMKgwqDCoMKgwqAgfQo+PiA+wqDCoMKgwqDCoMKgIGJyY21mX3NkaW9kX2hvc3Rf
Zml4dXAoc2Rpb2Rldi0+ZnVuYzItPmNhcmQtPmhvc3QpOwo+PiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvY29tbW9uLmMKPj4g
PiBiL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204MDIxMS9icmNtZm1hYy9jb21t
b24uYwo+PiA+IGluZGV4IGIyNGZhYWUzNTg3M2QuLjU4ZDUwOTE4ZGQxNzcgMTAwNjQ0Cj4+ID4g
LS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL2Nv
bW1vbi5jCj4+ID4gKysrIGIvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjEx
L2JyY21mbWFjL2NvbW1vbi5jCj4+ID4gQEAgLTU2MSw3ICs1NjEsOCBAQCBzdHJ1Y3QgYnJjbWZf
bXBfZGV2aWNlCj4+ID4gKmJyY21mX2dldF9tb2R1bGVfcGFyYW0oc3RydWN0IGRldmljZSAqZGV2
LAo+PiA+wqDCoMKgwqDCoMKgIGlmICghZm91bmQpIHsKPj4gPsKgwqDCoMKgwqDCoMKgwqDCoMKg
IC8qIE5vIHBsYXRmb3JtIGRhdGEgZm9yIHRoaXMgZGV2aWNlLCB0cnkgT0YgYW5kIERNSSBkYXRh
ICovCj4+ID7CoMKgwqDCoMKgwqDCoMKgwqDCoCBicmNtZl9kbWlfcHJvYmUoc2V0dGluZ3MsIGNo
aXAsIGNoaXByZXYpOwo+PiA+IC3CoMKgwqDCoMKgwqDCoCBicmNtZl9vZl9wcm9iZShkZXYsIGJ1
c190eXBlLCBzZXR0aW5ncyk7Cj4+ID4gK8KgwqDCoMKgwqDCoMKgIGlmIChicmNtZl9vZl9wcm9i
ZShkZXYsIGJ1c190eXBlLCBzZXR0aW5ncykgPT0gLQo+PiA+IEVQUk9CRV9ERUZFUikKPj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm4gRVJSX1BUUigtRVBST0JFX0RFRkVSKTsKPj4g
PsKgwqDCoMKgwqDCoMKgwqDCoMKgIGJyY21mX2FjcGlfcHJvYmUoZGV2LCBidXNfdHlwZSwgc2V0
dGluZ3MpOwo+PiA+wqDCoMKgwqDCoMKgIH0KPj4gPsKgwqDCoMKgwqDCoCByZXR1cm4gc2V0dGlu
Z3M7Cj4+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L3dpcmVsZXNzL2Jyb2FkY29tL2JyY204
MDIxMS9icmNtZm1hYy9vZi5jCj4+ID4gYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9i
cmNtODAyMTEvYnJjbWZtYWMvb2YuYwo+PiA+IGluZGV4IGU0MDZlMTE0ODFhNjIuLmYxOWRjNzM1
NWUwZTggMTAwNjQ0Cj4+ID4gLS0tIGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJj
bTgwMjExL2JyY21mbWFjL29mLmMKPj4gPiArKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9h
ZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvb2YuYwo+PiA+IEBAIC02LDYgKzYsNyBAQAo+PiA+wqDC
oCAjaW5jbHVkZSA8bGludXgvb2YuaD4KPj4gPsKgwqAgI2luY2x1ZGUgPGxpbnV4L29mX2lycS5o
Pgo+PiA+wqDCoCAjaW5jbHVkZSA8bGludXgvb2ZfbmV0Lmg+Cj4+ID4gKyNpbmNsdWRlIDxsaW51
eC9jbGsuaD4KPj4gPgo+PiA+wqDCoCAjaW5jbHVkZSA8ZGVmcy5oPgo+PiA+wqDCoCAjaW5jbHVk
ZSAiZGVidWcuaCIKPj4gPiBAQCAtNjUsMTcgKzY2LDIxIEBAIHN0YXRpYyBpbnQgYnJjbWZfb2Zf
Z2V0X2NvdW50cnlfY29kZXMoc3RydWN0IGRldmljZQo+PiA+ICpkZXYsCj4+ID7CoMKgwqDCoMKg
wqAgcmV0dXJuIDA7Cj4+ID7CoMKgIH0KPj4gPgo+PiA+IC12b2lkIGJyY21mX29mX3Byb2JlKHN0
cnVjdCBkZXZpY2UgKmRldiwgZW51bSBicmNtZl9idXNfdHlwZSBidXNfdHlwZSwKPj4gPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgYnJjbWZfbXBfZGV2aWNlICpzZXR0aW5ncykKPj4g
PiAraW50IGJyY21mX29mX3Byb2JlKHN0cnVjdCBkZXZpY2UgKmRldiwgZW51bSBicmNtZl9idXNf
dHlwZSBidXNfdHlwZSwKPj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGJyY21mX21w
X2RldmljZSAqc2V0dGluZ3MpCj4+ID7CoMKgIHsKPj4gPsKgwqDCoMKgwqDCoCBzdHJ1Y3QgYnJj
bWZtYWNfc2Rpb19wZCAqc2RpbyA9ICZzZXR0aW5ncy0+YnVzLnNkaW87Cj4+ID7CoMKgwqDCoMKg
wqAgc3RydWN0IGRldmljZV9ub2RlICpyb290LCAqbnAgPSBkZXYtPm9mX25vZGU7Cj4+ID4gK8Kg
wqDCoCBzdHJ1Y3QgY2xrICpjbGs7Cj4+ID7CoMKgwqDCoMKgwqAgY29uc3QgY2hhciAqcHJvcDsK
Pj4KPj4gU21hbGwgbml0LCBwbGVhc2UgY2hlY2sgaWYgcmV2ZXJzZSB4LW1hcyB0cmVlIG9yZGVy
IG5lZWQgdG8gYmUgZm9sbG93IAo+PiBoZXJlLgo+Pgo+PiA+wqDCoMKgwqDCoMKgIGludCBpcnE7
Cj4+ID7CoMKgwqDCoMKgwqAgaW50IGVycjsKPj4gPsKgwqDCoMKgwqDCoCB1MzIgaXJxZjsKPiAK
PiBJdCBjYW4gYmUgc2VlbiBmcm9tIHRoaXMgbGluZSB0aGF0IHRoZXJlIHNob3VsZCBiZSBubyBu
ZWVkIHRvIGZvbGxvdyB0aGUgCj4gcmV2ZXJzZSB4LW1hcyB0cmVlIG9yZGVyLiBCZWNhdXNlIGl0
IGlzIGEgc3RydWN0IHZhcmlhYmxlLCBzbyBwbGFjZSB3aXRoIAo+IG90aGVyIHN0cnVjdCBvbmVz
LgoKQXMgZHJpdmVyIG1haW50YWluZXIgSSBkbyBub3QgY2FyZSBhYm91dCBzdWNoIG5lYXRuZXNz
LCBidXQgbWF5YmUgS2FsbGUgCmhhcyBhbm90aGVyIHByZWZlcmVuY2UuIFRoZSBjb2RlIGFib3Zl
IGxvb2tzIGZpbmUgdG8gbWUuCgpSZWdhcmRzLApBcmVuZAoKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
