Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87338E63CA4
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Jan 2026 18:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CCxloLw8c5Z0bEHdrIJAEF5nHT01frolG/kzXLQDM0w=; b=sHSI2v7h9/YnIk
	v7jKW1FFvb3agrwJXY6dUNA2pzYm554ofpzue3RhDZy23B3YnvWzj2Tc5OPXHA6gzH2w/4AepDqB1
	pbUtlgWnfNCcfX4ZnEJ0IDYI34KEwndlaUSZK7d6glqSoDctn+hWjxA6JGdG0JAoI/rfGa/lVElsf
	L6G+omCJcdtJOrgAgnzt7Hnr9mMF1ndRAkrxKQMmfbpgASpeMPutrnBqaer7lTuEkP4KGneo6rlif
	xu71v+eMxJk8FSDSsKPKdXvnj+1p1J1G/GqFdF2gwrLCs8Okop0Y3uttcU4iBqGPyWwg5wH83ruhg
	fN+AZJsgJOfRwOsSoeWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vk4TJ-0000000BNId-1bFv;
	Sun, 25 Jan 2026 18:04:25 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vk4TF-0000000BNHq-47Dz
	for linux-rockchip@lists.infradead.org;
	Sun, 25 Jan 2026 18:04:23 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-43284ed32a0so2312002f8f.3
        for <linux-rockchip@lists.infradead.org>; Sun, 25 Jan 2026 10:04:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769364259; x=1769969059; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YPoViYNjyfGmUsvPf8KRXEGZpQr2hqfqFw85F8RnlH4=;
        b=CE4Zl9viHMRz7BU4dqTO1k/MMRyBMOBRIqaQdLekzlrfEhZkCrHCP7s4CeI7rScPAt
         t3uHHTsxaCWA/fdBVxtJFj8c0Dha6CX3/KfyPh0hoji6xQTqPO7O5Wu634chF9GSsz/h
         RshP/EdmWXIejlCxWTS4ChtXbQrGVUv+2GkPY1qnBsGZIsNbeFIPe+VV04PY6CgMTWGa
         /gU5yfHl/jJJOo+L6qpJt0PG9ea99XTYMpdiaAH23mF7AXn4gGVSuQPG/Pvqr/0M9QRE
         biLGHwUbZkg1E1Fv9nR1iHLP9Djn3qPh/VnkSulMO45FUTzBbYZ21MPxl/p8qZ7w/Kdd
         LiyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769364259; x=1769969059;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YPoViYNjyfGmUsvPf8KRXEGZpQr2hqfqFw85F8RnlH4=;
        b=Gv5FUIyHTAvR/8nLKOuPKn3YObMKME7lyLRF7APbEPSCJwZR+xVh9r6lr6xUDVu3Na
         XycNZQkzdQe3iFADAhN29wfbXoFEmVqQ/aIbhi9Hl1DrBzY3HgDQEqyTztCv1UbLhQLk
         z/2VwfuBgEaJvm4BTL9IjcyUacuD18EKj80V5WYoxeohcPfFiu/3OVJy4oR/qAV48vx7
         9+zCvFGij3LJdOEOJyBSdzeYzThzWuVaRpwyylzUU8S5+/1z+ELPxY4GDOVp41a0fY1X
         MMxU8iaFgJEo2MXWbf1AQlGtCD7EKRbGZTZLOdx0qmWkiOK0ccfX9WMFFbKaMIm/Y8PP
         OhCw==
X-Forwarded-Encrypted: i=1; AJvYcCVxUcPFIaPNSNBxTGOVJi5Bzcd5MIFJcBBtJxIzQ/DHvizk4d71ljRMaE8eOb/uhJpb10Qvg0A06gplQGy5IA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyNGWKjfBRA2MkGOFFOXz4f/qg/J9LAwTzmJVBP8FE3LZofSu8m
	wHO+X50p1pZk/L+p92sSjnOgUkFW+f7JODvuX86e/TYeYJ8Jid9FL98Q
