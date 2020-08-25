Return-Path: <SRS0=C56+=CD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7790AC433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2020 09:46:03 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C9EB22067C
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Aug 2020 09:46:02 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="aIQPaUBm";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rXlaG4lB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C9EB22067C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5engYDVIwrpfCtnziJQS3YDihQCwyuur9j1l86TQB88=; b=aIQPaUBm+vgpBk6z0a8foRqzr
	qXvwY38Y0RShx0mT+BasU4d1jDn4F76Q2CMHIDeBRa9BKbpbFQs53z++3HJ1SBY78E1sKWRqlD+QE
	H7sWlcUBwzapbBG+LsH74q1SmcpvAlexP6B6GptGPGCldzmO/YrYMcdB71bGPPC6Hi/jAAv3Y4NRk
	S0hoGwlOBRTqknPTtzIPWCUNijwQi6xXgZuspRzOLhKM71on/uktNlE+DrqIWGphGI5VP46Ia9pAt
	BsAABf4zzWFwJXNWzSCqTZwML9oarn7jfhxFjOznxBNHF0/6f6kzgK2gTsJxXf1uDcx+elfz3X2yg
	BB2kPpVQw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kAVWX-0003sO-I6; Tue, 25 Aug 2020 09:45:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kAVVN-00034s-O1
 for linux-rockchip@lists.infradead.org; Tue, 25 Aug 2020 09:44:39 +0000
Received: by mail-wr1-x442.google.com with SMTP id a5so12047627wrm.6
 for <linux-rockchip@lists.infradead.org>; Tue, 25 Aug 2020 02:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=ujkEUSo+hKd0F+n+n+4eow5fQiAPWkhZFl/qY+hEm7I=;
 b=rXlaG4lBk/9ZFQ80LD+zjXCgcILpe2q3j7aSpFOOGyjedptgjQU5mRZrzy6a23UqiI
 bnM4EzVnnxX90gRM6vUv2uga1xs3JH3eXF+My1IkgkO5PR7XUki0KTgOHXQBPBoZON01
 6wPPHiMKU7a2l1F1ZU0T63cr8N908vdaFBBKmpSuf7nmcI1gkdfeM4AfJB+qFW8P0bMM
 lTuNAH9Csf5IeDvgHVHClgVHGNIHDQRvMPYoI3MSFBFun8+oUAU3tv+5pj8m7LnQvig0
 kFrauL6FQC6Z9r25I0NbgRbrNjlHCBlQdUkGyf096c+NA6ai0+EGhV4+PDy0ZteQdrFh
 AsKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ujkEUSo+hKd0F+n+n+4eow5fQiAPWkhZFl/qY+hEm7I=;
 b=O1e1qGceBrAzIpZqAjYYtHgpSvsSZy12OknE47f7s201cX81IzDngur6mHNlSV5ilG
 6H/DSopZgZzPV17RPb+3XutoCdV4vqrKcxmD9s1yV591lfNrnC3Js5Qb/9XE+nddC6Wd
 fbITeyURYJx6kKWliFSTD0FI+qCcuMszjVo80IdpIYZ0k0YSxAxv/oeLNqDAgsh0MBzh
 6cCynL68ixTQ7Jt36ccd/6DkbLz12v4xaf8sCEaCxpILb1Lw9wedfMtE0fAgfRA4uVS5
 5pOHpPC4LXEUiM22I9eZ48coI8sSvzoEtBwE+psiTKViM90J7mZeDycYk695hPB1OZFC
 UFKg==
X-Gm-Message-State: AOAM530h7e14Wt32C7RfNS7GCsFLvmsLNKDstqZZupEhpCq5gQr03Ne3
 QhzqgD5mf0RUzzPmSMzqcQvyHw==
X-Google-Smtp-Source: ABdhPJz7G7kxb5c0oWnqP8sVrGmfNv6GBtMKj9praqksNl3MmSemmfB6dRZWvkyjd6gM3062nySHqw==
X-Received: by 2002:a05:6000:124f:: with SMTP id
 j15mr9545856wrx.287.1598348673000; 
 Tue, 25 Aug 2020 02:44:33 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:30ce:e04c:9454:bbf8?
 ([2a01:e34:ed2f:f020:30ce:e04c:9454:bbf8])
 by smtp.googlemail.com with ESMTPSA id z8sm4516749wmf.10.2020.08.25.02.44.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Aug 2020 02:44:32 -0700 (PDT)
Subject: Re: [PATCH v1] thermal/of: Introduce k-po, k-pu and k-i for a thermal
 zone
