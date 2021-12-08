Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9AEBC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=We4KGctONfWI/BW0pI/ZUvizZJqUWrtKXGUnX1Gl2Qo=; b=B0gYcbFbv0+SwDkOa431bQd9eU
	7YUAdUl1krXriiSsPwdCMd216qtMa8Fw95u/OAg+rGZb/xD22Sgt7ZnMwcR1BbmmhyQuZhWsla6th
	HU4QYhkfK63hOsU4KkQ0V1ZHW9bhA2OQ3JNmBa9Y6oizE+U2KS7YUROJWNbnKp+OTNLfaOaMWlIIB
	eGIDyeri6mPxrC4sPjiGkjk1VO9pyqcE0s4EiMCAdAxvNx2xnNrMRiTMnB1wdG/sAQXIynMNXDHk6
	oLURj7jCZ0LpPb4VInO9qBEY/9VD9c4D60dDsCcdlj1GnLuPuZLX3BN1EScLS03v0IauiOL4b0M+M
	+bWkC19Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muzcK-00DWWO-9k; Wed, 08 Dec 2021 16:16:28 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muzcG-00DWSV-6v
 for linux-rockchip@lists.infradead.org; Wed, 08 Dec 2021 16:16:25 +0000
Received: by mail-wr1-x42c.google.com with SMTP id d9so4982690wrw.4
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Dec 2021 08:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=s3S6Qu67tEui0DUsR7g/4/F35A73+SPBA+zRxkUhaG8=;
 b=MOtB1a6nj3/eQ3UtTDyQj1j+VVPdxYy6CedR8STiP6JvFUMlapTFPLi4UqGLNvsarp
 LBJcZFgfWEfjBSAAsypXx6MZtRZIkpUiNnsuhfbv/v8ov6rSYP/ZvOMQGqIat3nqxTUE
 sZT4IGJtCEQtYlnhi+uHHCl8gv/wD/2me2DEVJy3eYtdc4A+xHBTdxA1EjO3til/UDMm
 H/1edaw3ZvxzNZs7S/nWmnPAoIfTzxFkuQvzRY5Zg2TIP1/22hviuBUTchcYCqzkEiCs
 YLG2lwVRBbHfl0Z0TO8HEmsEIUF8y/l4xfS0BqKLlBXZ8DuHBBHsxnhYUoXSD5M9ohK7
 erVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=s3S6Qu67tEui0DUsR7g/4/F35A73+SPBA+zRxkUhaG8=;
 b=045AqddOl/BwqwVdb5aCOF+aF36VQVA7aDlQj4S6YVg3+TWx0C6FtsNd6tKguXsw4d
 PZsq4NeGj6h1xALb1nVefZGE3D3IFpUS3iw1ROtSsbHxynsscJxKBj1u5otYFNWDcpz+
 3rrcx87f5fLXBfJoyyAtZpK2z6vFSK2PZXFiAbOiBgtx7jCTmQfc72pyHQls8FQQJ41I
 hQjR0Oa7ZGL6EnxFt/wa/IKduq+H48bFgJAYXIkJS6fFim5/QeDywtfJetGZUJh4ZLk5
 uPMwiqngbdagy4j+Yf29oxb2P6PQSIJg8xU35LCV1McVcHtrld8uZQFmxU9pj7IAknAA
 p9Dw==
X-Gm-Message-State: AOAM532jPTQMedMnNA0HZkxz12MSt0oYXh5A4L4M7s5e4KO7kGlEKSRH
 5Gx7AvU1KMw6mv4CHvrnc6e/WHxs55ot1A==
X-Google-Smtp-Source: ABdhPJyCcP3HTyvqGn8Z6fbCxuZdPjgKKEAI4N4Ibrf6Rk4KMeup+vzySvXG4xrGLqlNMeEqm37nlA==
X-Received: by 2002:a5d:48cf:: with SMTP id p15mr60128362wrs.277.1638980181213; 
 Wed, 08 Dec 2021 08:16:21 -0800 (PST)
Received: from ?IPv6:2a01:e34:ed2f:f020:8ae8:ca1f:ff1a:a23d?
 ([2a01:e34:ed2f:f020:8ae8:ca1f:ff1a:a23d])
 by smtp.googlemail.com with ESMTPSA id r83sm6322557wma.22.2021.12.08.08.16.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Dec 2021 08:16:20 -0800 (PST)
Subject: Re: [PATCH v2 2/5] arm64: dts: rockchip: Add powerzones definition
 for rock960
