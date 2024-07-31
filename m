Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80885C3DA64
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 12:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kOkKq+mlJxWpvp+b9fDmO3dC4CWSjcX/hYwNZtJmH5Y=; b=wf7xRxxv5KpxDF
	fW9/UwuxVZwd8+Bfh+ZsB23lmU+9NFHtArqdXyvwe/u+XSG+M1IYMiH745pPohqheuxLE1uijiSHA
	PqRcKNhDuDAFxovtgyzDIKJdyU8pnjhZbct460aFcOQFHzBkt9AO/xvOomwtft/hV3EQIxnx0NhXo
	bDA/wiEPYiDt2a5/HI2SqoZKcB/+nPGUSf8YvdYh6qM9xP1hg68CMuKWVc/voLk+sCfgutjCVneWb
	5vuamRjlS59ijSt0waUrFwcrjulHVyXSe49cwD8rFqAi6rGXQjhjKOjTwONTq2Fa1wVBm1soAo9bA
	x+MGaPRujGMgfEMU85kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ8Vz-000000015dl-0Kba;
	Wed, 31 Jul 2024 12:33:11 +0000
Received: from mail-oi1-x22f.google.com ([2607:f8b0:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ8VN-000000015Od-2t84
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 12:32:35 +0000
Received: by mail-oi1-x22f.google.com with SMTP id 5614622812f47-3db35ec5688so2094159b6e.3
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Jul 2024 05:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722429152; x=1723033952; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=IBnztp7MHGTNI2WLXQ1z2xFUTFJyK2sGTn7NhQG6Jn0=;
        b=Ab5eFcnb6+g/1ntS4FGuOfG7eKXN/K2TsXpPQsowGNzg/txTGKt8vWJcMrHJdPE99c
         86AtZIXKT5hqgpuYOf05q3Xvprxpu4955/gdLt/7W8Lkf3DVCFPYO1AU+XwfwhANo2PL
         geB6s1eSv3T26OeYcRMjWfkbfVqrapuySgq7c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722429152; x=1723033952;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IBnztp7MHGTNI2WLXQ1z2xFUTFJyK2sGTn7NhQG6Jn0=;
        b=m+wINQ/YKOZg6krhb57WGFn0NguQgMSV6ccjEUKc01J7r0WFcyd+cDMVO8cdcMb7Ul
         EyRo4TfuJER5TCHgfL+OkmqxkmyPAHsS42pjjYGY31KvvHxzMv9Na2lCoyGoqED8xAMY
         fMvhObFR3ysBT/fSyzTDlnMe7NQTElVhKUhEEmquLlS6Bx405/O6P8RUaHyxqddoHzuN
         O3SJrfoLISTugF0kAP8UFYqZpRFwPAoJukMVgUjhCzr1FmN5/40n/V2sLKPpRD7czl2c
         zSEJ5N4KS6tDFoYIcIxFjK3pB2cu7jzvUvU7T6Gal5KxGHOgTFrOYl1Odv4K0uAXYARQ
         Y2cQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0ep2+Lpr1dTqcRxGJo4S13WyDF6dMN2MhdXs8UScEQaDCeoA/S/X3IT6taPeNQoaEruiCjT4/y8v0WpJVaAU3BxRbL0Vgb2QzPJS6TEROfsgs
X-Gm-Message-State: AOJu0YzRJ6eQ6KCvwhKCL02JKnaxNn+h+ynDqkDTg/ANknlhzyQYgbCP
	YFdqBcB3NU+/WDfNOD+4YSURX3ecfA9eNP6RB5xUXHjK2/rVmuuAN6fR5t++3w==
X-Google-Smtp-Source: AGHT+IGub2mfcUjNyEK7FnlmoAJsUg+UOYRuhDDZrKgslzcgZXVtSEKgXAyfNVfLpTCXJ5MAH3GXUw==
X-Received: by 2002:a05:6808:201c:b0:3da:e219:bf with SMTP id 5614622812f47-3db23d37550mr17331120b6e.43.1722429151648;
        Wed, 31 Jul 2024 05:32:31 -0700 (PDT)
Received: from [192.168.178.137] (f215227.upc-f.chello.nl. [80.56.215.227])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-44fe8206b5bsm57935951cf.65.2024.07.31.05.32.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 05:32:31 -0700 (PDT)
Message-ID: <6e34c814-a6dc-4a96-9e46-ca25af67f4f6@broadcom.com>
Date: Wed, 31 Jul 2024 14:32:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
To: Alexey Charkov <alchark@gmail.com>
Cc: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 conor+dt@kernel.org, efectn@protonmail.com, dsimic@manjaro.org,
 jagan@edgeble.ai, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, arend@broadcom.com,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org, megi@xff.cz,
 duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net,
 brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com,
 nick@khadas.com
References: <20240731061132.703368-1-jacobe.zang@wesion.com>
 <20240731061132.703368-5-jacobe.zang@wesion.com>
 <0a78a0fb-0a5e-424f-a801-4a63b9ee1a49@gmail.com>
 <3ded8aea-ee11-43da-9dd7-1259cf931747@broadcom.com>
 <CABjd4YxiSY0A0iVHGHw9RDey+avxmzUapoLLLyf=80MzVX0yWA@mail.gmail.com>
Content-Language: en-US
From: Arend van Spriel <arend.vanspriel@broadcom.com>
Autocrypt: addr=arend.vanspriel@broadcom.com; keydata=
 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
In-Reply-To: <CABjd4YxiSY0A0iVHGHw9RDey+avxmzUapoLLLyf=80MzVX0yWA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_053233_910352_3228675E 
X-CRM114-Status: GOOD (  29.21  )
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

T24gNy8zMS8yMDI0IDI6MDEgUE0sIEFsZXhleSBDaGFya292IHdyb3RlOgo+IE9uIFdlZCwgSnVs
IDMxLCAyMDI0IGF0IDI6MTXigK9QTSBBcmVuZCB2YW4gU3ByaWVsCj4gPGFyZW5kLnZhbnNwcmll
bEBicm9hZGNvbS5jb20+IHdyb3RlOgo+Pgo+PiBPbiA3LzMxLzIwMjQgMTI6MTYgUE0sIEFsZXhl
eSBDaGFya292IHdyb3RlOgo+Pj4gSGkgSmFjb2JlLAo+Pj4KPj4+Cj4+PiBPbiAzMS8wNy8yMDI0
IDk6MTEgYW0sIEphY29iZSBaYW5nIHdyb3RlOgo+Pj4gICA+IFdpRmkgbW9kdWxlcyBvZnRlbiBy
ZXF1aXJlIDMya0h6IGNsb2NrIHRvIGZ1bmN0aW9uLiBBZGQgc3VwcG9ydCB0bwo+Pj4gICA+IGVu
YWJsZSB0aGUgY2xvY2sgdG8gUENJZSBkcml2ZXIgYW5kIG1vdmUgImJyY20sYmNtNDMyOS1mbWFj
IiBjaGVjawo+Pj4gICA+IHRvIHRoZSB0b3Agb2YgYnJjbWZfb2ZfcHJvYmUKPj4+ICAgPgo+Pj4g
ICA+IENvLWRldmVsb3BlZC1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4+PiAgID4g
U2lnbmVkLW9mZi1ieTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4+PiAgID4gU2lnbmVk
LW9mZi1ieTogSmFjb2JlIFphbmcgPGphY29iZS56YW5nQHdlc2lvbi5jb20+Cj4+PiAgID4gLS0t
Cj4+PiAgID4gIC4uLi9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29m
LmMgICAgfCAxMiArKysrKysrKysrKy0KPj4+ICAgPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+ICAgPgo+Pj4gICA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvb2YuYwo+Pj4gYi9k
cml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJjbWZtYWMvb2YuYwo+Pj4g
ICA+IGluZGV4IGU0MDZlMTE0ODFhNjIuLjdlMGEyYWQ1YzdjOGEgMTAwNjQ0Cj4+PiAgID4gLS0t
IGEvZHJpdmVycy9uZXQvd2lyZWxlc3MvYnJvYWRjb20vYnJjbTgwMjExL2JyY21mbWFjL29mLmMK
Pj4+ICAgPiArKysgYi9kcml2ZXJzL25ldC93aXJlbGVzcy9icm9hZGNvbS9icmNtODAyMTEvYnJj
bWZtYWMvb2YuYwo+Pj4gICA+IEBAIC02LDYgKzYsNyBAQAo+Pj4gICA+ICAjaW5jbHVkZSA8bGlu
dXgvb2YuaD4KPj4+ICAgPiAgI2luY2x1ZGUgPGxpbnV4L29mX2lycS5oPgo+Pj4gICA+ICAjaW5j
bHVkZSA8bGludXgvb2ZfbmV0Lmg+Cj4+PiAgID4gKyNpbmNsdWRlIDxsaW51eC9jbGsuaD4KPj4+
ICAgPgo+Pj4gICA+ICAjaW5jbHVkZSA8ZGVmcy5oPgo+Pj4gICA+ICAjaW5jbHVkZSAiZGVidWcu
aCIKPj4+ICAgPiBAQCAtNzAsMTIgKzcxLDE2IEBAIHZvaWQgYnJjbWZfb2ZfcHJvYmUoc3RydWN0
IGRldmljZSAqZGV2LCBlbnVtCj4+PiBicmNtZl9idXNfdHlwZSBidXNfdHlwZSwKPj4+ICAgPiAg
ewo+Pj4gICA+ICAgICAgc3RydWN0IGJyY21mbWFjX3NkaW9fcGQgKnNkaW8gPSAmc2V0dGluZ3Mt
PmJ1cy5zZGlvOwo+Pj4gICA+ICAgICAgc3RydWN0IGRldmljZV9ub2RlICpyb290LCAqbnAgPSBk
ZXYtPm9mX25vZGU7Cj4+PiAgID4gKyAgICBzdHJ1Y3QgY2xrICpjbGs7Cj4+PiAgID4gICAgICBj
b25zdCBjaGFyICpwcm9wOwo+Pj4gICA+ICAgICAgaW50IGlycTsKPj4+ICAgPiAgICAgIGludCBl
cnI7Cj4+PiAgID4gICAgICB1MzIgaXJxZjsKPj4+ICAgPiAgICAgIHUzMiB2YWw7Cj4+PiAgID4K
Pj4+ICAgPiArICAgIGlmICghbnAgfHwgIW9mX2RldmljZV9pc19jb21wYXRpYmxlKG5wLCAiYnJj
bSxiY200MzI5LWZtYWMiKSkKPj4+ICAgPiArICAgICAgICByZXR1cm47Cj4+Pgo+Pj4gRGlkIHlv
dSB0ZXN0IHRoaXM/IFRoZSBEVFMgcGF0Y2ggeW91IHNlbnQgYXMgcGFydCBvZiB0aGlzIHNlcmll
cyBkb2Vzbid0Cj4+PiBsaXN0ICJicmNtLGJjbTQzMjktZm1hYyIgaW4gdGhlIGNvbXBhdGlibGUs
IHNvIHRoaXMgd2lsbCBwcm9iYWJseSByZXR1cm4KPj4+IHJpZ2h0IGhlcmUsIHNraXBwaW5nIG92
ZXIgdGhlIHJlc3Qgb2YgeW91ciBwYXRjaC4KPj4+Cj4+PiBQbGVhc2UgdGVzdCBiZWZvcmUgcmVz
ZW5kaW5nLCBib3RoIHdpdGggYW5kIHdpdGhvdXQgdGhlIGRyaXZlciBmb3IgdGhlCj4+PiBCbHVl
dG9vdGggcGFydCBvZiB0aGUgY2hpcCAoc2luY2UgaXQgYWxzbyB0b3VjaGVzIGNsb2NrcykuCj4+
Pgo+Pj4gWW91IGFyZSBhbHNvIGNoYW5naW5nIHRoZSBiZWhhdmlvciBmb3Igb3RoZXIgc3lzdGVt
cyBieSBwdXR0aW5nIHRoaXMKPj4+IGNoZWNrIGZ1cnRoZXIgdXAgdGhlIHByb2JlIHBhdGgsIHdo
aWNoIG1pZ2h0IGJyZWFrIHRoaW5ncyBmb3Igbm8gcmVhc29uLgo+Pj4gQmV0dGVyIHB1dCB5b3Vy
IGNsay1yZWxhdGVkIGFkZGl0aW9uIGJlbG93IHdoZXJlIHRoaXMgY2hlY2sgd2FzCj4+PiBvcmln
aW5hbGx5LCByYXRoZXIgdGhhbiByZW9yZGVyIHN0dWZmIHlvdSBkb24ndCBoYXZlIHRvIHJlb3Jk
ZXIuCj4+Cj4+IFRoYXQgd2FzIHVwb24gbXkgc3VnZ2VzdGlvbi4gVGhhdCBjaGVjayB3YXMgb3Jp
Z2luYWxseSBhdCB0aGUgdG9wIG9mIHRoZQo+PiBmdW5jdGlvbiwgYnV0IHBlb3BsZSBhZGRlZCBz
dHVmZiBiZWZvcmUgdGhhdC4gSSBhZ3JlZSB0aGF0IG1ha2VzIHRoZQo+PiBjb21wYXRpYmxlICJi
cmNtLGJyY200MzI5LWZtYWMiIHJlcXVpcmVkIHdoaWNoIGlzIHdoYXQgdGhlIHRleHR1YWwKPj4g
YmluZGluZyBzdGF0ZWQgYmVmb3JlIHRoZSBzd2l0Y2ggdG8gWUFNTCB3YXMgbWFkZToKPj4KPj4g
IiIiCj4+IEJyb2FkY29tIEJDTTQzeHggRnVsbG1hYyB3aXJlbGVzcyBTRElPIGRldmljZXMKPj4K
Pj4gVGhpcyBub2RlIHByb3ZpZGVzIHByb3BlcnRpZXMgZm9yIGNvbnRyb2xsaW5nIHRoZSBCcm9h
ZGNvbSB3aXJlbGVzcwo+PiBkZXZpY2UuIFRoZQo+PiBub2RlIGlzIGV4cGVjdGVkIHRvIGJlIHNw
ZWNpZmllZCBhcyBhIGNoaWxkIG5vZGUgdG8gdGhlIFNESU8gY29udHJvbGxlciB0aGF0Cj4+IGNv
bm5lY3RzIHRoZSBkZXZpY2UgdG8gdGhlIHN5c3RlbS4KPj4KPj4gUmVxdWlyZWQgcHJvcGVydGll
czoKPj4KPj4gICAgLSBjb21wYXRpYmxlIDogU2hvdWxkIGJlICJicmNtLGJjbTQzMjktZm1hYyIu
Cj4+ICIiIgo+Pgo+PiBOb3Qgc3VyZSB3aGV0aGVyIHRoaXMgaXMgc3RpbGwgdHJ1ZSBmb3IgWUFN
TCB2ZXJzaW9uIChwb29yIFlBTUwgcmVhZGluZwo+PiBza2lsbHMgOy0pICksIGJ1dCBpdCBzaG91
bGQgYXMgdGhlIHN3aXRjaCBmcm9tIHRleHR1YWwgdG8gWUFNTCBzaG91bGQKPj4gbm90IGhhdmUg
Y2hhbmdlZCB0aGUgYmluZGluZ3Mgc3BlY2lmaWNhdGlvbi4KPj4KPj4+ICAgPiArCj4+PiAgID4g
ICAgICAvKiBBcHBsZSBBUk02NCBwbGF0Zm9ybXMgaGF2ZSB0aGVpciBvd24gaWRlYSBvZiBib2Fy
ZCB0eXBlLAo+Pj4gcGFzc2VkIGluCj4+PiAgID4gICAgICAgKiB2aWEgdGhlIGRldmljZSB0cmVl
LiBUaGV5IGFsc28gaGF2ZSBhbiBhbnRlbm5hIFNLVSBwYXJhbWV0ZXIKPj4+ICAgPiAgICAgICAq
Lwo+Pj4gICA+IEBAIC0xMTMsOCArMTE4LDEzIEBAIHZvaWQgYnJjbWZfb2ZfcHJvYmUoc3RydWN0
IGRldmljZSAqZGV2LCBlbnVtCj4+PiBicmNtZl9idXNfdHlwZSBidXNfdHlwZSwKPj4+ICAgPiAg
ICAgICAgICBvZl9ub2RlX3B1dChyb290KTsKPj4+ICAgPiAgICAgIH0KPj4+ICAgPgo+Pj4gICA+
IC0gICAgaWYgKCFucCB8fCAhb2ZfZGV2aWNlX2lzX2NvbXBhdGlibGUobnAsICJicmNtLGJjbTQz
MjktZm1hYyIpKQo+Pj4gICA+ICsgICAgY2xrID0gZGV2bV9jbGtfZ2V0X29wdGlvbmFsX2VuYWJs
ZWQoZGV2LCAibHBvIik7Cj4+PiAgID4gKyAgICBpZiAoIUlTX0VSUl9PUl9OVUxMKGNsaykpIHsK
Pj4+ICAgPiArICAgICAgICBicmNtZl9kYmcoSU5GTywgImVuYWJsaW5nIDMya0h6IGNsb2NrXG4i
KTsKPj4+ICAgPiArICAgICAgICBjbGtfc2V0X3JhdGUoY2xrLCAzMjc2OCk7Cj4+PiAgID4gKyAg
ICB9IGVsc2Ugewo+Pj4gICA+ICAgICAgICAgIHJldHVybjsKPj4+Cj4+PiBXaHkgcmV0dXJuIGhl
cmU/IElmIHRoZSBjbG9jayBpcyBvcHRpb25hbCwgYSBsb3Qgb2Ygc3lzdGVtcyB3aWxsIG5vdAo+
Pj4gaGF2ZSBpdCAtIHRoYXQgc2hvdWxkbid0IHByZXZlbnQgdGhlIGRyaXZlciBmcm9tIHByb2Jp
bmcuIEFuZCB5b3UgYXJlCj4+PiBzdGlsbCBub3QgaGFuZGxpbmcgdGhlIC1FUFJPQkVfREVGRVIg
Y2FzZSB3aGljaCB3YXMgbWVudGlvbmVkIG9uIHlvdXIKPj4+IHByZXZpb3VzIHN1Ym1pc3Npb24u
Cj4+Cj4+IFJpZ2h0LiBUaGUgZWxzZSBzdGF0ZW1lbnQgYWJvdmUgY291bGQvc2hvdWxkIGJlOgo+
Pgo+PiB9IGVsc2UgaWYgKGNsayAmJiBQVFJfRVJSKGNsaykgPT0gLUVQUk9CRV9ERUZFUikgewo+
PiAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIoY2xrKTsKPj4gfQo+IAo+IC4uLiBwbHVzIGNoYW5n
ZSB0aGUgZnVuY3Rpb24gcHJvdG90eXBlIHRvIHJldHVybiBpbnQgYW5kIHByb3BhZ2F0ZQo+IHRo
YXQgZXJyb3IgY29kZSB0aHJvdWdoIGJyY21mX2dldF9tb2R1bGVfcGFyYW0gdG8gYnJjbWZfcGNp
ZV9wcm9iZSdzCj4gcmV0dXJuIHZhbHVlLiBJIGd1ZXNzIGNoZWNraW5nIGNsayBmb3IgTlVMTCBp
cyBhbHNvIHJlZHVuZGFudCBpbiB0aGlzCj4gY2FzZT8KCk9ubHkgd2FudGVkIHRvIGdpdmUgdGhl
IHN1Z2dlc3Rpb24gdG8gZ2V0IHN0YXJ0ZWQuIFByb3BhZ2F0aW5nIHRoZSAKcmV0dXJuIHZhbHVl
IHNlZW1lZCBvYnZpb3VzIHRvIG1lLCBidXQgeW91IGFyZSBhYnNvbHV0ZWx5IHJpZ2h0LiAKUFRS
X0VSUihOVUxMKSB3aWxsIHByb2JhYmx5IGJlIHNvbWV0aGluZyBlbHNlIHRoYW4gLUVQUk9CRV9E
RUZFUiBidXQgaXQgCnNlZW1zIG9kZCB0byBtZS4gTWF5YmUgUFRSX0VSUl9PUl9aRVJPKGNsaykg
aXMgYSBiZXR0ZXIgb3B0aW9uIGhlcmUuCgpSZWdhcmRzLApBcmVuZAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
