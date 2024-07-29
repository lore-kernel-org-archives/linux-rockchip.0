Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 704B9C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 09:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCbONEa3tbI2w9L3pCPetNu4rdOPPelGLawGHC+QXX4=; b=dhIOuix5U+8FeZ
	ArxHOY63RhmI2OaJcruCuYBKXzWdrctAqpjSi0f9eVQU3GhRU+oYPnnU2cM5g1N5aulUTUjb4ByDy
	b5NtTPNsJKc/wI3BKG8vA18Aabiwh36+Fjk7xjEvz0wDA8zzmmeU1z4V9udCNc8a7ZADcXSmonqOh
	KHgEjQ4DiT/Pd8e4FxGV2e+8XxhPXRfvC2XpFnlIGYt6hvywranuAK80gzvTJI5CKTY1jOH1OBERY
	Wb1iuHKPX1xrZ4BxSI06ZkjF7N9NmlTF/k5++g8W6MP9LHYuRcBnacgIhMTUxA52l2IynD21T14+F
	Jhd3MJn6zRx3/P4U9zDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYN6e-0000000AnLK-0tLI;
	Mon, 29 Jul 2024 09:55:52 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYN6b-0000000AnK7-0rPm
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 09:55:51 +0000
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-70940c9657dso1216430a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Jul 2024 02:55:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1722246947; x=1722851747; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=OKhJMM7FNWLEKxjLEZeLgWXuO555RaT5YZ8epEgnopU=;
        b=IpxsMWbYgjscIs2qXacTtjBE1XSwwoIvDHz/1gYGODrQOjo0K1RNswYi0QUyy2/bYC
         Pz69r7l45NwgYBPBPKXnR/zjiVHLUx9SdkAZVRDocMxi9bhlQj1Ik9yZ1dwzSNIvpnJ3
         gAtSagEmXvfvsQJcrfWQqWvl6AanscDHYSIew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722246947; x=1722851747;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OKhJMM7FNWLEKxjLEZeLgWXuO555RaT5YZ8epEgnopU=;
        b=jLKBqmARJI0vKlKLj1byZxOS88iu2+jJikQAYCY3E3wICaINB5hn+pWNBAb3t5Q884
         IexrRtcdPmznwcm0AVD1OKOYj4JCeFC0CF2S4mXtyW7qUNF0eU1Ep5SJr2TtA7Ikkhk8
         bj1IUI7vvHmVjsIXrswhxaXyE5ajcVCOIdcNGdrUOQklV0V1cTWSzSEPu//T6SAhry6E
         zl0eiS7Y2gb2LxDpOFEb974CTZpod1WP4/h7ng6gRcBaWNgrmZSLmlefYdGas87ABqhy
         mt1jcvqotnmB8URxR5J/UfMgZULdPwmK8vo/ZN1sOK3G4Wfwb/g5UMsi+fHWRgOuLMQi
         AQ2w==
X-Forwarded-Encrypted: i=1; AJvYcCWTbYZhSsmrWNp4tGLYIwdOmyiAdrOuD5noZ6apP27StsZkdL4PEie2sVyalJk1mxv5l9tZyYgVd8vwAEzP8qtxiyqo/MsSURvkzkpatSpT+A1Z
X-Gm-Message-State: AOJu0Yw9MnXVBhDhOKiDPH2s71WPMZfG3wYxJq8toOiVuHNpUS3qI5nc
	UmmEl1JW0G+udaomtCzQV3hJoHNOuQeENa1H6YsGYGp9Ed3n7/Ipp2iuNf/srw==
X-Google-Smtp-Source: AGHT+IH2UMch3TByotNV8uYlvPnYAb0f4mHesS+wcxZXOZMlSBa7xaMy519lJoXqtij2Wzi5bYBp1Q==
X-Received: by 2002:a05:6830:6205:b0:709:400a:5f88 with SMTP id 46e09a7af769-70940c0d2f2mr11662718a34.11.1722246947543;
        Mon, 29 Jul 2024 02:55:47 -0700 (PDT)
