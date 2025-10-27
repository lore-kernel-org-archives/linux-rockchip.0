Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED0BDCCF9EB
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 17:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJ6pjQRBEPaeHfIzCXBSfElKKy5bG1nr0OmaTCl/GzY=; b=tNzIhLKmylC4tq
	9Hf3Wo1lbrIEwpCaxsKXal5+q/KqGFn0K6kIR2CnaKl2eGFVwETyVNMnd+QUNrhPYB/1WHkQ6N3pv
	Hvihgr0Knuiypc1XHwdY/hkxRjfRgcmTmCXWPd5Eq9YT08WHSVnE1BqtjiaU63ikMd/n9pnuegjfu
	kTNmbV9sbE8OKxMOiSARXYUaqiPkaG5qdjLJSUqWtYJUYOAbF2uxQaBOygRfDEb34sk3CzCzTqW/y
	y9vKwYnxVHtNhrCvkfvd/40aBBXJcsht1m0flmlH1XfP9TsY91jzXHInNp/dVsaBI5m6IZlT3mauc
	+MtXhTcB13g0Lj5B2PZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDR76-0000000ERx5-2Ht6;
	Mon, 27 Oct 2025 17:34:36 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDR73-0000000ERwB-0hw1
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 17:34:34 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-77f5d497692so5960432b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Oct 2025 10:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761586472; x=1762191272; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kEjlvHcQp4lpZ1m36wlxzDAnqifTiWNPk+NjQID7RjI=;
        b=NGKjxsJf5sYw7PoWJP+L1ZpnH8va2mSaqGU/6UqV1QRfuGD1NXv1/q6dU/GWRBubDs
         HdQfoU3XHjlOxBw+kfuxBglOWfNBoYBmaXJcdCeD8T2F2II9YpFCVXK1LNLvP3C3ESpw
         XXZEkN8vVe2/vz2IKflSyF3HugrqUl6ztuArsHZDEFQCk3R0fAGDsnfigIGEU5clgV+A
         1K6rzNgCQTTQ9u+D/BasYUZiowMw8SJ07wluA36Mm8EMudWPZcpsQuKyHwzyiV6wHEcY
         OmevlQhi/xyb8Qf02YNa/9YzToBiyLcWN5CwfwBqu2ngLD/G+vZhEs6F7dPAxjKMoJ2y
         EhDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761586472; x=1762191272;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kEjlvHcQp4lpZ1m36wlxzDAnqifTiWNPk+NjQID7RjI=;
        b=PMg7hMCe4lzGDOR/JI+9osCWaUaRlFda3ZEeNTVV8wrsZiyGxMvAXch8RVJapx0Wjo
         5E+yPPMdw4gcLPl8W+na7/RHdtoirMvzOqYOOHqDvDvGxoGWBB3JlkYYZx4VNF8J3I5D
         Pj3qgKqGaWXLwmqocxNA27q7q//FhqWaFbnFlEZ7zyDItzT4G2pARNUAV3B037r49Xqt
         o1cRR7+yNTgFYyQRoqSVyV8xmjLVD5YnZEzoH3Wuw+0b2lfQ5tl9qCOYxLkSQ876fk92
         9d6qgq2TeCMKpxHiC8Iqv35mopeaZNI1c7hD1dax6o2U/mlm4DStQOhaO5jhGBGTr2sv
         oRvg==
X-Forwarded-Encrypted: i=1; AJvYcCUiUn9LA5thl5s03BDjjTm+kQX/KHfsUxPrgmgGHgZknAfpLiSr0YefUU/hLNavT5dfoMiLtcmb7RfLGU5LXg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxnrjT1ibuehTz9U0e5ustdfijWl1tCnPSCzgRyDy0WO0wfb77l
	jLVnrjSklMfp9r/2qDQKxB5KOm2MBmUYU+mS//HsOeKBnPC2M3C5/vwl