To: Rob Herring <robh@kernel.org>
Cc: arnd@linaro.org, heiko@sntech.de, ulf.hansson@linaro.org,
 rjw@rjwysocki.net, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, lukasz.luba@arm.com,
 Robin Murphy <robin.murphy@arm.com>, Johan Jonker <jbx6244@gmail.com>,
 Helen Koike <helen.koike@collabora.com>,
 Brian Norris <briannorris@chromium.org>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20211126181500.3404129-1-daniel.lezcano@linaro.org>
 <20211126181500.3404129-2-daniel.lezcano@linaro.org>
 <CAL_JsqK1tsOqUYrLkZCo95BC=AXwZxai947x41zYpeHbodvwFg@mail.gmail.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <82ac88d2-5419-4c1f-e81a-154c65b39c1b@linaro.org>
Date: Wed, 8 Dec 2021 17:16:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqK1tsOqUYrLkZCo95BC=AXwZxai947x41zYpeHbodvwFg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_081624_289135_1B6D9CE2 
X-CRM114-Status: GOOD (  12.50  )
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

CkhpIFJvYiwKCk9uIDA3LzEyLzIwMjEgMTk6NDEsIFJvYiBIZXJyaW5nIHdyb3RlOgoKWyAuLi4g
XQoKPj4gICAgICAgICB0aGVybWFsX3pvbmVzOiB0aGVybWFsLXpvbmVzIHsKPj4gICAgICAgICAg
ICAgICAgIGNwdV90aGVybWFsOiBjcHUtdGhlcm1hbCB7Cj4+ICAgICAgICAgICAgICAgICAgICAg
ICAgIHBvbGxpbmctZGVsYXktcGFzc2l2ZSA9IDwxMDA+Owo+PiBAQCAtMjAyNyw2ICsyMDUwLDgg
QEAgZ3B1OiBncHVAZmY5YTAwMDAgewo+PiAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjcnUg
QUNMS19HUFU+Owo+PiAgICAgICAgICAgICAgICAgI2Nvb2xpbmctY2VsbHMgPSA8Mj47Cj4+ICAg
ICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzMzOTlfUERfR1BVPjsKPj4g
KyAgICAgICAgICAgICAgICNwb3dlcnpvbmUtY2VsbHMgPSA8MD47Cj4+ICsgICAgICAgICAgICAg
ICBwb3dlcnpvbmUgPSA8JlBLR19QWj47Cj4gCj4gRXZlcnkgQ1BVIGFuZCB0aGUgR1BVIGFyZSBp
biB0aGUgc2FtZSBwb3dlcnpvbmUuIFdoYXQgaXMgdGhlIHBvaW50PyBEbwo+IHlvdSByZWFsbHkg
aGF2ZSB0byBiZSB0b2xkIHRoYXQgQ1BVcyBhbmQgR1BVIGFyZSBhIHNvdXJjZSBvZiBoZWF0IGFu
ZAo+IG1pZ2h0IG5lZWQgdG8gYmUgbGltaXRlZD8KCkEgcG93ZXJ6b25lID09PiBjYW4gcmVhZCBw
b3dlciAmJiBzZXQgcG93ZXIgbGltaXQKCkV2ZXJ5IENQVSBpcyBhIHBvd2Vyem9uZSBhcyB3ZWxs
IGFzIHRoZSBHUFUuCgpUaGV5IGFyZSBhbGwgZ3JvdXBlZCB1bmRlciBQS0dfUFouCgpUaGF0IG1l
YW5zIHdlIGhhdmU6CgogcGtnCiAgfC0tIGNwdTAtMwogIHwKICB8LS0gY3B1NC03CiAgfAogIGAt
LSBncHUKCldlIGNhbiByZWFkIHRoZSBwb3dlciBjb25zdW1wdGlvbiBvZiBjcHUwLTMsIGNwdTQt
NyBvciBncHUgYW5kIHNldCB0aGVpcgpwb3dlciBsaW1pdC4KCldlIGNhbiByZWFkIHRoZSBwb3dl
ciBjb25zdW1wdGlvbiBvZiBwa2cgKHdoaWNoIGlzIHRoZSBzdW0gb2YgdGhlIHBvd2VyCmNvbnN1
bXB0aW9uIG9mIGNwdTAtMywgY3B1NC03IGFuZCBncHUpIGFuZCBJIGNhbiBzZXQgdGhlIHBvd2Vy
IGxpbWl0CndoaWNoIHdpbGwgZW5zdXJlIHBvd2Vyb2YoY3B1MC0zICsgY3B1NC03ICsgZ3B1KSA8
PSBwb3dlcm9mKHBrZykuCgoKCi0tIAo8aHR0cDovL3d3dy5saW5hcm8ub3JnLz4gTGluYXJvLm9y
ZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCgpGb2xsb3cgTGluYXJvOiAg
PGh0dHA6Ly93d3cuZmFjZWJvb2suY29tL3BhZ2VzL0xpbmFybz4gRmFjZWJvb2sgfAo8aHR0cDov
L3R3aXR0ZXIuY29tLyMhL2xpbmFyb29yZz4gVHdpdHRlciB8CjxodHRwOi8vd3d3LmxpbmFyby5v
cmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
