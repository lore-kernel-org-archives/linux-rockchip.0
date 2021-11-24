Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32C6DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 16:41:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FzTXXQ8du+41gw/ef8+9cHX47a/8I3jJpAVblrTMWhQ=; b=Aod9Z2P3KJaFMWhXuyl2gjKW51
	9sBl8tGTXHoVSDs8/S92umzsruEBGuV9NV4F62keDs+4qH5KJLuOwTx4jv/MJtqFfomkPSa8JFzLx
	wZUxaJa3EKpiexMK+W9CKpO66HFw7W7+wHr5K/4bFxRIy21gM/foVantObYfbiMqhp/9uWOvlvop2
	KPcaNHZeflKPClfzJxRE50gN+7CQjB/lmTxL+gGNsBLPqCt9FBbVZZOT326Ax5u53wEv3COR2xWLn
	LJWYsL7fu7J9fYqjgKIM5UVNRU62EH6uVl9gdykX7TqEOPwbsBUdkpzyK7rNCIe++MsL4GlVD4zk+
	sagvFgrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpvL4-005I2o-Ql; Wed, 24 Nov 2021 16:41:42 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpvL1-005I0g-J8
 for linux-rockchip@lists.infradead.org; Wed, 24 Nov 2021 16:41:41 +0000
Received: by mail-wr1-x42a.google.com with SMTP id c4so5277575wrd.9
 for <linux-rockchip@lists.infradead.org>; Wed, 24 Nov 2021 08:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GlIs+0Fl00MrHx12eQnM8ThlIZDB4DAAFY0KgD/6Kgc=;
 b=T3WJ+TQj23IEThTVCJC2Bb41QzXIsQxUhJCk/pOLGO73x/2OE/b2IaDOA+PTTLR//u
 AsKG20PGqT8f35ykndMIthtiMr8NjSuGkiVoUzTdGPpyUYmhiAwPnYIaoFu56rjz9dIt
 RFScGtYiNhDovNsG62L1JjR7Oun2K/rqznRmYeHrY8yFHQZhNxwMYJZJUJSU5aREueyn
 YKJ6samEJzhXDVsTR1uzuhUA0M5trPocDe1MD9ivjJkDP7pf418cKtdVB4rq76GIR42n
 v0g74ObzkscrKZk2tsFh54mRLN4NLTUhscek6kMjkDUlGKOtpanAPAw+vm7CwVxiXq8J
 xT3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GlIs+0Fl00MrHx12eQnM8ThlIZDB4DAAFY0KgD/6Kgc=;
 b=EAu2cwaVAflYJi8J3ZafVlH+wl4l15LcCNlsW3cShI3jsrj1U6AT9SZfZCZS3DotZ3
 Z5R6YC0xQD5OuwwgvKa4JfppnStsIFAxOC3+WaPsPlVw1Wq88x4cl/nNSPzaW7pKpb7s
 O3mpZxc+w4Bx3W4s1mE8DsmiAmc3MMwWWIapWRZ0Mn1Uxst7JDPo1tDZrCR6H9SigGqr
 hH+F6YR5a7DIcYxcmFHaDdq33fR3ZSXQ3Yh++6irBQ3VJj65CPVzVsSpiVQdg2kL5so0
 GAF4GOmwzpFRJFhwY0j57Yan9VBIW/ApreN2IInOPQfzUCiZ0rZvFPsha8lsQQN5lqII
 9QXA==
X-Gm-Message-State: AOAM532r8GWmE/93dKO37dI6lZzIPvrx9zQnR5qo/dzGBMdMn0x2rvFh
 oZRg4Uf0mo0U3bDK+RZsQiz6oAQ137UOXg==
X-Google-Smtp-Source: ABdhPJzJXmbREFsk0CW1REfVF5yqexRPGDtOPeHjmhBrc65DyykD6IBk29gmn1v12rRTswTXEVOJZA==
X-Received: by 2002:adf:f907:: with SMTP id b7mr21189353wrr.5.1637772097021;
 Wed, 24 Nov 2021 08:41:37 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:4839:bd64:93f4:614f?
 ([2a01:e34:ed2f:f020:4839:bd64:93f4:614f])
 by smtp.googlemail.com with ESMTPSA id d1sm252782wrz.92.2021.11.24.08.41.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Nov 2021 08:41:36 -0800 (PST)
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Add powerzones definition for
 rock960
To: Robin Murphy <robin.murphy@arm.com>
Cc: robh@kernel.org, arnd@linaro.org, heiko@sntech.de,
 ulf.hansson@linaro.org, rjw@rjwysocki.net, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, lukasz.luba@arm.com,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20211124125506.2971069-1-daniel.lezcano@linaro.org>
 <20211124125506.2971069-2-daniel.lezcano@linaro.org>
 <bf994aa8-df18-22d0-e718-2c8b406a5cc8@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <f2609d56-f014-3713-8f73-c7ca9c7cba60@linaro.org>
Date: Wed, 24 Nov 2021 17:41:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <bf994aa8-df18-22d0-e718-2c8b406a5cc8@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_084139_717840_B045FE39 
X-CRM114-Status: GOOD (  15.67  )
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

