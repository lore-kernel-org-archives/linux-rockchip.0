Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15C0BCCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 04:44:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Rywl0P2+FUiqtLSb+qYgY9Zet+xxC5SGzC1aUlqqOY=; b=VWd5EIcDcmbIts
	0rgwFBA5xov5iJ9xfqpBI9bKCU9xMlOCowyLgwEJv1sI8pFWxigicG0xaxjXgYedtLVJHxGDTAeCE
	SkDGwTH80RaA/VGC3Z4pwO4pId89vDpOw5yjeo11VAIoAvtjYt3NX0fKljthIuNq1zoDGrCUC/rkm
	fWE/kHdLXlZL9J6UoMf1Qx2nM6tmGooZCjOnkasHykEpcezpuAcVjKbArqDngI+otvCmi5MThjuSu
	UKoVN+f26FuSZEtmo6zGGM2MIrjLCjqSmgAIdoX5hbVrromvZrkdhFj8lyzbPBV0XqlwMhTQQZsii
	atKh9kvse0ziVXTnpn4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAhkn-0000000BspI-0eap;
	Mon, 20 Oct 2025 04:44:17 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAhkk-0000000BsoU-0ok4
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Oct 2025 04:44:15 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-7811fa91774so3382764b3a.0
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Oct 2025 21:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760935453; x=1761540253; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=spA7o91KDi70Ll6ROh4SAqPxwOp0/KEcn9hPwha/0d0=;
        b=aG2h/ce/YSxo9vh76M0ReRBNXgk++lRYW/OgfdyOxpDYQkSTHz3nmog4zoBliic69n
         P64wwnNowp2LnDJCjR11oScS3zhWE6XxEzi2uKLw96LPwsAUenC5AjYrcxn/XSGu5rbc
         2ZXr8guBDqm3eRqHGEgCD+Rg4KGW4jvJ4+vNUMB5eyTUwk00khyQimB8kDT+UbzrrNUp
         rcl8aziXusk1NOFon7JZn7sJGX3a140dEuW0Va8vIH4qvM8OocYIyIgacfSBlYkngE3g
         s5hlx5nK+p1qCuD2sfY6WWRNiGKFY+xUxRg0GpQXVE5WbXj4J9KSJfG4g+W2T7gwd7mL
         CgdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760935453; x=1761540253;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=spA7o91KDi70Ll6ROh4SAqPxwOp0/KEcn9hPwha/0d0=;
        b=lw9Pz/LO7v+j8ufmz+y22ReOrPaO504xnjIPgvuHl5lVT8S9x+ZmDJbbc2sTfvHq8j
         fbXfmekg1+r3r8qCwJVOmFCQBCVNmJphKtEqu/zSktedu9mhl2edkp0IdORf616msgw/
         00AkcoYzPWFxKMY8pAXnDcx328XxLEtR4Qu7yat6IjZ+/aRV6wZSFWJDC2lvIsBDJG5W
         8V8Ri6kVw8zq/6PAu0C7QG+u2tap9LprAnGePvbX/pYsDRTAmiTYph3FuLUb2LXPlIFB
         fdPrXGhloWvj9UetwqznN9WtINftfhWuTfSGY4ZD2Ijp8pzzGoZ5v/fEgr/tKUgyv9nK
         ybYw==
X-Forwarded-Encrypted: i=1; AJvYcCXJ095yHIVAa60k4qF6EGd9j6b0/BxbpxPBH7aTArI/qnj+exbTnLQ3c7iYWOePy3SAmAlGiVOQhlfVjtQPRQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzCk8iLaVkHONVYGM0HCv0HHU8jLtjSUNA7onKXXvIdPDS9sFus
	EnWajh0p1m215s4ECwqJXMrqBr7lauU9Itbmxpz1YpfEOcB/ez2tWcRg
X-Gm-Gg: ASbGnctl/aM/+8Q4dLZOKtsdvOz0XsR8JVOVCjgJ7NqsmNges9T9wa7cs1kLBOHn9FR
	abo67zRgMCZGiQ6zvjkhqsUR9ZSBXfeA1rvejh8enoPDYEyg7dmaIHaIvIpVUQP7Z7b2z+8Gk0U
	ZMumbcBHck2VrhkHl+FgcIS8RGZgjK2jOVjWKhWB2ta8OLtXKoh6XvrtUUvemjuIl0DCoaU72il
	nrqoHsbvuzq0ElYLuxxiIGwJQSr59Vz+OxjTf1MACAw1QOumifgfTDLQflLoZyQXGRxsO/2G8v7
	FG8jPg6x9DccxJBBtfpcw6QUs8nlzJZHDqQTbsbPk0Eamo0p1J1+MugEyGUAuIO2f8j51nIyG1j
	mEmod6V1NSDLS+itUM0FBca691z45XgPfhQiIQKvPYrAzPcB6exc=
