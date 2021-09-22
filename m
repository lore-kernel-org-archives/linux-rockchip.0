Return-Path: <SRS0=qd64=OM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49706C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 19:20:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0444060FE8
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 19:20:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0444060FE8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1TSx98FtBCo95e/cjfZIPTh+0GjL7ZkTS1n1QaaJk2U=; b=OFA2OX8pLy6HHq64QR66zUDD8Y
	E8JygyWqWGHKooVMeDxusDs2AwDgxfIyVLr+ya5yeLaRJLJI6laOsJhItVlYqR+rqXXz8lA0u81bO
	SdUyWH2a1L0Y37RD1mDk5dLLAwBmyI3pUilms7dB56HPMIhTcdUQkEa00tpBjdwqzq4TfkQqI8NLR
	GremaAp4bBhuvyYWmjfX4pCyq1kc2BYn0D/g6pZwLgap2raMKfarcZup2bD6v8lag9QJJVEbUnYdc
	KnOzxgKaf5FuH629jbZ4IBypY6NFStc3hrTUCE0GYCrSEHybjrvHUTcrbO1OZHdEQ6cUbEf86eAKC
	TNquwpKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT7n1-009Try-9S; Wed, 22 Sep 2021 19:20:19 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT7my-009Tql-Am; Wed, 22 Sep 2021 19:20:17 +0000
Received: by mail-wr1-x431.google.com with SMTP id g16so10104257wrb.3;
 Wed, 22 Sep 2021 12:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=K+zmkw3T+xfgg89H6sRPETPAMl2svBQd3Km0SQBXfMg=;
 b=fnP5JqC0TbL40/JKO/2OcQ4PRqgmzh60NA/IdHSEkpMqLsnLe6915SOxmvixeUfRh6
 iSWArdeb/d7QxIuRe6jAEyhPtjrj+yEsDjhgepWrjKWeM22gPlZ6thUAoXsKYOFXEAqg
 PGPBbjTgzpy3KWDfSF0k9dSqAKQsq+Jq78+GPGvKp0i8SNXuyw4/Urb4rHvGlYgPAAUY
 OOVFllwK1bHuFu7u+hRD7iYZ1YzNhMh16RR9Kw+LS78i8hVQOk1A3JEz7ON8KU5Q75TC
 t2xTkG+z7GZnevZb1PzZszRZ9SAP8vYSoJAG+K2ynMXIW2Q5+1ub2XPJqUt8k+lO9+Nu
 MepA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=K+zmkw3T+xfgg89H6sRPETPAMl2svBQd3Km0SQBXfMg=;
 b=USa4Eh2Z/yV3+kaf71QFS1yNeAaCYrPXKEM043leM2DX/CBBrYUf6rL/Oy/ilWr0Dd
 8JQb/j3nRRKzcu7Kk8RzG5/XUs3DPrp+B2y+EXtIXzK1cQyJC68J3wlN11GoL5UnjZwa
 EB7ZdE5aNen1qZp5pP3nPx4TF5OjSFxMnM+utRFsSCtRg/u0v3xLwjR7DT6brzEIO7fW
 LySjEnOtDTgopMPzTS64wB+36njf4Vmcsk/TxF4uZDLLY+I7Fpt5GA2j6q0PUWt6K48Q
 +g9PhYkqLXeRs4uRFrny2JXWNq3fMg/BIkjGY26wY+z1A6gU01B7yI9wWenRKoAKvsIl
 nC6A==
X-Gm-Message-State: AOAM5316YN2TSFdnwORIn2c+FNyDFwDRZMm8w2yNGHyvuRtcgb9pDq8z
 541Ia4ciDWFrmovO5N83BOz1mB85XQ==
X-Google-Smtp-Source: ABdhPJz2XsEEcdlQKn+ptUbgAF5BMrqk/aYGbT822ZavTUFjd2LlmLGyEV3W9AfvEZtWFDyqf5cFeQ==
X-Received: by 2002:a1c:4406:: with SMTP id r6mr12268598wma.150.1632338412027; 
 Wed, 22 Sep 2021 12:20:12 -0700 (PDT)
