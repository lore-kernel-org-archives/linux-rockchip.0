Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A7F5C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 10:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SR0Uween+exXt53KvxvQya/RmoyeB2MoDW2QUIoKK58=; b=e7m0CcmeYSnGXE
	zhER2UwMYmyakTX6vfizR77XVSrtiaLc4dXrx1v7SQWlytluLAh/A2Y9BOGnqFNwxVVWrqKTThw0X
	QesCFJZiB0Qn7lZK3b4r26w8mVJSZGxuTR06PLHFjEah1XjcZ0SKn2lpV/81v9pbs9+CwXz2KBdoX
	lw6G3eNs9oTDJ/q+fqgfMy2+/PT8cC2P9ET8QnI5K9k13whzEhtdEmqrRbgMzh6y86mlVn0/ccAxl
	pcVNLB6bgUBag5fehvGhlmW3UMKKeaErMlVXPoc5KMU1G3EfdijzOdqHqrciikOBjqNVa36cc1/vX
	fOR5Hl20bb7ufMfr2QVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r12Dm-005wGL-0q;
	Thu, 09 Nov 2023 10:25:10 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r12Di-005wBP-1Y
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 10:25:08 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-32dc918d454so391632f8f.2
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Nov 2023 02:24:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699525498; x=1700130298; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cEa65zbadXb56guqlzS9fYt6eXzoAqSRXIuLeM4+qbs=;
        b=ly7Zqq+Ly27nLeelmNZY24ivXwkxaICggGDURE+N4DBktdTkkFG0Xi+yM8afSlzjC3
         duq+OoQUJF01LOVlkHbCTUfMwUQP3SLQdtNGLVaOA+ZwTRX+wBnRqGuNsmB+Ma6EOZmR
         d/H8PwqXsT1Ic/7UAcxnJzNbvbj+RaCSY+EEs4Y80pcpu+Rlr+dXncmi+cBGAoTCgklX
         Gt3+/W267Z02I4vOIU109p5uEJPSE89nCUugqvFLQkPOxq1L1qQVFUguUnAomSZyP6DW
         uReyIgjxA5obro5tXJ8ODC+hX0wSEuj3L+6wD2zB3dpHozIqFl6LCQljUGLqHWBhqWRl
         +kUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699525498; x=1700130298;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cEa65zbadXb56guqlzS9fYt6eXzoAqSRXIuLeM4+qbs=;
        b=Ge5/K70TM98fc3aiA6RN8zy9B2e2srMuAPTTPAXRUGQAVR+I1iM+2ZlgAFfGqs7aDz
         E0WKJIZuxoUQ7ZyX2fFKIsJTnfo6WelnMhGkRlZVqCwAYc1ykfsuR+m7CwQ5zB/DXipa
         Gx8PlQuFeMa7I3SX16GjWvKwlZZmkE+UjT5cXB7kDqtRy/r3VHxttYoWnQYGO94WCfep
         UmiVzrWV3oKiC5bAEiZyBioZ5NvhKwFF9+58cjnU0uTi/w25rHdcDYU8iu2bL84sMBsV
         VEZ2uObLCeMCVlKAP1LZXJSMAuNgHJJsnUGKlq1XPB0lnzXzGvpisHnPGr4qIhZ7K/yk
         58+Q==
X-Gm-Message-State: AOJu0Yz5w0KMFWtpi4tVMStgyPkULhqnGs253TcP3+8KXMouuMR9Eh6N
	MHxx1r72s++4SM12vp/Iu06VQX/uTlXFby9sHck=
X-Google-Smtp-Source: AGHT+IE37xNQ1PNI1ZTi31vf3M1OMcSN8bEeLxMU3Z3hZ/5we4zJ+aAbyZH0DVkyGOqEozLn7LRjbQ==
X-Received: by 2002:adf:e3cd:0:b0:32d:d879:1c3 with SMTP id k13-20020adfe3cd000000b0032dd87901c3mr4180617wrm.31.1699525498376;
        Thu, 09 Nov 2023 02:24:58 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id c7-20020a5d4cc7000000b0032fa66bda58sm7074001wrt.101.2023.11.09.02.24.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 02:24:57 -0800 (PST)
