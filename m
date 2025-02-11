Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7864FC021A1
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 08:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pNOGRRGUyLq+w4ktqRikvf71HHgoYrJEAcRt//f5Rg=; b=xguKSXemu9Q/EA
	ASnWOIXHEPx8L54J2J6Vj8s27qN/6G5hTxqgxrRfeU5ezm0KS3Ll3c3yh1cO0opkNIQJ+qGob3tyO
	0Y8NEUd5zwyg/PR/w9AvyVFLt8xZPWq/RQ+2J9/BJzlCh3AUk8RUtWmbFLU26AK+a7cPQpcIhHz/6
	wNt14TJQw0gvppSBJUUQtMFyZMaDghjQ7CWZ9aS8+O/ROmglvZTAvi3lNoeyYFloqYvQHT5kIRPP5
	BUSuL++sC1FBxIsul21MSIlZsZ7Y4ytTX4xv79D0sA+7vEAJJfmhdYs/be0ijmMNPACdtJ5vt+83n
	s4ZEnm6WexQ/BGwuh/FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thlJt-00000002wOG-15Rn;
	Tue, 11 Feb 2025 08:08:37 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thlJT-00000002wIJ-0zUH
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Feb 2025 08:08:12 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-38de17a5fc9so922169f8f.3
        for <linux-rockchip@lists.infradead.org>; Tue, 11 Feb 2025 00:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739261289; x=1739866089; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WiK7BHSVgTdQkQZzP88yLZAKhA2S6bWhUg1LMOvnPkc=;
        b=GYJffrDuXLq2teG07qkGmQT1wtYrMMjM71uXJHs4/mxArKDh/UQqAx3JiqGvZ5r34p
         bfHB69Upi+3H/0XLgzSmWnkPRTYfyiBfRkIYVj9W1jjIl0oN1EbXSOokK08twmzpjOc/
         aWv2ON2y1a8Kp0ghPv7kFa4+hFDs/sgOpyuRodM19EPnyCb+2Cz569YMbjg1UDgfbS2n
         bWQf4zsNFjcW47KkpNC90xArFCiAKwk9XImZoFg4NWdFijfelgA+htqAn3ozrlt2vpvi
         qkC+Pjis7S1d9xrplN2OiV8x5tk2qucT8+4PGqw5Hg5LkFpjfN2ROf6DqsMXD4Aqofsc
         hLcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739261289; x=1739866089;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WiK7BHSVgTdQkQZzP88yLZAKhA2S6bWhUg1LMOvnPkc=;
        b=Nz486h08TRBa0c1EAmkFrdblJLhlRNMDi+cHrmgHocnqX7CrM7YVdVx2YxCgwpxfkK
         8SQfbmhNyqemz/Whdf+KtMgH/f9RZLwcIWcODJdPrKmrCDu4pPnGTXlDN+1lhCgurCNg
         hYvZwKA3Ld4K1JcTVsvj+jD62+s4n8MD4kbxQHkJrdamb0fkyShmNCPZIqEG+oyWyMom
         nWwDCXybXNT4LPT72NkWYCV8n6Uvfh9i5MC+AYdoRUnhOuJTTYDCy/IYWHKbD5508MAy
         snJRWJ1DAeyo/AN4wW97jcLXFsfUkFnjuLO1Ig3FHKrPbS50CZwh/Q5LWvGtNjQTcuMk
         UgAg==
X-Forwarded-Encrypted: i=1; AJvYcCUjl16kj0QquZf8Lmxg1on7Je3bd8e/jiimF6oiqDvfZrXVrMtktV3dCQ2IMD+RDEs/3CsN7m0XQgKuq9xYJw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyYVYbG/FQkaw1xEkEWfWiLisp3iMZtgPgjoTorsEl9Znm9Nw7a
	J01onWn6Cf34e1oAB2HMmBPHdxpK3v8R+xWp+kiwxZH0ntSycemsZoaVfc+weRA=
