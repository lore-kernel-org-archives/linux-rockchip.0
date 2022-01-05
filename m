Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01E30C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jan 2022 11:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5EE3OkJLCptwCBLAYk0OJoA3/FgcEuj3VfkYgvTKAZ0=; b=laki9ch42r+iqSP6mVVIEIPsW8
	hhKWQaBMcWYLYAvumz3l5fA4wX9AUsCFXNKbMM7Gkifzgv620M4mS4g3It0TI0RUdp/2c2BHoMSTT
	f/wcrKIpm0wRrqASjO3haOzh1Eiv+t7W0zvGTGUmzJ4m0YjdrE+yUQ5ovACTK51MV3axqmC9K/+We
	kdYHeeIwwuP6lkmHutn90mvPI4XcnC/tJoJZRGyoZeWdMk1ezG6TJtk8MflmuF+aORa9+Bn/ZbFeu
	fqeIguOMFseFQakYaweKGxtacQlaPu5BHBpn6RHycnYTlee4ReovhoSr9sMJlkylL92fjdIHap18q
	l1Wl9BPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n54Qd-00Ef4e-IP; Wed, 05 Jan 2022 11:26:03 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n54Qa-00Ef3S-Hh
 for linux-rockchip@lists.infradead.org; Wed, 05 Jan 2022 11:26:02 +0000
Received: by mail-wm1-x329.google.com with SMTP id v123so949372wme.2
 for <linux-rockchip@lists.infradead.org>; Wed, 05 Jan 2022 03:26:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=hsOdhykBVoRpV1A6nkjk34+J7F6kYYhhy3JOQFljBCU=;
 b=nMfymIA9n5MNJAsM9qhczPmfZCvqNR6kdxO+YkLux67QGpT4JHlzu4q5UM2a3xTVij
 DUKhETg/ZWuod6r1deiSkU9S5ErT8vizvP/ecK/ww3UNuIJaEU1vqVP/GAsnBhF9x1tL
 Bsx80MnbcRAGwblf6RK6/lTTSSvcPGEIWu72P12WD2fmlCi7VFMTEcawkhqnW/vzkHL7
 IsY7YN9EGhw5g6S24qZWV0wLtNBpg86idrFGREFjRNgSrpSBeY5VIc/s/hMMQcq08o/x
 +/n+uB66ZfPKjA01ZUf1B34yOR+h973RjlieYeRTbGL0XbCRnH4kWB0zvYWWfSsEk+4G
 9BFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hsOdhykBVoRpV1A6nkjk34+J7F6kYYhhy3JOQFljBCU=;
 b=kU7QKvCj9qQvLJrGYoIq8UHEJ9YpOi9Mj+KG09cKOJ7AiyzY2N/3gZDA0oZtJr4+s7
 Hj9omOyLF+qtkyXnwpGwXp8CzkCl2QL0hCYIAcIvG7QRvvJB0LbIk6+pbUu5RvneKCa1
 gzBvlAhz1QKkvDPNTl0VU7sFmZOIVBPtDhIibySxlah4clB8K99WXKNN1rlu1rwdFx53
 OUxT5nzkotbiIUJ/R00S3W1kPnRkrz1OqGsa03yWXzJRyw89PtSsGrthopaKYmCn29Dh
 nPPs819J1SUlyxteIGTHGbYiGWDSZGgnN1iClTNxLl9VIqjczjDUSXlKuAPB/3tXJf3Y
 1Bdw==
X-Gm-Message-State: AOAM531BMCrDQAkiisR3v3F0uO9WPqtEXcZnjD5FxJ6mZoRkd5aFww+U
 49TrMC7kluEwtAl97FmGX0kcFQttoSdLhbOI
X-Google-Smtp-Source: ABdhPJyM6lmDmwiopuloo5rN2kMQmZspTefyZc+7qdhabb+2+8bDho3RaBb/Lr0JQl7ajRS3iwNglw==
X-Received: by 2002:a05:600c:3844:: with SMTP id
 s4mr2415497wmr.124.1641381958883; 
 Wed, 05 Jan 2022 03:25:58 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:9997:55b1:2e48:dc4a?
 ([2a01:e34:ed2f:f020:9997:55b1:2e48:dc4a])
 by smtp.googlemail.com with ESMTPSA id l14sm35899869wrr.53.2022.01.05.03.25.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Jan 2022 03:25:58 -0800 (PST)
Subject: Re: [PATCH v5 5/6] rockchip/soc/drivers: Add DTPM description for
 rk3399
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>
Cc: rjw@rjwysocki.net, lukasz.luba@arm.com, heiko@sntech.de, arnd@linaro.org, 
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20211218130014.4037640-1-daniel.lezcano@linaro.org>
 <20211218130014.4037640-6-daniel.lezcano@linaro.org>
 <CAPDyKFqWUJTKte3dM=7xG6EtKR8i9neCCNYFs7Jf1J34TezUEQ@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <dee9df5e-acab-579a-017c-d5f22e9e042c@linaro.org>
Date: Wed, 5 Jan 2022 12:25:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAPDyKFqWUJTKte3dM=7xG6EtKR8i9neCCNYFs7Jf1J34TezUEQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220105_032600_650529_9ACB2F09 
X-CRM114-Status: GOOD (  17.21  )
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

