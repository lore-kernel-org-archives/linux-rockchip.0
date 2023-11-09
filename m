Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F0F8C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2XX49I+oiWu8EFF+VTL+rIhk4dWvduCCJo2M/KNvls=; b=r1hD6iPozGJOo4
	KSK23qWLAyKTKCb7pU93aVVVyiZc076Fg9+u0nONSRS+TwD0A3ULofGkjLriWgEA1zHkqRqWBJm6A
	4Rkm6xa2MjHQ5DCyAribF2EWdw/ViKzMIduq6h5Oihl3ib1xv6998xLwYueAmqZgN6IwQ0Yxkj22i
	6cchliRFoXhL6XRNnxPWzaKq1xnQrlgaWjLXagKaLg5/Mw2+12wx+aGU3PQ+OEjMNibywZ8Hvx02a
	o/14DuWQgj4+Csa3WYa+X5FBEPKnSprySocmbrPTBwk7So7cZPm8lGQfwMxejKBsnYnKB8SNnXXdu
	IA5jwBfEVCPkH+d+6qfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11EN-005lQ8-1o;
	Thu, 09 Nov 2023 09:21:43 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11EK-005lOv-1j
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Nov 2023 09:21:41 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9c2a0725825so101406566b.2
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Nov 2023 01:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699521698; x=1700126498; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BIEWXOtpcXDDh9Sw+1v3A922xDR5FEkBx8qfcGj1QTI=;
        b=Fo3KuBiCwE93ySVTAuMfId/DS/dvVnsM+E1Cet1YVqFh/tU7CZU5Szvf2ej+09N3lj
         weYTy75+6h3nPYEqrg3di4pi+TIFtdC45UAHfms4XOb1ZsYe0L7Pb9VFdC+lAHNrFgA2
         QliqXmYzxjrUk+pqZaMG+SqLzfVu17Yk3Hns/hoXGNQYa/UzGwBToSJt0ytSC08BElau
         gImsiQlroTvUbT/3+1qx0BAvpovUjM0jTNuyA11NIhnS2AKL3jKrUHYaFm6kgCwGglqw
         GVQWMAvoRePGdlr+evZpX4JQZeTSNzRqNFkcRpL/b3UrBoMhc4ujP2OLNni+gmvSm/yG
         zYnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699521698; x=1700126498;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BIEWXOtpcXDDh9Sw+1v3A922xDR5FEkBx8qfcGj1QTI=;
        b=V0qjHwEkHFBs8cv0N/NGmvxTp4E9pd0coMQnWW8egO+VCBXjEFjEcGal1/YQwONu9S
         88osQdR7E6OAfYeBWYEwB4GOBm87ctvyHZUR0jNKhCnrDjV1ZCam2KzjCfbmZ4TcyiNK
         arypGhbRJZFjcnYEhNLOBzjl7TbkIXs1KvWG8fdgoljJJol8wn4rzDh3Bmvx0JGsrSp+
         vbPZ7hGrCCQ1Xc3+b6qpB+TjPHhqfA9YlbDGMJ5frK0l+iz1/TRL6OLCtiqSGg0UIvV/
         AMxpi4lsMzGAHgc32zRkoJqTb9JH03a2PjVKUGquwkhY6xbHsvO3PPz25YTrpJyzNUxY
         inpw==
X-Gm-Message-State: AOJu0YwfFWfj4C5WEk800XF4jmIEoOEse9xoggb9fyiL2sf89nVUO573
	eVTlHv9xG31hj0lBQwrxuNgNYQ==
X-Google-Smtp-Source: AGHT+IGUkEePx9ZZQ3Cy21pr+de50eN/JMepIiZVhG3rkBnamulTMP43M0o7MUDslg6atFYmnXmmOQ==
X-Received: by 2002:a17:907:9807:b0:9bf:388e:8e97 with SMTP id ji7-20020a170907980700b009bf388e8e97mr3655759ejc.67.1699521698295;
        Thu, 09 Nov 2023 01:21:38 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id dc17-20020a170906c7d100b009b9aa8fffdasm2274367ejb.131.2023.11.09.01.21.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 01:21:37 -0800 (PST)
Message-ID: <dee8031f-d739-442c-988c-3df61d92c0d3@linaro.org>
Date: Thu, 9 Nov 2023 10:21:35 +0100
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
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <a11c847c-4f95-ea7b-3497-6ada0586c486@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_012140_576732_60A70B6A 
X-CRM114-Status: GOOD (  15.88  )
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