Message-ID: <f58c8f3f-7b34-47e7-a33a-bddb6106fec7@linaro.org>
Date: Thu, 9 Nov 2023 11:24:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF clk
 id
Content-Language: en-US
To: zhangqing <zhangqing@rock-chips.com>,
 Conor Dooley <conor.dooley@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, mturquette@baylibre.com,
 sboyd@kernel.org, kever.yang@rock-chips.com, heiko@sntech.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com,
 andy.yan@rock-chips.com, Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20231108061822.4871-1-zhangqing@rock-chips.com>
 <20231108061822.4871-4-zhangqing@rock-chips.com>
 <20231108-donation-uncertain-c4d0f560c420@spud>
 <2e520a06-0ff1-76ef-2a72-ab6663738b45@rock-chips.com>
 <20231109-send-pushchair-45b37551102a@wendy>
 <a11c847c-4f95-ea7b-3497-6ada0586c486@rock-chips.com>
 <dee8031f-d739-442c-988c-3df61d92c0d3@linaro.org>
 <f013df81-670e-37c4-c1a7-e1302352ca20@rock-chips.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <f013df81-670e-37c4-c1a7-e1302352ca20@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_022506_517486_F3BCC68E 
X-CRM114-Status: GOOD (  18.11  )
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

T24gMDkvMTEvMjAyMyAxMTowNSwgemhhbmdxaW5nIHdyb3RlOgo+IAo+IOWcqCAyMDIzLzExLzkg
MTc6MjEsIEtyenlzenRvZiBLb3psb3dza2kg5YaZ6YGTOgo+PiBPbiAwOS8xMS8yMDIzIDA5OjA2
LCB6aGFuZ3Fpbmcgd3JvdGU6Cj4+PiDlnKggMjAyMy8xMS85IDE1OjI5LCBDb25vciBEb29sZXkg
5YaZ6YGTOgo+Pj4+IE9uIFRodSwgTm92IDA5LCAyMDIzIGF0IDAyOjI3OjM4UE0gKzA4MDAsIHpo
YW5ncWluZyB3cm90ZToKPj4+Pj4gSGk6Cj4+Pj4+Cj4+Pj4+IOWcqCAyMDIzLzExLzggMjA6MDEs
IENvbm9yIERvb2xleSDlhpnpgZM6Cj4+Pj4+PiBPbiBXZWQsIE5vdiAwOCwgMjAyMyBhdCAwMjox
ODoyMVBNICswODAwLCBFbGFpbmUgWmhhbmcgd3JvdGU6Cj4+Pj4+Pj4gZXhwb3J0IFBDTEtfVk8x
R1JGIGZvciBEVC4KPj4+Pj4+Pgo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEVsYWluZSBaaGFuZyA8
emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+Pj4+Pj4+IC0tLQo+Pj4+Pj4+ICAgICBpbmNsdWRl
L2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUuaCB8IDMgKystCj4+Pj4+Pj4g
ICAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+Pj4+
Pgo+Pj4+Pj4+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlw
LHJrMzU4OC1jcnUuaCBiL2luY2x1ZGUvZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTg4
LWNydS5oCj4+Pj4+Pj4gaW5kZXggNTc5MGIxMzkxMjAxLi41MGJhNzI5ODAxOTAgMTAwNjQ0Cj4+
Pj4+Pj4gLS0tIGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1ODgtY3J1
LmgKPj4+Pj4+PiArKysgYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4
OC1jcnUuaAo+Pj4+Pj4+IEBAIC03MzMsOCArNzMzLDkgQEAKPj4+Pj4+PiAgICAgI2RlZmluZSBB
Q0xLX0FWMV9QUkUJCQk3MTgKPj4+Pj4+PiAgICAgI2RlZmluZSBQQ0xLX0FWMV9QUkUJCQk3MTkK
Pj4+Pj4+PiAgICAgI2RlZmluZSBIQ0xLX1NESU9fUFJFCQkJNzIwCj4+Pj4+Pj4gKyNkZWZpbmUg
UENMS19WTzFHUkYJCQk3MjEKPj4+Pj4+PiAtI2RlZmluZSBDTEtfTlJfQ0xLUwkJCShIQ0xLX1NE
SU9fUFJFICsgMSkKPj4+Pj4+PiArI2RlZmluZSBDTEtfTlJfQ0xLUwkJCShQQ0xLX1ZPMUdSRiAr
IDEpCj4+Pj4+PiBUaGlzIGRlZmluaXRpb24gaXMgcGFydCBvZiB0aGUgQUJJLCBpZiBpdCBpcyBz
YWZlIHRvIGNoYW5nZSBpdCwgdGhlbiBpdAo+Pj4+Pj4gaXMgc2FmZSB0byBkZWxldGUgaXQuCj4+
Pj4+IFRoZSBuZXcgSUQgaXMgdG8gc29sdmUgdGhlIG5pdSBjbG9jayBkZXBlbmRlbmN5IHByb2Js
ZW0oVXNlZCBpbiBQQVRDSCBWNQo+Pj4+PiA0LzQpLlRoaXMgbmV3IElEIHdpbGwgYWxzbyBiZSB1
c2VkIGluIERUUyBpbiB0aGUgZnV0dXJlLgo+Pj4+Pgo+Pj4+PiBDTEtfTlJfQ0xLUyByZXByZXNl
bnRzIHRoZSBudW1iZXIgb2YgY2xvY2tzIHVzZWQgYnkgdGhlCj4+Pj4+IGRyaXZlcnMvY2xrL3Jv
Y2tjaGlwL2Nsay1ya3h4eC5jLiBJdCBpcyBzYWZlIHRvIG1vZGlmeSBpdCwgYnV0IGNhbm5vdCBk
ZWxldGUKPj4+Pj4gaXQuCj4+Pj4gVGhlbiBkZWxldGUgaXQgZnJvbSB0aGUgaGVhZGVyIGFuZCBt
b3ZlIGl0IHRvIGNsay1ya3h4eC5jCj4+PiBJIGRvbid0IHRoaW5rIGl0J3MgbW9yZSBhcHByb3By
aWF0ZSB0byBtb3ZlIHRvIGNsay1ya3h4eC5jLgo+Pj4gQmVjYXVzZSBpZiB0aGVyZSBhcmUgbmV3
IHJlcXVpcmVtZW50cyBsYXRlciwgYW5kIGFkZCBuZXcgY2xrIGlkLCBpdCBpcwo+Pj4gbm90IGlu
IHRoZSBzYW1lIGZpbGUsIG1heWJlIGZvcmdldCB0byBtb2RpZnkgQ0xLX05SX0NMS1MuCj4+IFRo
ZW4geW91IGFyZSBub3QgYWxsb3dlZCB0byBjaGFuZ2UgaXQuIEl0J3MgcGFydCBvZiBBQkkuCj4g
Cj4gSWYgeW91IGp1c3QgZG9uJ3Qgd2FudCBtZSB0byBtb2RpZnkgQ0xLX05SX0NMS1MsIGNhbiBJ
IHVzZSBhbiB1bnVzZWQgSUQsIAo+IGxpa2UgW1BBVENIIFY0IDMvNF06Cj4gCj4gLSNkZWZpbmUg
TUJJU1RfTUNMS19QRE0xwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAyNAo+ICsjZGVmaW5lIFBDTEtfVk8xR1JGwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgMjQKCllvdSBjYW5ub3QgY2hhbmdlIHRoZSBBQkkuCgpJIGRvbid0IHVuZGVy
c3RhbmQgd2h5IGRvIHlvdSBpbnNpc3Qgb24gdGhpcyBwYXRoLiBZb3UgZ290IGNsZWFyCmNvbW1l
bnRzOiBlaXRoZXIgdGhpcyBpcyBBQkksIHNvIGl0IGNhbm5vdCBiZSBjaGFuZ2VkLCBvciBpdCBo
YXMgdG8gYmUKZHJvcHBlZC4gWW91IGtub3cgaW5zaXN0IG9uIHNvbWUgdGhpcmQgcGF0aC4gVGhl
cmUgaXMgbm8gc3VjaC4KCkJlc3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
