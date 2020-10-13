Return-Path: <SRS0=Ew1P=DU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2BEC433E7
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 22:41:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CD35A218AC
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2020 22:41:35 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="BTlC05NQ";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DhVYzhks"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CD35A218AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/l5n7rvxTCQPh6bZdC6QskW5Opgv4SDsgZY3GnFwVXI=; b=BTlC05NQKjhg+gJ0tAYAI2SWo
	V1oVgxzVYvZL8lUNeeGUkHh9dUVEUhojD/p7LzUsWExE7cj/GofrCogULUnmO51YJAPm50vySOlgB
	o1GQbecpYcN0xZm0iMTcrADnVLot70jrJJ1X0I0q7mhInAGRozcNbuEWG4FvsmTOjh72R8FptpZmy
	tWI6IA+lyRZeqCUxXtqhqPmAlhgqUmTJvhlXsoeEwUl8tDqQK9N9a1TkFt3QojMKRjZ23eLXl/gj9
	9xFjbZJmCDEWgkDwq8P8ZQLAYKsLcCvH1+M/tvee28gfCdDO86hyVWb9hfqU0bqUNl77ePxPnOPET
	0j3YI/zoA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSSz2-0004Aa-OR; Tue, 13 Oct 2020 22:41:28 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSSz0-00049J-NK; Tue, 13 Oct 2020 22:41:27 +0000
Received: by mail-ej1-x641.google.com with SMTP id e22so2058870ejr.4;
 Tue, 13 Oct 2020 15:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4nuFWG2TWEaroaWbXsdHg7/7bIoM3n77JVnNWHKmJm8=;
 b=DhVYzhksGh8Bz8e1nLtZ9oQlY1J3MXAdz5N5WXK0GiI55gwF+AgoZ5S8Y6VAgsrVWh
 t4+M6t/JwWVWRcmXMq8EHAhHAaK+9zk1zZyxtOex6aDGtCzFzBrjjc7AnBgSUyIS71KP
 JwCskVkOq/GIDqi5knSbpmPkbN+XItfZ/V7QVGE+YGqdksG/uVRnmLL11t6uv8JSrsCq
 umbuGpWAXm0OT6HE5hXh9L2KpC8x/fWF/OusWv0/prRJ0BptoKEHxdUfKqzfzxNq7zo7
 13XyQjyXidmruBCejwaluOE8k9IX4PZ5yKFzBkZ4ELFpfXqywbVV9zcGehH6viCQvPzL
 iodQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4nuFWG2TWEaroaWbXsdHg7/7bIoM3n77JVnNWHKmJm8=;
 b=SC94x0UV/hElGQC5QwHMSK4FTGQW6ZFXWOZnG6Wk+U8mwlRkQfnswoMrX9a75ResDl
 x4/xlhk0mlVnyzYR11drrLOJTBM4aroCbVarVfVgqgyUWasReEcVZJJRPwDGjBYafYe1
 y7l288usNuwplkzIcugwiE1HG/rB76UeZF3Aek2R1PXNQppOBTrraafaGrPXkU85ae6r
 afyXzI5OJ+HgvZrKh8vcgCZDTuYuGPCnB8VAnLULZG7RsZLDwuPyyhEyltv8pFJKaY93
 v8gMcOnh102ksHhzjb56I5jhSdvpLrSj0WYpDxbQC8QI88oAlPna8xhJIRh3e86ECJzm
 +mpg==
X-Gm-Message-State: AOAM531zJbK0HneBoXFMmMh95x97KYtm4pwvRYj7mX9lsRvufcEEKYE0
 QmpLdydoBjJhxUeFBAwCca4=
X-Google-Smtp-Source: ABdhPJysL5LEiXR3WOKkdnzJL7DCX3tDzp7fXOOSphozKLTgrMgk3TiMGvRb+DX1+rXijH06SdmuYQ==
X-Received: by 2002:a17:906:8293:: with SMTP id
 h19mr2038790ejx.130.1602628882612; 
 Tue, 13 Oct 2020 15:41:22 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g18sm618896eje.12.2020.10.13.15.41.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 13 Oct 2020 15:41:21 -0700 (PDT)
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add basic support for
 Kobol's Helios64
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
 Heiko Stuebner <heiko@sntech.de>, Aditya Prayoga <aditya@kobol.io>
References: <20201013161340.720403-1-uwe@kleine-koenig.org>
 <20201013161340.720403-3-uwe@kleine-koenig.org>
 <a3957410-af99-5df4-8953-ffa3e7734aab@gmail.com>
 <66aa4ffd-15f8-7c45-282e-e3bddc1af421@kleine-koenig.org>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <99032f48-c807-def0-e672-7b2c408e1cc3@gmail.com>