X-Gm-Gg: ASbGnct8+wWETbe3osfAtm59nfxuKAyESqk58HRtB3SNk+gHnST1YlAO9iVZX94RJsu
	fk8PbQ3gEpV8ROZS6NnpZcfOtRdPyAT4msyzLnRfztMyIiLJmAOLToz7nCZ4HxYEFLD6iE1oZ5L
	3USFJsAhNR4CxMQRHeRkmQJAhuuNCVGl7R5/MC8+uDtTAe88VAjO7waxHmzh8wXnUQoSJ+s8pVH
	LFtfBQDuL5idwcoLGzhx89WZ5VtVK0I669yWKV+F24wTjbId0IufvkUse/RzAeZO4BHHwzE/KyS
	cND9A4bfGE7UKVSQ50fCnJS1cuCpVz5QzvhKvH2AKFol8NyZ0kGbWnU=
X-Google-Smtp-Source: AGHT+IE2oWYuWjmjvpu3ABr0HEe1925aEaOPbTS7VONKBvqKWoMObjwVOs9MsKRzrKKQMRmZMw7JGQ==
X-Received: by 2002:a05:6000:1561:b0:38d:e38a:5910 with SMTP id ffacd0b85a97d-38de38a59bfmr2866271f8f.28.1739261289162;
        Tue, 11 Feb 2025 00:08:09 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4392fc7ceacsm102977005e9.20.2025.02.11.00.08.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 00:08:08 -0800 (PST)
Message-ID: <0b37e5e1-6dd6-49fc-b874-741e75c8d56a@linaro.org>
Date: Tue, 11 Feb 2025 09:08:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] thermal/drivers/rockchip: add missing rk3328 mapping
 entry
To: Dragan Simic <dsimic@manjaro.org>, Trevor Woerner <twoerner@gmail.com>
Cc: linux-kernel@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Caesar Wang <wxt@rock-chips.com>,
 Rocky Hao <rocky.hao@rock-chips.com>, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 stable@vger.kernel.org
References: <20250207175048.35959-1-twoerner@gmail.com>
 <5f9cf65221690452d7e842ee98535192@manjaro.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <5f9cf65221690452d7e842ee98535192@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_000811_281440_BFE016EA 
X-CRM114-Status: GOOD (  22.72  )
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

