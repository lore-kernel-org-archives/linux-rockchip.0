Return-Path: <SRS0=76ry=KN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F179C433ED
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 17:18:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7DB6F610A1
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 May 2021 17:18:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7DB6F610A1
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BZzX+UYtEl5QXDCt2POCwODq9A9f8gLmPAEfA/MZjg8=; b=AKEun6SsY+s65/MOlisz4CBA+
	xWe0/KB7JgYm5EiBlzx11oWeoLLiXA4j2YJ8ivUMmhVzZ9d2+aQgxsEN5XGga40kHlVNS+6Z5RGOG
	UO6ezcPXa4fDgAnRs0t28JCU9AmnhBZfnp5Cmwoat+NzsWHt5dL75hCScErJ33clw/GDM7epAaXIL
	sh9SVwIzbH3ErEA8hn9WzI4DT1XaQhTs9DcHOGwmtTTAPA4I84ER9BVRqM6JiFpBXblNtqUMvXPAu
	KKU4QPFL4fkwZ/5Pldxv2cww8+BmhO/ReEO9eTTpUTFwjN1GObFCL7Qqq5xCrIfeNYJEPnRoY1FBU
	iLIE2tu8Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lj3M7-001SPl-Pw; Tue, 18 May 2021 17:18:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj3M5-001SPJ-HO
 for linux-rockchip@desiato.infradead.org; Tue, 18 May 2021 17:18:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=qJf1xQ+28NnAlK43hj654qEgRrKzipkMXHBsgZzKcQQ=; b=y9Ksa0xUCyD1M7+OuERo70sFpi
 ZxVKplqpIFB7Xd5smNarv/z2ZqJ/oK2hTh/nWTc1vMbSFFQNplSH6jq9+dfG3ABuZQLsourjigRaj
 AR26hUrRzx9F6EhqL/LcolRvhE4+DcvJ/sBhLej0TrVRJ6VgGk3kJmyZkXsHbuf80jc4yh9BNy7Hw
 JulRUvdZUL+JoavlTIMITOVysOo1gmIp1iicATMTXlkvpVFoJCxjcVt4L3tuIPAXQCPvdczKUkpmB
 i1vmxSDvTHL7p4PTGg9LsBCOTafmReCrltg17auxsUhh5gxtV7D11NMNQQQZq2wTaYTzFK1CkmkyS
 y7CZte1g==;
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lj3M2-00EpjM-KC
 for linux-rockchip@lists.infradead.org; Tue, 18 May 2021 17:18:04 +0000
Received: by mail-qt1-x834.google.com with SMTP id m13so8002722qtk.13
 for <linux-rockchip@lists.infradead.org>; Tue, 18 May 2021 10:18:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ndufresne-ca.20150623.gappssmtp.com; s=20150623;
 h=message-id:subject:from:to:cc:date:in-reply-to:references
 :user-agent:mime-version:content-transfer-encoding;
 bh=qJf1xQ+28NnAlK43hj654qEgRrKzipkMXHBsgZzKcQQ=;
 b=jl6nkGRna7urQ78bL7v3bD+QWmlbdVa0MQHADOJeyhwz5p+pm3dVfDF4Te1IzBnPL7
 nlKlPY7CTKcz+kTFU2RxALOk9jUpTe/G/SvqO+4OskPULcE8x7GgnHABgk9/Rv2fkQlM
 rwghuG9qsgzsONAauvf0CRd9lzs9dI2raXJgGQDYKIdZXtN3zraMQXoz/Zly0TPeBva+
 eTiDhnjBoqmJ2MPmOAkfj3DEVLanSR3mRQiv7URcyEm/vqGpN9Adqqm0zmQdgKWvzbAd
 NlKOTlxFnfOBEBWDbE6gQwbfKR+L3/XaMIEMDs3Ct3jN/CcqK/lOXtr/fZqK0GPWIwMc
 /3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=qJf1xQ+28NnAlK43hj654qEgRrKzipkMXHBsgZzKcQQ=;
 b=L80GQHcpKzwB8o6zid8drEW9HvwSMa0BZ0AYHZXlUFMcD62fdk7XXaUpjFzmUzJD7F
 BVcVTjSTAt2ZBdt99IgHMz9W8b9DU3vBBs23ZbndS5bK4+A+mxFil+CG01sKmk8hmxzp
 khPjLoaQmG9xvVnTsW9Uw6c3OmiWIn+3Jf9KJihnY1C1hryyHyznpvYFWS2q14u5Flr3
 wegeC2l+jC5U9eGVuz4AmxVM8U84fuDTXMwifDB7dKZeJYTbAMK4irsoCtUqCq1itlZC
 YV3Vvvoj5rbhRzr1SB2k+c3/G5ANqXH6XEO3yJq2Am8lYKI5uXdZdxuO/JdAm8vpDS7Q
 uQrg==
