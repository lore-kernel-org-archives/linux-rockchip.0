Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEEE6C54FB9
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Nov 2023 20:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KW4HVsP83pJtk/vwy6dD8hmBgH2SgJif6oIahFHpJCk=; b=qJV1Z1RJ2pf06S
	+Pkq57yCFw/a/sdv6ZaQe847PtEgTyPtEzTeb8SUoVWMCDHCDfyeWO454OJPrsKHeztXbBMveXLEk
	0rgBBHlhRJp8s639HbuZM4TYDhOPYdrlWij1/lZy70f6uE1UST/NmXplUsCMJfRl235Ek1iIbd/pu
	jBDEG2EXqe+yxlvkY3ak01rWb/yE5fw06Q7aq9w7P2ACUTsoPbX0CLP9VWiViT4KemoZz+Z5hn7PO
	TH58jx3CveEMyB2TPAxnN+QKR6JA/1GTkVmPt55YKjCJ632XNgQ+XjuPydMTAxZTwZ8dCrS+cGPDv
	uZtvWCE/qd7edSudjYhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4oiC-00Aefo-2l;
	Sun, 19 Nov 2023 20:48:12 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4oi8-00Aef0-2c;
	Sun, 19 Nov 2023 20:48:10 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-40b23aeb9d9so265985e9.3;
        Sun, 19 Nov 2023 12:48:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700426884; x=1701031684; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CWjU5VUo5KxpXKqn9WIzgJnzu39lgDeK8IHP51RTeRo=;
        b=BDUzIaIMLuoUgEHyi1dvOhoOPTwEOjhDVS8PalNVfGxPfgdtYpfj4yE7CeuAj7R5ma
         mEsnuYhBSx+tjrF+ukcC9s4RWXxepqSvuud7R566Ss56kz2B/vv/vF2bEIzqrPUmIQ7v
         wIN0bEnKdE5/nXXYetWAMDxGWtft6jMeDPQXehT+63vgoNOTliURnBGEC192HNlc8yIS
         +Mvm8icoMAKoTjQTCp3ZKkz77EN+OvCZzF3DrT8AYlCaVoP4l4MQc8+rIJ9EefCHq6Dj
         rQ6NRamXLlHG8Wen0VZdSjd9TCT0roiRb/SyyLpzdkGoUNFcef+PlPvU+Y2YeEh+rJ0e
         0uvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700426884; x=1701031684;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CWjU5VUo5KxpXKqn9WIzgJnzu39lgDeK8IHP51RTeRo=;
        b=TU+o3IU8PtywvE4Z6jqSX78xJa2gY0JXZ9WMZX/BaB6jb/W545AX2ONMb6IIfS27a3
         DchAYo1KujjVkbGIv7qYl4KYdYeFQwUIXnjXgqp6/KTc/eC/IE3txtVUuupWQHKb9hNN
         L4FWRl1BaP7yuRiWmCOc4K/LxwvrwZWbGm+SV/2LcollGb8wRqEqEkGasUouIu7DMMSi
         kbW0xkHSH+W91N9pC9xYs+l3+lRBZKcxzRoDqQPISdBFnyosOk+j35Olnm+r/AkpPlT1
         Q5u6tBmRDzoolrPhz93p1i8dYkWgkClR9QCbh0sTG94gvJILXL8EC2cRWim6ccDJlu30
         m+5w==
X-Gm-Message-State: AOJu0YyBGiGZYjd3R2YH5K/jGUtxJbHTqwBQEJwggSiVyZ+sB6Hx27ri
	UKbKgsqdlRrcQRE1xgQ7EbE=
X-Google-Smtp-Source: AGHT+IEZWWO++JrGT2JldQTNZQiclsVj7v8gw6AW+sIz2m4IlYJdoZpCoqhsNP5PyKjcAeBOrXC68g==
X-Received: by 2002:a05:600c:5248:b0:408:3ab3:a029 with SMTP id fc8-20020a05600c524800b004083ab3a029mr4716084wmb.38.1700426884087;
        Sun, 19 Nov 2023 12:48:04 -0800 (PST)
