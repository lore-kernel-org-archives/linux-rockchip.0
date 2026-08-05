Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A48CBC55ABF
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Aug 2026 03:48:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Z3lXHWzw5LqEzM39KXtjx/65v6/w0GTQj5s/84NjnM=; b=t4U8HY0zxCwYia
	eSF3waJXbwtqCIA3V6g5l/8PFExshoM1imr7TJlcP6DO8suHJvC3MvNToB8AI0Ru22Yt/P1w53Dfk
	5zVugb42toXbU1pSiAuVoNwPAa/C0goSrwXcCna+VB1+tme5qOerAFl4tpltrAuSS4kQwXN8+SBq9
	B4TMtj/iNUNGEZ+JdbQe/8dq2vlTvcdEY7G3DUCIszyPD7bVEnaf3iwwgSP2GpvI00kvocply3jtS
	I9GNceIux0u/qctC5QDgOCkqZHS+Tky3qY3j+VWbsdDdKqNkd/p2cFsoJSvy1aFbWpo9cUB8C/CAH
	LVd3GdGEt0JCcTWBT0Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrScM-00000003BiK-3wyp;
	Wed, 05 Aug 2026 03:48:34 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrScJ-00000003BhV-4983
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Aug 2026 03:48:33 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-47f7027ca11so274988f8f.3
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Aug 2026 20:48:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785901709; cv=none;
        d=google.com; s=arc-20260327;
        b=YEYyTKaS9Bkrm/dtCfstfBn6aJ9oItxK7ATdtd6OSecEuOzMqfbckRpkzc54FlDeZG
         WjlbTmN09ME/9l5mg8ESa2U7K6pQnUOP7/lw24I4Fphh70rh0eD9bRvLzOnU3qLuYbl3
         /Nxz93C1/9aghYv/2nqgqN5oL6DJBMaiEU9h8uFamXN8IwXPPX1Tmh8h+L7W9s6GsX1O
         +h6n2k1NFxa1SuyJgCq+UznEIsG7xzUz7Ep75GAHww8Q/VaEK6vg4xkpyZ4Z8nlhZg6M
         gI0s/tl2vzNycvsS3h9gI7l6FApEvxwVppBbkwHN5zKJPo0pP9d38OFrFl1CssbFQequ
         VtGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IC37ysMh6ZKiMmXZQoVdT7RLjzLigmBICjngmFTmRM8=;
        fh=DsR/UKZwUd9cuFZ1CdAIW5aE4xoBTX7toxjvK00UEcQ=;
        b=V7mRvjYkN9glCv5g/839O5pZGnp4ONKzzXnka2qcNJS7MHUm9qiOZAuXDT2l15gQie
         bMa1bZF1N3afP/ykaS3znXqSawKGf+5m0hRaANjc3sGAC5szBRuHwXnMiZq+1CAxBTuP
         Y4+QxqsPX4F/k4jLrbM0HYWOwuOLAeMSya2c3UX5UtO4FB8Bf9rjxvyWisADSuy2dO8N
         KH0p4uWlTfGjky5dFh5So60xaYnZ6V78Zz9PbdVzOb5lJkSU8D1FuTzU7ZLTd+pHtdBM
         lBCi/slBGdpRUDJ4Q9dytA3licB2/Fjk8qoEKEQy36WwZx4vfVdrIE8c/qtjkJRvOAQ1
         xv6A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785901709; x=1786506509; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=IC37ysMh6ZKiMmXZQoVdT7RLjzLigmBICjngmFTmRM8=;
        b=eaIj7SoV+8VQz54qJ8FV8AAHypnaGHk19i7QxBrojCEepCrPDxwbhyEuElk8K8jG8V
         Fe2HtCKsu1EY0xZa5t+Ik79NgPqjBdCn/rMNESevIzI4zvP4fwP378poBVeAnX2Lq3eE
         +lQlW7spk7YxP/UIvHdZJopKOMebUF8VyqVKvHDuJLpa4FkB5lAiJPT33y1QEK6J4nqY
         HjwV/czyaRgIVD8i2Hhyy2A5ZDebtdTy2k0YMB7wjtx3UHGZWqMejF8FWEDUeBcMwNGX
         Z8z/UvNHpqnWsLsRBzMExFOrLzclFcL1ZtrYiNnZ4JqVYP/vEmtobxOjhv6oBPj70h4E
         UyVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785901709; x=1786506509;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IC37ysMh6ZKiMmXZQoVdT7RLjzLigmBICjngmFTmRM8=;
        b=BHkSsgs+X3+guvab/gPgwg+FtSUPrqoYopS3PQfccfmzlVrcSa4m59ZT+4AwCerZlj
         0g9WNgkgBvAPz5OfER5NVZOhIb7HVrj6zuBiGO1kty1WU8jvuv5ecJX8P8A2FW/XxKYR
         KqKjl9DDQjQafVU9Sd4+Z2cimpwfZEmT/Fgf0Q4/l0KrHRbVrO1SjcIfX/n5Dlc1IBb1
         NMKkXfJKABO26zF2iz8t5t3ZuNf+m906frWlnt1NbIQE4Dl9U9zkZl5uUQto2dtLM0JA
         Ey27NslReMF7cQI/QqEf7d525OpC/1Oe1RQIXTzRIXFWtxfO6e1Am1UQ005xK9bqfI9W
         +5Fw==