T24gMjQvMTEvMjAyMSAxNDo0OSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9uIDIwMjEtMTEtMjQg
MTI6NTUsIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+PiBBZGQgdGhlIHBvd2Vyem9uZXMgZGVzY3Jp
cHRpb24uIFRoaXMgZmlyc3Qgc3RlcCBpbnRyb2R1Y2VzIHRoZSBiaWcsCj4+IHRoZSBsaXR0bGUg
YW5kIHRoZSBncHUgYXMgYSBwb3dlcnpvbmUgcGxhY2UuCj4gCj4gVGhlc2UgbG9vayBtb3JlIGxp
a2UgU29DLWxldmVsIHByb3BlcnRpZXMgdGhhbiBib2FyZC1sZXZlbCBvbmVzIC0gc2hvdWxkCj4g
dGhleSBiZSBpbiByazMzOTkuZHRzaT8KClllcywgaXQgbWFrZXMgc2Vuc2UKCklmIEhlaWtvIGlz
IGZpbmUgd2l0aCB0aGF0IEkgY2FuIGFkZCB0aGlzIGRlc2NyaXB0aW9uIGluIHRoZSByazMzOTku
ZHRzaQpmaWxlCgo+PiAtLS0KPj4gwqAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2Nr
OTYwLmR0c8KgwqDCoMKgwqAgfCA0NSArKysrKysrKysrKysrKysrKysrCj4+IMKgIDEgZmlsZSBj
aGFuZ2VkLCA0NSBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrOTYwLmR0cwo+PiBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzk5LXJvY2s5NjAuZHRzCj4+IGluZGV4IDFhMjNlOGYzY2RmNi4uODM1
NDBiZGI2NGNkIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2NrOTYwLmR0cwo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1yb2NrOTYwLmR0cwo+PiBAQCAtNjEsNiArNjEsNTEgQEAgYnRfYWN0aXZlX2xlZDogbGVk
LTYgewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgfTsKPj4gwqDCoMKgwqDCoCB9Owo+PiDCoCArwqDC
oMKgIHBvd2Vyem9uZXMgewo+PiArCj4+ICvCoMKgwqDCoMKgwqDCoCBQS0dfUFo6IHBrZyB7Cj4+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICNwb3dlcnpvbmUtY2VsbHMgPSA8MD47Cj4+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBvd2Vyem9uZSA9IDwm
U09DX1BaPjsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+ICsKPj4gK8KgwqDCoMKgwqDCoMKgIFNP
Q19QWjogc29jIHsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKgwqAgfTsKPj4gK307Cj4+
ICsKPj4gKyZjcHVfYjAgewo+PiArwqDCoMKgICNwb3dlcnpvbmUtY2VsbHMgPSA8MD47Cj4+ICvC
oMKgwqAgcG93ZXJ6b25lID0gPCZQS0dfUFo+Owo+PiArfTsKPj4gKwo+PiArJmNwdV9iMSB7Cj4+
ICvCoMKgwqAgI3Bvd2Vyem9uZS1jZWxscyA9IDwwPjsKPj4gK8KgwqDCoCBwb3dlcnpvbmUgPSA8
JlBLR19QWj47Cj4+ICt9Owo+PiArCj4+ICsmY3B1X2wwIHsKPj4gK8KgwqDCoCAjcG93ZXJ6b25l
LWNlbGxzID0gPDA+Owo+PiArwqDCoMKgIHBvd2Vyem9uZSA9IDwmUEtHX1BaPjsKPj4gK307Cj4+
ICsKPj4gKyZjcHVfbDEgewo+PiArwqDCoMKgICNwb3dlcnpvbmUtY2VsbHMgPSA8MD47Cj4+ICvC
oMKgwqAgcG93ZXJ6b25lID0gPCZQS0dfUFo+Owo+PiArfTsKPj4gKwo+PiArJmNwdV9sMiB7Cj4+
ICvCoMKgwqAgI3Bvd2Vyem9uZS1jZWxscyA9IDwwPjsKPj4gK8KgwqDCoCBwb3dlcnpvbmUgPSA8
JlBLR19QWj47Cj4+ICt9Owo+PiArCj4+ICsmY3B1X2wzIHsKPj4gK8KgwqDCoCAjcG93ZXJ6b25l
LWNlbGxzID0gPDA+Owo+PiArwqDCoMKgIHBvd2Vyem9uZSA9IDwmUEtHX1BaPjsKPj4gK307Cj4+
ICsKPj4gKyZncHUgewo+PiArwqDCoMKgICNwb3dlcnpvbmUtY2VsbHMgPSA8MD47Cj4+ICvCoMKg
wqAgcG93ZXJ6b25lID0gPCZQS0dfUFo+Owo+PiDCoCB9Owo+PiDCoCDCoCAmY3B1X2FsZXJ0MCB7
Cj4+CgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNv
dXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5m
YWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8CjxodHRwOi8vdHdpdHRlci5jb20v
IyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cubGluYXJvLm9yZy9saW5hcm8tYmxv
Zy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