Received: from ?IPV6:2a01:c23:bde4:3e00:9589:aeb1:adc4:e0f? (dynamic-2a01-0c23-bde4-3e00-9589-aeb1-adc4-0e0f.c23.pool.telefonica.de. [2a01:c23:bde4:3e00:9589:aeb1:adc4:e0f])
        by smtp.googlemail.com with ESMTPSA id o14-20020aa7dd4e000000b0053e15aefb0fsm2911997edw.85.2023.11.19.12.48.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Nov 2023 12:48:03 -0800 (PST)
Message-ID: <b336a8e3-44e7-4f56-a950-5155675b5628@gmail.com>
Date: Sun, 19 Nov 2023 21:48:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 RESEND 00/20] remove I2C_CLASS_DDC support
Content-Language: en-US
To: Helge Deller <deller@gmx.de>, Wolfram Sang <wsa@kernel.org>,
 intel-gfx@lists.freedesktop.org
Cc: linux-i2c@vger.kernel.org, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 linux-fbdev@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Jocelyn Falempe <jfalempe@redhat.com>, linux-sunxi@lists.linux.dev,
 linux-mediatek@lists.infradead.org, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 Xinwei Kong <kong.kongxinwei@hisilicon.com>,
 Sumit Semwal <sumit.semwal@linaro.org>, Yongqin Liu
 <yongqin.liu@linaro.org>, John Stultz <jstultz@google.com>
References: <20231119112826.5115-1-hkallweit1@gmail.com>
 <e40b913f-379f-4b6e-a0d2-844887a17284@gmx.de>
From: Heiner Kallweit <hkallweit1@gmail.com>
Autocrypt: addr=hkallweit1@gmail.com; keydata=
 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
In-Reply-To: <e40b913f-379f-4b6e-a0d2-844887a17284@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_124808_859182_1F70D693 
X-CRM114-Status: GOOD (  13.54  )
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