Received: from [10.176.68.61] ([192.19.176.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead715867sm6480567b3a.87.2024.07.29.02.55.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jul 2024 02:55:47 -0700 (PDT)
Message-ID: <f21a111a-e4e1-45ee-b116-8e52c70777a8@broadcom.com>
Date: Mon, 29 Jul 2024 11:55:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
To: Dragan Simic <dsimic@manjaro.org>
Cc: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, heiko@sntech.de, kvalo@kernel.org, davem@davemloft.net,
 edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
 conor+dt@kernel.org, efectn@protonmail.com, jagan@edgeble.ai,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 arend@broadcom.com, linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 duoming@zju.edu.cn, bhelgaas@google.com, minipli@grsecurity.net,
 brcm80211@lists.linux.dev, brcm80211-dev-list.pdl@broadcom.com,
 nick@khadas.com
References: <20240729070102.3770318-1-jacobe.zang@wesion.com>
 <20240729070102.3770318-5-jacobe.zang@wesion.com>
 <d7068c96e102eaf6c35a77eb76cd067d@manjaro.org>
 <qetrwlvqekobedpwexeltaxqpnemenlfhky2t2razmcdtwlcv3@qdlesuiac2mr>
 <9f248b0e2645a29b83ee503701e04d57@manjaro.org>
Content-Language: en-US
From: Arend van Spriel <arend.vanspriel@broadcom.com>
Autocrypt: addr=arend.vanspriel@broadcom.com; keydata=
 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
In-Reply-To: <9f248b0e2645a29b83ee503701e04d57@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_025549_378863_6D54A6A4 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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

T24gNy8yOS8yMDI0IDExOjEyIEFNLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gSGVsbG8gT25kcmVq
LAo+IAo+IE9uIDIwMjQtMDctMjkgMTA6NDQsIE9uZMWZZWogSmlybWFuIHdyb3RlOgo+PiBPbiBN
b24sIEp1bCAyOSwgMjAyNCBhdCAwOToxMjoyMEFNIEdNVCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+
Pj4gSGVsbG8gSmFjb2JlLAo+Pj4KPj4+IFsuLi5dCj4+Pgo+Pj4gPgo+Pj4gPiArwqDCoMKgIGNs
ayA9IGRldm1fY2xrX2dldF9vcHRpb25hbF9lbmFibGVkKGRldiwgImxwbyIpOwo+Pj4gPiArwqDC
oMKgIGlmIChJU19FUlIoY2xrKSkKPj4+ID4gK8KgwqDCoCBpZiAoY2xrKSB7Cj4+Pgo+Pj4gVGhl
c2UgdHdvIGxpbmVzIGxvb2tzIHJlYWxseSBjb25mdXNpbmcuwqAgU2hvdWxkbid0IGl0IGJlIGp1
c3QgYSBzaW5nbGUKPj4+ICJpZiAoIUlTX0VSUihjbGspKSB7IiBsaW5lIGluc3RlYWQ/Cj4+Cj4+
IEl0IHNob3VsZCBiZSBgIUlTX0VSUihjbGspICYmIGNsa2Agb3RoZXJ3aXNlIHRoZSBkZWJ1ZyBt
ZXNzYWdlIHdpbGwgYmUKPj4gaW5jb3JyZWN0Lgo+IAo+IEFoLCBJIHNlZSBub3csIHRoYW5rcy7C
oCBUaGVyZSdzIGFsc28gSVNfRVJSX09SX05VTEwsIHNvIHRoZSBjb25kaXRpb24KPiBjYW4gYWN0
dWFsbHkgYmUgIiFJU19FUlJfT1JfTlVMTChjbGspIi4KCisrIGJlc3Qgc3VnZ2VzdGlvbgoKPj4+
ID4gK8KgwqDCoMKgwqDCoMKgIGJyY21mX2RiZyhJTkZPLCAiZW5hYmxpbmcgMzJrSHogY2xvY2tc
biIpOwo+Pj4gPiArwqDCoMKgwqDCoMKgwqAgY2xrX3NldF9yYXRlKGNsaywgMzI3NjgpOwo+Pj4g
PiArwqDCoMKgIH0KPj4+ID4gKwo+Pj4gPsKgwqDCoMKgwqAgaWYgKCFucCB8fCAhb2ZfZGV2aWNl
X2lzX2NvbXBhdGlibGUobnAsICJicmNtLGJjbTQzMjktZm1hYyIpKQo+Pj4gPsKgwqDCoMKgwqDC
oMKgwqDCoCByZXR1cm47CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
