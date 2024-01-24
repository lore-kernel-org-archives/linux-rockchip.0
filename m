Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 454A7C46CD2
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jan 2024 21:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HV2wqwLIbxwcBTXa0kVMxgA6hO79dwDOSJnDCCAqnsE=; b=zojT6oge6Latpq
	HKkmQDydsTFYM25mLp0seUv8G4hb+9AlDNevyRWvSlXR8unPBzM/l/LBLUHwQlNEhayP+pH0FoGgG
	cFSdZxMdOwwDU2Lp5C5gMvUDe+jn8E6/WZKdH419cthhX/+gFsPNsXO2AOSPUdyGSWymc2ZvGSiuv
	l1jA6fpsthK9lPTH/+M2LkjXiFVjHc03WG/v0PUFF78eCuAazoaEoiJehHlxRPlr5/KbCTej7Rx+V
	ryQq08Czc/o1dGhyfhmwpHtxv8iNKV/ixhJyoXtxygKiWM9XfLzgMdq3FA2Vq3RtTBjF1o7xBPBsR
	8qygHYzB3DqUbqHZ+XTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rSlEZ-005Dgm-0C;
	Wed, 24 Jan 2024 21:56:35 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rSlET-005Dby-2Z
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jan 2024 21:56:32 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-40e7065b7bdso70787655e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jan 2024 13:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706133383; x=1706738183; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EdTvmEU+xHHgmqyOex/ty2VAc9Q/TL690DSs8BPGiJc=;
        b=vLEtRiEmKeiN2AVTkXC5u6Sqk9dYGoZzFPKj4AONvZNTWbzVtL0CkUxXFI81UK7FSD
         YkUFTCJ7EW5h0TlyGAn+QxJdaBFCGf0IeMJaIim2eLMH5+6Ukei837EdVOWcwffrcs/S
         T0tQujyfXYZl03PVAqDVhp54aq49fcJQEWzA7oyefgYFt75A+Hl3M6nRXonn3fMKukFJ
         LjEs1hTVKvgB/9p2JbNoVhnIouNEs5VBNy5CIMix0xZOdKV8Xx/4h2ruls3W5PFEKb7F
         mGrKTl1J3MT4rJZB6WFmWizJOZtFkgWs6TOw4ukwypPwkxRLjTmGh7ScMXnJ0zPR5bVo
         AdUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706133383; x=1706738183;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EdTvmEU+xHHgmqyOex/ty2VAc9Q/TL690DSs8BPGiJc=;
        b=e8XDkTNrsu0NXar6J7U8dfZ5qait64JIvtaBx6FNzVChUoHbuHyqhCvwFILLwVt39R
         wZuRkFVt4QFF1Jr2qLcJDhtTV08vKB9GvBChXO2nNvvSM8rf/R52CKE4kXE2TQ8lLx03
         yzH1xpkcxV6Q0PcOnFy6NgsW/lBHloajhKatmggLEvOEE5Pysa6czHZ1c+Z4F1jHmh4L
         K8BrWjYsSTFkxPoh3pvZz0cwlCrCWfbspC9f3Fw6TUSan/UoLtGUitvqmnCXxwIC8NMY
         9Ga42KB2HW5otXJ8D01siPtNYq/pPWAMARNddz0/zAEWp4/ZAf92nL1vTRFzaWoKhzfh
         rpqA==
X-Gm-Message-State: AOJu0Yy8bS+oyHacG77gtFMm5drQwz1CzaTZlyeMfoA121QkYV/o8DyU
	szqKLffRGfMy6RqBbuyQ+FxOpB5ahsItp3AUnBAkXJjmjeHIc5HJ8ip4si/q0Mk=
X-Google-Smtp-Source: AGHT+IGFN1yZ6bkhyyR0G3nSuRypLXrxZfSyl7bbfq6gvKvNiRN9o22JGYpQGM1U0hToOzmUoKPSdg==
X-Received: by 2002:a05:600c:4ed2:b0:40e:bfca:f1b8 with SMTP id g18-20020a05600c4ed200b0040ebfcaf1b8mr996061wmq.54.1706133382771;
        Wed, 24 Jan 2024 13:56:22 -0800 (PST)
Received: from ?IPV6:2a05:6e02:1041:c10:92d0:e652:43b1:5e6a? ([2a05:6e02:1041:c10:92d0:e652:43b1:5e6a])
        by smtp.googlemail.com with ESMTPSA id t15-20020a05600c198f00b0040e395cd20bsm377273wmq.7.2024.01.24.13.56.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Jan 2024 13:56:22 -0800 (PST)