X-Gm-Gg: AZuq6aJndjpzmR6QWFfZ8V8V8QBl9hW7XKcfxXsni56gWY4QmW7JrImdkOYe1eb6Dje
	ktF0J78wzPAc/R8/VvthymJIzm4z6lSvJSUhuwY1Lpfi22Jxq5lSCbay/tDSlthjQdRwQb0b2dk
	tP6y7yAJ1F+C5YvmCw9jZS+K6iJyetuMLVk8tmTux87SeCYC0cIOeUi4xWee5efou6Efypawgyn
	bgejfqXoNkH5DdXElvooQzmp0DFFB5JeJUfdZKgVQOvCvQaRTDEOQVkXMCUxC7bhkUlAdfOgHPY
	3YRlYAkGhgR1/R9L5S4naHXGF2N5lBhddIKgGlcz5lJDWyWBix5XQfMMpZV51u4DNG7+cytEQd+
	SXq+qant8QjlVmjmuT7a9CynH+Apq8oQQ0/meakgodl/4KIYV+hxA4eBNNknbUtjVgN3eNi7MlH
	wRoTdRlp3JZHQKag0cRCbKyHyxSk55KD8aSm1tpWGDi+zbdOEdCSCDMVZaHS4OlSZKhfh/8Orb6
	g==
X-Received: by 2002:a05:600c:c16e:b0:477:63b5:6f76 with SMTP id 5b1f17b1804b1-4806111e38emr4511635e9.25.1769364258971;
        Sun, 25 Jan 2026 10:04:18 -0800 (PST)