X-Gm-Message-State: AOAM5311Neo7ehgqpggQNogJ/iIEtVp+6bh0p60WrjGoy32pcc0D3KRL
 Yn0WVoiLzDEm58lpRzplsDVgeA==
X-Google-Smtp-Source: ABdhPJwFCakSIEdHaGsprjjlr1VL3AJif3L4ZlgN9vty0qn+s/kb3sZ+RVbgOyQON0pjsh4rPin//A==
X-Received: by 2002:ac8:5846:: with SMTP id h6mr5915303qth.215.1621358278997; 
 Tue, 18 May 2021 10:17:58 -0700 (PDT)
Received: from nicolas-tpx395.localdomain (173-246-12-168.qc.cable.ebox.net.
 [173.246.12.168])
 by smtp.gmail.com with ESMTPSA id b3sm11931277qtg.55.2021.05.18.10.17.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 10:17:58 -0700 (PDT)
Message-ID: <a473ea02de9b54482c1d2c82db2e4c7512920022.camel@ndufresne.ca>
Subject: Re: [PATCH v10 6/9] media: uapi: Add a control for HANTRO driver
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil
 <hverkuil-cisco@xs4all.nl>, Benjamin Gaignard
 <benjamin.gaignard@collabora.com>,  p.zabel@pengutronix.de,
 mchehab@kernel.org, robh+dt@kernel.org,  shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com,  lee.jones@linaro.org,
 gregkh@linuxfoundation.org, mripard@kernel.org, 
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net, 
 emil.l.velikov@gmail.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devel@driverdev.osuosl.org, kernel@collabora.com, cphealy@gmail.com
Date: Tue, 18 May 2021 13:17:56 -0400
In-Reply-To: <f46b9c889914360348f218b45f10a06bd1bd8595.camel@collabora.com>
References: <20210420121046.181889-1-benjamin.gaignard@collabora.com>
 <20210420121046.181889-7-benjamin.gaignard@collabora.com>
 <a7c9fe23-2900-ac90-7131-21380fbfc793@xs4all.nl>
 <1cf94540-7f4d-0179-dd1e-0b82ee30f6d2@collabora.com>
 <815a4bd6-599b-cfb8-9ddc-efa4b7092c23@xs4all.nl>
 <f46b9c889914360348f218b45f10a06bd1bd8595.camel@collabora.com>
