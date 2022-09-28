Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E76FC32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 15:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6oRQatBl7AzcN8mEsQrJxZkIRJ7ABFE3V4LesHIWcA8=; b=eo/nE4kkwDhPoX
	jNm5ALKaoqELodQIu8FJXPHED09BcUwgKsQa+1bA8nTPdgG5sIsdF/1hxGo0N2IgbsgjXIx6gYHMr
	Cr1/Hmxwtn1SE/xZufUI4tbVctVfXullLJZrVK4RoGEUf17CxzfGtILqAGGlZr2ZQot7qPjBJFk8V
	K8kPJKgPkomDD0GwubZo49ul/alqAG6uY+WnMg+sFfmLoQZsoCS9fwMy1Evqco85uOTxmO4um563O
	PReSMzlxuuPjkL8bPkSD4vgNkeKw/g+HFP6IDopLKVotMS0i+2R0hyk4E0RB0DkaohtOaeNA/2BIr
	3IrfmhU7GKX9yF7SHFWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYq5-00Grwh-NC; Wed, 28 Sep 2022 15:19:09 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYq2-00Gru3-UP
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 15:19:08 +0000
Received: by mail-ed1-x533.google.com with SMTP id v4so400956edd.5
        for <linux-rockchip@lists.infradead.org>; Wed, 28 Sep 2022 08:18:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=83ANzPhUBDAvBVhFrZlJ/Dy3P0GTE4v4S/j3A1WMvaE=;
        b=q0u/L5c0l1YAgQn410oPBSepSxTA6PiegtWUsMHDwT4vYp64XVJcCVxJ07LRKYz4XW
         umNMNXvFCFEGsYfYCeRiKZPwGgw8tv772twmaBZvhp7smSAzg2oZqUtbrCsLkgSO9DNZ
         kWltHFbjC/EMx9F0DMxHIfS5+5QiVsOizf1lfbgrOWOCxXvibHtcsXp31KPDXnGijoU9
         s+z0XpNs3GBSorzROcOVTc0b7zwlH/233WV0L9+hVTnncR+wH4wHezND+YfVmFsar4/3
         wWHB9+DUQthTYN+Au+9+bydQMqXlhw/ZPmSaVIbYDEoR1yBtTYVc2FlDYnSORsEzA/zG
         nz4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=83ANzPhUBDAvBVhFrZlJ/Dy3P0GTE4v4S/j3A1WMvaE=;
        b=GuXGhop/2oH90vZnfHjOodJHLvZO/u5TMBxpmOSStrbUQQX1jBiOI4M5A14X3gOMv+
         ijhOUDc5apC2PSvWdMY6TE9aAsVJ/lddSQXq254iNKHS6HdLH+AMEv0O39k2yvmmWgto
         JsYIaewbcSNC3qwr9+9qOCqamqWCccw9GeASDt767OA0zw5lWoM+nLcMB3uStG5dBHOn
         KXh3fKacpMARG+kBVZ9abX/lZ6jfG30Rk6ZGXE8E5zqRP+vlnuoXQpRVkvmlb0YLFt9c
         pZVqCqjW60SYpic+PvT3yByHQ6pGz3UuDc0fqv9ZpccQBzGxPH/yic4Lk7pRT3ebv72E
         Njvw==
X-Gm-Message-State: ACrzQf1vkNN1MEUyNhJpudETMfXz0aYY18bWuWdsRYTG4Ar3cl7sVS79
	IN9txw0ug+x09oTSWUxXdmk=
X-Google-Smtp-Source: AMsMyM5B/FsKRlMcjZuQlqNk1dOP5mS51TCAI4tCXrbakuCsjkHCUFWYXjL5Gfh4MC8OWax5E2FLag==
X-Received: by 2002:a05:6402:1053:b0:455:27b7:f1 with SMTP id e19-20020a056402105300b0045527b700f1mr31682046edu.370.1664378331003;
        Wed, 28 Sep 2022 08:18:51 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id la22-20020a170907781600b00741a0c3f4cdsm2550482ejc.189.2022.09.28.08.18.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Sep 2022 08:18:50 -0700 (PDT)
