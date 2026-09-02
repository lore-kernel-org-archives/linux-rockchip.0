Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 684CBC624D0
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2026 09:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=de+tl8tk70z8kWmX8VuY7RKmRg/hWLeMvoGJ3DUZYbg=; b=Di5FSjeK7T1xFC
	P3D9hyvPJtjlccOD6bNCmbKA/ECvQuXnntA+INTf2s3Ye4yv525P7xOfvKfc4GahXNUMqJh9KbvP/
	/oTsq/TPgOzHFaHpszMCQXcRp0DJ1b405VgjOh9aXDgbYgsnK2OXmJLj7e7yFWOhCYUurr7EtPhL4
	I0qGcJXvvYhR+isQ6s7YcxE5MVCSQ90bxJdPNiuXPJC/QpjJeUtt4wMRR7uBVENmQRImZITfBPptc
	rIXEMX1fODoXeC3wCa/jXBC8WS+c+zcKikgwrou+rOvk5/HkQ5pFcGUHoTCCkuhXqOhvYpuiIMhlw
	AlFrKEQ5TBuOdoZoxs3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1hCZ-0000000ECqJ-08IN;
	Wed, 02 Sep 2026 09:24:15 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1hCV-0000000ECpM-1y74
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Sep 2026 09:24:12 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-2d942c7cc2fso6557315ad.3
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Sep 2026 02:24:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1788341050; cv=none;
        d=google.com; s=arc-20260327;
        b=DRtjDCOjpkM4+xT3bEkFJtew8nNfmEgzAgUVqv7UcokAuwTpoMymu5F3sZnhZIBjH6
         odcJHRpsl/xGVYDRiWTwd3EX+r60i/GntzHA+Nb49EImPsKR8XGko8BwAbgCoEeqWv5u
         hs/HUkqmelkxBuNw2uWsIg9U2muQv2PQWMPXU8HJii3zhZ0e7mimVn4E3jSbPk8rLQMD
         fHU67Kk6bsQvz6LmifQy4Ikl2wvjz7IVzXPUTzDWogVa57+G5o1QVeIPsPu6cUxtemdI
         qV5d/KcidpdmeEaXFRY3A5kuBCsLRlCu6DreMhAPRjnYlxW62Re0Cyv98801Y1vmh0hc
         KxGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ytaSS9E97s/JULLyGWR20qPV51uikwUgTS3pF5XmIPU=;
        fh=OIuEzhPqTfdV3r+5MaRqXuWMb8vBqqjTfJCDZEAdLhc=;
        b=IbRGyAroLxj3W/6df1oDlNGm7t2OQgRQnF1FFjuV2fPEcrzR9fCblG6d6pAzLJSQ88
         FM+fvXzT9zkTNXKElOOFqQC93PJhwF4RFEkbSS8+8043+Fudym7CVH8qWcMswtskOZ5P
         SNuplirjg2VK4dRsJFnjQZtby6X8g4puqUjYXYGY7JnJVuPRjEczzYFVf1dp/aK/vPKH
         1lKrJNp98fCvtFSK86paMLPHheLRGN0ljJqf1TxpGXYK4IQIZdGYM40j6TENlu5p0bos
         PScAGfHq1BRJLtYAV2ffPGNj8KQznOQWAw6zwwmYmIkbeMFg9svxrD7RAB+/I5aYiBdh
         W0Bw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1788341050; x=1788945850; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ytaSS9E97s/JULLyGWR20qPV51uikwUgTS3pF5XmIPU=;
        b=KcxMloGz3TvP11abkE0kauG9SGeNWj9ALthx0iSj3HFlr/FimOI1QmF4Mi1XEx007k
         ZKSipg/xRruMGf6KwXZ5Chjhfp6Gdp5v84HIEBFJk15bUBIJuYluhtgq8sVykdP5nnrr
         3I1hqWOfEIP7BXhUvbj0Kt/brenr++4d3JPXRglMVOPx7F//zsmwJVDxRRz7KMr1YYdj
         lbgj0mOf3D9ykN5nR30SAndS0+QV59htf8f1ORVA513RtxhnqIcrz5hWR4heOTZXM5my
         0xWy7fa5gv0kSk5vtSkaYnnhqjO2/zCQefoxho0+yth3J3zv9T2VBl1HdbSM5GtITWsD
         LrwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788341050; x=1788945850;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ytaSS9E97s/JULLyGWR20qPV51uikwUgTS3pF5XmIPU=;
        b=Noe3A4dr38tYppVVpPzzsQ2EuH45baprHxPVo2dbeLcX5/r0IDGLe9MdaJICSIyyFr
         o85pEMerVj3NFARAmnBIW5vdp5Ok1/7c6RfKeVbx6JjpzVHIxsxGTSK+/ybcU+qbyr0B
         kAldfN9PDaf5MgMWOq27mowjVOszkvATUha/RqcWsDmi6t+Qpjw1LoV81PaEEG8Szy/0
         q+GFLB0sl1aLksqg7ylPvtd/I4iG5cQ2RsXqcA+ULhAsVFLTF54k+7QxbzRFv2u/Rzv3
         7Th8z1vIHQC0HZa33WDEAZQVbENOSWNYBEhR0o9ObEq4OLc8nQrr92Xlr6PEstvAE7kR
         2L9Q==