T24gMDkvMTEvMjAyMyAwOTowNiwgemhhbmdxaW5nIHdyb3RlOgo+IAo+IOWcqCAyMDIzLzExLzkg
MTU6MjksIENvbm9yIERvb2xleSDlhpnpgZM6Cj4+IE9uIFRodSwgTm92IDA5LCAyMDIzIGF0IDAy
OjI3OjM4UE0gKzA4MDAsIHpoYW5ncWluZyB3cm90ZToKPj4+IEhpOgo+Pj4KPj4+IOWcqCAyMDIz
LzExLzggMjA6MDEsIENvbm9yIERvb2xleSDlhpnpgZM6Cj4+Pj4gT24gV2VkLCBOb3YgMDgsIDIw
MjMgYXQgMDI6MTg6MjFQTSArMDgwMCwgRWxhaW5lIFpoYW5nIHdyb3RlOgo+Pj4+PiBleHBvcnQg
UENMS19WTzFHUkYgZm9yIERULgo+Pj4+Pgo+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBFbGFpbmUgWmhh
bmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNvbT4KPj4+Pj4gLS0tCj4+Pj4+ICAgIGluY2x1ZGUv
ZHQtYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTg4LWNydS5oIHwgMyArKy0KPj4+Pj4gICAg
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4+Pgo+Pj4+
PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1ODgt
Y3J1LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU4OC1jcnUuaAo+
Pj4+PiBpbmRleCA1NzkwYjEzOTEyMDEuLjUwYmE3Mjk4MDE5MCAxMDA2NDQKPj4+Pj4gLS0tIGEv
aW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1ODgtY3J1LmgKPj4+Pj4gKysr
IGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1ODgtY3J1LmgKPj4+Pj4g
QEAgLTczMyw4ICs3MzMsOSBAQAo+Pj4+PiAgICAjZGVmaW5lIEFDTEtfQVYxX1BSRQkJCTcxOAo+
Pj4+PiAgICAjZGVmaW5lIFBDTEtfQVYxX1BSRQkJCTcxOQo+Pj4+PiAgICAjZGVmaW5lIEhDTEtf
U0RJT19QUkUJCQk3MjAKPj4+Pj4gKyNkZWZpbmUgUENMS19WTzFHUkYJCQk3MjEKPj4+Pj4gLSNk
ZWZpbmUgQ0xLX05SX0NMS1MJCQkoSENMS19TRElPX1BSRSArIDEpCj4+Pj4+ICsjZGVmaW5lIENM
S19OUl9DTEtTCQkJKFBDTEtfVk8xR1JGICsgMSkKPj4+PiBUaGlzIGRlZmluaXRpb24gaXMgcGFy
dCBvZiB0aGUgQUJJLCBpZiBpdCBpcyBzYWZlIHRvIGNoYW5nZSBpdCwgdGhlbiBpdAo+Pj4+IGlz
IHNhZmUgdG8gZGVsZXRlIGl0Lgo+Pj4gVGhlIG5ldyBJRCBpcyB0byBzb2x2ZSB0aGUgbml1IGNs
b2NrIGRlcGVuZGVuY3kgcHJvYmxlbShVc2VkIGluIFBBVENIIFY1Cj4+PiA0LzQpLlRoaXMgbmV3
IElEIHdpbGwgYWxzbyBiZSB1c2VkIGluIERUUyBpbiB0aGUgZnV0dXJlLgo+Pj4KPj4+IENMS19O
Ul9DTEtTIHJlcHJlc2VudHMgdGhlIG51bWJlciBvZiBjbG9ja3MgdXNlZCBieSB0aGUKPj4+IGRy
aXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1ya3h4eC5jLiBJdCBpcyBzYWZlIHRvIG1vZGlmeSBpdCwg
YnV0IGNhbm5vdCBkZWxldGUKPj4+IGl0Lgo+PiBUaGVuIGRlbGV0ZSBpdCBmcm9tIHRoZSBoZWFk
ZXIgYW5kIG1vdmUgaXQgdG8gY2xrLXJreHh4LmMKPiBJIGRvbid0IHRoaW5rIGl0J3MgbW9yZSBh
cHByb3ByaWF0ZSB0byBtb3ZlIHRvIGNsay1ya3h4eC5jLgo+IEJlY2F1c2UgaWYgdGhlcmUgYXJl
IG5ldyByZXF1aXJlbWVudHMgbGF0ZXIsIGFuZCBhZGQgbmV3IGNsayBpZCwgaXQgaXMgCj4gbm90
IGluIHRoZSBzYW1lIGZpbGUsIG1heWJlIGZvcmdldCB0byBtb2RpZnkgQ0xLX05SX0NMS1MuCgpU
aGVuIHlvdSBhcmUgbm90IGFsbG93ZWQgdG8gY2hhbmdlIGl0LiBJdCdzIHBhcnQgb2YgQUJJLgoK
QmVzdCByZWdhcmRzLApLcnp5c3p0b2YKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
