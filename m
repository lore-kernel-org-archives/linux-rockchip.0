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
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1064C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 17:31:57 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 648A661168
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Sep 2021 17:31:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 648A661168
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FrPo2WdDchDBoNHUbsMmxHoCfAY1vp/MGfAyRr/jt/A=; b=0+2nor7CjDMbEVSPbguarS36sX
	rEVsZUgEJkLzfFxf/ttj63CVWOgdBXbrAg/C2QM/qUC94mU71yxLKEs41UhM7NGyjhuVgxRXD7TPD
	ewW1pGM/pl4xQREz+bAFCVgjMHXbLbdMlYfWu8WJY4k5FwlZ6zzBAwBBMso7ViY/t2og0txgWMlz+
	j3TDW7bXc+XpZA57YvIWyyowjQbQbY4jJychi5UZqcyUcyMw+9PzF4IMpaFoY0YQIIqFakGMpst7f
	FE9MjIsaT8oeBvTxo2gBls+PvmgvpABs2s9aQpTXjh1iVLJWk03YZrn1Uf/4T7PouoJXcoNEb70wQ
	etycRChg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT665-009MBZ-29; Wed, 22 Sep 2021 17:31:53 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT661-009M9c-Ud; Wed, 22 Sep 2021 17:31:51 +0000
Received: by mail-wr1-x42a.google.com with SMTP id t8so9293305wri.1;
 Wed, 22 Sep 2021 10:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=q6yz4Rj2Yb85SboOfaCfWVjp3ckXrv2v2xvRSlhbhS4=;
 b=oCKd9Kb2l0T6kb81SffKU7Phf2iYRvRnxIT9JH9nYrk325y43X37E+7vvs+57M5SEJ
 AoUtGfuLNT/8cwHrOJoNZdAPm2/Ki7Ssz0myeaw/ks593qoTVcuzK9OXXt8pMihLGxcF
 7jEHPqzBVGOgzXSqV/ON5cWqaJqch7QKj9vHzJDIYngQA38DV78aaVLGeyIA1P5Q8XAR
 ZXiKKjSdMsJvhnp9V0M+NVTlf8Hfrfddq018WwJL3w3f5d+iXqYH4pOk/TJJXQRXvzYs
 xC9237Rw2w4GSK7BHToMVnl/BImKOuDposDftkN9+BujcUM0ENqNBrINAOQ2QmzaiYiS
 K/6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=q6yz4Rj2Yb85SboOfaCfWVjp3ckXrv2v2xvRSlhbhS4=;
 b=bP9kY+E4d+qUImBxSO349w6B2yqvQDDN/cVd1GIOGpxAMp+NqG9kVlyct5SZiIYYAO
 dA3PPB9q5F65rD5RhkYtPEB3PVr7Hfs/v1Z6nW4SrmQIch1bxLcsunogPZrf6hzaT7IV
 2z2/85aQcnkCLMmv7qgGek4p7DRPIRcwpGw0+bSToWCptnBysnDSuRZT3ZQJk8iTaUcs
 8+ouMBZG46L1wEobMMgSeOV9wZylhMBkMWlXDXUBPsg881vHKKkk+OqwGsl7O3SyGxlZ
 ebazc3LABLxTxLosIYn1QdjYU5pfgxveSSa9FACmv7XAUqyeMR+LxgGPbd1exjFD5oG/
 U1Mw==
X-Gm-Message-State: AOAM530+SILIAAZsdDWbNlOP1IDQjCSVaeFqFC6mG8S23BeJQdPvTDRQ
 NBZiWfuL/hCTQlGOnlwtfA==
X-Google-Smtp-Source: ABdhPJyRmt5dYYYJNhPvrXrmHChSBEJiG4WfdKirLrl5GZkSDWEHCFqhj5pTQ5RoSrnGMXkGTlXcvQ==
X-Received: by 2002:adf:f108:: with SMTP id r8mr195060wro.180.1632331908067;
 Wed, 22 Sep 2021 10:31:48 -0700 (PDT)
Received: from [192.168.200.23] (ip5b434083.dynamic.kabel-deutschland.de.
 [91.67.64.131])
 by smtp.gmail.com with ESMTPSA id q3sm1492343wmc.25.2021.09.22.10.31.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 22 Sep 2021 10:31:47 -0700 (PDT)
Subject: Re: [PATCH][next] drm/rockchip: Remove redundant assignment of
 pointer connector
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Colin King <colin.king@canonical.com>, Sandy Huang <hjc@rock-chips.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20210922112416.182134-1-colin.king@canonical.com>
 <27c79f7a-8e4c-fad8-c6cf-a89793f2e3c6@gmail.com> <22365175.EbdSka62eY@diego>