To: Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>
References: <20200811123115.8144-1-finley.xiao@rock-chips.com>
 <20200824230956.GA3500214@bogus>
 <c3f54e18-8683-8bd9-90fa-e3465cddf8e8@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <13b84e7e-adfe-5939-e78d-0a20fce0a92e@linaro.org>
Date: Tue, 25 Aug 2020 11:44:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <c3f54e18-8683-8bd9-90fa-e3465cddf8e8@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200825_054437_877469_F2DA36B1 
X-CRM114-Status: GOOD (  27.71  )
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
Cc: huangtao@rock-chips.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 Finley Xiao <finley.xiao@rock-chips.com>, rui.zhang@intel.com,
 cl@rock-chips.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjUvMDgvMjAyMCAxMDoyNSwgTHVrYXN6IEx1YmEgd3JvdGU6Cj4gSGkgUm9iLAo+IAo+IE9u
IDgvMjUvMjAgMTI6MDkgQU0sIFJvYiBIZXJyaW5nIHdyb3RlOgo+PiBPbiBUdWUsIEF1ZyAxMSwg
MjAyMCBhdCAwODozMToxNVBNICswODAwLCBGaW5sZXkgWGlhbyB3cm90ZToKPj4+IFRoZSBkZWZh
dWx0IHZhbHVlIGZvciBrX3B1IGlzOgo+Pj4gwqDCoMKgwqAgMiAqIHN1c3RhaW5hYmxlX3Bvd2Vy
IC8gKGRlc2lyZWRfdGVtcGVyYXR1cmUgLSBzd2l0Y2hfb25fdGVtcCkKPj4+IFRoZSBkZWZhdWx0
IHZhbHVlIGZvciBrX3BvIGlzOgo+Pj4gwqDCoMKgwqAgc3VzdGFpbmFibGVfcG93ZXIgLyAoZGVz
aXJlZF90ZW1wZXJhdHVyZSAtIHN3aXRjaF9vbl90ZW1wKQo+Pj4gVGhlIGRlZmF1bHQgdmFsdWUg
Zm9yIGtfaSBpcyAxMC4KPj4+Cj4+PiBFdmVuIHRob3VnaCB0aGVzZSBwYXJhbWV0ZXJzIG9mIHRo
ZSBQSUQgY29udHJvbGxlciBjYW4gYmUgY2hhbmdlZAo+Pj4gYnkgdGhlIGZvbGxvd2luZyBzeXNm
cyBmaWxlczoKPj4+IMKgwqDCoMKgIC9zeXMvY2xhc3MvdGhlcm1hbC90aGVybWFsX3pvbmVYL2tf
cHUKPj4+IMKgwqDCoMKgIC9zeXMvY2xhc3MvdGhlcm1hbC90aGVybWFsX3pvbmVYL2tfcG8KPj4+
IMKgwqDCoMKgIC9zeXMvY2xhc3MvdGhlcm1hbC90aGVybWFsX3pvbmVYL2tfaQo+Pj4KPj4+IEJ1
dCBpdCdzIHN0aWxsIG1vcmUgY29udmVuaWVudCB0byBjaGFuZ2UgdGhlIGRlZmF1bHQgdmFsdWVz
IGJ5Cj4+PiBkZXZpY2V0cmVlLAo+Pj4gc28gaW50cm9kdWNlIHRoZXNlIHRocmVlIG9wdGlvbmFs
IHByb3BlcnRpZXMuIElmIHByb3ZpZGVkIHRoZXNlCj4+PiBwcm9wZXJ0aWVzLAo+Pj4gdGhleSB3
aWxsIGJlIHBhcnNlZCBhbmQgYXNzb2NpYXRlZCB3aXRoIHRoZSB0aGVybWFsIHpvbmUgdmlhIHRo
ZSB0aGVybWFsCj4+PiB6b25lIHBhcmFtZXRlcnMuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogRmlu
bGV5IFhpYW8gPGZpbmxleS54aWFvQHJvY2stY2hpcHMuY29tPgo+Pj4gLS0tCj4+PiDCoCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC90aGVybWFsLnR4dCB8IDE0Cj4+
PiArKysrKysrKysrKysrKwo+Pgo+PiBCaW5kaW5ncyBzaG91bGQgYmUgYSBzZXBhcmF0ZSBmaWxl
IGFuZCB0aGlzIG9uZSBpcyBhIERUIHNjaGVtYSBub3cuCj4+Cj4+PiDCoCBkcml2ZXJzL3RoZXJt
YWwvdGhlcm1hbF9vZi5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgfMKgIDcgKysrKysrKwo+Pj4gwqAgMiBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRp
b25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy90aGVybWFsL3RoZXJtYWwudHh0Cj4+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy90aGVybWFsL3RoZXJtYWwudHh0Cj4+PiBpbmRleCBmNzhiZWMxOWNhMzUuLmViZTkz
NmI1N2RlZCAxMDA2NDQKPj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy90aGVybWFsL3RoZXJtYWwudHh0Cj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvdGhlcm1hbC90aGVybWFsLnR4dAo+Pj4gQEAgLTE2NSw2ICsxNjUsMjAgQEAgT3B0
aW9uYWwgcHJvcGVydHk6Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAyMDAwbVcsIHdo
aWxlIG9uIGEgMTAnJyB0YWJsZXQgaXMgYXJvdW5kCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCA0NTAwbVcuCj4+PiDCoCArLSBrLXBvOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUHJvcG9y
dGlvbmFsIHBhcmFtZXRlciBvZiB0aGUgUElEIGNvbnRyb2xsZXIgd2hlbgo+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgY3VycmVudCB0ZW1wZXJhdHVyZSBpcyBhYm92ZSB0aGUgdGFyZ2V0Lgo+
Pj4gK8KgIFR5cGU6IHNpZ25lZAo+Pj4gK8KgIFNpemU6IG9uZSBjZWxsCj4+PiArCj4+PiArLSBr
LXB1OsKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgUHJvcG9ydGlvbmFsIHBhcmFtZXRlciBvZiB0aGUg
UElEIGNvbnRyb2xsZXIgd2hlbgo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3VycmVudCB0
ZW1wZXJhdHVyZSBpcyBiZWxvdyB0aGUgdGFyZ2V0Lgo+Pj4gK8KgIFR5cGU6IHNpZ25lZAo+Pj4g
K8KgIFNpemU6IG9uZSBjZWxsCj4+PiArCj4+PiArLSBrLWk6wqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBJbnRlZ3JhbCBwYXJhbWV0ZXIgb2YgdGhlIFBJRCBjb250cm9sbGVyLgo+Pj4gK8KgIFR5cGU6
IHNpZ25lZAo+Pj4gK8KgIFNpemU6IG9uZSBjZWxsCj4+Cj4+IFdoYXQncyBQSUQ/Cj4+Cj4+IEkg
a25vdyBub3RoaW5nIGFib3V0IHRoZSBzeXNmcyBwYXJhbXMsIGJ1dCB0aGUgYmluZGluZyBuZWVk
cyB0byBzdGFuZCBvbgo+PiBpdCdzIG93biBhbmQgbmVlZHMgZW5vdWdoIGRldGFpbCB0byBlZHVj
YXRlIG1lLgo+IFNvcnJ5IGZvciB0aGUgZGVsYXksIEkgbWlzc2VkIHRoYXQgcGF0Y2guCj4gVGhl
c2UgcGFyYW1ldGVycyBhcmUgdGhlIGNvZWZmaWNpZW50cyBmb3IgdGhlCj4gUHJvcG9ydGlvbmFs
LUludGVncmFsLURlcml2YXRpdmUgKFBJRCkgY29udHJvbGxlciBbMV0sIHdoaWNoIGlzIHRoZQo+
IGNvcmUgb2YgdGhlIEludGVsbGlnZW50IFBvd2VyIEFsbG9jYXRpb24gKElQQSkgdGhlcm1hbCBn
b3Zlcm5vci4KCkp1c3QgYSBmZXcgd29yZHMgdG8gZWxhYm9yYXRlIGEgYml0IGZvciBSb2Igd2hv
IG1heSBub3QgaGF2ZSB0aW1lIHRvCmRpZ2VzdCB0aGUgd2hvbGUgY29uY2VwdCBmcm9tIFdpa2lw
ZWRpYSA6KQoKVGhlIFBJRCBpcyBhbiByZWd1bGF0aW9uIGxvb3Agd2hlcmUgdGhlIGlucHV0IGlz
IGNvbXBhcmVkIHRvIHRoZSBvdXRwdXQuCgpGb3IgZXhhbXBsZSB3aGVuIGRyaXZpbmcgYSBjYXIg
YW5kIHlvdSBhaW0gYSBzcGVlZCBjcnVpc2Ugb2YgOTBrbS9oLiBZb3UKcHJlc3MgdGhlIGFjY2Vs
ZXJhdG9yIGFuZCB3YXRjaCB0aGUgY3VycmVudCBzcGVlZC4gVGhlIHNtYWxsZXIgdGhlCmN1cnJl
bnQgc3BlZWQgaXMsIHRoZSBzdHJvbmdlciB5b3Ugd2lsbCBwdXNoIHRoZSBhY2NlbGVyYXRvci4g
QW5kIHRoZQpjbG9zZXIgdG8gdGhlIGNydWlzZSBzcGVlZCB0aGUgY2FyIGlzLCB0aGUgbGVzc2Vy
IHlvdSBwdXNoIHRoZQphY2NlbGVyYXRvciB1bnRpbCB0aGUgY2FyIHN0YWJpbGl6ZSB0byB0aGUg
Y3J1aXNlIHRvIHNwZWVkLgoKVGhlIGstKiBkZXNjcmliZXMgaG93IHN0cm9uZyB5b3UgcHVzaCB0
aGUgYWNjZWxlcmF0b3IgYW5kIHJlbGVhc2UgaXQuCgpJbiB0aGUgdGhlcm1hbCBmcmFtZXdvcmss
IHRoYXQgaGFzIGFuIGltcGFjdCBvbiBob3cgYnJ1dGFsIHRoZQptaXRpZ2F0aW9uIGFjdHMgYW5k
IGRlcGVuZGluZyBvbiB0aGVtIGl0IHJlc3VsdHMgaW4gYSBmbGF0IHRlbXBlcmF0dXJlCmN1cnZl
IG9yIGEgc2F3dG9vdGggYXNwZWN0LgoKVGhlc2UgY29lZmZpY2llbnQgZGVwZW5kcyBvbiB0aGUg
YW1iaWVudCB0ZW1wZXJhdHVyZSAoY2FzaW5nLCByb29tCnRlbXBlcmF0dXJlKSwgdGhlIGhlYXQg
c2luayBhbmQgdGhlIGxvYWQuIERlcGVuZGluZyBvbiB0aGUgdXNlIGNhc2VzLAp5b3UgbWF5IHdh
bnQgdG8gY2hhbmdlIHRoZWlyIHZhbHVlcyBhdCBydW50aW1lLgoKRnJvbSBteSBQT1YsIHNldHRp
bmcgdGhlc2UgdmFsdWVzIGluIHRoZSBEVCBkb2VzIG5vdCByZWFsbHkgbWFrZSBzZW5zZS4KCkl0
IHdvdWxkIG1ha2UgbXVjaCBtb3JlIHNlbnNlIHRvIGhhdmUgdGhlIHRoZXJtYWwgc3BlY2lmaWNh
dGlvbnMgb2YgdGhlCmJvYXJkIChoZWF0IHNpbmsgY2FwYWNpdHksIHJlc2lzdGl2aXR5LCBtYXgg
dGVtcGVyYXR1cmUgb3IgVERQKSwgc28gZnJvbQp0aGVyZSB3ZSBzaG91bGQgYmUgYWJsZSB0byBj
b21wdXRlIGFueXRoaW5nIHJlbGF0ZWQgdG8gdGhlIHRoZXJtYWwKcHJvZmlsZSBhbmQgY29uZmln
dXJlIGZyb20gdGhlIGtlcm5lbC4KCgo+IE9ubHkgSVBBIHVzZXMgdGhlbSwgdGh1cyBJIGRvbid0
IHRoaW5rIHRoZSBnb3Zlcm5vcnMgcGFyYW1ldGVyczoKPiBrLXBvLCBrLXB1LCBrLWkKPiBzaG91
bGQgYmUgcGFydCBvZiB0aGUgRGV2aWNlVHJlZS4gSSBoYXZlbid0IHNlZW4gc3VjaCBnb3Zlcm5v
cnMKPiB0dW5uYWJsZXMgaW4gdGhlIERULCBwbGVhc2UgcG9pbnQgbWUgaWYgdGhleSBleGlzdCBz
b21ld2hlcmUuCj4gCj4gRG8geW91IHRoaW5rIFJvYiB0aGV5IG1pZ2h0IGJlIHNwZWNpZmllZCBp
biB0aGUgRFQ/Cj4gCj4gUmVnYXJkcywKPiBMdWthc3oKPiAKPiBbMV0gaHR0cHM6Ly9lbi53aWtp
cGVkaWEub3JnL3dpa2kvUElEX2NvbnRyb2xsZXIKCgotLSAKPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9s
bG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vi
b29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDov
L3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
