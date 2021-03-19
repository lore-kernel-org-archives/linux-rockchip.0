Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1CBCC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 14:35:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 86F0464EE2
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 14:35:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 86F0464EE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3Z5u7ycaKBhMykdDH4PPzaot1U7UZej7rOY+w9hCYKo=; b=DuJs2bPK2pPaZC9q7uXl9Wf1y
	Mdub1oX1L601oarcZ/Su1mdiNI5WWbg6hBhVXznglLmtpq5NmP+iRhrTjdQzoHE/s5lWvJWNbzy1A
	k4xYZaBbZ5+a51STr42e4AUToXU4yWQPdE/XegK47Yc8mIv1vnvYQWqWDS4KwgRBZL9Y9cw6h3Rgx
	lFMdE2Q6lemZaoNqDUSwQX/WWMV0h0NETOV/SCK4WKivYqPjv4c28taks0mFkA6FLWSKDCf1qMGej
	xeHLyvJiCWP6oithZJG4p0zNeRVOXP7zEpynnYUU5U3yFQseBiTUBr7YXT0jR0udqUD6Wrns6fCvD
	QoiLVgISA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNGDg-007Y7u-C2; Fri, 19 Mar 2021 14:35:20 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNGDc-007Y6x-Ej
 for linux-rockchip@lists.infradead.org; Fri, 19 Mar 2021 14:35:18 +0000
Received: by mail-wm1-x32b.google.com with SMTP id
 r10-20020a05600c35cab029010c946c95easo5358946wmq.4
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Mar 2021 07:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aG3hsMsSF84DehWdMYy5xOrEmBMs4XEnaGkmWmOkDWc=;
 b=J9KMgYMVZseCs92nqFlibr8ezBeRsZFadGIPmmu/06a+u0aGNjKfDUsrc+pjDzxsQE
 mkk1nwhozlvKHGJtiqN9OYBEjM/MhYawGCNV9AZIkQb1W1HPR5pkRUYPwXzyCF/Z8sKi
 YAB4c6ZDaNWDu6y2KAd/ywmWM449zp6gCE6Or+BLnvbW0tkmqaH4rgBH27e8ZB2hT7jL
 eT0Uxb5VDOaOUozeyfySML0u1sh9L2htmSknpJj3WgOhkhyarEHRA9fkTjwDWI903HhL
 Flrv6XHcy8t1Nd8x2EZC2tPAEbNe7L6Vob/H6O55Ussv13uP10jTLSCHYscvnXmvZwAL
 ffTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aG3hsMsSF84DehWdMYy5xOrEmBMs4XEnaGkmWmOkDWc=;
 b=Rt3+iDy0F4DrFV6sQ/0EXkedbCXjzlj+cm2yzlSTGrTAe/19FUa0m1jg9NkKD0a55H
 X5MNmBp8HYGNIid7ybTxL8A3nGKUflgTzbijL1tyFHabrTNxE5gSDKvH0eAhBZa6QCJ8
 OkUZlEwJtgY/JKdKjNC8Y3p9kPDXdG+YYwDMRdjdjXglVetQb8GUeLJKVr+/R0bDREon
 CQ3yC0vACycbeRcVdxgdtJcff64zFfXVNadPb243WUVpcCn74ph2O8oxoah0j+XR15y5
 E44ftKYQL5KUOKAvLfJgKiEjUT6g74oPINs3+tgBTTuDPjkL9j0FKtY+U6196I5aY1BD
 0wbQ==
X-Gm-Message-State: AOAM533JSQh7clMTcFCffvjGHslXDGn7Xu+pJ/8lTeLxtdSvIZ5GDJeR
 DUyt5BQF/7vM0Ow0gyeyi0f/YVy2TDL9RA==
X-Google-Smtp-Source: ABdhPJzSX3PFY+cvi6T6/TD2sAivLk7L3F3d4hXr31NTWiAroz3YXBttnpjlUk5WQvBG43jOnRuznQ==
X-Received: by 2002:a1c:b006:: with SMTP id z6mr3877987wme.19.1616164515310;
 Fri, 19 Mar 2021 07:35:15 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:ddd7:1eb:a66:7a85?
 ([2a01:e34:ed2f:f020:ddd7:1eb:a66:7a85])
 by smtp.googlemail.com with ESMTPSA id l15sm6781389wme.43.2021.03.19.07.35.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 19 Mar 2021 07:35:14 -0700 (PDT)
Subject: Re: [PATCH] dt: rockchip: rk3399: Add dynamic power coefficient for
 GPU
To: Robin Murphy <robin.murphy@arm.com>, heiko@sntech.de
Cc: Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Helen Koike <helen.koike@collabora.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20210319110511.24787-1-daniel.lezcano@linaro.org>
 <5db868e4-5b86-7b32-51e0-665a2e1fc1ac@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9322db05-2cad-453c-ec1b-1fdb3df142fa@linaro.org>
Date: Fri, 19 Mar 2021 15:35:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5db868e4-5b86-7b32-51e0-665a2e1fc1ac@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_143516_653387_88B1C22B 
X-CRM114-Status: GOOD (  25.35  )
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

