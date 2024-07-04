Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E08B9C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 11:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yO6RITbtFTpXGt/kClTlXdIdKmDyB9mA9N+eYPOBGCc=; b=ttix+nAdMbRWh6
	cKGaWTKEpj5vSZrXwEUiUybGJ1wlWUdLYFYncqTj6mQxgiPE9RcyapnndEdpRSBVsdS948fmlla71
	W0zuIcsGKTmxZ++L2m4lT9qbiZ9aTyzE7G5e0GDruL/fuUVntkeYymnSB17Qs0URzT5J/wTnVBsQL
	Usqjs20dnIJU5Vg4lcT0fvCry8I2wkeS7CMNtArflKp7cMdpXACh3pJzJ7q7frLRfLcOBpNjl4j2d
	xRp9IdCHutQ2raAUPPoJKqBpHmV8Ch53JQrI4fFPoTOO0RZqCwBv5RVFHKyP+Adg2ukWL1WPbmvkr
	RIRhb6IXp3U1blaS+ixA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPKsS-0000000D3VS-3Uif;
	Thu, 04 Jul 2024 11:43:52 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPKsQ-0000000D3Uv-1zUe;
	Thu, 04 Jul 2024 11:43:51 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-58bac81f3f9so746045a12.2;
        Thu, 04 Jul 2024 04:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720093429; x=1720698229; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zveAwN34PYsp6aPMx1IsdJe3pfWxmcuJq8MSSftt/mQ=;
        b=IzmXNRZA3NiULCA66hnN3Jbp1Bh3QBUF/7hEzBN9Zj1jaKr3rWlXAt1gMNiVyyGo/b
         M66UTWVO+OFiIo/g9kJcq+sqd5q6xZCjkbmK85D5G6kBaKQz1c1sq8Db8FdIt6XaJhWU
         Ip//RGW3fBc5tqkZsWHOEfkRxfwqLayDKhxOyU3SUzZYLyLky/dLLJsJ0wEyOlWju03y
         ETUry4uIMnB8mFntVvGv38V23vZcy6zwc3OI6GM7NwcE6IscjxWy8YHJZ2ck42LjvS7v
         3VXO9JWMh52aw5N9ydlRvmBtD0poiRFixBK+U5/afW+unr9fXRGdjPX031tjurpyHmJz
         E81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720093429; x=1720698229;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zveAwN34PYsp6aPMx1IsdJe3pfWxmcuJq8MSSftt/mQ=;
        b=ovTpSjWARNwOAaVA2DTC88mSoqj0CftBlrHM5WIgkZv3eAAbDh21QWESa+TANnHXHw
         Bw4YB1w9ROQcSa7TpcZYuSIJMa4bcfd0PS9I6UGCJcAH81r2FA1eEqFN+nlN6Rfi4/sd
         NWI+FXLsSa+gUoQE6jol+7ezzvdzF6KuwYYCIcSj69EgdEM74svr2tMvFefRYjYegJEb
         VcuTsooxO64uxdYDztQpAbCW1LTq4ASqhH/mUTnB3irtB1PNhfBlrWFVMsbB8cCZNisY
         3HNX2cIRVyuJaPNSPWtbUVJ/vnqPEQ6dMzeQs/hKNcJx6v7sjXfXU2Ak1JevDJtj5XBM
         LdQw==
X-Forwarded-Encrypted: i=1; AJvYcCWysxGlp05nUSEwK32dZt4wF4zqL9Wf0FiKpP5camDCuwZk18YTvOZhr9GfqFa3k+h6pghdqVOH3tm1zc2swu4An+HFGMWSiJmE3ylVN3u2ppmgv3IC21COp9KrYBA/+vhL9Ac6lBhQZAUWfcv/ZYsJWJsM6ZfcetA=
X-Gm-Message-State: AOJu0YzOgrIl1V90HV6LT0V/qEhJR/QHvoSfsMAH9JGq0AMS+3PyKz+D
	YVS8/kSKfj0KMeqvTs8B8hLjvcyShnVTl02hkZ7O7tbeaILtCXsAMU9c
X-Google-Smtp-Source: AGHT+IFCdpf6OuObS+dVAXvcZeJOQuT115EAXlgiAT6ExmVmJY8OSQLXrRwDiCoprKTsl/0fXCoYaQ==
X-Received: by 2002:a17:906:f287:b0:a72:415f:cb0e with SMTP id a640c23a62f3a-a77ba72725cmr89878366b.69.1720093428276;
        Thu, 04 Jul 2024 04:43:48 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f40:4600:5f4b:4104:ca7b:6efb? ([2a02:810b:f40:4600:5f4b:4104:ca7b:6efb])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a72ab0652eesm593037466b.131.2024.07.04.04.43.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jul 2024 04:43:47 -0700 (PDT)