Received: from [192.168.200.20] (ip5b434083.dynamic.kabel-deutschland.de.
 [91.67.64.131])
 by smtp.gmail.com with ESMTPSA id x14sm2925957wmc.10.2021.09.22.12.20.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Sep 2021 12:20:11 -0700 (PDT)
Subject: Re: [PATCH][next] drm/rockchip: Remove redundant assignment of
 pointer connector
From: Alex Bee <knaerzche@gmail.com>
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Colin King <colin.king@canonical.com>, Sandy Huang <hjc@rock-chips.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210922112416.182134-1-colin.king@canonical.com>
 <27c79f7a-8e4c-fad8-c6cf-a89793f2e3c6@gmail.com> <22365175.EbdSka62eY@diego>
 <6d18a1a6-37e3-41f9-ddd1-1dae33864d23@gmail.com>
Message-ID: <4a166499-1e83-99c8-8859-9d01a301412d@gmail.com>
Date: Wed, 22 Sep 2021 21:20:10 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <6d18a1a6-37e3-41f9-ddd1-1dae33864d23@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_122016_421753_DC1145DC 
X-CRM114-Status: GOOD (  31.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgYWxsLAoKQW0gMjIuMDkuMjEgdW0gMTk6MzEgc2NocmllYiBBbGV4IEJlZToKPiBIaSBIZWlr
bywKPgo+IEFtIDIyLjA5LjIxIHVtIDE4OjQ1IHNjaHJpZWIgSGVpa28gU3TDvGJuZXI6Cj4+IEhp
IEFsZXgsCj4+Cj4+IEFtIE1pdHR3b2NoLCAyMi4gU2VwdGVtYmVyIDIwMjEsIDE4OjM1OjM4IENF
U1Qgc2NocmllYiBBbGV4IEJlZToKPj4+IEhpIENvbGluLAo+Pj4gQW0gMjIuMDkuMjEgdW0gMTM6
MjQgc2NocmllYiBDb2xpbiBLaW5nOgo+Pj4+IEZyb206IENvbGluIElhbiBLaW5nIDxjb2xpbi5r
aW5nQGNhbm9uaWNhbC5jb20+Cj4+Pj4KPj4+PiBUaGUgcG9pbnRlciBjb25uZWN0b3IgaXMgYmVp
bmcgYXNzaWduZWQgYSB2YWx1ZSB0aGF0IGlzIG5ldmVyCj4+Pj4gcmVhZCwgaXQgaXMgYmVpbmcg
dXBkYXRlZCBpbW1lZGlhdGVseSBhZnRlcndhcmRzLiBUaGUgYXNzaWdubWVudAo+Pj4+IGlzIHJl
ZHVuZGFudCBhbmQgY2FuIGJlIHJlbW92ZWQuCj4+PiBUaGUgcG9pbnRlciB0byB0aGUgY29ubmVj
dG9yIGlzIHVzZWQgaW4gcm9ja2NoaXBfcmdiX2ZpbmkgZm9yCj4+PiBkcm1fY29ubmVjdG9yX2Ns
ZWFudXAuCj4+PiBJdCdzIHByZXR0eSBtdWNoIHRoZSBzYW1lIGZvciB0aGUgZW5jb2RlciwgYnR3
Lgo+PiBJIHRoaW5rIHRoZSBpc3N1ZSBpcyBtb3JlIHRoZSB0d28gbGluZXMKPj4KPj4gwqDCoMKg
wqBjb25uZWN0b3IgPSAmcmdiLT5jb25uZWN0b3I7Cj4+IMKgwqDCoMKgwqAgY29ubmVjdG9yID0g
ZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdChyZ2ItPmRybV9kZXYsIGVuY29kZXIpOwo+Pgo+PiBo
ZW5jZSB0aGUgY29ubmVjdG9yID0gJnJnYi0+Y29ubmVjdG9yIGJlaW5nIG92ZXJ3cml0dGVuIGlt
bWVkaWF0ZWx5IAo+PiBhZnRlcgo+Pgo+PiBOb3cgdGhhdCBJIGxvb2sgYXQgaXQgYWdhaW4sIHRo
ZSB3aG9sZSBhcHByb2FjaCBsb29rcyBzdHJhbmdlLgo+PiBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9p
bml0KCkgY3JlYXRlcyB0aGUgY29ubmVjdG9yIHN0cnVjdHVyZSBhbmQKPj4gcmV0dXJucyBhIHBv
aW50ZXIgdG8gaXQuCj4KPiBUb3RhbGx5IGFncmVlZC4KPgo+IFRoZSBtYWluIHJlYXNvbiBJIHdh
cyBkb2luZyBpdCB0aGF0IHdheSwgd2FzIHRoZSB3YXkgaXQgd2FzIGRvbmUgCj4gYWxyZWFkeSBp
biByb2NrY2hpcF9sdmRzLmMsIHdoZXJlIHRoZSBjb25uZWN0b3Igd2FzIGFscmVhZHkgZXhpc3Rl
bnQgCj4gaW4gdGhlIHN0cnVjdCByb2NrY2hpcF9sdmRzIChhbmQgd2FzIGFscmVhZHkgdXNlZCBp
biB0aGUgcGFuZWwtY2FzZSAtIAo+IGFsbCBwbGFjZXMgd2hlcmUgaXQgaXMgdXNlZCBhY2NlcHQg
cG9pbnRlcnMgYWxzbywgYnR3KSBhbmQgaXMgKm5vKiAKPiBwb2ludGVyIC0gYW5kIGlzIGRvbmUg
YWxyZWFkeSB0aGlzIHZlcnkgc3RyYW5nZSB3YXkuCj4KPiBJIHdhbnRlZCB0byByZS11c2UgaXQg
Zm9yIHRoZSBicmlkZ2UtY2FzZSBhbmQgZGlkbid0IHdhbnQgdG8gZGlmZmVyIGluIAo+IGNvZGlu
ZyBpbiByb2NrY2hpcC1yZ2IgdG8gbXVjaC4KPgo+IFRoZSBvbmx5IHJlYXNvbiBJIGNhbiB0aGlu
ayBvZiwgd2h5IGl0IHdhcyBkb25lIHRoYXQgd2F5IGlzLCB0aGF0IHdlIAo+IG1pZ2h0IG5lZWQg
YSBwb2ludGVyIHRvIGEgZnVsbHkgaW5pdGlhbGl6ZWQgc3RydWN0IGRybV9jb25uZWN0b3IgZm9y
IAo+IHNvbWUgcmVhc29uIChkcm1fY29ubmVjdG9yX2NsZWFudXAgPyksIHdoYXQgd2Ugd291bGRu
J3QgaGF2ZSBpZiBoYXZlIAo+IGp1c3QgYSBwb2ludGVyIGFuZCBzb21ldGhpbmcgZ29lcyB3cm9u
ZyBiZWZvcmUgZHJtX2Nvbm5lY3Rvcl9pbml0IAo+IHJlc3BlY3Rpdmx5IGRybV9icmlkZ2VfY29u
bmVjdG9yX2luaXQuCj4KPiBBbGV4Cj4KPgo+PiBTbyB0aGUgZmlyc3QgbGluZSBiZWxvdyBzZXRz
IHRoZSBjb25uZWN0b3IgcG9pbnRlciB0byBwb2ludCB0byB0aGUKPj4gJnJnYi0+Y29ubmVjdG9y
IGVsZW1lbnQgYW5kIHRoZSBzZWNvbmQgbGluZSB0aGVuIHNldCBhIGNvbXBsZXRlbHkKPj4gZGlm
ZmVyZW50IGFkZHJlc3MgaW50byBpdC4KPj4KPj4gU28gdGhlIGNvbm5lY3RvciBlbGVtZW50IGlu
IHJvY2tjaGlwX2x2ZHMgYW5kIHJvY2tjaGlwX3JnYiBzaG91bGQgCj4+IGFjdHVhbGx5Cj4+IGJl
Y29tZSBhIHBvaW50ZXIgaXRzZWxmIHRvIGhvbGQgdGhlIGNvbm5lY3RvciBlbGVtZW50IHJldHVy
bmVkIGZyb20KPj4gZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdCgpIC4KSXQgdHVybnMgb3V0LCBu
b3RoaW5nIGJhZCBoYXBwZW5zIChpLmUuIHJvY2tjaGlwX3JnYl9maW5pLCB0aGUgb25seSAKcGxh
Y2Ugd2hlcmUgdGhlIGNvbm5lY3RvciBpcyBhbHNvIHVzZWQsIGlzbid0IGNhbGxlZCBpZiAKcm9j
a2NoaXBfcmdiX2luaXQgZmFpbHMpIC0gc28gaXQgd2lsbCBiZSBPSyBpZiB3ZSBtYWtlIHRoZSBj
b25uZWN0b3IgYSAKcG9pbnRlciBpbiBzdHJ1Y3Qgcm9ja2NoaXBfcmdiLiBCdXQgd2UnbGwgbmVl
ZCB0byBrZWVwIGl0IGEgImZ1bGwiIApzdHJ1Y3QgZHJtX2Nvbm5lY3RvciBpbiBzdHJ1Y3Qgcm9j
a2NoaXBfbHZkcywgc2luY2UgaW4gY2FzZSBpdCdzIGEgCnBhbmVswqAgaXQgZ2V0cyBwcm9wZXJ0
aWVzIGFzc2lnZW5kIGJlZm9yZSBkcm1fY29ubmVjdG9yX2luaXQgaXMgY2FsbGVkIAphbmQgc2hv
dWxkIGZvciB0aGF0IHJlYXNvbiBpbml0aWFsaXplZCBiZWZvcmUuCgpJJ2xsIHNlbmQgYSBwYXRj
aCBzb29uLgoKQWxleAoKPj4KPj4KPj4gSGVpa28KPj4KPj4+IFJlZ2FyZHMsCj4+Pgo+Pj4gQWxl
eAo+Pj4+IEFkZHJlc3Nlcy1Db3Zlcml0eTogKCJVbnVzZWQgdmFsdWUiKQo+Pj4+IFNpZ25lZC1v
ZmYtYnk6IENvbGluIElhbiBLaW5nIDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+Cj4+Pj4gLS0t
Cj4+Pj4gwqDCoCBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfcmdiLmMgfCAxIC0K
Pj4+PiDCoMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4+Pj4KPj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3JnYi5jIAo+Pj4+IGIvZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3JnYi5jCj4+Pj4gaW5kZXggMDliZTk2Nzhm
MmJkLi4xOGZiODQwNjhhNjQgMTAwNjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL3JvY2tjaGlwX3JnYi5jCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX3JnYi5jCj4+Pj4gQEAgLTE1MCw3ICsxNTAsNiBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcmdi
ICpyb2NrY2hpcF9yZ2JfaW5pdChzdHJ1Y3QgCj4+Pj4gZGV2aWNlICpkZXYsCj4+Pj4gwqDCoMKg
wqDCoMKgIGlmIChyZXQpCj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgZ290byBlcnJfZnJlZV9l
bmNvZGVyOwo+Pj4+IMKgwqAgLcKgwqDCoCBjb25uZWN0b3IgPSAmcmdiLT5jb25uZWN0b3I7Cj4+
Pj4gwqDCoMKgwqDCoMKgIGNvbm5lY3RvciA9IGRybV9icmlkZ2VfY29ubmVjdG9yX2luaXQocmdi
LT5kcm1fZGV2LCBlbmNvZGVyKTsKPj4+PiDCoMKgwqDCoMKgwqAgaWYgKElTX0VSUihjb25uZWN0
b3IpKSB7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFJNX0RFVl9FUlJPUihkcm1fZGV2LT5k
ZXYsCj4+Pj4KPj4+Cj4+Cj4+Cj4+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