X-Forwarded-Encrypted: i=1; AHgh+Roj0loTTrHgTVJrgP+LZqyu64CpG1oZu5DNNcomIuPdyd6PsbkC6xuK2m2/ZSR59bQjpKu7R3BQk7SBrx82Ww==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5LHfzOgjpEk1z6DYd/Cdm1NajhWWge8aP8T3+ukSMpiCaxfDc
	+nAlL3BtswM79L/RegnRnFOTspMfqLgxLghD3B9YuMP6V73G0a7ikStm/4eWcJdBeeeqckXUt8s
	9zcHaIBxB25zR1QfQN0vzL+1mzMB81TM=
X-Gm-Gg: AR+sD11cb/Wsi3Ujfy1P1NWuz6Osj4okjoDOBbpOVgtnDOCZiH//i4416g5xP/LgTxY
	bJaqTTstc9KdrCyvj1qkRJiOFIJQZ9Q+9R7IvgKOOBTPbZhYWXkruHLOWutJoZg/H9pM0pWChoT
	w4pKH5AZuo5B5YLD4ZqSx2e+23ot/EjugBVuZs5FWaYaSxee6A3DTYTWVC1E647nddCLbYKWyMS
	0KQ7pjNUqfa9cjPNG6PaOumszRto5pU7ornak96CwR7SiZRUAFRXwnvNcdSpg5G34L9CYc8zFsw
	GKQh1lE7ORMhyo2zqtIqOGR29A9FWmCUI/WWNqEcbP3R4PflTg528rKfWM2FxAjl7g0RqvZkXUR
	Mrt9mGgbEuqmN
X-Received: by 2002:a7b:c408:0:b0:498:ee7:e403 with SMTP id
 5b1f17b1804b1-4994e7db010mr23612565e9.19.1785901709391; Tue, 04 Aug 2026
 20:48:29 -0700 (PDT)
MIME-Version: 1.0
References: <tencent_FF56D057857A89EBFD82C037D80A53598C06@qq.com>
In-Reply-To: <tencent_FF56D057857A89EBFD82C037D80A53598C06@qq.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 4 Aug 2026 22:48:17 -0500
X-Gm-Features: AUfX_mw42ZkfMvaqB3cDywMHwxabaZ-q76T8alcxd9P7DU-SEanTaAyKauHIg34
Message-ID: <CALWfF7Ly=o85=ZQ3Laewe5VwW6agHLvqqSPKFDzcf75UWYnP4g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable the NPU on LubanCat 4
To: Pufan Jin <2254650260@qq.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_204832_062004_3D9CF462 
X-CRM114-Status: GOOD (  16.03  )
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