Received: from ?IPV6:2a02:8010:6606:0:fd30:74ec:a5b0:107a? ([2a02:8010:6606:0:fd30:74ec:a5b0:107a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d6588e3sm84017525e9.3.2026.01.25.10.04.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Jan 2026 10:04:18 -0800 (PST)
Message-ID: <6235f7ee-d0fa-4c46-b98b-54af4d9d5ce8@gmail.com>
Date: Sun, 25 Jan 2026 18:04:16 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: add pwm-fan for NanoPC-T6
To: Dragan Simic <dsimic@manjaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alexey Charkov <alchark@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251109192128.72527-1-sigmaris@gmail.com>
 <da6721a3-8f59-9c0c-762c-bc02b39ac472@manjaro.org>
Content-Language: en-GB
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <da6721a3-8f59-9c0c-762c-bc02b39ac472@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260125_100422_035576_27A5FB4F 
X-CRM114-Status: GOOD (  30.50  )
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

SGVsbG8gRHJhZ2FuLAoKSSBoYXZlbid0IGJlZW4gYWJsZSB0byB0ZXN0IHBhdGNoZXMgZm9yIGEg
d2hpbGUsIGJ1dCBub3cgSSBoYXZlIGFjY2VzcyB0bwp0aGUgTmFub1BDIGJvYXJkIGFnYWluLCBh
bmQgSSd2ZSBkb25lIHNvbWUgdGVzdHM6CgpPbiAxMC8xMS8yMDI1IDAwOjIzLCBEcmFnYW4gU2lt
aWMgd3JvdGU6Cj4gSGVsbG8gSHVnaCwKPiAKPiBUaGFua3MgZm9yIHRoZSB2MiEgIFBsZWFzZSwg
c2VlIGEgY291cGxlIG9mIG5pdHBpY2tzIGJlbG93Lgo+IAo+IE9uIFN1bmRheSwgTm92ZW1iZXIg
MDksIDIwMjUgMjA6MjAgQ0VULCBIdWdoIENvbGUtQmFrZXIgPHNpZ21hcmlzQGdtYWlsLmNvbT4g
d3JvdGU6Cj4+IEZyaWVuZGx5RUxFQyBvZmZlcnMgYW4gb3B0aW9uYWwgaGVhdHNpbmsgYW5kIGZh
biBhZGRvbiBmb3IgdGhlIE5hbm9QQy1UNgo+PiBhbmQgVDYgTFRTLCB3aGljaCBwbHVncyBpbiB0
byB0aGUgZmFuIGNvbm5lY3RvciBvbiB0aGUgYm9hcmQgZHJpdmVuIGJ5Cj4+IHB3bTEuIEFkZCB0
aGUgZmFuIGFzIGFuIGFjdGl2ZSBjb29saW5nIGRldmljZSBmb3IgdGhlIFNvQyBwYWNrYWdlLgo+
Pgo+PiBTaWduZWQtb2ZmLWJ5OiBIdWdoIENvbGUtQmFrZXIgPHNpZ21hcmlzQGdtYWlsLmNvbT4K
Pj4gLS0tCj4+IENoYW5nZXMgZnJvbSB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
cm9ja2NoaXAvMjAyNTEwMjYxOTQ4NTguOTI0NjEtMS1zaWdtYXJpc0BnbWFpbC5jb20vCj4+ICog
YWRkIHRoZSBmYW4gdG8gdGhlIGJhc2UgYm9hcmQgZHRzaSBpbnN0ZWFkIG9mIG92ZXJsYXkgKEhl
aWtvKQo+PiAqIGp1c3QgdXNlIDIgdHJpcCBwb2ludHMgZm9yIHdhcm0gYW5kIGhvdCB0ZW1wZXJh
dHVyZXMgKERyYWdhbiwgQWxleGV5KQo+Pgo+PiBSZWZlcmVuY2VzOgo+PiBGcmllbmRseUVMRUMg
aGVhdHNpbmsgd2l0aCBmYW4gYWRkb246Cj4+IGh0dHBzOi8vd3d3LmZyaWVuZGx5ZWxlYy5jb20v
aW5kZXgucGhwP3JvdXRlPXByb2R1Y3QvcHJvZHVjdCZwcm9kdWN0X2lkPTMwNQo+PiBWZW5kb3Ig
RFQgd2l0aCB0cmlwIHBvaW50cyBhbmQgUFdNIGR1dHkgY3ljbGUgdmFsdWVzOgo+PiBodHRwczov
L2dpdGh1Yi5jb20vZnJpZW5kbHlhcm0va2VybmVsLXJvY2tjaGlwL2Jsb2IvNDk0NDYwMjU0MGI2
MmY1YWFkMTM5ZmU2MDJhNzZjZjdjMzE3NjEyOC9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1uYW5vcGk2LXJldjAxLmR0cyNMNzUtTDkwCj4gCj4gSSB0aGluayBpdCB3b3VsZCBi
ZSBiZXR0ZXIgdG8gbW92ZSB0aGVzZSByZWZlcmVuY2VzIHRvIHRoZSBwYXRjaAo+IGRlc2NyaXB0
aW9uLCBzbyB0aGV5IGJlY29tZSBkaXJlY3RseSBhdmFpbGFibGUgaW4gdGhlIHJlcG9zaXRvcnku
Cj4gSXQgbWlnaHQgYmUgdGhlIGJlc3QgdG8gdXNlIHRoZSAiLi4uIFtuXSIgZm9ybSBmb3IgdGhl
IHJlZmVyZW5jZXMsCj4gd2hpY2ggcHV0cyB0aGVtIGFzIGNsb3NlIHRvIHRoZSBiYWNrZWQgY29u
dGVudHMgYXMgcG9zc2libGUuCj4gCj4gT2gsIGFuZCBJIHRoaW5rIHRoYXQgImFybTY0OiBkdHM6
IHJvY2tjaGlwOiBFbmFibGUgYWN0aXZlIGNvb2xpbmcKPiBvbiBOYW5vUEMtVDYiIGFzIHRoZSBw
YXRjaCBzdWJqZWN0IHdvdWxkIHJlYWQgbmljZXIuIDopCj4gCj4+ICAuLi4vYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNpICAgfCAzOSArKysrKysrKysrKysrKysrKysrCj4+
ICAxIGZpbGUgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3BjLXQ2LmR0c2kgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaQo+PiBpbmRleCBmYWZl
YWJlOWFkZjllLi45MTY0YTBlZTYyMjhlIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaQo+PiBAQCAtMTEsNiArMTEsNyBA
QAo+PiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lucHV0L2lucHV0Lmg+Cj4+ICAjaW5jbHVkZSA8
ZHQtYmluZGluZ3MvcGluY3RybC9yb2NrY2hpcC5oPgo+PiAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L3NvYy9yb2NrY2hpcCx2b3AyLmg+Cj4+ICsjaW5jbHVkZSA8ZHQtYmluZGluZ3MvdGhlcm1hbC90
aGVybWFsLmg+Cj4+ICAjaW5jbHVkZSA8ZHQtYmluZGluZ3MvdXNiL3BkLmg+Cj4+ICAjaW5jbHVk
ZSAicmszNTg4LmR0c2kiCj4+ICAKPj4gQEAgLTg5LDYgKzkwLDE0IEBAIHVzcl9sZWQ6IGxlZC0x
IHsKPj4gIAkJfTsKPj4gIAl9Owo+PiAgCj4+ICsJZmFuOiBwd20tZmFuIHsKPj4gKwkJY29tcGF0
aWJsZSA9ICJwd20tZmFuIjsKPj4gKwkJY29vbGluZy1sZXZlbHMgPSA8MCAzNSA2NCAxMDAgMTUw
IDI1NT47Cj4+ICsJCWZhbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+PiArCQlwd21zID0gPCZw
d20xIDAgNTAwMDAgMD47Cj4+ICsJCSNjb29saW5nLWNlbGxzID0gPDI+Owo+PiArCX07Cj4+ICsK
Pj4gIAlzb3VuZCB7Cj4+ICAJCWNvbXBhdGlibGUgPSAic2ltcGxlLWF1ZGlvLWNhcmQiOwo+PiAg
CQlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiBAQCAtNTkxLDYgKzYwMCwzNiBAQCAmaTJz
Nl84Y2ggewo+PiAgCXN0YXR1cyA9ICJva2F5IjsKPj4gIH07Cj4+ICAKPj4gKyZwYWNrYWdlX3Ro
ZXJtYWwgewo+PiArCXBvbGxpbmctZGVsYXkgPSA8MTAwMD47Cj4+ICsKPj4gKwl0cmlwcyB7Cj4+
ICsJCXBhY2thZ2Vfd2FybTogcGFja2FnZS13YXJtIHsKPj4gKwkJCXRlbXBlcmF0dXJlID0gPDUw
MDAwPjsKPj4gKwkJCWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4+ICsJCQl0eXBlID0gImFjdGl2ZSI7
Cj4+ICsJCX07Cj4+ICsKPj4gKwkJcGFja2FnZV9ob3Q6IHBhY2thZ2UtaG90IHsKPj4gKwkJCXRl
bXBlcmF0dXJlID0gPDYwMDAwPjsKPj4gKwkJCWh5c3RlcmVzaXMgPSA8MjAwMD47Cj4+ICsJCQl0
eXBlID0gImFjdGl2ZSI7Cj4+ICsJCX07Cj4+ICsJfTsKPiAKPiBJdCBzaG91bGQgYmUgYmV0dGVy
IHRvIHVzZSA1NSBhbmQgNjUgb0MgYXMgdGhlIHRyaXAgdGhyZXNob2xkcywKPiBiZWNhdXNlIHBl
b3BsZSBvZnRlbiByZXBvcnQgYXJvdW5kIDUwIG9DIGFzIHRoZSBvYnNlcnZlZCBpZGxlLXN0YXRl
Cj4gdGVtcGVyYXR1cmUgb2YgdGhlaXIgUkszNTg4IFNvQ3MsIHNvIGluY3JlYXNpbmcgdGhlIGZp
cnN0IHRocmVzaG9sZAoKV2VyZSB0aGVzZSBwZW9wbGUgdXNpbmcgdGhlIGhlYXRzaW5rIGFjY2Vz
c29yeSBvbiB0aGUgTmFub1BDLVQ2LCBvciB3ZXJlCnRoZXkgdXNpbmcgc29tZSBvdGhlciBib2Fy
ZCB3aXRoIHdvcnNlIGhlYXQgZGlzc2lwYXRpb24/IEkgcmVjb3JkZWQgdGhlCnBhY2thZ2UgdGVt
cGVyYXR1cmUgb24gbXkgTmFub1BDLVQ2IHdpdGggdGhlIEZyaWVuZGx5RUxFQyBoZWF0c2luayBh
bmQgZmFuCmFuZCBldmVuIHRob3VnaCBpdCdzIG5vdCBpZGxlIGJ1dCBhY3R1YWxseSBydW5uaW5n
IEhvbWUgQXNzaXN0YW50LApPcGVuTERBUCwgUG9zdGdyZVNRTCwgUHJvbWV0aGV1cywgR3JhZmFu
YSBhbmQgTmdpbngsIHRoZSB0ZW1wZXJhdHVyZSByYW5nZXMKYmV0d2VlbiA0NiBhbmQgNDjCsEMs
IGFuZCB0aGUgZmFuIG5ldmVyIGV2ZW4gc3BpbnMgdXAuCgpUaGVuIEkgcmFuIHN0cmVzcy1uZyBh
bmQgcmVjb3JkZWQgdGhlIHRlbXBlcmF0dXJlIHVuZGVyIENQVSBsb2FkLCB3aXRoIHRoaXMKdmVy
c2lvbiBvZiB0aGUgcGF0Y2ggYW5kIGFub3RoZXIgdmVyc2lvbiB3aXRoIDU1ICYgNjXCsEMgdHJp
cCBwb2ludHMuIFsxXQoKSSBzdXNwZWN0IGlmIHBlb3BsZSBhcmUgc2VlaW5nIDUwwrBDIGF0IGlk
bGUsIHRoZXkncmUgZWl0aGVyIHVzaW5nIGEgbGVzcwplZmZlY3RpdmUgaGVhdHNpbmssIG9yIGlu
IGEgdmVyeSB3YXJtIGFtYmllbnQgdGVtcGVyYXR1cmUuIFdoZW4gdGFsa2luZwphYm91dCB0aGUg
TmFub1BDLVQ2IGZhbiBzcGVjaWZpY2FsbHksIHdlIGtpbmRhIGhhdmUgdG8gYXNzdW1lIHRoZQpG
cmllbmRseUVMRUMgaGVhdHNpbmsgaXMgdXNlZCwgYXMgdGhlcmUncyBubyBtb3VudGluZyBmb3Ig
dGhlIGZhbiB3aXRob3V0CnRoZSBoZWF0c2luay4KCj4gdG8gNTUgb0Mgc2hvdWxkIGJlIGJlbmVm
aWNpYWwgYnkgcHJldmVudGluZyB0aGUgZmFuIGZyb20gc3Bpbm5pbmcKPiB3aGVuIHRoZSBTb0Mg
aXMgYWN0dWFsbHkgaWRsZS4gIFRoZSBzZWNvbmQgdGhyZXNob2xkIGlzIHVzdWFsbHkgc2V0Cj4g
dG8gYmUgMTAgb0MgaGlnaGVyLCBzbyBpdCBzaG91bGQgZW5kIHVwIGF0IDY1IG9DLgoKSSdsbCBz
ZW5kIGEgdjMgd2l0aCA1NSBhbmQgNjXCsEMgdHJpcCBwb2ludHMsIGJ1dCBJIGRvdWJ0IGl0IG1h
a2VzIGFueQpkaWZmZXJlbmNlIHRvIHRoZSBmYW4gYWN0aXZhdGluZyB3aGlsZSBpZGxlOyBmcm9t
IG15IHRlc3RpbmcgaXQgc2VlbXMgdG8KanVzdCBsZXQgdGhlIFNvQyBnZXQgYSBiaXQgaG90dGVy
IHVuZGVyIGhlYXZ5IGxvYWQuCgpbMV06IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL3NpZ21hcmlz
LzJkNTU5MDI3MWNmMjZkYThlYzZjZmM3ZWY4ZTNlOGJjCgo+PiArCWNvb2xpbmctbWFwcyB7Cj4+
ICsJCW1hcDAgewo+PiArCQkJdHJpcCA9IDwmcGFja2FnZV93YXJtPjsKPj4gKwkJCWNvb2xpbmct
ZGV2aWNlID0gPCZmYW4gVEhFUk1BTF9OT19MSU1JVCAxPjsKPj4gKwkJfTsKPj4gKwo+PiArCQlt
YXAxIHsKPj4gKwkJCXRyaXAgPSA8JnBhY2thZ2VfaG90PjsKPj4gKwkJCWNvb2xpbmctZGV2aWNl
ID0gPCZmYW4gMiBUSEVSTUFMX05PX0xJTUlUPjsKPj4gKwkJfTsKPj4gKwl9Owo+PiArfTsKPj4g
Kwo+PiAgJnBjaWUyeDFsMCB7Cj4+ICAJcmVzZXQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BCMyBHUElP
X0FDVElWRV9ISUdIPjsKPj4gIAl2cGNpZTN2My1zdXBwbHkgPSA8JnZjY18zdjNfcGNpZTIwPjsK
PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
