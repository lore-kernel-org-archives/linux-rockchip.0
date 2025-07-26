Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32857C83F17
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Jul 2025 11:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KmeCBU/o/BejE/iZdjgpOm+pUsv3SKLLSIjceWY1C3U=; b=N3Kvvr/2aa016C
	a2Kg5Nm2qWBy4PZVyecAXMc23eRdJgQB9dRk5gMG6sxyT+0kC/nV4MtWCLUpGhcFfNgNDfQlDPa9s
	95aMEb3hnVxgF9XS0oyHZL+BtqdzVeJHT+vgucPcv32WyS06/ivzUHC0dGdPGwpBUj16KlpvP/Gpq
	vgY7mRex4W2bEQI+diVBZ6p9AZsrkDE9r+a2Pu8Xrq8ajbruAsSs7DVt6I4QnxKMeo9lvXVLFYEIK
	rKqcF5xgaCDJ4U0e2UDNLzJIM69ey3eIaJEcufDyHPtHnJd++Vk8pSRFgu8gBaeeVqnHLqFqyVIv1
	MQrPyELrMXTATqJyrI3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufcmc-0000000BOHY-1ZgO;
	Sat, 26 Jul 2025 11:09:42 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufckA-0000000BO9b-3x1g;
	Sat, 26 Jul 2025 11:07:12 +0000
Received: by mail-wr1-x42a.google.com with SMTP id ffacd0b85a97d-3a51481a598so1517632f8f.3;
        Sat, 26 Jul 2025 04:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753528029; x=1754132829; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pNa3qU18en9WzZnFesAoBlTJYBP5hk4MnfgIv/faVHU=;
        b=EMLvQaRlG1mkh/O1D62MelUqNMGRbt5CVgq/swocYabHhi9NKl/NQb9VhRwsubbXm6
         MOx9aKd9qfKgZBF08McdO7abLCiGVvFkakAYWKFE6Zx54CrlT9K9bjax7IzxXa2iSSeS
         C1rwe8RUf4KZ1WpIByjILZOYLAIJUHDlg+u28ymt2iO3WBwneu+8WAcfygbSy71H6XbN
         b+TJXECicMmgdE8ViKaj8Y+sHsTEkzD2FpuTMmpD++8xx9i37ygTuvEbR++6v346Tr9H
         acClto00iZSrRtpHtvFvOKMzJCs66qZMPY8eAtelT96zZFRUCOpWzafNoNMDgJcagVjs
         FmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753528029; x=1754132829;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pNa3qU18en9WzZnFesAoBlTJYBP5hk4MnfgIv/faVHU=;
        b=Xzfj4XAltx/SOw2rbHgNqbpJl4Smr+xnvjWMjP9QG1uoDsrx5jlFL0CTrHqIG+OcO4
         GJh8asiwOLK5xHO01ZjzB9+dXMXWbY6IMkHy4sr8GOYyHMxAeWfrSyfd7/cWEdEkNIAU
         l3Ewjy+VYLEbQPj9fPI8ZjYRu51d3fQoJ5dD84BomqN7RwW8ciFGxfVK/6rj/tKhIPRS
         QTBXK3r/8ocyNBt245H4TsYrmLGm5cBqo9WAGAr63U/jOmNwyAwFCBVLfmDurw7YyytN
         k/9/XMyc2NXXUt3Z6lOLgKFM6VoC1X3Qpv3ZYOh0WaqCYNWsMRENrJClyzUsSrYTkeVD
         WcZw==
X-Forwarded-Encrypted: i=1; AJvYcCUXctJg+uxGm6UCjxfV4aJ2+xf+eEvaXJKph4RYwqBEJlyFWE8qVNWkh2WwWO7ANdyFVfveOjRfFxXGIYED9rmj@lists.infradead.org, AJvYcCVJdWjuUEKC+x0Ll3qFIfUpTmEoLlU45OYDV7NmOwZ2KhS0UuF2ADTUXCUABBhVUd9ebejW7XwGH2AFxbk1pdQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwNKL+WS3k/16XtD+ZF3LnLUxkZupVCRQuIbOfFldnd7F6mfG8t
	I/yriG2wlRY9OR9Hl8uy48Zruu+Ob0EIvOPYUc/kYbvA8v0MK95HuVSkwSuM