X-Forwarded-Encrypted: i=1; AKwUvBxJxVI/7ibVmcwJHQojdArjF0Qc9EqXdrkPWSp+Z7ZAPZ/UCaonE9et3sfTPFZsrASEM+CfmLf0HiRVfjrbuQ==@lists.infradead.org
X-Gm-Message-State: AFuF++ku4C4UvPiJQLb8aocK/+fIyhrLCGWbujSxXZNNX+8n16Dht0i1
	WemdXIEVzbipGvnqYfSH+RVLFNvsdMTCbeeUn190tJpotV3MpI9PcabFdsYPHUMXitCE+mtStG9
	qfWoxQ3xOhbbO3mbCCn0wI/F3Iu1VYYN0EBfhjd83tQ==
X-Gm-Gg: AR+sD1312wR/dfLgu91XpimK5wpv4lunQHoDMQzwZqOTLZjXtDilbLBFwb1SH0OiRlV
	aDErrBO6MDy+3DsucOuYn+0fZGY0hYlH51NXKNtCBBZxfbhPqDiY127kFCfmAsMhcQQaTeM/xRK
	KDcktQIg0hc016TLuFwE+0SpI8/G1RU6dE3eD++xHT6t4BRlrFpcTFBMFLYdbCXjpHOI1uDvR8T
	3/WHGmzJQjlic9f0sdQY/03wTLLc3J0z/BL5yeg8OaohUi9PG3cxU1ihc2DAt3ClccFHYgRaVWI
	6F/dK3yqP/tG4bqIDNIxsjX/zllDNIE0iWG3+80k9PUoxumu5pPIr3sMVal5GLilPysm71VvEpI
	VUA==
X-Received: by 2002:a17:902:f682:b0:2ca:f21a:a6c5 with SMTP id
 d9443c01a7336-2daec5ad6d8mr40455475ad.1.1788341050320; Wed, 02 Sep 2026
 02:24:10 -0700 (PDT)
MIME-Version: 1.0
References: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
 <20260901-rk3576-otp-cpuid-mac-v1-1-ea9135270fc2@flipper.net> <87ecfc81e9.fsf@bootlin.com>
In-Reply-To: <87ecfc81e9.fsf@bootlin.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 2 Sep 2026 13:24:00 +0400
X-Gm-Features: AcwNN1Vwt1UNue4ueZiVCGXuJAETKqvfhojim__xlQfGqQYcvUB9rCpZaBk-bcY
Message-ID: <CAKTNdwH5S3MxgR=5s2LXPquCFRXE-61LTTsZoHP9+YmXo_P4Ag@mail.gmail.com>
Subject: Re: [PATCH 1/4] nvmem: rockchip-otp: Serialize reads
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Michael Walle <michael@walle.cc>, 
	Finley Xiao <finley.xiao@rock-chips.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_022411_521377_2EC1F367 
X-CRM114-Status: GOOD (  18.58  )
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

