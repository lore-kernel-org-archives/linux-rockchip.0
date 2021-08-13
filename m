Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17367C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 14:55:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C1B84610A4
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 14:55:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C1B84610A4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gXOAy5RJ9AgS9qQKK6hwcaE+HRCb2PE2Qq3oPF+jtYo=; b=P2AZC4Qp0DYbc51z57+QouQYn7
	60nwac2CppZbBiFRZa0S3HYLnMe4Fxf6rypa3ZSsx7PzIS0HGzHM5334Ab7kwGyHjEBXwyD4k7BPy
	o+vRoI/KBjcgvhPsRRVC92AXjBy9cEhG2+nmJ8kBUpTFY2GDkJykz1rC95v5UpUTf5TWO4ia3MEaW
	orI0sO5euLe5hKHN5Ljgwqaj+XPyXAYjth2Ro51M7xIAbw7lTZCrX+PLxzpV8TnvYoduL9w59/RL3
	Oeu0qmdafIQ2XZO/FDTajKfbDl+/zTxjESs2v7P1Qovw1GljJhbUma49PDuIDZPpi9CDeBXQwMw42
	dRFXGsEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEYaM-00CrFc-Ef; Fri, 13 Aug 2021 14:55:02 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEYaA-00CrDX-9O
 for linux-rockchip@lists.infradead.org; Fri, 13 Aug 2021 14:54:54 +0000
Received: by mail-wm1-x329.google.com with SMTP id
 i10-20020a05600c354ab029025a0f317abfso9871486wmq.3
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Aug 2021 07:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=RNsPi3jDYyBzv2kUjVpJkokk1HayHjqKs+GTvpkRyVg=;
 b=suBO/Sv9jLaFXlKfn+u4jovTDNp7ztHgwGBe3sJ8oa+6JGxOEXHLdnGye0wEEF8jNm
 L4Q4MrjXiVru1C3Zg4NonC0hGk2z2cQSwkyWWxVatutnbJedKhOKYRyIM/MSRfun7var
 7nBelSI6at05aDH6kbZW2WgzXXIjonoXGEf9yAoYqm4/IhgfNqW6zwQ2Qweh+dkz7wSD
 DOJ5a+V2zzcO7/MiF4biYyenjpaqWGM4e0rCTcf7dASvT3CBiJ5/IIRBGytURqa5Dp/S
 b8BadL0eN4E9HDYsxSP9dmigSMqwo2BbIKPh6SJx6yczq3KoRFcqOy+aGM9k5lhY3IHT
 jZwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RNsPi3jDYyBzv2kUjVpJkokk1HayHjqKs+GTvpkRyVg=;
 b=quwrgaiweuBJBgmGJGFp1vrQcrgYSQZ5Fvqwx44flRC+N5e0XYp5yfZAexUShc5Kda
 ViMpSzR9dt33AtBSL9jyhi2yDNDlBecXTRnr7/ZZDE+CDOh5PcAC8wEV7BfDRJJIZZM/
 5Efx9K5dBwg9VS+ZRIlQC7aQZTQdVI6k+8VBy80S3iof2s/VQ/XDgiGreDs45PDt6st3
 l1u7HQPeXyiS9ZgmRh6wOpDiqCxoxUWDuke6wkEZ4u0QAUBl80FRQIhQVpHs9SEWu9mS
 uk7/bcaGnT+PMAhP5JsXqDAfxcAcbqLZfeRFOnYeptA8zMqaiwSJuaQFks1G8kFm9cJl
 roSw==
X-Gm-Message-State: AOAM533kfxRwL3lvmfZpd2yaqcKvvIHIeayg90NF5Y43OeB+TnPjb/ZX
 J3Osu068Vtdo7W9G9g7jxn57WQ==
X-Google-Smtp-Source: ABdhPJyoLasmj8kICLFfOtBuet4rZn2v2GaTohM62GKWy9ojCFy2A6ZonxXaRrz0w2gYuG0bemo1mA==
X-Received: by 2002:a7b:cf12:: with SMTP id l18mr3138037wmg.130.1628866483900; 
 Fri, 13 Aug 2021 07:54:43 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:5df3:d0eb:3945:640d?
 ([2a01:e34:ed2f:f020:5df3:d0eb:3945:640d])
 by smtp.googlemail.com with ESMTPSA id r129sm1629693wmr.7.2021.08.13.07.54.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Aug 2021 07:54:43 -0700 (PDT)
Subject: Re: [PATCH v3] arm64: dts: rockchip: add thermal fan control to
 rockpro64
To: Robin Murphy <robin.murphy@arm.com>, Peter Geis <pgwipeout@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210730151727.729822-1-pgwipeout@gmail.com>
 <ad6d8025-977c-9ff2-81ff-a417df48231c@linaro.org>
 <893701da-ea17-00ab-5e31-c745051ac9b9@arm.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <2b1050f2-0311-1871-820a-f876218894bc@linaro.org>