CkhpIFJvYmluLAoKT24gMTkvMDMvMjAyMSAxMzoxNywgUm9iaW4gTXVycGh5IHdyb3RlOgo+IE9u
IDIwMjEtMDMtMTkgMTE6MDUsIERhbmllbCBMZXpjYW5vIHdyb3RlOgo+PiBUaGUgRFRQTSBmcmFt
ZXdvcmsgaXMgbG9va2luZyBmb3IgdXBzdHJlYW0gU29DIGNhbmRpZGF0ZXMgdG8gc2hhcmUgdGhl
Cj4+IHBvd2VyIG51bWJlcnMuCj4+Cj4+IFdlIGNhbiBzZWUgYXJvdW5kIGRpZmZlcmVudCBudW1i
ZXJzIGJ1dCB0aGUgb25lIHdoaWNoIHNlZW1zIHRvIGJlCj4+IGNvbnNpc3RlbnQgd2l0aCB0aGUg
aW5pdGlhbCBwb3N0IGZvciB0aGUgdmFsdWVzIG9uIHRoZSBDUFVzIGNhbiBiZQo+PiBmb3VuZCBp
biB0aGUgcGF0Y2ggaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcGF0Y2h3b3JrL3BhdGNoLzgxMDE1
OS8KPiAKPiBUaGUga2VybmVsIGhhY2tlciBpbiBtZSB3b3VsZCBiZSBtb3JlIGluY2xpbmVkIHRv
IHRydXN0IHRoZSBCU1AgdGhhdCB0aGUKPiB2ZW5kb3IgYWN0aXZlbHkgc3VwcG9ydHMgdGhhbiBh
IDUteWVhci1vbGQgcGF0Y2ggdGhhdCB3YXMgbmV2ZXIgcHVyc3VlZAo+IHVwc3RyZWFtLiBBcHBh
cmVudGx5IHRoYXQgd2FzIGxhc3QgdXBkYXRlZCBtb3JlIHJlY2VudGx5Ogo+IAo+IGh0dHBzOi8v
Z2l0aHViLmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvY29tbWl0Lzk4ZDQ1MDVlMWJkNjJmZjAy
OGJkNzlmYmQ4Mjg0ZDY0YjZmNDY4ZjgKClllcywgSSd2ZSBzZWVuIHRoaXMgdmFsdWUgYWxzby4K
Cj4gVGhlIGV4LW1hdGhlbWF0aWNpYW4gaW4gbWUgY2FuJ3QgZXZlbiBjb21tZW50IGVpdGhlciB3
YXkgd2l0aG91dAo+IGV2aWRlbmNlIHRoYXQgd2hhdGV2ZXIgbW9kZWwgZXhwZWN0cyB0byBjb25z
dW1lIHRoaXMgdmFsdWUgaXMgZXZlbgo+IGNvbXBhcmFibGUgdG8gd2hhdGV2ZXIgImFybSxtYWxp
LXNpbXBsZS1wb3dlci1tb2RlbCIgaXMuID4KPiBUaGUgd2F5IHRoZQo+IGxhdHRlciBhcHBhcmVu
dGx5IG5lZWRzIGFuIGV4cGxpY2l0ICJzdGF0aWMiIGNvZWZmaWNpZW50IGFzIHdlbGwgYXMgYQo+
ICJkeW5hbWljIiBvbmUsIGFuZCB0aGUgdmFsdWUgaGVyZSBiZWluZyBuZWFybHkgMyB0aW1lcyB0
aGF0IG9mIGEKPiBzaW1pbGFybHktbmFtZWQgb25lIGluIGFjdGl2ZSB1c2UgZG93bnN0cmVhbSAo
Q2hyb21lT1MgYXBwZWFycyB0byBzdGlsbAo+IGJlIHVzaW5nIHRoZSB2YWx1ZXMgZnJvbSBiZWZv
cmUgdGhlIGFib3ZlIGNvbW1pdCksIGNlcnRhaW5seSBpbmNsaW5lIG1lCj4gdG8gdGhpbmsgdGhl
eSBtYXkgbm90IGJlLi4uCgpTb3JyeSwgSSdtIG1pc3NpbmcgdGhlIHBvaW50IDovCgpXZSBkcm9w
cGVkIGluIHRoZSBrZXJuZWwgYW55IHN0YXRpYyBwb3dlciBjb21wdXRhdGlvbiBiZWNhdXNlIGFz
IHRoZXJlCndhcyBubyB2YWx1ZSwgdGhlIHJlc3VsdGluZyBjb2RlIHdhcyBjb25zaWRlcmVkIGRl
YWQuIFNvIHdlIHJlbHkgb24gdGhlCmR5bmFtaWMgcG93ZXIgb25seS4KCj4+IEkgZG9uJ3Qga25v
dyB0aGUgcHJlY2lzaW9uIG9mIHRoaXMgdmFsdWUgYnV0IGl0IGlzIGJldHRlciB0aGFuCj4+IG5v
dGhpbmcuCj4gCj4gQnV0IGlzIGl0PyBJZiBpdCBsZWFkcyB0byBzb21lIHRocm90dGxpbmcgbWVj
aGFuaXNtIGtpY2tpbmcgaW4gYW5kCj4gY3JpcHBsaW5nIEdQVSBwZXJmb3JtYW5jZSBiZWNhdXNl
IGl0J3MgbWFzc2l2ZWx5IG92ZXJlc3RpbWF0aW5nIHBvd2VyCj4gY29uc3VtcHRpb24sIHRoYXQg
d291bGQgYmUgb2JqZWN0aXZlbHkgd29yc2UgZm9yIG1vc3QgdXNlcnMsIG5vPwoKTm8gYmVjYXVz
ZSB0aGVyZSBpcyBubyBzdXN0YWluYWJsZSBwb3dlciBzcGVjaWZpZWQgZm9yIHRoZSB0aGVybWFs
IHpvbmVzCnJlbGF0ZWQgdG8gdGhlIEdQVS4KCgoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcv
PiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxv
dyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9v
ayB8CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93
d3cubGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