From: Alex Bee <knaerzche@gmail.com>
Message-ID: <6d18a1a6-37e3-41f9-ddd1-1dae33864d23@gmail.com>
Date: Wed, 22 Sep 2021 19:31:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <22365175.EbdSka62eY@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_103150_052615_FCFD26B8 
X-CRM114-Status: GOOD (  26.11  )
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

SGkgSGVpa28sCgpBbSAyMi4wOS4yMSB1bSAxODo0NSBzY2hyaWViIEhlaWtvIFN0w7xibmVyOgo+
IEhpIEFsZXgsCj4KPiBBbSBNaXR0d29jaCwgMjIuIFNlcHRlbWJlciAyMDIxLCAxODozNTozOCBD
RVNUIHNjaHJpZWIgQWxleCBCZWU6Cj4+IEhpIENvbGluLAo+PiBBbSAyMi4wOS4yMSB1bSAxMzoy
NCBzY2hyaWViIENvbGluIEtpbmc6Cj4+PiBGcm9tOiBDb2xpbiBJYW4gS2luZyA8Y29saW4ua2lu
Z0BjYW5vbmljYWwuY29tPgo+Pj4KPj4+IFRoZSBwb2ludGVyIGNvbm5lY3RvciBpcyBiZWluZyBh
c3NpZ25lZCBhIHZhbHVlIHRoYXQgaXMgbmV2ZXIKPj4+IHJlYWQsIGl0IGlzIGJlaW5nIHVwZGF0
ZWQgaW1tZWRpYXRlbHkgYWZ0ZXJ3YXJkcy4gVGhlIGFzc2lnbm1lbnQKPj4+IGlzIHJlZHVuZGFu
dCBhbmQgY2FuIGJlIHJlbW92ZWQuCj4+IFRoZSBwb2ludGVyIHRvIHRoZSBjb25uZWN0b3IgaXMg
dXNlZCBpbiByb2NrY2hpcF9yZ2JfZmluaSBmb3IKPj4gZHJtX2Nvbm5lY3Rvcl9jbGVhbnVwLgo+
PiBJdCdzIHByZXR0eSBtdWNoIHRoZSBzYW1lIGZvciB0aGUgZW5jb2RlciwgYnR3Lgo+IEkgdGhp
bmsgdGhlIGlzc3VlIGlzIG1vcmUgdGhlIHR3byBsaW5lcwo+Cj4gCWNvbm5lY3RvciA9ICZyZ2It
PmNvbm5lY3RvcjsKPiAgIAljb25uZWN0b3IgPSBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0KHJn
Yi0+ZHJtX2RldiwgZW5jb2Rlcik7Cj4KPiBoZW5jZSB0aGUgY29ubmVjdG9yID0gJnJnYi0+Y29u
bmVjdG9yIGJlaW5nIG92ZXJ3cml0dGVuIGltbWVkaWF0ZWx5IGFmdGVyCj4KPiBOb3cgdGhhdCBJ
IGxvb2sgYXQgaXQgYWdhaW4sIHRoZSB3aG9sZSBhcHByb2FjaCBsb29rcyBzdHJhbmdlLgo+IGRy
bV9icmlkZ2VfY29ubmVjdG9yX2luaXQoKSBjcmVhdGVzIHRoZSBjb25uZWN0b3Igc3RydWN0dXJl
IGFuZAo+IHJldHVybnMgYSBwb2ludGVyIHRvIGl0LgoKVG90YWxseSBhZ3JlZWQuCgpUaGUgbWFp
biByZWFzb24gSSB3YXMgZG9pbmcgaXQgdGhhdCB3YXksIHdhcyB0aGUgd2F5IGl0IHdhcyBkb25l
IGFscmVhZHkgCmluIHJvY2tjaGlwX2x2ZHMuYywgd2hlcmUgdGhlIGNvbm5lY3RvciB3YXMgYWxy
ZWFkeSBleGlzdGVudCBpbiB0aGUgCnN0cnVjdCByb2NrY2hpcF9sdmRzIChhbmQgd2FzIGFscmVh
ZHkgdXNlZCBpbiB0aGUgcGFuZWwtY2FzZSAtIGFsbCAKcGxhY2VzIHdoZXJlIGl0IGlzIHVzZWQg
YWNjZXB0IHBvaW50ZXJzIGFsc28sIGJ0dykgYW5kIGlzICpubyogcG9pbnRlciAtIAphbmQgaXMg
ZG9uZSBhbHJlYWR5IHRoaXMgdmVyeSBzdHJhbmdlIHdheS4KCkkgd2FudGVkIHRvIHJlLXVzZSBp
dCBmb3IgdGhlIGJyaWRnZS1jYXNlIGFuZCBkaWRuJ3Qgd2FudCB0byBkaWZmZXIgaW4gCmNvZGlu
ZyBpbiByb2NrY2hpcC1yZ2IgdG8gbXVjaC4KClRoZSBvbmx5IHJlYXNvbiBJIGNhbiB0aGluayBv
Ziwgd2h5IGl0IHdhcyBkb25lIHRoYXQgd2F5IGlzLCB0aGF0IHdlIAptaWdodCBuZWVkIGEgcG9p
bnRlciB0byBhIGZ1bGx5IGluaXRpYWxpemVkIHN0cnVjdCBkcm1fY29ubmVjdG9yIGZvciAKc29t
ZSByZWFzb24gKGRybV9jb25uZWN0b3JfY2xlYW51cCA/KSwgd2hhdCB3ZSB3b3VsZG4ndCBoYXZl
IGlmIGhhdmUgCmp1c3QgYSBwb2ludGVyIGFuZCBzb21ldGhpbmcgZ29lcyB3cm9uZyBiZWZvcmUg
ZHJtX2Nvbm5lY3Rvcl9pbml0IApyZXNwZWN0aXZseSBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0
LgoKQWxleAoKCj4gU28gdGhlIGZpcnN0IGxpbmUgYmVsb3cgc2V0cyB0aGUgY29ubmVjdG9yIHBv
aW50ZXIgdG8gcG9pbnQgdG8gdGhlCj4gJnJnYi0+Y29ubmVjdG9yIGVsZW1lbnQgYW5kIHRoZSBz
ZWNvbmQgbGluZSB0aGVuIHNldCBhIGNvbXBsZXRlbHkKPiBkaWZmZXJlbnQgYWRkcmVzcyBpbnRv
IGl0Lgo+Cj4gU28gdGhlIGNvbm5lY3RvciBlbGVtZW50IGluIHJvY2tjaGlwX2x2ZHMgYW5kIHJv
Y2tjaGlwX3JnYiBzaG91bGQgYWN0dWFsbHkKPiBiZWNvbWUgYSBwb2ludGVyIGl0c2VsZiB0byBo
b2xkIHRoZSBjb25uZWN0b3IgZWxlbWVudCByZXR1cm5lZCBmcm9tCj4gZHJtX2JyaWRnZV9jb25u
ZWN0b3JfaW5pdCgpIC4KPgo+Cj4gSGVpa28KPgo+PiBSZWdhcmRzLAo+Pgo+PiBBbGV4Cj4+PiBB
ZGRyZXNzZXMtQ292ZXJpdHk6ICgiVW51c2VkIHZhbHVlIikKPj4+IFNpZ25lZC1vZmYtYnk6IENv
bGluIElhbiBLaW5nIDxjb2xpbi5raW5nQGNhbm9uaWNhbC5jb20+Cj4+PiAtLS0KPj4+ICAgIGRy
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9yZ2IuYyB8IDEgLQo+Pj4gICAgMSBmaWxl
IGNoYW5nZWQsIDEgZGVsZXRpb24oLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3JnYi5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX3JnYi5jCj4+PiBpbmRleCAwOWJlOTY3OGYyYmQuLjE4ZmI4NDA2OGE2NCAxMDA2NDQK
Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9yZ2IuYwo+Pj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX3JnYi5jCj4+PiBAQCAtMTUwLDcg
KzE1MCw2IEBAIHN0cnVjdCByb2NrY2hpcF9yZ2IgKnJvY2tjaGlwX3JnYl9pbml0KHN0cnVjdCBk
ZXZpY2UgKmRldiwKPj4+ICAgIAlpZiAocmV0KQo+Pj4gICAgCQlnb3RvIGVycl9mcmVlX2VuY29k
ZXI7Cj4+PiAgICAKPj4+IC0JY29ubmVjdG9yID0gJnJnYi0+Y29ubmVjdG9yOwo+Pj4gICAgCWNv
bm5lY3RvciA9IGRybV9icmlkZ2VfY29ubmVjdG9yX2luaXQocmdiLT5kcm1fZGV2LCBlbmNvZGVy
KTsKPj4+ICAgIAlpZiAoSVNfRVJSKGNvbm5lY3RvcikpIHsKPj4+ICAgIAkJRFJNX0RFVl9FUlJP
Uihkcm1fZGV2LT5kZXYsCj4+Pgo+Pgo+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