X-Gm-Gg: ASbGnctSLVYHEYYSauxU8Y40np+RRan6PENh7RRpKdFimBbEUYG9r1TsIQUrHfpV2qP
	Mc/7Nl28nmAEHqErmIdp8mu5LGKiq32USI3K/Ewl65kv6WGMxw417/ePOgLNhuCIrnKHwKc57uT
	n/4Ay8rhGS5/fgiDB6rqRcr8wBpUJOCK4gMPwRqCB+9+R3Z0GO1QviUxX21rKGeWUG8YR9zgIPy
	2p7gp8cYtUkXVDbYdD2PKjgHXSmYeqy77ykrU0IhZwWuvQEs/uDPjEtsD/8nLp/g/qqllO2tGPS
	MJQtVN33vFZXw++NxnJ+B6U1gQUGyQdxZCWn0wiuRAqArkjA3iwOphg7Xe2jiTybxIgAHLlmNgJ
	VUUVqf8tnh/pPQCHJwiKJJ+aPIDjEyR2SJK4pnps96E/intUygCeM8vnxf6vOdgQnGqNU
X-Google-Smtp-Source: AGHT+IErIrHwPR1r+j+7XXM0CCTaccjvC5i4ORfw15B6NsxaP8RzwsKAVSUb6nuEIQdtcDZU3WEVog==
X-Received: by 2002:a05:6000:40df:b0:3a5:3a03:79c1 with SMTP id ffacd0b85a97d-3b776676d43mr4216161f8f.48.1753528028455;
        Sat, 26 Jul 2025 04:07:08 -0700 (PDT)
Received: from ?IPV6:2a02:810b:f13:8500:7a8a:e7b9:25b7:a4f6? ([2a02:810b:f13:8500:7a8a:e7b9:25b7:a4f6])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b778f03436sm2513217f8f.51.2025.07.26.04.07.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Jul 2025 04:07:08 -0700 (PDT)
Message-ID: <6f62d1a8-0e5b-4e66-bbe2-53a355df3c1e@gmail.com>
Date: Sat, 26 Jul 2025 13:07:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] arm64: dts: rockchip: Add ROCK 2A/2F, Sige1 and
 NanoPi Zero2
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: devicetree@vger.kernel.org, heiko@sntech.de, jonas@kwiboo.se,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, ziyao@disroot.org
References: <6d93c92d-2bba-4247-960d-5f2e5e12b594@gmail.com>
 <20250723134019.1076352-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <20250723134019.1076352-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250726_040710_981862_5928E519 