T24gMzEvMTIvMjAyMSAxNDo1NywgVWxmIEhhbnNzb24gd3JvdGU6CgpbIC4uLiBdCgo+PiArc3Rh
dGljIHN0cnVjdCBkdHBtX25vZGUgX19pbml0ZGF0YSByazMzOTlfaGllcmFyY2h5W10gPSB7Cj4+
ICsgICAgICAgWzBdeyAubmFtZSA9ICJyazMzOTkiIH0sCj4+ICsgICAgICAgWzFdeyAubmFtZSA9
ICJwYWNrYWdlIiwKPj4gKyAgICAgICAgICAgIC5wYXJlbnQgPSAmcmszMzk5X2hpZXJhcmNoeVsw
XSB9LAo+PiArICAgICAgIFsyXXsgLm5hbWUgPSAiL2NwdXMvY3B1QDAiLAo+PiArICAgICAgICAg
ICAgLnR5cGUgPSBEVFBNX05PREVfRFQsCj4+ICsgICAgICAgICAgICAucGFyZW50ID0gJnJrMzM5
OV9oaWVyYXJjaHlbMV0gfSwKPj4gKyAgICAgICBbM117IC5uYW1lID0gIi9jcHVzL2NwdUAxIiwK
Pj4gKyAgICAgICAgICAgIC50eXBlID0gRFRQTV9OT0RFX0RULAo+PiArICAgICAgICAgICAgLnBh
cmVudCA9ICZyazMzOTlfaGllcmFyY2h5WzFdIH0sCj4+ICsgICAgICAgWzRdeyAubmFtZSA9ICIv
Y3B1cy9jcHVAMiIsCj4+ICsgICAgICAgICAgICAudHlwZSA9IERUUE1fTk9ERV9EVCwKPj4gKyAg
ICAgICAgICAgIC5wYXJlbnQgPSAmcmszMzk5X2hpZXJhcmNoeVsxXSB9LAo+PiArICAgICAgIFs1
XXsgLm5hbWUgPSAiL2NwdXMvY3B1QDMiLAo+PiArICAgICAgICAgICAgLnR5cGUgPSBEVFBNX05P
REVfRFQsCj4+ICsgICAgICAgICAgICAucGFyZW50ID0gJnJrMzM5OV9oaWVyYXJjaHlbMV0gfSwK
Pj4gKyAgICAgICBbNl17IC5uYW1lID0gIi9jcHVzL2NwdUAxMDAiLAo+PiArICAgICAgICAgICAg
LnR5cGUgPSBEVFBNX05PREVfRFQsCj4+ICsgICAgICAgICAgICAucGFyZW50ID0gJnJrMzM5OV9o
aWVyYXJjaHlbMV0gfSwKPj4gKyAgICAgICBbN117IC5uYW1lID0gIi9jcHVzL2NwdUAxMDEiLAo+
PiArICAgICAgICAgICAgLnR5cGUgPSBEVFBNX05PREVfRFQsCj4+ICsgICAgICAgICAgICAucGFy
ZW50ID0gJnJrMzM5OV9oaWVyYXJjaHlbMV0gfSwKPj4gKyAgICAgICBbOF17IC5uYW1lID0gInJv
Y2tjaGlwLHJrMzM5OS1tYWxpIiwKPj4gKyAgICAgICAgICAgIC50eXBlID0gRFRQTV9OT0RFX0RU
LAo+PiArICAgICAgICAgICAgLnBhcmVudCA9ICZyazMzOTlfaGllcmFyY2h5WzFdIH0sCj4+ICsg
ICAgICAgWzldeyB9LAo+PiArfTsKPiAKPiBJIHdpbGwgbm90IG9iamVjdCB0byB0aGlzLCBhcyBp
biB0aGUgZW5kIHRoaXMgc2VlbXMgbGlrZSB3aGF0IHdlIG5lZWQKPiB0byBkbywgdW5sZXNzIHdl
IGNhbiBkZXNjcmliZSB0aGluZ3MgdGhyb3VnaCBnZW5lcmljIERUIGJpbmRpbmdzIGZvcgo+IERU
UE0uIFJpZ2h0PwoKWWVzLCBhcyBhc2tlZCBieSBSb2IsIHdlIHNob3VsZCB0cnkgdG8gZGVzY3Jp
YmUgaW4gdGhlIGtlcm5lbCBmaXJzdC4KCj4gQWx0aG91Z2gsIGlmIHRoZSBhYm92ZSBpcyBjb3Jy
ZWN0LCBJIG5lZWQgdG8gc3RyZXNzIHRoYXQgSSBhbSBraW5kIG9mCj4gd29ycmllZCB0aGF0IHRo
aXMgZG9lc24ndCByZWFsbHkgc2NhbGUuIFdlIHdvdWxkIG5lZWQgdG8gY29weSBsb3RzIG9mCj4g
aW5mb3JtYXRpb24gZnJvbSB0aGUgRFRTIGZpbGVzIGludG8gcGxhdGZvcm0gc3BlY2lmaWMgYy1m
aWxlcywgdG8gYmUKPiBhYmxlIHRvIGRlc2NyaWJlIHRoZSBEVFBNIGhpZXJhcmNoeS4KClRCSCBJ
IGRvbid0IHRoaW5rIGl0IGlzIGEgbG90IGFuZCBpdCBpcyBhIF9faW5pdGRhdGEuIEF0IGxlYXN0
IHdlIHNob3VsZApiZWdpbiB3aXRoIHNvbWV0aGluZyBhbmQgc2VlIGxhdGVyIGhvdyB0byBjb25z
b2xpZGF0ZSBpZiBpdCBpcyBuZWVkZWQsIG5vPwoKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3Jn
Lz4gTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xs
b3cgTGluYXJvOiAgPGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJv
b2sgfAo8aHR0cDovL3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8v
d3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