X-Gm-Gg: ASbGncv18YYbgLsE1OBHHE1Ba8DmR4MXsPZH8LKb7RHueQk2Ev2HR9DT5Fczh+xVMrJ
	deFoZ0+1/dntCIwl8FEYUvtNK/bWKCaaDkfBOPzUoDTioA8yymqEHPNw0yRfhPC5gt/bxlD6xyo
	9+tcSS1m+KmYpoOlzkZYfpHb5OkdqnL+6twHz3t+zZpYRrv/t0yqeOlRFl2lfLzXx9x3Jy+r8Lu
	FtGEho/G2UeLXjN5Nux2hNC+jBvPrM5VJZmIgDFoNlVBupNupio+LGSUr+hdCLRzVn15BqNE16w
	w5+2BiafzU1oAYfzxOBHsty83III5Nhl9OdTnEeFeIUcYg6zWlPYFxAQ5Vw1Dx+tG0rG+2kXTtf
	sdCTlGZdx8NOMUzreLJ2ZFD8/FXhpOovw6xVl2H59gnXYTMzgkTsZGSkM9s+8Thps9S/9QIFCwQ
	8Jsw==
X-Google-Smtp-Source: AGHT+IHAljstHcaoMHk/lLRlsppwJy/V1KHAMxtXlEIjZrVw2dfhWs2pVvM+g1XbMmpxHBsC5hDZxg==
X-Received: by 2002:a05:6a00:13a0:b0:7a2:8853:28f6 with SMTP id d2e1a72fcca58-7a441c476f3mr801487b3a.22.1761586471576;
        Mon, 27 Oct 2025 10:34:31 -0700 (PDT)
Received: from CNSZTL-PC.lan ([2001:df0:a640:1::15])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a4140a0d47sm8684282b3a.73.2025.10.27.10.34.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 10:34:31 -0700 (PDT)
Message-ID: <5af928c4-4b6e-489c-ad39-26cef3dd7473@gmail.com>
Date: Tue, 28 Oct 2025 01:34:25 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
From: Tianling Shen <cnsztl@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Grzegorz Sterniczuk <grzegorz@sternicz.uk>, Dragan Simic
 <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>, Jianfeng Liu <liujianfeng1994@gmail.com>
References: <20251017073954.130710-1-cnsztl@gmail.com>
 <d70c0eb5-9aa2-47b1-8205-81b724180319@rock-chips.com>
 <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
In-Reply-To: <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_103433_214704_12C70C82 
X-CRM114-Status: GOOD (  20.20  )
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