Message-ID: <2ae321ff-ffe5-6f45-46b6-05259087bb81@gmail.com>
Date: Wed, 28 Sep 2022 17:18:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for
 rk3588
Content-Language: en-US
To: Thierry Reding <thierry.reding@gmail.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, linux-pwm@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>
References: <20220901135523.52151-1-sebastian.reichel@collabora.com>
 <1662059695.095333.2226883.nullmailer@robh.at.kernel.org>
 <20220913091202.2oawzrq2u5iiz6hq@pengutronix.de>
 <20220913141601.fi6pl2xdo4xmtw6t@mercury.elektranox.org>
 <YzQ0jTmJCBwV+x2y@orome>
 <20220928130634.x5cfkwegwgqer2xx@mercury.elektranox.org>
 <YzRSpGwUQIFT2A3g@orome>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <YzRSpGwUQIFT2A3g@orome>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_081907_000925_A5869002 
X-CRM114-Status: GOOD (  27.58  )
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

CgpPbiA5LzI4LzIyIDE1OjU2LCBUaGllcnJ5IFJlZGluZyB3cm90ZToKPiBPbiBXZWQsIFNlcCAy
OCwgMjAyMiBhdCAwMzowNjozNFBNICswMjAwLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPj4g
SGksCj4+Cj4+IE9uIFdlZCwgU2VwIDI4LCAyMDIyIGF0IDAxOjQ4OjI5UE0gKzAyMDAsIFRoaWVy
cnkgUmVkaW5nIHdyb3RlOgo+Pj4gT24gVHVlLCBTZXAgMTMsIDIwMjIgYXQgMDQ6MTY6MDFQTSAr
MDIwMCwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cj4+Pj4gSGksCj4+Pj4KPj4+PiBPbiBUdWUs
IFNlcCAxMywgMjAyMiBhdCAxMToxMjowMkFNICswMjAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90
ZToKPj4+Pj4gSGVsbG8gUm9iLAo+Pj4+Pgo+Pj4+PiBPbiBUaHUsIFNlcCAwMSwgMjAyMiBhdCAw
MjoxNDo1NVBNIC0wNTAwLCBSb2IgSGVycmluZyB3cm90ZToKPj4+Pj4+IE9uIFRodSwgMDEgU2Vw
IDIwMjIgMTU6NTU6MjMgKzAyMDAsIFNlYmFzdGlhbiBSZWljaGVsIHdyb3RlOgo+Pj4+Pj4+IEFk
ZCAicm9ja2NoaXAscmszNTg4LXB3bSIgY29tcGF0aWJsZSBzdHJpbmcgZm9yIFBXTSBub2RlcyBm
b3VuZAo+Pj4+Pj4+IG9uIGEgcmszNTg4IHBsYXRmb3JtLgo+Pj4+Pj4+Cj4+Pj4+Pj4gU2lnbmVk
LW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5j
b20+Cj4+Pj4+Pj4gLS0tCj4+Pj4+Pj4gTm8gZHJpdmVyIGNoYW5nZXMgcmVxdWlyZWQuCj4+Pj4+
Pj4gLS0tCj4+Pj4+Pj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wd20vcHdt
LXJvY2tjaGlwLnlhbWwgfCAxICsKPj4+Pj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9u
KCspCj4+Pj4+Pj4KPj4+Pj4+Cj4+Pj4+PiBSdW5uaW5nICdtYWtlIGR0YnNfY2hlY2snIHdpdGgg
dGhlIHNjaGVtYSBpbiB0aGlzIHBhdGNoIGdpdmVzIHRoZQo+Pj4+Pj4gZm9sbG93aW5nIHdhcm5p
bmdzLiBDb25zaWRlciBpZiB0aGV5IGFyZSBleHBlY3RlZCBvciB0aGUgc2NoZW1hIGlzCj4+Pj4+
PiBpbmNvcnJlY3QuIFRoZXNlIG1heSBub3QgYmUgbmV3IHdhcm5pbmdzLgo+Pj4+Pj4KPj4+Pj4+
IE5vdGUgdGhhdCBpdCBpcyBub3QgeWV0IGEgcmVxdWlyZW1lbnQgdG8gaGF2ZSAwIHdhcm5pbmdz
IGZvciBkdGJzX2NoZWNrLgo+Pj4+Pj4gVGhpcyB3aWxsIGNoYW5nZSBpbiB0aGUgZnV0dXJlLgo+
Pj4+Pgo+Pj4+PiBJcyB0aGlzIGEgbGlzdCBvZiAqbmV3KiB3YXJuaW5ncywgb3IgaXMgdGhlIHJl
cG9ydCAoc29tZXdoYXQpIG9ydGhvZ29uYWwKPj4+Pj4gdG8gdGhlIGFjdHVhbCBjaGFuZ2UgYW5k
IHlvdSBqdXN0IHVzZWQgdGhlIG9wcG9ydHVuaXR5IHRoYXQgc29tZW9uZQo+Pj4+PiB0b3VjaGVk
IHRoZSBwd20tcm9ja2NoaXAgYmluZGluZyB0byBwb2ludCBvdXQgdGhhdCB0aGVyZSBpcyBzb21l
IGNsZWFudXAKPj4+Pj4gdG8gZG8/Cj4+Pj4+Cj4+Pj4+PiBGdWxsIGxvZyBpcyBhdmFpbGFibGUg
aGVyZTogaHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy9wYXRjaC8KPj4+Pj4KPj4+Pj4gSG0s
IHRoYXQgZ2l2ZXMgbWUgYSA0MDQuCj4+Pj4KPj4+PiBUaGlzIGlzIGFuIGV4aXN0aW5nIHByb2Js
ZW0gd2l0aCB0aGUgcnYxMTA4IGJpbmRpbmcuCj4+Pj4gVGhlIHJrMzU4OCBkb2VzIG5vdCBoYXZl
IHB3bSBpbnRlcnJ1cHRzLgo+Pj4KCkkgY2FuIHByb3ZpZGUgRFQgYW5kIFlBTUwgY2hhbmdlcywg
YnV0IEkgcGFzcyBmb3IgY2hhbmdlcyB0byB0aGUgY3VycmVudGx5IHRvIG1lIHVua25vd24gUFdN
IGZyYW1ld29yayBhbmQgbWlzc2luZyBoYXJkd2FyZS4KCkpvaGFuCgo+Pgo+PiBJIGFzc3VtZSB0
aGlzIHdpbGwgYmUgdGFrZW4gY2FyZSBvZiB3aXRoIHRoZSByazMxMjggcGF0Y2hzZXQsIHNpbmNl
Cj4+IHRoYXQgaXMgYWZmZWN0ZWQgYW55d2F5czoKPj4KPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5v
cmcvbGludXgtcHdtL2Y1ZGQwZWU0LWQ5N2UtZDg3OC1mZmRlLWMwNmU5YjIzM2UzOEBnbWFpbC5j
b20vCj4gCj4gVGhhdCBwYXRjaCBpcyBhbHJlYWR5IGFja2VkIGFuZCBJJ3ZlIHB1bGxlZCBpdCBp
biwgc28gYmV0dGVyIG1ha2UgaXQgYQo+IHNlcGFyYXRlIHBhdGNoLgo+IAo+IFRoZSBwb2ludCBJ
IHdhcyB0cnlpbmcgdG8gbWFrZSBpcyB0aGF0IHNvbWVib2R5IG5lZWRzIHRvIGZpeCB0aGlzLAo+
IG90aGVyd2lzZSB0aGUgYXV0b21hdGVkIGNoZWNrcyBhcmUgbm90IGdvaW5nIHRvIGJlIHVzZWZ1
bC4gU28gc2F5aW5nCj4gdGhpbmdzIGxpa2UgInRoaXMgaXMgYW4gZXhpc3RpbmcgcHJvYmxlbSBh
bmQgdGhlIG5ldyBjb21wYXRpYmxlIGlzIG5vdAo+IGFmZmVjdGVkIiBpcyBub3QgaGVscGZ1bC4K
PiAKPiBUaGllcnJ5Cj4gCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