X-CRM114-Status: GOOD (  18.16  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Cj4gSGksCj4KPj4gTm9wZS4KPj4KPj4gQXJlIHlvdSByZWFsbHkgcXVlc3Rpb25pbmcgbXkgcGlj
dHVyZT8gUmlkaWN1bG91cyAuLi4gc2VlIFswXQo+IE5vLCBJIG1lYW4gc29tZSBib2FyZHMgb2Yg
dGhpcyBtb2RlbCBoYXZlIFNvQyBzaWxrc2NyZWVuIFJLMzUyOCBhbmQKPiBvdGhlcnMgaGF2ZSBS
SzM1MjhBLiBUaGUgc2FtZSBpcyB0cnVlIGZvciBhbm90aGVyIEhpbmxpbmsgSDI4SyBTQkMuCj4K
Pj4gSSdtIHNvcnQgb2YgaW1wcmVzc2VkIG9uIHdpdGggd2hpY2ggY29udmljdGlvbiB5b3UgY29u
dGludWUgdG8gY2xhaW0KPj4gcGxhaW4gd3JvbmcgdGhpbmdzOiBbMV0sIFsyXSwgWzNdLgo+IElm
IHlvdSBzcGVuZCBhIGZldyBtaW51dGVzIHJ1bm5pbmcgbWFpbmxpbmUgdS1ib290IG9yIEJTUCBr
ZXJuZWwKPiBvbiB5b3VyIFJLMzUyOCBib2FyZCBiZWZvcmUgYmxhbWluZyBtZToKSSBjYW4ndCBz
ZWUgdGhlIHBvaW50IGhlcmU6IEkgZG9uJ3QgdGhpbmsgaXQgbWF0dGVycyB3ZXRoZXIgeW91IG9y
IEkKYWN0dWFsbHkgaGF2ZSB0aGlzIHZlcnNpb24gb24gYW55IG9mIG91ciBib2FyZHMuIEl0IGV4
aXN0czogeW91IG1heSBsaWtlIGl0Cm9yIG5vdC4KClRoaXMgcGljdHVyZSB3YXMgYWN0dWFsbHkg
YSByZXBseSB0byB5b3VyIGNsYWltICIuLi4gc28gd2UgaGF2ZSBuZXZlciBzZWVuCnRoZSBzaWxr
IHNjcmVlbiBwcmludGVkIHdpdGggUkszNTI4IC4uLiAiwqAgaW4geW91ciBtYWlsIGRhdGVkIDIw
MjUvMDcvMTkuCgpJbml0aWFsbHkgbXkgb25seSBxdWVzdGlvbiB3YXMsIHdoeSB3ZSBkb24ndCB1
c2UgInJvY2tjaGlwLHJrMzUyOGEiIGFzCmNvbXBhdGlibGUgd2hlbiB3b3JraW5nIG9uIGJvYXJk
cyB3aGVyZSB0aGUgc2lsa3NjcmVlbnMgc2F5cyBleGFjdGx5IHRoYXQuCkl0IHdhcyBvYnZpb3Vz
bHkgY29waWVkIGZyb20gdmVuZG9yIGFuZCBub3cgaXQncyAidG9vIGxhdGUiLCAidG9vCmNvbXBs
aWNhdGVkIiBvciBzb21ldGhpbmcsIGlkayBhbmQgSSdtIGZpbmUgd2l0aCBpdC4KPiBCTDMxOgo+
IElORk86ICAgIHJrX290cF9pbml0IGZpbmlzaCEKPiBJTkZPOiAgICBSSzM1MjggU29DICgweDEw
MSkKPgo+IG1haW5saW5lIHUtYm9vdDoKPiAtLS0tLS0KPiBVLUJvb3QgMjAyNS4wNy0uLi4KPgo+
IE1vZGVsOiBHZW5lcmljIFJLMzUyOAo+IFNvQzogICBSSzM1MjhBCj4gLS0tLS0tCj4KPiBCU1Ag
a2VybmVsOgo+IFsgICAgMC43Njg1MTRdIHJvY2tjaGlwLWNwdWluZm8gY3B1aW5mbzogU29DICAg
ICAgICAgICAgOiAzNTI4MTAwMAo+IFsgICAgMC43Njg5OTBdIHJvY2tjaGlwLWNwdWluZm8gY3B1
aW5mbzogU2VyaWFsICAgICAgICAgOiAuLi4KPgo+PiBJJ20gZmluZSBpZiB1cHN0cmVhbSBkZWNp
ZGVzIG5vdCB0byBjYXJlLiBCdXQgaXQgaXMgYW5kIHJlbWFpbnMgd3JvbmcKPj4gdG8gY2xhaW0g
dGhhdCB0aGUgb3RoZXIgdmVyc2lvbiBkb2VzIG5vdCBleGlzdAo+IFVubGVzcyBSb2NrY2hpcCBz
YXlzIHRoZXkgZnVzZWQgdGhlIHdyb25nIE9UUCBkdXJpbmcgcHJvZHVjdGlvbi4KPiBSZWdhcmRs
ZXNzIG9mIHRoZSBTb0Mgc2lsa3NjcmVlbiwgdGhlIGNoaXAgdHlwZSBvbiBPVFAgaXMgdGhlIHNh
bWUsCj4gc28gaG93IGRvZXMgUm9ja2NoaXAgZGlzdGluZ3Vpc2ggdGhlc2UgY2hpcHM/ClBsZWFz
ZSByZWFkIHRoZSByZXN0IG9mIG15IHByZXZpb3VzIHJlcGx5IHdoZXJlIEkgc2VudCBjb2RlIGxv
Y2F0aW9ucyAKd2hlcmUgYW5kIGhvdyB0aGV5IGRvLgo+Cj4gLS0KPiAyLjI1LjEKPgo+CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