T24gVHVlLCBBdWcgNCwgMjAyNiBhdCA5OjQ54oCvQU0gUHVmYW4gSmluIDwyMjU0NjUwMjYwQHFx
LmNvbT4gd3JvdGU6Cj4KPiBUaGUgdGhyZWUgUktOTiBjb3JlcyBhbmQgdGhlaXIgSU9NTVVzIGFy
ZSBkaXNhYmxlZCBieSBkZWZhdWx0IGluIHRoZSBTb0MKPiBkdHNpLCBzbyB0aGUgYm9hcmQgaGFz
IHRvIGRlc2NyaWJlIHRoZSBOUFUgc3VwcGx5IGJlZm9yZSB0aGV5IGNhbiBiZQo+IGVuYWJsZWQu
Cj4KPiBUaGlzIGJvYXJkIGZlZWRzIGJvdGggdGhlIE5QVSBsb2dpYyBhbmQgaXRzIFNSQU0gZnJv
bSBhIHNpbmdsZSBSSzg2MDIKPiBvdXRwdXQgb24gaTJjMS4gVGhlIHZlbmRvciBEVFMgbWFrZXMg
dGhhdCBleHBsaWNpdCBieSBnaXZpbmcgdGhlIHNhbWUKPiByZWd1bGF0b3Igbm9kZSB0d28gbGFi
ZWxzLCB2ZGRfbnB1X3MwIGFuZCB2ZGRfbnB1X21lbV9zMCwgYW5kIHRoZW4KPiBoYW5kaW5nIG9u
ZSB0byBya25wdS1zdXBwbHkgYW5kIHRoZSBvdGhlciB0byBtZW0tc3VwcGx5LiBUaGVyZSBpcyBu
bwo+IHNlcGFyYXRlIG1lbW9yeSByYWlsIHRvIGRlc2NyaWJlLCBzbyBucHUtc3VwcGx5IGFuZCBz
cmFtLXN1cHBseSBib3RoCj4gcG9pbnQgYXQgdmRkX25wdV9zMC4gVGhlIGJpbmRpbmcgcmVxdWly
ZXMgYm90aCBwcm9wZXJ0aWVzLgo+Cj4gTmVpdGhlciBwcm9wZXJ0eSBpcyB3aGF0IGFjdHVhbGx5
IGVuYWJsZXMgdGhlIHJhaWw6IHRoZSByb2NrZXQgZHJpdmVyCj4gbmV2ZXIgcmVxdWVzdHMgYSBy
ZWd1bGF0b3IsIGl0IG9ubHkgdGFrZXMgY2xvY2tzLCByZXNldHMsIHJlZ2lzdGVyCj4gcmFuZ2Vz
IGFuZCBhIHBvd2VyIGRvbWFpbi4gVGhlIHJrMzU4OCBwb3dlciBkb21haW4gZHJpdmVyIG1hcmtz
Cj4gUkszNTg4X1BEX05QVSBhcyBuZWVkaW5nIGEgcmVndWxhdG9yLCBzbyB0aGUgcmFpbCBoYXMg
dG8gYmUgZGVzY3JpYmVkIG9uCj4gcGRfbnB1LCB0aGUgcm9vdCBvZiBWRF9OUFUgdGhhdCB0aGUg
dGhyZWUgcGVyLWNvcmUgZG9tYWlucyBoYW5nIG9mZi4KPiBUaGlzIG1hdGNoZXMgd2hhdCByb2Nr
LTViIGRvZXMuCkFzIHlvdSBtZW50aW9uZWQgaGVyZSwgdGhlIHBvd2VyIGRvbWFpbiB3aWxsIGNv
bnRyb2wgdGhlIHJlZ3VsYXRvci4gU28KcGxlYXNlIHJlbW92ZSB0aGUgcmVndWxhdG9yLWFsd2F5
cy1vbiBmcm9tIHRoZSByZWd1bGF0b3IuCgpKaW1teQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
