Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13D93C9830E
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 18:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z1frgXws+PY0Vo7D/VE0HiNXbfDB/PhlYn7v+1w99CY=; b=cnUbuXxa4GVHY9
	34uDxBgfocpYT8F5s4ETPE397UkNSS2bJ7C/NMZ4Flscrk+J1MoUmxrK3ZtZ+iPELEbuHArhgIjwI
	vnCP2/NDmSkqjBdWWFB5OC+kaWtwc3Qi4EGMAshpB8Tgr5A+EDL3EhmQ9ydqnTCo+3krWGx3PfWIu
	QSXoJ0iQuVcEWgXhknMmq8rxO89CoO62NG9H3AGQ33AXcl6UavpJfyTGViQ20kt2smDIYL+6LvMcc
	7cT/SwVSiG6YHHcZ+twPpr8yu6oN8rQNau1FNOs+jBYK4UFw1jkHpyfMcduepK6AkaKOVIfRUm1z0
	9XJmxwO5yp8hbmfFL+vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9RvW-00000009Fdb-022K;
	Wed, 23 Sep 2026 18:42:42 +0000
Received: from mail-ed2-x0f.google.com ([2a00:1450:4864:33::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9RvR-00000009Fbi-0YYT
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 18:42:39 +0000
Received: by mail-ed2-x0f.google.com with SMTP id 4fb4d7f45d1cf-6a98dfb8002so1759158a12.2
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 11:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1790188955; x=1790793755; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uksp8NEMMONI77zNPQYkgJlajaAnPtQHDaqlgAf0/EA=;
        b=EjzjAhF94ToCJEs5I3SzHWZhIAYdPeGZwmj7BOz/OjGONMshKc/FROU/VVhxVQnZ5E
         vyDss0lAkQn4sjEG9qk9mRHkx0RKine6fB/VnHrwDh1lBcubhxqN71AWDtgeXUpNdJaQ
         lpLpQW6RRcapxBL6ZV/qKdKso4dfrwNDIcCg5cw/wdrC8E2wiyFF/Mfi3zIMkhyzE0v1
         FC1ApTE9qwGNTP79SHmDhH59/QfQXvN4Va1eK271P2uargrzROV0EXWtw7rgaSVCe/5H
         D4irG3HCOGAew3a4biQ99nWfmaQniCtY140eZzzhUiPgBwD6sbfVePRDBqjRx/WJZioE
         d7xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790188955; x=1790793755;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uksp8NEMMONI77zNPQYkgJlajaAnPtQHDaqlgAf0/EA=;
        b=ht7A86xCnOqhZf17pFKknY/47DG2d8mkc7L7SHYNQ21Ut3Ejvce3sok9/E3BTMqCl/
         hAqsdg8XGoTymrgE3NJOxRqwOJOKdCO2liKQqGpPCBxodhbYLk+hI+1MbhrqDQlRnJrn
         BuFqE2CIaFgf7vAMxDclwZeXGePenC74dw0wsGK1zLqWMJL4V+ZBJc5AnOt9Aq01lo/i
         q+flqOOj380DUZNIdqlHtKWT8Q7niW6SsWWel+fJgAcuw8RY4pA/KkpqoPAFsoeda2sp
         LPaOMw1rfrhuTmDtbo42EM9e2TlGJCZG9Zn/88CWEQWruaTqxElMK23qVUyFncerntXi
         0W4Q==
X-Forwarded-Encrypted: i=1; AKwUvBwpp4E+vtyeL8ROLMFAqrw89hL9xjTqn7ra2HIN0aotO8zcB4CZ0fqR1Z0QYnIktbmqNh3PeD8/KlAF/PAudA==@lists.infradead.org
X-Gm-Message-State: AFuF++lmVZkz4E3318ufKDU9HWpubOjaxHAWC+LXtaTHfjgZRtAAa8h8
	gk4p+J+LzLE7NFX9S7YwFolYCcEblzkBUda15XraqWYuY44B9Wc+eGacpAZpS0GCag==
X-Gm-Gg: AYBFou13E+eTv6GeZC9mfmfpijtt0e9ZNFAfZ9gEPxe8QUiA4iL7O0gfVF2LELHpiGj
	Rbo1JxoiL2jIbXVptT6jVhoenZ/0x8nb491j/+ExKvYZnc5P61z8/E0x+ZT3hYoLWR5QkP9tRVq
	peGPrslPAvNSXBSugM1uMlAdd79kQbvutfTe+FxEOI2+5etNdWMhzMMGIcnM9rHK8VNwBxWPQKZ
	PbxXVK3dcBL5zRxcRoqKMP8MGal1v3YmS7tHdFBvmNL15QTO9JNEv1VzHJd+gkJWGNgx14HZyW1
	polIWS5gosLoqJBo5LNoiDBFhqS4pjM1dyBpER/qF4EZMwl2kA2sIylus68Ey17306fsOgcgwTH
	dMlcicETp5s8QUvPRP5NzDksWKajF4O8/4D49/tyk+iX/Ra1opVK0qw/BCRKHrFo284sbHvhUS9
	IDrb9d9tRMLb+opCb2/1Zcfp8eNh8+P1aj2xw/EUT4H/bAuhY4t6+Y+NUgLYC1jbFfOC1lIEavT
	MqravajDdprUlgPdR5m8kKDa7Ksy6x8/3ZmHtiDwlsz17vP7b/NpoZTFqC08rqr55Ztgp+b7aLn
	4aIk40mJDExfcIDzh2UM2QWfcEoRI4rkfQdv4fgPvQFZvQ==
X-Received: by 2002:a05:6402:13ce:b0:6aa:c767:ab47 with SMTP id 4fb4d7f45d1cf-6aac90b04ebmr66607a12.35.1790188955272;
        Wed, 23 Sep 2026 11:42:35 -0700 (PDT)
Received: from ?IPV6:2a02:a466:4d7a:0:1072:bb1c:c0f3:280f? (2a02-a466-4d7a-0-1072-bb1c-c0f3-280f.fixed6.kpn.net. [2a02:a466:4d7a:0:1072:bb1c:c0f3:280f])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6aab37eaab7sm2367557a12.4.2026.09.23.11.42.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2026 11:42:34 -0700 (PDT)
Message-ID: <e166f6e2-05b3-4f36-a1c3-b75861618c75@pardini.net>
Date: Wed, 23 Sep 2026 20:42:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/7] describe RTL8125 PCIe NICs on Rockchip boards (and
 add DT binding)
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Heiner Kallweit <hkallweit1@gmail.com>, nic_swsd@realtek.com,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-0-c1b9e5f10cd6@pardini.net>
 <CAMuHMdXMjxgj+pT5A=jd_A5BVQctHXJqeiU4EhPA_ZSANZAAmQ@mail.gmail.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <CAMuHMdXMjxgj+pT5A=jd_A5BVQctHXJqeiU4EhPA_ZSANZAAmQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_114237_216841_749354D8 
X-CRM114-Status: GOOD (  20.30  )
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

T24gMjIvMDkvMjAyNiAxMToxNywgR2VlcnQgVXl0dGVyaG9ldmVuIHdyb3RlOgo+IEhpIFJpY2Fy
ZG8sCj4gCj4gT24gVGh1LCAxMCBTZXB0IDIwMjYgYXQgMjI6MDgsIFJpY2FyZG8gUGFyZGluaSB2
aWEgQjQgUmVsYXkKPiA8ZGV2bnVsbCtyaWNhcmRvLnBhcmRpbmkubmV0QGtlcm5lbC5vcmc+IHdy
b3RlOgo+PiBTZXZlcmFsIFJvY2tjaGlwIHJrMzV4eCBib2FyZHMgY2Fycnkgb24tYm9hcmQgUmVh
bHRlayBSVEw4MTI1IDIuNUdiRQo+PiBOSUNzIHdob3NlIFBDSSBmdW5jdGlvbiBub2RlcyBhcmUg
bm90IGRlc2NyaWJlZCBpbiB0aGUgRFQuIERlc2NyaWJpbmcKPj4gdGhlbSBhbGxvd3MgZm9yIHN0
YWJsZSBldGhlcm5ldE4gYWxpYXNlcyAobWF0Y2hpbmcgdGhlIEdNQUMgYWxpYXMKPj4gY29udmVu
dGlvbiBvbiB0aGVzZSBib2FyZHMpIGFuZCBsZXRzIFUtQm9vdCdzIGZkdF9maXh1cF9ldGhlcm5l
dCgpCj4+IGluamVjdCBtYWMtYWRkcmVzcyBwcm9wZXJ0aWVzIGZyb20gaXRzIGV0aGFkZHIvZXRo
TmFkZHIgZW52LCBzbyBNQUNzCj4+IHN0YXkgc3RhYmxlIGFjcm9zcyBib290cyBhbmQgVS1Cb290
IGFuZCBrZXJuZWwgTUFDIG1hdGNoLgo+Pgo+PiBUZXN0ZWQgb24gYSBOYW5vUEMtVDY6IC9zeXMv
YnVzL3BjaS9kZXZpY2VzLzAwMDQ6NDE6MDAuMC9vZl9ub2RlIC0+Cj4+IC9zeXMvZmlybXdhcmUv
ZGV2aWNldHJlZS9iYXNlL3BjaWVAZmUxOTAwMDAvcGNpZUAwLDAvZXRoZXJuZXRAMCwwIGFuZAo+
PiB1LWJvb3QgY29ycmVjdGx5IGFkZHMgbG9jYWwtbWFjLWFkZHJlc3MgcHJvcGVydHkgdGhlcmUg
d2hpY2ggaXMKPj4gY29ycmVjdGx5IHBpY2tlZCB1cCBrZXJuZWwtc2lkZToKPiAKPiBIYXZlIHlv
dSB0ZXN0ZWQgdGhpcyBhdCAyLjVHYnBzPyBXaXRoIHdoaWNoIGZpcm13YXJlPwo+IEkgYW0gYXNr
aW5nIGJlY2F1c2UgSSBoYXZlIHByb2JsZW1zIGF0IDIuNUdicHMgdXNpbmcgdGhlIGZpcm13YXJl
IGZyb20KPiBsaW51eC1maXJtd2FyZSAob24gYSBkaWZmZXJlbnQgcGxhdGZvcm0sIHRob3VnaCkK
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9DQU11SE1kWFBBZUhvZWFRYk05clhiWHVrb01iRlYr
MGsyOG42c1JNdzhYRjg3MjBXVUFAbWFpbC5nbWFpbC5jb20KCkhpIEdlZXJ0LCB5ZXMsIHRoZSBS
VEw4MTI1J3Mgb24gdGhvc2UgYm9hcmRzIHdvcmsgYXQgMi41Z2JwcyBqdXN0IGZpbmUgCihib3Ro
IHdpdGggYW5kIHdpdGhvdXQgdGhlIGZpeGVkLWZ1bmN0aW9uIG5vZGVzIGluIHRoaXMgc2VyaWVz
KS4gVGhleSBkbyAKZ2V0IHF1aXRlIHdhcm0gYXQgMi41Z2Jwcy4gSSdtIHVzaW5nIG9uZSBvZiB0
aG9zZSBlbC1jaGVhcG8gOC1wb3J0IAoyLjVnYnBzIHN3aXRjaGVzLgoKQ3VycmVudGx5OgoKWyAg
ICAzLjI1NDQ1MF0gcjgxNjkgMDAwMjoyMTowMC4wIGV0aDA6IFJUTDgxMjVCLCA4ZTpiNDo5MDo5
NzozMjozMCwgWElEIAo2NDEsIElSUSAxMjQKLi4uClsgICAxMC40ODA4NzJdIHI4MTY5IDAwMDI6
MjE6MDAuMCBlbmQwOiBMaW5rIGlzIFVwIC0gMi41R2Jwcy9GdWxsIC0gZmxvdyAKY29udHJvbCBy
eC90eAoKIyBzZW5zb3JzIHI4MTY5XzJfMjEwMDowMC1tZGlvLTAKcjgxNjlfMl8yMTAwOjAwLW1k
aW8tMApBZGFwdGVyOiBNRElPIGFkYXB0ZXIKdGVtcDE6ICAgICAgICArNTIuMMKwQyAgKGhpZ2gg
PSArMTIwLjDCsEMpCgpJJ20gdXNpbmcgd2hhdGV2ZXIgaXMgaW4gQXJtYmlhbidzIGFybWJpYW4t
ZmlybXdhcmUgcGFja2FnZToKCiMgZXRodG9vbCAtaSBlbmQwIHwgZ3JlcCAtaSBmaXJtd2FyZQpm
aXJtd2FyZS12ZXJzaW9uOiBydGw4MTI1Yi0yXzAuMC4yIDA3LzEzLzIwCgojIHNoYTI1NnN1bSAv
bGliL2Zpcm13YXJlL3J0bF9uaWMvcnRsODEyNWItMi5mdwo1MjliZjFjMjVjOTdmZjUyYjQwMTA5
MGQwMGZmODljYzIyMzUxMDEyMzM2ZTVhMGM5NjYyNzI4YTNlZTkwOWVmIAovbGliL2Zpcm13YXJl
L3J0bF9uaWMvcnRsODEyNWItMi5mdwoKCm12ZywKUmljYXJkbwoKPiAKPiBUaGFua3MhCj4gCj4g
R3J7b2V0amUsZWV0aW5nfXMsCj4gCj4gICAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0Cj4g
Cj4gLS0KPiBHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9u
ZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCj4gCj4gSW4gcGVyc29uYWwgY29udmVyc2F0
aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1dAo+
IHdoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIg
b3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAtLSBMaW51cyBUb3J2YWxkcwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