T24gV2VkLCBTZXAgMiwgMjAyNiBhdCAxOjEw4oCvUE0gTWlxdWVsIFJheW5hbCA8bWlxdWVsLnJh
eW5hbEBib290bGluLmNvbT4gd3JvdGU6Cj4KPiBPbiAwMS8wOS8yMDI2IGF0IDE5OjMzOjExICsw
NCwgQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+IHdyb3RlOgo+Cj4gPiBUaGUg
T1RQIGNvbnRyb2xsZXIgaXMgZHJpdmVuIHRocm91Z2ggYSBzaW5nbGUgc2V0IG9mIHJlZ2lzdGVy
cyBob2xkaW5nIGEKPiA+IHN0YXRlIG1hY2hpbmUgd2hpY2ggaGFzIHRvIGJlIHN0ZXBwZWQgdGhy
b3VnaCBmb3IgZXZlcnkgd29yZCByZWFkLCB5ZXQKPiA+IG5vdGhpbmcga2VlcHMgdHdvIHJlYWRl
cnMgb3V0IG9mIGVhY2ggb3RoZXIncyB3YXkuIENvbmN1cnJlbnQgcmVhZHMKPiA+IGludGVybGVh
dmUsIGFuZCB0aGUgb3V0Y29tZSBpcyBlaXRoZXIgYSByZWFkZXIgYmFpbGluZyBvdXQ6Cj4gPgo+
ID4gICByb2NrY2hpcC1vdHAgMmE1ODAwMDAub3RwOiB0aW1lb3V0IGR1cmluZyByZWFkIHNldHVw
Cj4gPgo+ID4gb3IsIHdvcnNlLCBvbmUgb2YgdGhlbSBzaWxlbnRseSB0YWtpbmcgZGVsaXZlcnkg
b2YgdGhlIG90aGVyJ3MgZGF0YS4KPiA+Cj4gPiBSZWFkaW5nIHR3byBjZWxscyBpbiBwYXJhbGxl
bCBmcm9tIHVzZXJzcGFjZSBvbiBSSzM1NzYgcmVwcm9kdWNlcyBib3RoCj4gPiB3aXRoaW4gMTUw
IGl0ZXJhdGlvbnMgLSA1MyByZWFkIGVycm9ycyBhbmQgOSBjb3JydXB0ZWQgcmVzdWx0cywgdGhl
IGxhdHRlcgo+ID4gZWl0aGVyIGxvc2luZyB0aGVpciBmaXJzdCB3b3JkIG9yLCBpbiBvbmUgY2Fz
ZSwgZW5kaW5nIGluIHRoZSB0d28gYnl0ZXMKPiA+IHdoaWNoIGJlbG9uZyB0byB0aGUgb3RoZXIg
cmVhZGVyJ3MgY2VsbCAtIHdoZXJlYXMgdGhlIHNhbWUgcmVhZHMgaXNzdWVkCj4gPiBzZXF1ZW50
aWFsbHkgbmV2ZXIgZmFpbC4gQ29uY3VycmVuY3kgaXMgbm90IGh5cG90aGV0aWNhbCBoZXJlLCBh
cyBzaXgKPiA+IHRoZXJtYWwgc2Vuc29ycyBzb3VyY2UgdGhlaXIgdHJpbSB2YWx1ZXMgZnJvbSB0
aGUgT1RQIGFuZCByZWFjaCB0aGUgZHJpdmVyCj4gPiBzdHJhaWdodCBmcm9tIGFzeW5jaHJvbm91
cyBkcml2ZXIgcHJvYmluZy4KPiA+Cj4gPiBHdWFyZCB0aGUgcmVhZCBwYXRoIHdpdGggYSBtdXRl
eC4gUmVhZHMgYXJlIHRoZSBvbmx5IHdheSBpbnRvIHRoZSBoYXJkd2FyZSwKPiA+IGFzIHRoZSBk
cml2ZXIgcmVnaXN0ZXJzIG5vIHdyaXRlIGNhbGxiYWNrLCBhbmQgdGhleSBhbHdheXMgcnVuIGlu
IHByb2Nlc3MKPiA+IGNvbnRleHQsIHNvIGEgcGxhaW4gbXV0ZXggc3Bhbm5pbmcgdGhlIHdob2xl
IGNsb2NrLWVuYWJsZSwgcmVhZCwKPiA+IGNsb2NrLWRpc2FibGUgc2VxdWVuY2UgaXMgZW5vdWdo
Lgo+ID4KPiA+IEZpeGVzOiA3NTU4NjRmZWI3MjkgKCJudm1lbTogYWRkIFJvY2tjaGlwIE9UUCBk
cml2ZXIiKQo+ID4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiA+IFNpZ25lZC1vZmYtYnk6
IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGZsaXBwZXIubmV0Pgo+Cj4gUmV2aWV3ZWQtYnk6IE1p
cXVlbCBSYXluYWwgPG1pcXVlbC5yYXluYWxAYm9vdGxpbi5jb20+CgpUaGFua3MgZm9yIHlvdXIg
cmV2aWV3IE1pcXVlbCEKClNhc2hpa28gY29tcGxhaW5lZCBhYm91dCBtaXhpbmcgYSBzY29wZS1i
YXNlZCBndWFyZCBpbnRvIGEgZnVuY3Rpb24Kd2l0aCBnb3RvLWJhc2VkIGVycm9yIGhhbmRsaW5n
LCBzbyBJIGFtIHJlcGxhY2luZyB0aGUgZ3VhcmQobXV0ZXgpCndpdGggZXhwbGljaXQgbG9jayBh
bmQgdW5sb2NrIGNhbGxzIGZvciB2Mi4gVGhlcmUgd29uJ3QgYmUgYW55CnNlbWFudGljIGNoYW5n
ZSB0aG91Z2gsIHNvIGlmIHlvdSBkb24ndCBtaW5kIEknZCBsaWtlIHRvIGNhcnJ5IHlvdXIKdGFn
IGludG8gdGhlIHYyIHZlcnNpb24uCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