T24gMTEvMDIvMjAyNSAwMjo0MCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhlbGxvIFRyZXZvciwK
PiAKPiBPbiAyMDI1LTAyLTA3IDE4OjUwLCBUcmV2b3IgV29lcm5lciB3cm90ZToKPj4gVGhlIG1h
cHBpbmcgdGFibGUgZm9yIHRoZSByazMzMjggaXMgbWlzc2luZyB0aGUgZW50cnkgZm9yIC0yNUMg
d2hpY2ggaXMKPj4gZm91bmQgaW4gdGhlIFRSTSBzZWN0aW9uIDkuNS4yICJUZW1wZXJhdHVyZS10
by1jb2RlIG1hcHBpbmciLgo+Pgo+PiBOT1RFOiB0aGUga2VybmVsIHVzZXMgdGhlIHRzYWRjX3Ff
c2VsPTEnYjEgbW9kZSB3aGljaCBpcyBkZWZpbmVkIGFzOgo+PiDCoMKgwqDCoMKgIDQwOTYtPGNv
ZGUgaW4gdGFibGU+LiBXaGVyZWFzIHRoZSB0YWJsZSBpbiB0aGUgVFJNIGdpdmVzIHRoZSBjb2Rl
Cj4+IMKgwqDCoMKgwqAgIjM3NzQiIGZvciAtMjVDLCB0aGUga2VybmVsIHVzZXMgNDA5Ni0zNzc0
PTMyMi4KPiAKPiBBZnRlciBnb2luZyB0aHJvdWdoIHRoZSBSSzMzMDggYW5kIFJLMzMyOCBUUk1z
LCBhcyB3ZWxsIGFzIHRocm91Z2ggdGhlCj4gZG93bnN0cmVhbSBrZXJuZWwgY29kZSwgaXQgc2Vl
bXMgd2UgbWF5IGhhdmUgc29tZSB0cm91YmxlcyBhdCBvdXIgaGFuZHMuCj4gTGV0IG1lIGV4cGxh
aW4sIHBsZWFzZS4KPiAKPiBUbyBzdW0gaXQgdXAsIHBhcnQgMSBvZiB0aGUgUkszMzA4IFRSTSB2
MS4xIHNheXMgb24gcGFnZSA1MzggdGhhdCB0aGUKPiBlcXVhdGlvbiBmb3IgdGhlIG91dHB1dCB3
aGVuIHRzYWRjX3Ffc2VsIGVxdWFscyAxIGlzICg0MDk2IC0gdHNhZGNfcSksCj4gd2hpbGUgcGFy
dCAxIG9mIHRoZSBSSzMzMjggVFJNIHYxLjIgc2F5cyB0aGF0IHRoZSBvdXRwdXQgZXF1YXRpb24g
aXMKPiAoMTAyNCAtIHRzYWRjX3EpIGluIHRoYXQgY2FzZS4KPiAKPiBUaGUgZG93bnN0cmVhbSBr
ZXJuZWwgY29kZSwgaG93ZXZlciwgdHJlYXRzIHRoZSBSSzMzMDggYW5kIFJLMzMyOAo+IHRhYmxl
cyBhbmQgdGhlaXIgdmFsdWVzIGFzIGJlaW5nIHRoZSBzYW1lLsKgIEl0IGV2ZW4gbWVudGlvbnMg
MTAyNCBhcwo+IHRoZSAib2Zmc2V0IiB2YWx1ZSBpbiBhIGNvbW1lbnQgYmxvY2sgZm9yIHRoZSBy
a190c2FkY3YzX2NvbnRyb2woKQo+IGZ1bmN0aW9uLCBqdXN0IGxpa2UgdGhlIHVwc3RyZWFtIGNv
ZGUgZG9lcywgd2hpY2ggaXMgb2J2aW91c2x5IHdyb25nCj4gIm9mZnNldCIgdmFsdWUgd2hlbiBj
b3JyZWxhdGVkIHdpdGggdGhlIHRhYmxlIG9uIHBhZ2UgNTQ0IG9mIHBhcnQgMQo+IG9mIHRoZSBS
SzMzMDggVFJNIHYxLjEuCj4gCj4gV2l0aCBhbGwgdGhpcyBpbiBtaW5kLCBpdCdzIG9idmlvdXMg
dGhhdCBtb3JlIHdvcmsgaXMgbmVlZGVkIHRvIG1ha2UKPiBpdCBjbGVhciB3aGVyZSdzIHRoZSBh
Y3R1YWwgbWlzdGFrZSAoaXQgY291bGQgYmUgdGhhdCB0aGUgVFJNIGlzIHdyb25nKSwKPiB3aGlj
aCBJJ2xsIHZvbHVudGVlciBmb3IgYXMgcGFydCBvZiB0aGUgU29DIGJpbm5pbmcgcHJvamVjdC7C
oCBJbiB0aGUKPiBtZWFudGltZSwgdGhpcyBwYXRjaCBsb29rcyBmaW5lIGFzLWlzIHRvIG1lLCBi
eSBvZmZlcmluZyB3aGF0J3MgYSBjbGVhcgo+IGltcHJvdmVtZW50IHRvIHRoZSBjdXJyZW50IHN0
YXRlIG9mIHRoZSB1cHN0cmVhbSBjb2RlLCBzbyBwbGVhc2UgZmVlbAo+IGZyZWUgdG8gaW5jbHVk
ZToKPiAKPiBSZXZpZXdlZC1ieTogRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+Cj4g
Cj4gSG93ZXZlciwgaXQgd291bGQgYmUgZ29vZCB0byBpbmNsdWRlIHNvbWUgYWRkaXRpb25hbCBu
b3RlcyBpbnRvIHRoZQo+IHBhdGNoIGRlc2NyaXB0aW9uIGluIHRoZSB2Mywgd2hpY2ggd291bGQg
YnJpZWZseSBzdW0gdXAgdGhlIGFib3ZlLQo+IGRlc2NyaWJlZCBpc3N1ZXMgYW5kIGRpc2NyZXBh
bmNpZXMsIGZvciBmdXR1cmUgcmVmZXJlbmNlLgoKCkFwcGxpZWQgYW5kIGFkZGVkIHRoZSBhZGRp
dGlvbmFsIG5vdGVzIGluIHRoZSBwYXRjaCBkZXNjcmlwdGlvbi4KClRoYW5rcwoKICAgLS0gRC4K
CgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNl
IHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vi
b29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9s
aW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4g
QmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