KyBKaWFuZmVuZwoKT24gMjAyNS8xMC8yMCAxMjo0NCwgVGlhbmxpbmcgU2hlbiB3cm90ZToKPiBI
aSBTaGF3biwKPiAKPiBPbiAyMDI1LzEwLzIwIDk6NTMsIFNoYXduIExpbiB3cm90ZToKPj4gSGkg
VGlhbmxpbmcKPj4KPj4gT24gMjAyNS8xMC8xNyBGcmlkYXkgMTU6MzksIFRpYW5saW5nIFNoZW4g
d3JvdGU6Cj4+PiBGcm9tOiBHcnplZ29yeiBTdGVybmljenVrIDxncnplZ29yekBzdGVybmljei51
az4KPj4+Cj4+PiBTb21lIE5hbm9QQy1UNiBib2FyZHMgd2l0aCBBM0E0NDQgZU1NQyBjaGlwcyBl
eHBlcmllbmNlIEkvTyBlcnJvcnMgYW5kCj4+PiBjb3JydXB0aW9uIHdoZW4gdXNpbmcgSFM0MDAg
bW9kZS4gRG93bmdyYWRlIHRvIEhTMjAwIG1vZGUgdG8gZW5zdXJlCj4+PiBzdGFibGUgb3BlcmF0
aW9uLgo+Pgo+PiBNYXkgSSBhc2sgeW91IHRvIHRlc3QgYW5vdGhlciBwYXRjaCBJIGp1c3QgcG9z
dGVkIHRvIHNlZSBpZiBpdCBmaXhlcwo+PiB5b3VyIGlzc3VlPwo+Pgo+PiBodHRwczovL3BhdGNo
d29yay5rZXJuZWwub3JnL3Byb2plY3QvbGludXgtbW1jLyAKPj4gcGF0Y2gvMTc2MDkyNDk4MS01
MjMzOS0xLSBnaXQtc2VuZC1lbWFpbC1zaGF3bi5saW5Acm9jay1jaGlwcy5jb20vCj4gCj4gVGhh
bmsgeW91IGZvciB0aGUgcGF0Y2ghIEkgd2lsbCBhc2sgbXkgZnJpZW5kIHRvIHRlc3QgaXQgYnV0
IGhlIHVzZXMgCj4gdGhpcyBib2FyZCBhcyBhIGhvbWUgcm91dGVyLCBzbyBpdCBtYXkgdGFrZSBh
IGZldyBkYXlzIG9yIHdlZWtzIHRvIAo+IHJlcG9ydCB0aGUgcmVzdWx0LgoKSGkgYWxsLCBzb3Jy
eSBmb3IgdGhlIGxhdGUuIE15IGZyaWVuZCBoYXMgdGVzdGVkIHRoaXMgcGF0Y2ggYW5kIGl0IHdv
cmtzIApmaW5lIGFmdGVyIDUwIHRpbWVzIGRkIG9wZXJhdGlvbi4gQSBiaWcgdGhhbmtzIHRvIFNo
YXduIQoKQW5kIGhpIEppYW5mZW5nLCBJIGZvdW5kIHlvdSBtYWRlIGEgc2ltaWxpYXIgcGF0Y2hb
MV0gZm9yIHRoZSBST0NLIDUgSVRYIApib2FyZCB0byBsb3dlciBkb3duIHRoZSBtbWMgc3BlZWQs
IGNvdWxkIHlvdSBwbGVhc2UgY2hlY2sgaWYgdGhpcyBwYXRjaCAKYWxzbyBmaXhlcyB5b3VyIGlz
c3VlPwoKVGhhbmtzLApUaWFubGluZy4KCjEuIApodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC1yb2NrY2hpcC8yMDI1MDIyODE0MzM0MS43MDI0NC0xLWxpdWppYW5mZW5nMTk5NEBnbWFpbC5j
b20vCgo+IAo+IFRoYW5rcywKPiBUaWFubGluZy4KPiAKPj4KPj4KPj4+Cj4+PiBTaWduZWQtb2Zm
LWJ5OiBHcnplZ29yeiBTdGVybmljenVrIDxncnplZ29yekBzdGVybmljei51az4KPj4+IFNpZ25l
ZC1vZmYtYnk6IFRpYW5saW5nIFNoZW4gPGNuc3p0bEBnbWFpbC5jb20+Cj4+PiAtLS0KPj4+IMKg
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNpIHwgMyAr
LS0KPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
bmFub3BjLXQ2LmR0c2kgYi8gCj4+PiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC1uYW5vcGMtdDYuZHRzaQo+Pj4gaW5kZXggZmFmZWFiZTlhZGY5Li41ZjYzZjM4ZjczMjYgMTAw
NjQ0Cj4+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMt
dDYuZHRzaQo+Pj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFu
b3BjLXQ2LmR0c2kKPj4+IEBAIC03MTcsOCArNzE3LDcgQEAgJnNkaGNpIHsKPj4+IMKgwqDCoMKg
wqAgbm8tc2Q7Cj4+PiDCoMKgwqDCoMKgIG5vbi1yZW1vdmFibGU7Cj4+PiDCoMKgwqDCoMKgIG1h
eC1mcmVxdWVuY3kgPSA8MjAwMDAwMDAwPjsKPj4+IC3CoMKgwqAgbW1jLWhzNDAwLTFfOHY7Cj4+
PiAtwqDCoMKgIG1tYy1oczQwMC1lbmhhbmNlZC1zdHJvYmU7Cj4+PiArwqDCoMKgIG1tYy1oczIw
MC0xXzh2Owo+Pj4gwqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+PiDCoCB9Owo+Pgo+IAoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