User-Agent: Evolution 3.40.1 (3.40.1-1.fc34) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_101802_672617_7DAD4261 
X-CRM114-Status: GOOD (  48.86  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TGUgZGltYW5jaGUgMTYgbWFpIDIwMjEgw6AgMjA6MDQgLTAzMDAsIEV6ZXF1aWVsIEdhcmNpYSBh
IMOpY3JpdMKgOgo+IEhpIEhhbnMsCj4gCj4gT24gVGh1LCAyMDIxLTA1LTA2IGF0IDE0OjUwICsw
MjAwLCBIYW5zIFZlcmt1aWwgd3JvdGU6Cj4gPiBPbiAwNS8wNS8yMDIxIDE3OjIwLCBCZW5qYW1p
biBHYWlnbmFyZCB3cm90ZToKPiA+ID4gCj4gPiA+IExlIDA1LzA1LzIwMjEgw6AgMTY6NTUsIEhh
bnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+ID4gPiA+IE9uIDIwLzA0LzIwMjEgMTQ6MTAsIEJlbmph
bWluIEdhaWduYXJkIHdyb3RlOgo+ID4gPiA+ID4gVGhlIEhFVkMgSEFOVFJPIGRyaXZlciBuZWVk
cyB0byBrbm93IHRoZSBudW1iZXIgb2YgYml0cyB0byBza2lwIGF0Cj4gPiA+ID4gPiB0aGUgYmVn
aW5uaW5nIG9mIHRoZSBzbGljZSBoZWFkZXIuCj4gPiA+ID4gPiBUaGF0IGlzIGEgaGFyZHdhcmUg
c3BlY2lmaWMgcmVxdWlyZW1lbnQgc28gY3JlYXRlIGEgZGVkaWNhdGVkIGNvbnRyb2wKPiA+ID4g
PiA+IGZvciB0aGlzIHB1cnBvc2UuCj4gPiA+ID4gPiAKPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6
IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+ID4g
PiA+ID4gLS0tCj4gPiA+ID4gPiDCoCAuLi4vdXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2hh
bnRyby5yc3TCoMKgwqAgfCAxOSArKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gPiDCoCAuLi4v
dXNlcnNwYWNlLWFwaS9tZWRpYS9kcml2ZXJzL2luZGV4LnJzdMKgwqDCoMKgIHzCoCAxICsKPiA+
ID4gPiA+IMKgIGluY2x1ZGUvbWVkaWEvaGV2Yy1jdHJscy5owqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgfCAxMyArKysrKysrKysrKysrCj4gPiA+ID4gPiDCoCAzIGZpbGVz
IGNoYW5nZWQsIDMzIGluc2VydGlvbnMoKykKPiA+ID4gPiA+IMKgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBEb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0Cj4g
PiA+ID4gPiAKPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1h
cGkvbWVkaWEvZHJpdmVycy9oYW50cm8ucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBp
L21lZGlhL2RyaXZlcnMvaGFudHJvLnJzdAo+ID4gPiA+ID4gbmV3IGZpbGUgbW9kZSAxMDA2NDQK
PiA+ID4gPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uY2Q5NzU0YjRlMDA1Cj4gPiA+ID4gPiAtLS0g
L2Rldi9udWxsCj4gPiA+ID4gPiArKysgYi9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkvbWVk
aWEvZHJpdmVycy9oYW50cm8ucnN0Cj4gPiA+ID4gPiBAQCAtMCwwICsxLDE5IEBACj4gPiA+ID4g
PiArLi4gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAKPiA+ID4gPiA+ICsKPiA+ID4g
PiA+ICtIYW50cm8gdmlkZW8gZGVjb2RlciBkcml2ZXIKPiA+ID4gPiA+ICs9PT09PT09PT09PT09
PT09PT09PT09PT09PT0KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICtUaGUgSGFudHJvIHZpZGVvIGRl
Y29kZXIgZHJpdmVyIGltcGxlbWVudHMgdGhlIGZvbGxvd2luZyBkcml2ZXItc3BlY2lmaWMgY29u
dHJvbHM6Cj4gPiA+ID4gPiArCj4gPiA+ID4gPiArYGBWNEwyX0NJRF9IQU5UUk9fSEVWQ19TTElD
RV9IRUFERVJfU0tJUCAoaW50ZWdlcilgYAo+ID4gPiA+ID4gK8KgwqDCoCBTcGVjaWZpZXMgdG8g
SGFudHJvIEhFVkMgdmlkZW8gZGVjb2RlciBkcml2ZXIgdGhlIG51bWJlciBvZiBkYXRhIChpbiBi
aXRzKSB0bwo+ID4gPiA+ID4gK8KgwqDCoCBza2lwIGluIHRoZSBzbGljZSBzZWdtZW50IGhlYWRl
ci4KPiA+ID4gPiA+ICvCoMKgwqAgSWYgbm9uLUlEUiwgdGhlIGJpdHMgdG8gYmUgc2tpcHBlZCBn
byBmcm9tIHN5bnRheCBlbGVtZW50ICJwaWNfb3V0cHV0X2ZsYWciCj4gPiA+ID4gPiArwqDCoMKg
IHRvIGJlZm9yZSBzeW50YXggZWxlbWVudCAic2xpY2VfdGVtcG9yYWxfbXZwX2VuYWJsZWRfZmxh
ZyIuCj4gPiA+ID4gPiArwqDCoMKgIElmIElEUiwgdGhlIHNraXBwZWQgYml0cyBhcmUganVzdCAi
cGljX291dHB1dF9mbGFnIgo+ID4gPiA+ID4gK8KgwqDCoCAoc2VwYXJhdGVfY29sb3VyX3BsYW5l
X2ZsYWcgaXMgbm90IHN1cHBvcnRlZCkuCj4gPiA+ID4gSSdtIG5vdCB2ZXJ5IGtlZW4gb24gdGhp
cy4gV2l0aG91dCB0aGlzIGluZm9ybWF0aW9uIHRoZSB2aWRlbyBkYXRhIGNhbm5vdCBiZQo+ID4g
PiA+IGRlY29kZWQsIG9yIHdpbGwgaXQganVzdCBiZSBzdWJvcHRpbWFsPwo+ID4gPiAKPiA+ID4g
V2l0aG91dCB0aGF0IGluZm9ybWF0aW9uIHRoZSB2aWRlbyBjYW4ndCBiZSBkZWNvZGVkLgo+ID4g
PiAKPiA+ID4gPiAKPiA+ID4gPiBUaGUgcHJvYmxlbSBpcyB0aGF0IGEgZ2VuZXJpYyBkZWNvZGVy
IHdvdWxkIGhhdmUgdG8ga25vdyB0aGF0IHRoZSBIVyBpcyBhIGhhbnRybywKPiA+ID4gPiBhbmQg
dGhlbiBjYWxsIHRoaXMgY29udHJvbC4gSWYgdGhleSBkb24ndCAoYW5kIGFyZSB0ZXN0aW5nIG9u
IG5vbi1oYW50cm8gSFcpLCB0aGVuCj4gPiA+ID4gaXQgd29uJ3Qgd29yaywgdGh1cyBkZWZlYXRp
bmcgdGhlIHB1cnBvc2Ugb2YgdGhlIEhXIGluZGVwZW5kZW50IGRlY29kZXIgQVBJLgo+ID4gPiA+
IAo+ID4gPiA+IFNpbmNlIGhhbnRybyBpcyB3aWRlbHkgdXNlZCwgYW5kIGlmIHRoZXJlIGlzIG5v
IG90aGVyIHdheSB0byBkbyB0aGlzIGJlc2lkZSBleHBsaXRlbHkKPiA+ID4gPiBzZXR0aW5nIHRo
aXMgY29udHJvbCwgdGhlbiBwZXJoYXBzIHRoaXMgc2hvdWxkIGJlIHBhcnQgb2YgdGhlIHN0YW5k
YXJkIEhFVkMgQVBJLgo+ID4gPiA+IE5vbi1oYW50cm8gZHJpdmVycyB0aGF0IGRvIG5vdCBuZWVk
IHRoaXMgY2FuIGp1c3Qgc2tpcCBpdC4KPiA+ID4gCj4gPiA+IEV2ZW4gaWYgSSBwdXQgdGhpcyBw
YXJhbWV0ZXIgaW4gZGVjb2RlX3BhcmFtcyBzdHJ1Y3R1cmUgdGhhdCB3b3VsZCBtZWFucyB0aGF0
IGEgZ2VuZXJpYwo+ID4gPiB1c2VybGFuZCBkZWNvZGVyIHdpbGwgaGF2ZSB0byBrbm93IGhvdyB0
aGUgY29tcHV0ZSB0aGlzIHZhbHVlIGZvciBoYW50cm8gSFcgc2luY2UgaXQKPiA+ID4gaXNuJ3Qg
c29tZXRoaW5nIHRoYXQgY291bGQgYmUgZG9uZSBvbiBrZXJuZWwgc2lkZS4KPiA+IAo+ID4gQnV0
IHNpbmNlIGhhbnRybyBpcyB2ZXJ5IGNvbW1vbiwgYW55IHVzZXJsYW5kIGRlY29kZXIgd2lsbCBu
ZWVkIHRvIGNhbGN1bGF0ZSB0aGlzIGFueXdheS4KPiA+IFNvIHBlcmhhcHMgaXQgaXMgYmV0dGVy
IHRvIGhhdmUgdGhpcyBhcyBwYXJ0IG9mIHRoZSBkZWNvZGVfcGFyYW1zPwo+ID4gCj4gPiBJJ2Qg
bGlrZSB0byBrbm93IHdoYXQgb3RoZXJzIHRoaW5rIGFib3V0IHRoaXMuCj4gPiAKPiAKPiBBcyB5
b3Uga25vdywgSSdtIG5vdCBhIGZhbiBvZiBjYXJyeWluZyB0aGVzZSAidW5zdGFibGUiIEFQSXMg
YXJvdW5kLgo+IEkga25vdyBpdCdzIGJldHRlciB0aGFuIG5vdGhpbmcsIGJ1dCBJIGZlZWwgdGhl
eSBjcmVhdGUgdGhlIGlsbHVzaW9uCj4gb2YgdGhlIGludGVyZmFjZSBiZWluZyBzdXBwb3J0ZWQg
aW4gbWFpbmxpbmUuIFNpbmNlIGl0J3MgdW5zdGFibGUsCj4gaXQncyBkaWZmaWN1bHQgZm9yIGFw
cGxpY2F0aW9ucyB0byBhZG9wdCB0aGVtLgo+IAo+IEFzIE5pY29sYXMgbWVudGlvbmVkLCB0aGlz
IG1lYW5zIG5laXRoZXIgRkZtcGVnIG5vciBHU3RyZWFtZXIgd2lsbCBhZG9wdAo+IHRoZXNlIEFQ
SXMsIHdoaWNoIHdvcnJpZXMgbWUsIGFzIHRoYXQgbWVhbnMgd2UgbG9zZSB0d28gbWFqb3IgdXNl
ciBiYXNlcy4KPiAKPiBNeSBwZXJzb25hbCB0YWtlIGZyb20gdGhpcywgaXMgdGhhdCB3ZSBuZWVk
IHRvIGZpbmQgd2F5cyB0byBzdGFiaWxpemUKPiBvdXIgc3RhdGVsZXNzIGNvZGVjIEFQSXMgaW4g
bGVzcyB0aW1lIGFuZCBwZXJoYXBzIHdpdGggbGVzcyBlZmZvcnQuCj4gCj4gSU1PLCBhIGxlc3Mg
c3RpZmYgaW50ZXJmYWNlIGNvdWxkIGhlbHAgdXMgaGVyZSwgYW5kIHRoYXQncyB3aHkgSSB0aGlu
awo+IGhhdmluZyBoYXJkd2FyZS1zcGVjaWZpYyBjb250cm9scyBjYW4gYmUgdXNlZnVsLiBIYXJk
d2FyZSBkZXNpZ25lcnMKPiBjYW4gYmUgc28gY3JlYXRpdmUgOikKPiAKPiBJJ20gbm90IGFnYWlu
c3QgaW50cm9kdWNpbmcgdGhpcyBzcGVjaWZpYyBwYXJhbWV0ZXIgaW4KPiB2NGwyX2N0cmxfaGV2
Y19jb2RlY19wYXJhbXMsIGFyZ3VpbmcgdGhhdCBIYW50cm8gaXMgd2lkZWx5IHVzZWQsCj4gYnV0
IEknZCBsaWtlIHVzIHRvIGJlIG9wZW4gdG8gaGFyZHdhcmUtc3BlY2lmaWMgY29udHJvbHMgYXMg
YSB3YXkKPiB0byBleHRlbmQgdGhlIEFQSXMgc2VhbWxlc3NseS4KPiAKPiBBcHBsaWNhdGlvbnMg
d29uJ3QgaGF2ZSB0byBfa25vd18gd2hhdCBoYXJkd2FyZSB0aGV5IGFyZSBydW5uaW5nIG9uLAo+
IHRoZXkgY2FuIGp1c3QgdXNlIFZJRElPQ19RVUVSWUNUUkwgdG8gZmluZCBvdXQgd2hpY2ggY29u
dHJvbHMgYXJlIG5lZWRlZC4KCkNhbiB5b3UgZXh0ZW5kIG9uIHRoaXMsIHBlcmhhcHMgd2UgbmVl
ZCBhbiBSRkMgZm9yIHRoaXMgc3BlY2lmaWMgbWVjaGFuaXNtLiBJCmRvbid0IGltbWVkaWF0bHkg
c2VlIGhvdyBJIGNvdWxkIGVudW1lcmF0ZSBjb250cm9scyBhbmQgZmlndXJlLW91dCB3aGljaCBv
bmUgYXJlCm5lZWRlZC4gUGVyaGFwcyB3ZSBuZWVkIHRvIGFkZCBuZXcgY29udHJvbCBmbGFncyBm
b3IgbWFuZGF0b3J5IGNvbnRyb2wgPyBUaGlzCndheSB1c2Vyc3BhY2UgY291bGQgZGV0ZWN0IHVu
c3VwcG9ydGVkIEhXIGlmIGl0IGZpbmRzIGEgbWFuZGF0b3J5IGNvbnRyb2wgdGhhdAppdCBkb2Vz
IG5vdCBrbm93IGFib3V0ID8KCj4gCj4gVGhhbmtzLAo+IEV6ZXF1aWVsCj4gCgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