Message-ID: <2c46dfb7-5ef3-494f-8cf1-413033e73412@gmail.com>
Date: Thu, 4 Jul 2024 13:43:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add rock5 itx board
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, Diederik de Haas <didi.debian@cknow.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240703210524.776455-1-heiko@sntech.de>
 <20240703210524.776455-3-heiko@sntech.de> <2278169.QnsP76Vvrg@bagend>
 <4552794.8F6SAcFxjW@diego>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <4552794.8F6SAcFxjW@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_044350_536052_E199CD45 
X-CRM114-Status: GOOD (  16.65  )
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

QW0gMDQuMDcuMjQgdW0gMTI6MDUgc2NocmllYiBIZWlrbyBTdMO8Ym5lcjoKPiBIaSBEaWVkZXJp
aywKPiAKPiBBbSBEb25uZXJzdGFnLCA0LiBKdWxpIDIwMjQsIDExOjM4OjUxIENFU1Qgc2Nocmll
YiBEaWVkZXJpayBkZSBIYWFzOgo+PiBUaGFua3MgZm9yIHN1Ym1pdHRpbmcgdGhpcy4gQSBxdWlj
ayBzY2FuIGluZGljYXRlcyBpdCBzaG91bGQgd29yayB3aXRoIGEKPj4gKHJlY2VudCkgRGViaWFu
IGtlcm5lbCBPT1RCIDotKQo+Pgo+PiBPbiBXZWRuZXNkYXksIDMgSnVseSAyMDI0IDIzOjA1OjI0
IENFU1QgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4+PiArJnNkaGNpIHsKPj4+ICsgICAgICAgYnVz
LXdpZHRoID0gPDg+Owo+Pj4gKyAgICAgICBuby1zZGlvOwo+Pj4gKyAgICAgICBuby1zZDsKPj4+
ICsgICAgICAgbm9uLXJlbW92YWJsZTsKPj4+ICsgICAgICAgbWF4LWZyZXF1ZW5jeSA9IDwyMDAw
MDAwMDA+Owo+Pj4gKyAgICAgICBtbWMtaHM0MDAtMV84djsKPj4+ICsgICAgICAgbW1jLWhzNDAw
LWVuaGFuY2VkLXN0cm9iZTsKPj4+ICsgICAgICAgbW1jLWhzMjAwLTFfOHY7Cj4+PiArICAgICAg
IHN0YXR1cyA9ICJva2F5IjsKPj4+ICt9Owo+Pj4gKwo+Pj4gKyZzZG1tYyB7Cj4+PiArICAgICAg
IG1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDAwPjsKPj4+ICsgICAgICAgbm8tc2RpbzsKPj4+ICsg
ICAgICAgbm8tbW1jOwo+Pj4gKyAgICAgICBidXMtd2lkdGggPSA8ND47Cj4+PiArICAgICAgIGNh
cC1tbWMtaGlnaHNwZWVkOwo+Pj4gKyAgICAgICBjYXAtc2QtaGlnaHNwZWVkOwo+Pj4gKyAgICAg
ICBkaXNhYmxlLXdwOwo+Pj4gKyAgICAgICBzZC11aHMtc2RyMTA0Owo+Pj4gKyAgICAgICB2bW1j
LXN1cHBseSA9IDwmdmNjXzN2M19zMz47Cj4+PiArICAgICAgIHZxbW1jLXN1cHBseSA9IDwmdmNj
aW9fc2RfczA+Owo+Pj4gKyAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+Pj4gKyAg
ICAgICBwaW5jdHJsLTAgPSA8JnNkbW1jX2J1czQgJnNkbW1jX2NsayAmc2RtbWNfY21kICZzZG1t
Y19kZXQ+Owo+Pj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+PiArfTsKPj4+ICsKPj4+ICsv
KiBNLjIgRS1LRVkgKi8KPj4+ICsmc2RpbyB7Cj4+PiArICAgICAgIGJyb2tlbi1jZDsKPj4+ICsg
ICAgICAgYnVzLXdpZHRoID0gPDQ+Owo+Pj4gKyAgICAgICBjYXAtc2Rpby1pcnE7Cj4+PiArICAg
ICAgIGRpc2FibGUtd3A7Cj4+PiArICAgICAgIGtlZXAtcG93ZXItaW4tc3VzcGVuZDsKPj4+ICsg
ICAgICAgbWF4LWZyZXF1ZW5jeSA9IDwxNTAwMDAwMDA+Owo+Pj4gKyAgICAgICBtbWMtcHdyc2Vx
ID0gPCZzZGlvX3B3cnNlcT47Cj4+PiArICAgICAgIG5vLXNkOwo+Pj4gKyAgICAgICBuby1tbWM7
Cj4+PiArICAgICAgIG5vbi1yZW1vdmFibGU7Cj4+PiArICAgICAgIHBpbmN0cmwtbmFtZXMgPSAi
ZGVmYXVsdCI7Cj4+PiArICAgICAgIHBpbmN0cmwtMCA9IDwmc2Rpb20wX3BpbnM+Owo+Pj4gKyAg
ICAgICBzZC11aHMtc2RyMTA0Owo+Pj4gKyAgICAgICB2bW1jLXN1cHBseSA9IDwmdmNjM3YzX2Vr
ZXk+Owo+Pj4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+PiArfTsKPj4+ICsKPj4+ICsmc2Zj
IHsKPj4+ICsgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+ICsgICAgICAgcGlu
Y3RybC0wID0gPCZmc3BpbTJfcGlucz47Cj4+PiArICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPj4K
Pj4gU2hvdWxkbid0IHRob3NlIHByb3BlcnRpZXMgYmUgc29ydGVkIGFscGhhYmV0aWNhbGx5PyBP
ciBhdCBsZWFzdCBjb25zaXN0ZW50bHk/Cj4+IE5vdGUgdGhhdCB0aGUgc2FtZSBpc3N1ZSBpcyBw
cmVzZW50IG9uIG90aGVyIHBsYWNlcyB0b28sIGJ1dCBJIGJlbGlldmUgdGhlCj4+IGFib3ZlIHF1
b3RlZCBwYXJ0IHNob3dzIHRoZSBpc3N1ZSBlbm91Z2guCj4gCj4gVGhlIG1haW4gc29ydGluZyBp
cwo+IC0gY29tcGF0aWJsZQo+IC0gcmVnCj4gWy4uLiBhbHBoYWJldGljYWxseSAuLi5dCj4gLSBz
dGF0dXMKPiAKWWVhaCAuLi4gdGhhdCdzIGFsd2F5cyB0aGUgcXVlc3Rpb24gd2hlbiBhZGRpbmcg
bmV3IGJvYXJkIGZpbGVzLiBEbyBpdCBsaWtlCiJpdCdzIGFsd2F5cyBiZWVuIGRvbmUiIG9yIHJl
LXNvcnQgdGhlIHByb3BlcnRpZXMgYWxwaGFudW1lcmljIF9ldmVyeXdoZXJlXwp3aGljaCBsb29r
cyBxdWl0ZSBzdHJhbmdlIGF0IHRpbWVzLiBJZiBJJ20gZ2V0dGluZyB0aGUgbmV3bHkgYWRkZWQg
ZHQKY29kaW5nIHN0eWxlIGNvcnJlY3RseSBjb21tb24gKHN1YnN5c3RlbT8pIHByb3BlcnRpZXMg
c2hvdWxkIGFsc28gYmUgcGxhY2VkCmJlZm9yZSB2ZW5kb3IgKGRyaXZlcj8pIHNwZWNpZmljIG9u
ZXMuIFlldCBJIGRpZG4ndCBzZWUgYSBib2FyZCBmaWxlIHdoaWNoCnBsYWNlcyAncmVndWxhdG9y
LW1heC1taWNyb3ZvbHQnIGJlZm9yZSAncmVndWxhdG9yLW1pbi1taWNyb3ZvbHQnLiBTbyBJCmd1
ZXNzIGl0J3MgZmluZSBpZiBpdCdzIGRvbmUgY29uc2lzdGVudGx5IHdpdGhpbiB0aGUgc2FtZSBm
aWxlPwoKQWxleAo+IEJ1dCBub3cgdGhhdCBJIGxvb2sgYXQgaXQsIHlvdSdyZSByaWdodCB0aGVy
ZSBhcmUgc29tZSBub24tYWxwaGFiZXRpY2FsCj4gc2hlbmFuaWdhbnMgZ29pbmcgb24gdGhlcmUg
aW4gdGhlIHNkbW1jIGFuZCBzZGhjaSBub2RlcyA7LSkKPiAKPiBIZWlrbwo+IAo+IAo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+
IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