Date: Fri, 13 Aug 2021 16:54:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <893701da-ea17-00ab-5e31-c745051ac9b9@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_075450_360777_0BA26AC1 
X-CRM114-Status: GOOD (  16.70  )
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

CkhpIFJvYmluLAoKCk9uIDEzLzA4LzIwMjEgMTU6NTEsIFJvYmluIE11cnBoeSB3cm90ZToKPiBP
biAyMDIxLTA4LTEzIDEzOjU5LCBEYW5pZWwgTGV6Y2FubyB3cm90ZToKPj4gT24gMzAvMDcvMjAy
MSAxNzoxNywgUGV0ZXIgR2VpcyB3cm90ZToKPj4+IFRoZSByb2NrcHJvNjQgaGFkIGEgZmFuIG5v
ZGUgc2luY2UKPj4+IGNvbW1pdCA1ODgyZDY1YzE2OTEgKCJhcm02NDogZHRzOiByb2NrY2hpcDog
QWRkIFBXTSBmYW4gZm9yIFJvY2tQcm82NCIpCj4+PiBob3dldmVyIGl0IHdhcyBuZXZlciB0aWVk
IGludG8gdGhlIHRoZXJtYWwgZHJpdmVyIGZvciBhdXRvbWF0aWMgY29udHJvbC4KPj4+Cj4+PiBB
ZGQgdGhlIGxpbmtzIHRvIHRoZSB0aGVybWFsIG5vZGUgdG8gcGVybWl0IHRoZSBrZXJuZWwgdG8g
aGFuZGxlIHRoaXMKPj4+IGF1dG9tYXRpY2FsbHkuCj4+PiBCb3Jyb3dlZCBmcm9tIHRoZSAocmsz
Mzk5LWtoYWRhcy1lZGdlLmR0c2kpLgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdlaXMg
PHBnd2lwZW91dEBnbWFpbC5jb20+CgpbIC4uLiBdCgo+Pj4gwqAgKyZjcHVfdGhlcm1hbCB7Cj4+
PiArwqDCoMKgIHRyaXBzIHsKPj4+ICvCoMKgwqDCoMKgwqDCoCBjcHVfd2FybTogY3B1X3dhcm0g
ewo+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGVtcGVyYXR1cmUgPSA8NTUwMDA+Owo+Pj4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaHlzdGVyZXNpcyA9IDwyMDAwPjsKPj4+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHR5cGUgPSAiYWN0aXZlIjsKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+
Pj4gKwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGNwdV9ob3Q6IGNwdV9ob3Qgewo+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgdGVtcGVyYXR1cmUgPSA8NjUwMDA+Owo+Pj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgaHlzdGVyZXNpcyA9IDwyMDAwPjsKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHR5cGUgPSAiYWN0aXZlIjsKPj4+ICvCoMKgwqDCoMKgwqDCoCB9Owo+Pj4gK8KgwqDCoCB9Owo+
Pj4gKwo+Pgo+PiBXaHkgdHdvIHRyaXAgcG9pbnRzID8KPj4KPj4gV2h5IG5vdCBvbmUgZnVuY3Rp
b25pbmcgdGVtcGVyYXR1cmUgYW5kIG5vIGxvd2VyIC8gdXBwZXIgbGltaXRzIGZvciB0aGUKPj4g
Y29vbGluZyBtYXBzID8KPiAKPiBDZXJ0YWlubHkgd2hlbiBJIGZpcnN0IGRpZCB0aGlzIGZvciBO
YW5vUEMtVDQsIElJUkMgaXQgd2FzIHRvIGF2b2lkIHRoZQo+IGZhbiByYW1waW5nIHVwIHRvbyBl
YWdlcmx5LCBzaW5jZSBsZXZlbCAxIGZvciBteSBmYW4gaXMgZWZmZWN0aXZlbHkKPiBzaWxlbnQg
YnV0IHN0aWxsIGNvb2xzIGVub3VnaCB0byBsZXQgYSBtb2RlcmF0ZSBsb2FkIGV2ZW50dWFsbHkg
c2V0dGxlCj4gdG8gYSBzdGVhZHkgc3RhdGUgYmVsb3cgdGhlIHNlY29uZCB0cmlwLgoKVGhhbmtz
IGZvciB5b3VyIGFuc3dlci4KCldoYXQgd291bGQgYmUgdGhlIGdvdmVybm9yIGZvciB0aGlzIHNl
dHVwID8KCgoKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9yZyDilIIgT3Bl
biBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAgPGh0dHA6Ly93
d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDovL3R3aXR0ZXIu
Y29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJv
LWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