X-Google-Smtp-Source: AGHT+IHWbr3T6FVN2FnRLa94Qqq1QareIcDELv0GtDJz5J4Z5xhqWfcvLugBUZ8lTWu9Dmv4dv3pCg==
X-Received: by 2002:a05:6a21:328a:b0:334:97a1:36af with SMTP id adf61e73a8af0-334a8523ebbmr15097184637.13.1760935452280;
        Sun, 19 Oct 2025 21:44:12 -0700 (PDT)
Received: from CNSZTL-PC.lan ([2401:b60:5:2::a])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a2300f2598sm7217538b3a.40.2025.10.19.21.44.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Oct 2025 21:44:11 -0700 (PDT)
Message-ID: <08911ae2-fef3-432d-a236-d820c9cb67ac@gmail.com>
Date: Mon, 20 Oct 2025 12:44:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6
 with A3A444 chips
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Grzegorz Sterniczuk <grzegorz@sternicz.uk>, Dragan Simic
 <dsimic@manjaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jonas Karlman <jonas@kwiboo.se>
References: <20251017073954.130710-1-cnsztl@gmail.com>
 <d70c0eb5-9aa2-47b1-8205-81b724180319@rock-chips.com>
From: Tianling Shen <cnsztl@gmail.com>
In-Reply-To: <d70c0eb5-9aa2-47b1-8205-81b724180319@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_214414_274351_C13888E3 
X-CRM114-Status: GOOD (  17.00  )
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

SGkgU2hhd24sCgpPbiAyMDI1LzEwLzIwIDk6NTMsIFNoYXduIExpbiB3cm90ZToKPiBIaSBUaWFu
bGluZwo+IAo+IE9uIDIwMjUvMTAvMTcgRnJpZGF5IDE1OjM5LCBUaWFubGluZyBTaGVuIHdyb3Rl
Ogo+PiBGcm9tOiBHcnplZ29yeiBTdGVybmljenVrIDxncnplZ29yekBzdGVybmljei51az4KPj4K
Pj4gU29tZSBOYW5vUEMtVDYgYm9hcmRzIHdpdGggQTNBNDQ0IGVNTUMgY2hpcHMgZXhwZXJpZW5j
ZSBJL08gZXJyb3JzIGFuZAo+PiBjb3JydXB0aW9uIHdoZW4gdXNpbmcgSFM0MDAgbW9kZS4gRG93
bmdyYWRlIHRvIEhTMjAwIG1vZGUgdG8gZW5zdXJlCj4+IHN0YWJsZSBvcGVyYXRpb24uCj4gCj4g
TWF5IEkgYXNrIHlvdSB0byB0ZXN0IGFub3RoZXIgcGF0Y2ggSSBqdXN0IHBvc3RlZCB0byBzZWUg
aWYgaXQgZml4ZXMKPiB5b3VyIGlzc3VlPwo+IAo+IGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5v
cmcvcHJvamVjdC9saW51eC1tbWMvcGF0Y2gvMTc2MDkyNDk4MS01MjMzOS0xLSAKPiBnaXQtc2Vu
ZC1lbWFpbC1zaGF3bi5saW5Acm9jay1jaGlwcy5jb20vCgpUaGFuayB5b3UgZm9yIHRoZSBwYXRj
aCEgSSB3aWxsIGFzayBteSBmcmllbmQgdG8gdGVzdCBpdCBidXQgaGUgdXNlcyAKdGhpcyBib2Fy
ZCBhcyBhIGhvbWUgcm91dGVyLCBzbyBpdCBtYXkgdGFrZSBhIGZldyBkYXlzIG9yIHdlZWtzIHRv
IApyZXBvcnQgdGhlIHJlc3VsdC4KClRoYW5rcywKVGlhbmxpbmcuCgo+IAo+IAo+Pgo+PiBTaWdu
ZWQtb2ZmLWJ5OiBHcnplZ29yeiBTdGVybmljenVrIDxncnplZ29yekBzdGVybmljei51az4KPj4g
U2lnbmVkLW9mZi1ieTogVGlhbmxpbmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4KPj4gLS0tCj4+
IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNpIHwg
MyArLS0KPj4gwqAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9ucygt
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
bmFub3BjLXQ2LmR0c2kgYi8gCj4+IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LW5hbm9wYy10Ni5kdHNpCj4+IGluZGV4IGZhZmVhYmU5YWRmOS4uNWY2M2YzOGY3MzI2IDEwMDY0
NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYu
ZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1uYW5vcGMt
dDYuZHRzaQo+PiBAQCAtNzE3LDggKzcxNyw3IEBAICZzZGhjaSB7Cj4+IMKgwqDCoMKgwqAgbm8t
c2Q7Cj4+IMKgwqDCoMKgwqAgbm9uLXJlbW92YWJsZTsKPj4gwqDCoMKgwqDCoCBtYXgtZnJlcXVl
bmN5ID0gPDIwMDAwMDAwMD47Cj4+IC3CoMKgwqAgbW1jLWhzNDAwLTFfOHY7Cj4+IC3CoMKgwqAg
bW1jLWhzNDAwLWVuaGFuY2VkLXN0cm9iZTsKPj4gK8KgwqDCoCBtbWMtaHMyMDAtMV84djsKPj4g
wqDCoMKgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+IMKgIH07Cj4gCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