Message-ID: <245f5692-be30-4216-8b13-988092793732@linaro.org>
Date: Wed, 24 Jan 2024 22:56:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] arm64: dts: rockchip: enable built-in thermal
 monitoring on rk3588
To: Alexey Charkov <alchark@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Dragan Simic <dsimic@manjaro.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240125-rk-dts-additions-v1-0-5879275db36f@gmail.com>
 <20240125-rk-dts-additions-v1-2-5879275db36f@gmail.com>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240125-rk-dts-additions-v1-2-5879275db36f@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240124_135629_836301_47FB5B58 
X-CRM114-Status: GOOD (  18.74  )
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

T24gMjQvMDEvMjAyNCAyMTozMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gSW5jbHVkZSB0aGVy
bWFsIHpvbmVzIGluZm9ybWF0aW9uIGluIGRldmljZSB0cmVlIGZvciByazM1ODggdmFyaWFudHMK
ClRoZXJlIGlzIGFuIGVuZXJneSBtb2RlbCBmb3IgdGhlIENQVXMuIEJ1dCBmaW5kaW5nIG91dCB0
aGUgc3VzdGFpbmFibGUgCnBvd2VyIG1heSBiZSBhIGJpdCB0cmlja3kuIFNvIEkgc3VnZ2VzdCB0
byByZW1vdmUgZXZlcnl0aGluZyByZWxhdGVkIHRvIAp0aGUgcG93ZXIgYWxsb2NhdG9yIGluIHRo
aXMgY2hhbmdlIGFuZCBwcm9wb3NlIGEgZGVkaWNhdGVkIGNoYW5nZSB3aXRoIAphbGwgdGhlIHBv
d2VyIGNvbmZpZ3VyYXRpb24gKHdoaWNoIGluY2x1ZGVzIHByb3BlciBrX3AqIGNvZWZmaWNpZW50
cyB0byAKYmUgc2V0IGZyb20gdXNlcnNwYWNlIHRvIGhhdmUgYSBmbGF0IG1pdGlnYXRpb24gZmln
dXJlKS4KClRoYXQgaW1wbGllcyByZW1vdmluZyB0aGUgImNvbnRyaWJ1dGlvbiIgcHJvcGVydGll
cyBpbiB0aGlzIGRlc2NyaXB0aW9uLgoKU29tZSBjb21tZW50cyBiZWxvdyBidXQgZGVmaW5pdGl2
ZWx5IHRoaXMgdmVyc2lvbiBpcyBjbG9zZSB0byBiZSBvay4KCgo+IFNpZ25lZC1vZmYtYnk6IEFs
ZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiAtLS0KPiAgIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpIHwgMTY1ICsrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDE2NSBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLmR0c2kKPiBpbmRleCAzNmIxYjdhY2ZlNmEu
LjEzMWI5ZWIyMTM5OCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OHMuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
cy5kdHNpCj4gQEAgLTEwLDYgKzEwLDcgQEAKPiAgICNpbmNsdWRlIDxkdC1iaW5kaW5ncy9yZXNl
dC9yb2NrY2hpcCxyazM1ODgtY3J1Lmg+Cj4gICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvcGh5L3Bo
eS5oPgo+ICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2F0YS9haGNpLmg+Cj4gKyNpbmNsdWRlIDxk
dC1iaW5kaW5ncy90aGVybWFsL3RoZXJtYWwuaD4KPiAgIAo+ICAgLyB7Cj4gICAJY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxyazM1ODgiOwo+IEBAIC0yMjI4LDYgKzIyMjksMTcwIEBAIHRzYWRjOiB0
c2FkY0BmZWMwMDAwMCB7Cj4gICAJCXN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gICAJfTsKPiAgIAo+
ICsJdGhlcm1hbF96b25lczogdGhlcm1hbC16b25lcyB7Cj4gKwkJLyogc2Vuc29yIG5lYXIgdGhl
IGNlbnRlciBvZiB0aGUgd2hvbGUgY2hpcCAqLwo+ICsJCXBhY2thZ2VfdGhlcm1hbDogcGFja2Fn
ZS10aGVybWFsIHsKPiArCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDA+Owo+ICsJCQlwb2xs
aW5nLWRlbGF5ID0gPDA+Owo+ICsJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRzYWRjIDA+Owo+ICsK
PiArCQkJdHJpcHMgewo+ICsJCQkJcGFja2FnZV9jcml0OiBwYWNrYWdlLWNyaXQgewo+ICsJCQkJ
CXRlbXBlcmF0dXJlID0gPDExNTAwMD47Cj4gKwkJCQkJaHlzdGVyZXNpcyA9IDwwPjsKPiArCQkJ
CQl0eXBlID0gImNyaXRpY2FsIjsKPiArCQkJCX07Cj4gKwkJCX07Cj4gKwkJfTsKPiArCj4gKwkJ
Lyogc2Vuc29yIGJldHdlZW4gQTc2IGNvcmVzIDAgYW5kIDEgKi8KPiArCQliaWdjb3JlMF90aGVy
bWFsOiBiaWdjb3JlMC10aGVybWFsIHsKPiArCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDIw
PjsKCjIwbXMgc2VlbXMgdmVyeSBzaG9ydCwgaXMgdGhpcyB2YWx1ZSBvbiBwdXJwb3NlPyBPciBq
dXN0IHBpY2tlZCB1cCAKYXJiaXRyYXJpbHk/CgpJZiBpdCBpcyBwb3NzaWJsZSwgcGVyaGFwcyB5
b3Ugc2hvdWxkIHByb2ZpbGUgdGhlIHRlbXBlcmF0dXJlIG9mIHRoZXNlIAp0aGVybWFsIHpvbmVz
IChDUFVzIG9uZXMpLiBUaGVyZSBpcyBhIHRvb2wgaW4gCjxsaW51eGRpcj4vdG9vbHMvdGhlcm1h
bC90aGVybW9tZXRlciB0byBkbyB0aGF0LgoKWW91IGNhbiBtZWFzdXJlIHdpdGggMTBtcyBzYW1w
bGluZyByYXRlIHdoZW4gcnVubmluZyBmb3IgaW5zdGFuY2UgCmRocnlzdG9uZSBwaW5uZWQgb24g
YjAgYW5kIGIxLCB0aGVuIG9uIGIyIGFuZCBiMy4gQW5kIGZpbmFsbHkgb24gdGhlIApzbWFsbCBj
bHVzdGVyLgoKQnV0IGlmIHlvdSBkb24ndCBoYXZlIHNwYXJlIHRpbWUgYW5kIDIwIGlzIG9rIGZv
ciB5b3UuIFRoZW4gaXQgaXMgZmluZSAKZm9yIG1lIHRvby4KClNvbWUgbml0cyBiZWxvdy4KCj4g
KwkJCXBvbGxpbmctZGVsYXkgPSA8MD47Cj4gKwkJCXRoZXJtYWwtc2Vuc29ycyA9IDwmdHNhZGMg
MT47Cj4gKwo+ICsJCQl0cmlwcyB7Cj4gKwkJCQliaWdjb3JlMF9hbGVydDA6IGJpZ2NvcmUwLWFs
ZXJ0MCB7Cj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8NzUwMDA+Owo+ICsJCQkJCWh5c3RlcmVzaXMg
PSA8MjAwMD47Cj4gKwkJCQkJdHlwZSA9ICJwYXNzaXZlIjsKPiArCQkJCX07Cj4gKwkJCQliaWdj
b3JlMF9hbGVydDE6IGJpZ2NvcmUwLWFsZXJ0MSB7Cj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8ODUw
MDA+Owo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4gKwkJCQkJdHlwZSA9ICJwYXNzaXZl
IjsKPiArCQkJCX07Cj4gKwkJCQliaWdjb3JlMF9jcml0OiBiaWdjb3JlMC1jcml0IHsKPiArCQkJ
CQl0ZW1wZXJhdHVyZSA9IDwxMTUwMDA+Owo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MD47Cj4gKwkJ
CQkJdHlwZSA9ICJjcml0aWNhbCI7Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsJCQljb29saW5nLW1h
cHMgewo+ICsJCQkJbWFwMCB7Cj4gKwkJCQkJdHJpcCA9IDwmYmlnY29yZTBfYWxlcnQxPjsKPiAr
CQkJCQljb29saW5nLWRldmljZSA9Cj4gKwkJCQkJCTwmY3B1X2IwIFRIRVJNQUxfTk9fTElNSVQg
VEhFUk1BTF9OT19MSU1JVD4sCj4gKwkJCQkJCTwmY3B1X2IxIFRIRVJNQUxfTk9fTElNSVQgVEhF
Uk1BTF9OT19MSU1JVD47Cj4gKwkJCQkJY29udHJpYnV0aW9uID0gPDEwMjQ+Owo+ICsJCQkJfTsK
PiArCQkJfTsKPiArCQl9Owo+ICsKPiArCQkvKiBzZW5zb3IgYmV0d2VlbiBBNzYgY29yZXMgMiBh
bmQgMyAqLwo+ICsJCWJpZ2NvcmUyX3RoZXJtYWw6IGJpZ2NvcmUyLXRoZXJtYWwgewo+ICsJCQlw
b2xsaW5nLWRlbGF5LXBhc3NpdmUgPSA8MjA+Owo+ICsJCQlwb2xsaW5nLWRlbGF5ID0gPDA+Owo+
ICsJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRzYWRjIDI+Owo+ICsKPiArCQkJdHJpcHMgewo+ICsJ
CQkJYmlnY29yZTJfYWxlcnQwOiBiaWdjb3JlMi1hbGVydDAgewo+ICsJCQkJCXRlbXBlcmF0dXJl
ID0gPDc1MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDIwMDA+Owo+ICsJCQkJCXR5cGUgPSAi
cGFzc2l2ZSI7Cj4gKwkJCQl9Owo+ICsJCQkJYmlnY29yZTJfYWxlcnQxOiBiaWdjb3JlMi1hbGVy
dDEgewo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDg1MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0g
PDIwMDA+Owo+ICsJCQkJCXR5cGUgPSAicGFzc2l2ZSI7Cj4gKwkJCQl9Owo+ICsJCQkJYmlnY29y
ZTJfY3JpdDogYmlnY29yZTItY3JpdCB7Cj4gKwkJCQkJdGVtcGVyYXR1cmUgPSA8MTE1MDAwPjsK
PiArCQkJCQloeXN0ZXJlc2lzID0gPDA+Owo+ICsJCQkJCXR5cGUgPSAiY3JpdGljYWwiOwo+ICsJ
CQkJfTsKPiArCQkJfTsKPiArCQkJY29vbGluZy1tYXBzIHsKPiArCQkJCW1hcDEgewoKcy9tYXAx
L21wYTAvCgo+ICsJCQkJCXRyaXAgPSA8JmJpZ2NvcmUyX2FsZXJ0MT47Cj4gKwkJCQkJY29vbGlu
Zy1kZXZpY2UgPQo+ICsJCQkJCQk8JmNwdV9iMiBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9f
TElNSVQ+LAo+ICsJCQkJCQk8JmNwdV9iMyBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9fTElN
SVQ+Owo+ICsJCQkJCWNvbnRyaWJ1dGlvbiA9IDwxMDI0PjsKPiArCQkJCX07Cj4gKwkJCX07Cj4g
KwkJfTsKPiArCj4gKwkJLyogc2Vuc29yIGJldHdlZW4gdGhlIGZvdXIgQTU1IGNvcmVzICovCj4g
KwkJbGl0dGxlX2NvcmVfdGhlcm1hbDogbGl0dGxlY29yZS10aGVybWFsIHsKPiArCQkJcG9sbGlu
Zy1kZWxheS1wYXNzaXZlID0gPDIwPjsKPiArCQkJcG9sbGluZy1kZWxheSA9IDwwPjsKPiArCQkJ
dGhlcm1hbC1zZW5zb3JzID0gPCZ0c2FkYyAzPjsKPiArCj4gKwkJCXRyaXBzIHsKPiArCQkJCWxp
dHRsZWNvcmVfYWxlcnQwOiBsaXR0bGVjb3JlLWFsZXJ0MCB7Cj4gKwkJCQkJdGVtcGVyYXR1cmUg
PSA8NzUwMDA+Owo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4gKwkJCQkJdHlwZSA9ICJw
YXNzaXZlIjsKPiArCQkJCX07Cj4gKwkJCQlsaXR0bGVjb3JlX2FsZXJ0MTogbGl0dGxlY29yZS1h
bGVydDEgewo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDg1MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lz
ID0gPDIwMDA+Owo+ICsJCQkJCXR5cGUgPSAicGFzc2l2ZSI7Cj4gKwkJCQl9Owo+ICsJCQkJbGl0
dGxlY29yZV9jcml0OiBsaXR0bGVjb3JlLWNyaXQgewo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDEx
NTAwMD47Cj4gKwkJCQkJaHlzdGVyZXNpcyA9IDwwPjsKPiArCQkJCQl0eXBlID0gImNyaXRpY2Fs
IjsKPiArCQkJCX07Cj4gKwkJCX07Cj4gKwkJCWNvb2xpbmctbWFwcyB7Cj4gKwkJCQltYXAyIHsK
CnMvbWFwMi9tYXAwLwoKPiArCQkJCQl0cmlwID0gPCZsaXR0bGVjb3JlX2FsZXJ0MT47Cj4gKwkJ
CQkJY29vbGluZy1kZXZpY2UgPQo+ICsJCQkJCQk8JmNwdV9sMCBUSEVSTUFMX05PX0xJTUlUIFRI
RVJNQUxfTk9fTElNSVQ+LAo+ICsJCQkJCQk8JmNwdV9sMSBUSEVSTUFMX05PX0xJTUlUIFRIRVJN
QUxfTk9fTElNSVQ+LAo+ICsJCQkJCQk8JmNwdV9sMiBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxf
Tk9fTElNSVQ+LAo+ICsJCQkJCQk8JmNwdV9sMyBUSEVSTUFMX05PX0xJTUlUIFRIRVJNQUxfTk9f
TElNSVQ+Owo+ICsJCQkJCWNvbnRyaWJ1dGlvbiA9IDwxMDI0PjsKPiArCQkJCX07Cj4gKwkJCX07
Cj4gKwkJfTsKPiArCj4gKwkJLyogc2Vuc29yIG5lYXIgdGhlIFBEX0NFTlRFUiBwb3dlciBkb21h
aW4gKi8KPiArCQljZW50ZXJfdGhlcm1hbDogY2VudGVyLXRoZXJtYWwgewo+ICsJCQlwb2xsaW5n
LWRlbGF5LXBhc3NpdmUgPSA8MD47Cj4gKwkJCXBvbGxpbmctZGVsYXkgPSA8MD47Cj4gKwkJCXRo
ZXJtYWwtc2Vuc29ycyA9IDwmdHNhZGMgND47Cj4gKwo+ICsJCQl0cmlwcyB7Cj4gKwkJCQljZW50
ZXJfY3JpdDogY2VudGVyLWNyaXQgewo+ICsJCQkJCXRlbXBlcmF0dXJlID0gPDExNTAwMD47Cj4g
KwkJCQkJaHlzdGVyZXNpcyA9IDwwPjsKPiArCQkJCQl0eXBlID0gImNyaXRpY2FsIjsKPiArCQkJ
CX07Cj4gKwkJCX07Cj4gKwkJfTsKPiArCj4gKwkJZ3B1X3RoZXJtYWw6IGdwdS10aGVybWFsIHsK
PiArCQkJcG9sbGluZy1kZWxheS1wYXNzaXZlID0gPDA+Owo+ICsJCQlwb2xsaW5nLWRlbGF5ID0g
PDA+Owo+ICsJCQl0aGVybWFsLXNlbnNvcnMgPSA8JnRzYWRjIDU+Owo+ICsKPiArCQkJdHJpcHMg
ewo+ICsJCQkJZ3B1X2NyaXQ6IGdwdS1jcml0IHsKPiArCQkJCQl0ZW1wZXJhdHVyZSA9IDwxMTUw
MDA+Owo+ICsJCQkJCWh5c3RlcmVzaXMgPSA8MD47Cj4gKwkJCQkJdHlwZSA9ICJjcml0aWNhbCI7
Cj4gKwkJCQl9Owo+ICsJCQl9Owo+ICsJCX07Cj4gKwo+ICsJCW5wdV90aGVybWFsOiBucHUtdGhl
cm1hbCB7Cj4gKwkJCXBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwwPjsKPiArCQkJcG9sbGluZy1k
ZWxheSA9IDwwPjsKPiArCQkJdGhlcm1hbC1zZW5zb3JzID0gPCZ0c2FkYyA2PjsKPiArCj4gKwkJ
CXRyaXBzIHsKPiArCQkJCW5wdV9jcml0OiBucHUtY3JpdCB7Cj4gKwkJCQkJdGVtcGVyYXR1cmUg
PSA8MTE1MDAwPjsKPiArCQkJCQloeXN0ZXJlc2lzID0gPDA+Owo+ICsJCQkJCXR5cGUgPSAiY3Jp
dGljYWwiOwo+ICsJCQkJfTsKPiArCQkJfTsKPiArCQl9Owo+ICsJfTsKPiArCj4gICAJc2FyYWRj
OiBhZGNAZmVjMTAwMDAgewo+ICAgCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU4OC1zYXJh
ZGMiOwo+ICAgCQlyZWcgPSA8MHgwIDB4ZmVjMTAwMDAgMHgwIDB4MTAwMDA+Owo+IAoKLS0gCjxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20v
cGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3Jn
PiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