T24gMTkuMTEuMjAyMyAyMToyOCwgSGVsZ2UgRGVsbGVyIHdyb3RlOgo+IE9uIDExLzE5LzIzIDEy
OjI4LCBIZWluZXIgS2FsbHdlaXQgd3JvdGU6Cj4+IEFmdGVyIHJlbW92YWwgb2YgdGhlIGxlZ2Fj
eSBFRVBST00gZHJpdmVyIGFuZCBJMkNfQ0xBU1NfRERDIHN1cHBvcnQgaW4KPj4gb2xwY19kY29u
IHRoZXJlJ3Mgbm8gaTJjIGNsaWVudCBkcml2ZXIgbGVmdCBzdXBwb3J0aW5nIEkyQ19DTEFTU19E
REMuCj4+IENsYXNzLWJhc2VkIGRldmljZSBhdXRvLWRldGVjdGlvbiBpcyBhIGxlZ2FjeSBtZWNo
YW5pc20gYW5kIHNob3VsZG4ndAo+PiBiZSB1c2VkIGluIG5ldyBjb2RlLiBTbyB3ZSBjYW4gcmVt
b3ZlIHRoaXMgY2xhc3MgY29tcGxldGVseSBub3cuCj4+Cj4+IFByZWZlcmFibHkgdGhpcyBzZXJp
ZXMgc2hvdWxkIGJlIGFwcGxpZWQgdmlhIHRoZSBpMmMgdHJlZS4KPiAKPiBUaGUgZmJkZXYgY2hh
bmdlcyBsb29rIGF0IGxlYXN0IG9rIHNvIGZhciwgc286Cj4gQWNrZWQtYnk6IEhlbGdlIERlbGxl
ciA8ZGVsbGVyQGdteC5kZT7CoMKgICNmYmRldgo+IApJIHRoaW5rIHRoaXMgcmVmZXJzIHRvIHBh
dGNoIDUgb2YgdGhlIHNlcmllcy4gQ291bGQgeW91IHBsZWFzZSByZXBseQp0byBwYXRjaCA1IGlu
c3RlYWQgb2YgdGhlIGNvdmVyIGxldHRlciB3aXRoIHlvdXIgYWNrZWQtYnkgc28gdGhhdApwYXRj
aHdvcmsgZ2V0cyBpdCByaWdodD8gVGhhbmtzIQoKPiAKPj4gdjI6Cj4+IC0gY2hhbmdlIHRhZyBp
biBjb21taXQgc3ViamVjdCBvZiBwYXRjaCAwMwo+PiAtIGFkZCBhY2sgdGFncwo+PiB2MzoKPj4g
LSBmaXggYSBjb21waWxlIGVycm9yIGluIHBhdGNoIDUKPj4KPj4gU2lnbmVkLW9mZi1ieTogSGVp
bmVyIEthbGx3ZWl0IDxoa2FsbHdlaXQxQGdtYWlsLmNvbT4KPj4KPj4gLS0tCj4+Cj4+IMKgIGRy
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9pMmMuY8KgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoMKgwqAgMSAtCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0v
YW1kZ3B1X2RtLmMgfMKgwqDCoCAxIC0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2FzdC9hc3RfaTJj
LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jwqDCoMKgwqDCoMKg
wqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vZGlzcGxheS9kcm1fZHBfaGVs
cGVyLmPCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vZGlzcGxheS9kcm1fZHBfbXN0X3RvcG9sb2d5LmPCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDC
oCBkcml2ZXJzL2dwdS9kcm0vZ21hNTAwL2Nkdl9pbnRlbF9kcC5jwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9nbWE1MDAvaW50ZWxfZ21i
dXMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKgIGRyaXZlcnMv
Z3B1L2RybS9nbWE1MDAvb2FrdHJhaWxfaGRtaV9pMmMuY8KgwqDCoMKgwqDCoMKgIHzCoMKgwqAg
MSAtCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9nbWE1MDAvcHNiX2ludGVsX3Nkdm8uY8KgwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9oaXNpbGljb24v
aGlibWMvaGlibWNfZHJtX2kyYy5jwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2dtYnVzLmPCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+
PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uY8KgwqDCoMKgwqDC
oMKgwqAgfMKgwqDCoCAxIC0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2xvb25nc29uL2xzZGNfaTJj
LmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKgIGRyaXZlcnMv
Z3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaV9kZGMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKg
wqAgMSAtCj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9tZ2FnMjAwL21nYWcyMDBfaTJjLmPCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL21zbS9o
ZG1pL2hkbWlfaTJjLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX2kyYy5jwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvaW5u
b19oZG1pLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcmszMDY2X2hkbWkuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fMKgwqDCoCAxIC0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjRpX2hkbWlfaTJjLmPC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKgIGRyaXZlcnMvdmlkZW8vZmJk
ZXYvY29yZS9mYl9kZGMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAg
MSAtCj4+IMKgIGRyaXZlcnMvdmlkZW8vZmJkZXYvY3liZXIyMDAwZmIuY8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKgIGRyaXZlcnMvdmlkZW8vZmJkZXYv
aTc0MGZiLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDC
oCAxIC0KPj4gwqAgZHJpdmVycy92aWRlby9mYmRldi9pbnRlbGZiL2ludGVsZmJfaTJjLmPCoMKg
wqDCoMKgwqDCoMKgIHzCoMKgIDE1ICsrKysrLS0tLS0tLS0tLQo+PiDCoCBkcml2ZXJzL3ZpZGVv
L2ZiZGV2L21hdHJveC9pMmMtbWF0cm94ZmIuY8KgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMTIgKysr
Ky0tLS0tLS0tCj4+IMKgIGRyaXZlcnMvdmlkZW8vZmJkZXYvczNmYi5jwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEgLQo+PiDCoCBkcml2ZXJz
L3ZpZGVvL2ZiZGV2L3RkZnhmYi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHzCoMKgwqAgMSAtCj4+IMKgIGRyaXZlcnMvdmlkZW8vZmJkZXYvdHJpZGVudGZiLmPC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqDCoCAxIC0KPj4gwqAgZHJp
dmVycy92aWRlby9mYmRldi92aWEvdmlhX2kyYy5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgfMKgwqDCoCAxIC0KPj4gwqAgaW5jbHVkZS9saW51eC9pMmMuaMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoMKgIDEg
LQo+PiDCoCAzMSBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDQ3IGRlbGV0aW9ucygt
KQo+Pgo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