Date: Wed, 14 Oct 2020 00:41:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <66aa4ffd-15f8-7c45-282e-e3bddc1af421@kleine-koenig.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_184126_789242_AD919B47 
X-CRM114-Status: GOOD (  30.38  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgVXdlLAoKT24gMTAvMTMvMjAgMTA6MjIgUE0sIFV3ZSBLbGVpbmUtS8O2bmlnIHdyb3RlOgo+
IEhlbGxvIEpvaGFuLAo+Cj4gT24gMTAvMTMvMjAgNzozNCBQTSwgSm9oYW4gSm9ua2VyIHdyb3Rl
Ogo+PiBQYXJ0IDEgb2YgMiBtaXNzaW5nIGhlcmUuCj4KPiBQbGVhc2UgY29tcGxhaW4gdG8gZ21h
aWwgdGhlbiwgZ2l2ZW4gdGhhdCBwYXRjaCAxIGNhbiBiZSBmb3VuZCBvbgo+Cmh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LWFybS1rZXJuZWwvMjAyMDEwMTMxNjEzNDAuNzIwNDAzLTItdXdl
QGtsZWluZS1rb2VuaWcub3JnLy4KCldpbGwgY2hlY2sgbXkgc3BhbS4KCj4KPj4gU3VibWl0IGFs
bCBwYXRjaGVzIHRvIGFsbCBtYWludGFpbmVycyBhbmQgbWFpbCBsaXN0cy4KPj4gRG9uJ3QgZm9y
Z2V0IHJvYmgrZHQgIQo+Cj4gSSdtIHJlYWxseSBzdXJwcmlzZWQgeW91IGluc2lzdCBoZXJlLiBJ
biBteSBleHBlcmllbmNlIFJvYiAod2l0aCBoaXMKPiBkdC1oYXQgb24pIGlzIG5vdCBpbnRlcmVz
dGVkIGluIHNwZWNpZmljcyBvZiB0aGUgbWFjaGluZSBmaWxlcyBhbmQgaGUKPiBhbHJlYWR5IGFj
a2VkIHBhdGNoIDEuCgpBcyBydWxlIG9mIHRoZSBkdW1iLiBLZWVwIGV2ZXJ5Ym9keSBpbiB0aGF0
IGxpc3QgaW5mb3JtZWQgdGlsbCB0aGUgbGFzdAp2ZXJzaW9uLiBXaGF0IHRoZXkgZG8gd2l0aCBp
cyBub3Qgb3VyIHByb2JsZW0gb3IgY29uY2Vybi4KCj4KPj4gQWRkIGEgbGl0dGxlIGNoYW5nZSBs
b2cgaGVyZS4KPgo+IEkgYXNzdW1lIHlvdSBhbHNvIGRpZG4ndCBnZXQgdGhlIGNvdmVyIGxldHRl
cj8KPgo+Pj4gKwkJZmF1bHQtbGVkIHsKPj4gZmF1bHRfbGVkOiBsZWQtMCB7fQo+Pgo+PiBNeSBm
YXVsdC4KPj4gQ2hhbmdlIG9uZXMgbW9yZS4uLgo+PiAgICMgVGhlIGZpcnN0IGZvcm0gaXMgcHJl
ZmVycmVkLCBidXQgZmFsbCBiYWNrIHRvIGp1c3QgJ2xlZCcgYW55d2hlcmUKaW4gdGhlCj4+ICAg
IyBub2RlIG5hbWUgdG8gYXQgbGVhc3QgY2F0Y2ggc29tZSBjaGlsZCBub2Rlcy4KPj4gICAiKF5s
ZWQtWzAtOWEtZl0kfGxlZCkiOgo+Cj4gb2ssIHRoZSBsYWJlbCBpc24ndCBuZWNlc3NhcnksIGlz
IGl0PwoKTm90IHJlYWxseSwgZm9yIGxlZ2FjeSBhbmQgcmVhZGFiaWxpdHkgcmVhc29ucyBrZWVw
IGl0LgpXaXRob3V0IGxhYmVsIGJvdGggaW4gbm9kZW5hbWUgYW5kIGFzIHByb3BlcnR5IG9uZSBo
YXMgdG8gY29tcGFyZSBwaW4KbnVtYmVycyBpbiBwaW5jdHJsIHRvIHNlZSB3aGljaCBub2RlIGJl
bG9uZyB0byBlYWNoIG90aGVyLgpTb21lIHVzZXJzIG1heSB3YW50IHRvIGFkZCB0aGVyZSBvd24g
ZnVuY3Rpb25zLiBXaXRoIGFscmVhZHkgYXZhaWxhYmxlCmxhYmVsIHRoZXkgY2FuIGRvIHNvLgoK
Pgo+Pj4gKwkJCWxhYmVsID0gImhlbGlvczY0OmdyZWVuOnN0YXR1cyI7Cj4+PiArCQkJZ3Bpb3Mg
PSA8JmdwaW8wIFJLX1BCNCBHUElPX0FDVElWRV9ISUdIPjsKPj4KPj4+ICsJCQlsaW51eCxkZWZh
dWx0LXRyaWdnZXIgPSAibm9uZSI7Cj4+Cj4+IERvbid0IHVzZSAnbm9uZScgZm9yIG1haW5saW5l
Lgo+Cj4gT2gsIEkgbWlzc2VkIHRoYXQuIFRoYW5rcyBmb3IgeW91ciBwZXJzaXN0ZW5jZS4KCk5v
IHRoYW5rcy4KCj4KPj4+ICsJCQlkZWZhdWx0LXN0YXRlID0gIm9uIjsKPj4+ICsJCX07Cj4+PiAr
CX07Cj4+PiArCj4+PiArCXZjYzF2OF9zeXNfczA6IHZjYzF2OC1zeXMtczAgewo+Pj4gKwkJY29t
cGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+Pj4gKwkJcmVndWxhdG9yLW5hbWUgPSAidmNj
MXY4X3N5c19zMCI7Cj4+PiArCQlyZWd1bGF0b3ItYWx3YXlzLW9uOwo+Pj4gKwkJcmVndWxhdG9y
LWJvb3Qtb247Cj4+PiArCQlyZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDwxODAwMDAwPjsKPj4+
ICsJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0ID0gPDE4MDAwMDA+Owo+Pj4gKwkJdmluLXN1cHBs
eSA9IDwmdmNjMXY4X3N5c19zMz47Cj4+PiArCX07Cj4+PiArCj4+PiArCXZjYzN2MF9zZDogdmNj
M3YwLXNkIHsKPj4+ICsJCWNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPj4+ICsJCXJl
Z3VsYXRvci1uYW1lID0gInZjYzN2MF9zZCI7Cj4+Cj4+IERvZXNuJ3QgYSBzZCBjYXJkIG5lZWQg
YSBvbi9vZmYgZ3Bpbz8KPj4gQ291bGQgeW91IGNoZWNrIHRoZSBzY2hlbWF0aWNzPwo+Cj4gSG1t
LCB0aGVyZSBpcyBhIEdQSU8uIEkgZGlkbid0IGNvbnNpZGVyIGEgcHJvYmxlbSB0aGVyZSBnaXZl
biB0aGF0IHRoZQo+IG1hY2hpbmUgbG9ncwo+Cj4gCVsgICAzMS43MDg3MDZdIHZjYzN2MF9zZDog
ZGlzYWJsaW5nCj4KPiB3aGVuIHRoZXJlIGlzIG5vIFNELWNhcmQgaW4gdGhlIHNsb3QuIFdpbGwg
aW52ZXN0aWdhdGUgZnVydGhlci4KCkxldCB1cyBrbm93Li4uCgo+Cj4+PiArCQlwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwo+Pj4gKwkJcGluY3RybC0wID0gPCZwbWljX2ludF9sPjsKPj4KPj4g
c29ydAo+Cj4gSSB3b3VsZCBleHBlY3QgdGhpcyBpcyBhbiBleGNlcHRpb24gZnJvbSB0aGUgc29y
dGluZyBydWxlLgo+Cj4gJCBnaXQgZ3JlcCBwaW5jdHJsLW5hbWVzIGxpbnVzL21hc3RlcjphcmNo
L2FybTY0L2Jvb3QvZHRzLyB8IHdjIC1sCj4gMTkwNQo+Cj4gJCBnaXQgZ3JlcCAtQTEgcGluY3Ry
bC1uYW1lcyBsaW51cy9tYXN0ZXI6YXJjaC9hcm02NC9ib290L2R0cy8gfCBcCj4gICBncmVwIHBp
bmN0cmwtMCB8IHdjIC1sCj4gMTQxMgo+Cj4gV2hlbiBncmVwcGluZyBvdmVyIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAgdGhlIG51bWJlcnMgYXJlCj4gNDUzIGFuZCA0NDUgcmVzcGVjdGl2
ZWx5Lgo+Cj4gV2lsbCB1c2UgcGluY3RybC1uYW1lcyBhYm92ZSBwaW5jdHJsLTAgY29uc2lzdGVu
dGx5LgoKVGhhdCBwZW9wbGUgaW4gdGhlIHBhc3QgYmxpbmRseSBmb2xsb3dlZCB0aGUgbWFudWZh
Y3R1cmVyIGR0cyBkb2Vzbid0Cm1ha2UgaXQgYW4gZXhjZXB0aW9uIHRvIHRoZSBzb3J0IHJ1bGUu
IFdoYXRldmVyIHlvdSBkbywgZG8gaXQgY29uc2lzdGVudC4KCj4KPj4+ICsJCQkJcmVndWxhdG9y
LW1heC1taWNyb3ZvbHQgPSA8MTM1MDAwMD47Cj4+PiArCQkJCXJlZ3VsYXRvci1taW4tbWljcm92
b2x0ID0gPDc1MDAwMD47Cj4+Cj4+Cj4+IFRoZSByZXN0IGhhcyBtaW4gYWJvdmUgbWF4Lgo+PiBF
eGNlcHRpb24gdG8gdGhlIHNvcnQgcnVsZSwgbm90IHN1cmUgd2hhdCBIZWlrbyB3YW50cywgYnV0
IGtlZXAgaXQgZXZlcnkKPj4gd2hlcmUgdGhlIHNhbWUuCj4KPiBPSywgbW9zdCByb2NrY2hpcCBk
dHMgaGF2ZSBtaW4gYmVmb3JlIG1heCwgd2lsbCBmaXggdXAuCj4KPj4+ICsJaTJjLXNjbC1yaXNp
bmctdGltZS1ucyA9IDwxNjA+Owo+Pj4gKwlpMmMtc2NsLWZhbGxpbmctdGltZS1ucyA9IDwzMD47
Cj4+Cj4+IHNvcnQKPgo+IEkgY29uc2lkZXIgaXQgbG9naWNhbCB0byBoYXZlIHJpc2UgYmVmb3Jl
IGZhbGwuIEluIDQzIG9mIDU5IGNhc2VzIGluCj4gYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC8gaXQgaXMgZG9uZSB0aGlzIHdheS4KClRoYXQgcGVvcGxlIGluIHRoZSBwYXN0IGJsaW5kbHkg
Zm9sbG93ZWQgdGhlIG1hbnVmYWN0dXJlciBkdHMgZG9lc24ndAptYWtlIGl0IGFuIGV4Y2VwdGlv
biB0byB0aGUgc29ydCBydWxlLiBXaGF0ZXZlciB5b3UgZG8sIGRvIGl0IGNvbnNpc3RlbnQuCgo+
Cj4+PiArCXZxbW1jLXN1cHBseSA9IDwmdmNjMXY4X3N5c19zMD47Cj4+PiArCXN0YXR1cyA9ICJv
a2F5IjsKPj4+ICt9Owo+Pj4gKwo+Pj4gKyZzZG1tYyB7Cj4+PiArCWJ1cy13aWR0aCA9IDw0PjsK
Pj4+ICsJY2FwLXNkLWhpZ2hzcGVlZDsKPj4KPj4+ICsJY2QtZ3Bpb3MgPSA8JmdwaW8wIFJLX1BB
NyBHUElPX0FDVElWRV9MT1c+Owo+Pgo+PiBzZWUgcmVndWxhdG9yPwoKTGl0dGxlIGxvbmdlciB2
ZXJzaW9uOgpTZWUgbXkgcXVlc3Rpb24gYXQgdGhlIHNkIHJlZ3VsYXRvci4KV2UgaGF2ZSBhIHBp
biB0byBkZXRlY3QsIGJ1dCBub3QgdG8gc3dpdGNoIHRoZSByZWd1bGF0b3IuCkhhdmVuJ3QgbG9v
a2VkIGF0IHRoZSBzY2hlbWF0aWNzLiBKdXN0IGEgcmVtaW5kZXIgdG8gY2hlY2sgaWYgaXQncwpj
b3JyZWN0LiBMZXQgdXMga25vdy4uCgo+Cj4gR1BJTzBfQTcgaXMgdGhlIGNhcmQgZGV0ZWN0IGxp
bmUuIEkgZG9uJ3QgdW5kZXJzdGFuZCB5b3VyIHF1ZXN0aW9uLiBJcwo+IGl0IHRoZSBzYW1lIGFz
IGFib3ZlLCBpLmUuIHRoYXQgaXQgc2hvdWxkIGJlIHBvc3NpYmxlIHRoYXQgdGhlIFNECj4gcmVn
dWxhdG9yIGNhbiBiZSBkaXNhYmxlZD8KPgo+Pj4gKwlkaXNhYmxlLXdwOwo+Pj4gKwlwaW5jdHJs
LTAgPSA8JnNkbW1jX2NsayAmc2RtbWNfY21kICZzZG1tY19jZCAmc2RtbWNfYnVzND47Cj4+PiAr
CXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+PiArCXZtbWMtc3VwcGx5ID0gPCZ2Y2MzdjBf
c2Q+Owo+Pj4gKwl2cW1tYy1zdXBwbHkgPSA8JnZjY19zZGlvX3MwPjsKPj4+ICsJc3RhdHVzID0g
Im9rYXkiOwo+Pj4gK307Cj4KPiBCZXN0IHJlZ2FyZHMKPiBVd2UKPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
