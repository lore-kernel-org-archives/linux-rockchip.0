Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63928C35274
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Dec 2023 15:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jH/TTEvUv4h7cXQpMiOeAl8k+qWzDg30BvlSWhNs40A=; b=HjJUGoyuYKERiz
	lrd1I/MKjnkJHR7HRpPUXYVvKtQb03hmOmE09ZREUasfyTLFVlcncUg6zNzWn2V5qm0NpzEUH3mt5
	KU/ePWhTVWMWpNVqzZe9csE/i5wAltQyzUgS3grYGJAvWZgWsuqgfXvOgP3P7AC3VedPzUguJYVyR
	JZbAWr6sw9E6ATLeeKiQCLI0TsP9PNNn9/S42zjXGuxaXKr+FI7YNgxF30Fn+50cSwsLkp2JMC7mo
	O3+PmOa/IE3q049WmblRjBi3PSzzoLnmW8m5cp56OLbeLKd8j7Ov37JPVsxthNU76JFz9237aQ3GS
	UJCKxAZ+7jVfft5mhGhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGLRG-003R28-2b;
	Thu, 21 Dec 2023 15:58:22 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGLRA-003R1g-26;
	Thu, 21 Dec 2023 15:58:20 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5534dcfdd61so1740328a12.0;
        Thu, 21 Dec 2023 07:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703174295; x=1703779095; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2ge32C67y6VL/tOuymk4ghO3Zqyctvc0EUYmoNeC+rk=;
        b=BcLvHhZ0MSMuIMoEs9F/e6H3hMqJ9KoIHwQHK4vq5IZ26mH+KtTwxhouWLhsHFBwVi
         lcqVVUokbCVhW94aYd4hWkugw8YTS9UZXRXFvCyk6Rd8WEawsnW54gB1qQ6l0MyxczFA
         2h+CCX8rOV2j846REofiRGuDYyvERdQNsN6ennY/exjE3h97IhzRao14oJkZt2GR7PSz
         /Sf0tqlC2cWH5/iEHn/v63B0FaVcwRAWg341pZRonDIXu//F6YcQD8uADmmkTc1IIbVg
         lRwg5LfLbrDP6HS1qwsKaihtMyjil5pwSaApdS5d4jwNLe+L6+kwa2uPE4upxJ8rIivu
         HtyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703174295; x=1703779095;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2ge32C67y6VL/tOuymk4ghO3Zqyctvc0EUYmoNeC+rk=;
        b=EKD8eDeRNjNQhloPYXdwhWZHE7Y1KfKudb4z01n4HZN5pthoH02CPy/uqzcsKMFOFw
         OtCbx/C8lueKiuxVthExBWvY3dHDRlobKqkJ0zLeZzasEFg1UJqvevb6o0Bay1ldhghJ
         HzeE/+8bj6yRMiT+Cd9chhwNef6I+5/Fj5jYtumADawLH1UyYIUf8bjyam1qk62BvIAX
         7tLOcRtw8gwcoId7wmY7XP6HQJ+Eh5xOuoEQvYp/noh/tzDCLJ3mEXHkYzqnTup9KTrW
         GYCKYb+IlP3dM9Bk1jZLVNtkNTCV6gaXrpHgtEJKsNaAL08M0BtkmxEedlAFaNowOV7p
         dJCA==
X-Gm-Message-State: AOJu0YygyQSBtc2t9wH/O+swEZpHRYsM9Zkb3wrabTsleXiRtu698wCo
	DenmbwQ5vAxNZG7Zmn9JEjMpiOc9Ug==
X-Google-Smtp-Source: AGHT+IFQKXVMkj4zyFWzLvwTphebmbg25nOOyfIZuy7V6OS9xs9j1VkjX2huLDnGvHVVWCzK9/wYCQ==
X-Received: by 2002:a50:8d1b:0:b0:554:1100:99e9 with SMTP id s27-20020a508d1b000000b00554110099e9mr1032558eds.9.1703174294607;
        Thu, 21 Dec 2023 07:58:14 -0800 (PST)
Received: from ?IPV6:2a02:810b:f40:4300:b601:5984:d94a:3021? ([2a02:810b:f40:4300:b601:5984:d94a:3021])
        by smtp.gmail.com with ESMTPSA id g14-20020aa7d1ce000000b0055122551f98sm1334250edp.6.2023.12.21.07.58.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Dec 2023 07:58:14 -0800 (PST)
Message-ID: <a82481ca-b578-49a4-b0d0-974b6ee65c98@gmail.com>
Date: Thu, 21 Dec 2023 16:58:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: Add psci for rk3036
To: Andy Yan <andy.yan@rock-chips.com>, Andy Yan <andyshrk@163.com>,
 heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 zhengxing@rock-chips.com
References: <20231218105523.2478315-1-andyshrk@163.com>
 <20231218105523.2478315-2-andyshrk@163.com>
 <da10e2fc-3179-4bd5-88ed-b4d5f64a7191@gmail.com>
 <28216be5-810f-40d6-850b-a0fc590ffa3c@rock-chips.com>
Content-Language: en-US, de-DE
From: Alex Bee <knaerzche@gmail.com>
In-Reply-To: <28216be5-810f-40d6-850b-a0fc590ffa3c@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_075816_708974_962D3F8C 
X-CRM114-Status: GOOD (  23.32  )
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

SGkgQW5keSwKCkFtIDIxLjEyLjIzIHVtIDAyOjA3IHNjaHJpZWIgQW5keSBZYW46Cj4gSGkgQWxl
eDoKPgo+IE9uIDEyLzIwLzIzIDE5OjE2LCBBbGV4IEJlZSB3cm90ZToKPj4gSGkgQW5keSwKPj4g
QW0gMTguMTIuMjMgdW0gMTE6NTUgc2NocmllYiBBbmR5IFlhbjoKPj4+IEZyb206IEFuZHkgWWFu
IDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4+Cj4+PiBUaGUgc3lzdGVtIHdpbGwgaGFuZyBh
dCBicmluZ3VwIHNlY29uZGFyeSBDUFVzCj4+PiB3aXRob3V0IHBzY2kgbm9kZS4KPj4+Cj4+PiBT
aWduZWQtb2ZmLWJ5OiBBbmR5IFlhbiA8YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4+Pgo+Pj4g
LS0tCj4+Pgo+Pj4gKG5vIGNoYW5nZXMgc2luY2UgdjEpCj4+Pgo+Pj4gwqAgYXJjaC9hcm0vYm9v
dC9kdHMvcm9ja2NoaXAvcmszMDM2LmR0c2kgfCA1ICsrKysrCj4+PiDCoCAxIGZpbGUgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspCj4+Pgo+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzAzNi5kdHNpIAo+Pj4gYi9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9y
azMwMzYuZHRzaQo+Pj4gaW5kZXggNzg2ODZmYzcyY2U2Li41MzQ0ODAzNDQyYTEgMTAwNjQ0Cj4+
PiAtLS0gYS9hcmNoL2FybS9ib290L2R0cy9yb2NrY2hpcC9yazMwMzYuZHRzaQo+Pj4gKysrIGIv
YXJjaC9hcm0vYm9vdC9kdHMvcm9ja2NoaXAvcmszMDM2LmR0c2kKPj4+IEBAIC02Nyw2ICs2Nywx
MSBAQCBkaXNwbGF5LXN1YnN5c3RlbSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgcG9ydHMgPSA8
JnZvcF9vdXQ+Owo+Pj4gwqDCoMKgwqDCoCB9Owo+Pj4gK8KgwqDCoCBwc2NpIHsKPj4+ICvCoMKg
wqDCoMKgwqDCoCBjb21wYXRpYmxlID0gImFybSxwc2NpLTEuMCI7Cj4+PiArwqDCoMKgwqDCoMKg
wqAgbWV0aG9kID0gInNtYyI7Cj4+PiArwqDCoMKgIH07Cj4+PiArCj4+IEkgZG9uJ3QgdGhpbmsg
dGhhdCdzIGFuIGdvb2QgaWRlYS4gCj4KPiBXaHk/Ckl0J3Mgb25seSB3aGF0IEkndmUgYmVlbiB0
b2xkIGJlZm9yZTogV2Ugc2hvdWRuJ3QgYWRkIHByb3BlcnRpZXMgd2hpY2gKZGVwZW5kIG9uIG5v
bi11cHN0cmVhbSBzb2Z0d2FyZSAoaWYgYW4gdXBzdHJlYW0gYWx0ZXJuYXRpdmUgZXhpc3RzKS4g
QWxzbwpJJ20gbm90IHN1cmUgd2hhdCBoYXBwZW5zIGlmIHNvbWVib2R5IGRvZXNuJ3TCoHVzZSBk
b3duc3RyZWFtIGJvb3Rsb2FkZXIKYW5kIFBTQ0kgY2FuJ3QgYmUgZm91bmQ6IFdvdWxkIHRoZSBi
b2FyZCBzdGlsbCBiZSBhYmxlIHRvIGJvb3Q/Cj4KPj4gWW91IG1vc3QgbGlrZWx5IG5lZWQgdGhh
dCBiZWNhdXNlIHlvdSBoYXZlIGRvd25zdHJlYW0gYm9vdGxvYWRlciAKPj4gaW5zdGFsbGVkIG9u
IHRoaXMgYm9hcmQuIFBTQ0kgaW1wbGVtZW50YXRpb24gdGFrZXMgcGxhY2UgaW4gVEVFLU9TIAo+
PiBmb3IgUm9ja2NoaXBzIEFSTSBTb0NzLiBUaGVyZSBpcyBubyBzdXBwb3J0IGZvciBSSzMwMzYg
aW4gdXBzdHJlYW0gCj4+IG9wLXRlZSBPUy4gSXQncyBwcmV0dHkgbXVjaCB0aGUgc2FtZSBmb3Ig
UkszMTI4IGFuZCBSSzMyODguCj4+IElmIHlvdSB1c2UgdXBzdHJlYW0gdS1ib290IGl0IHNob3Vs
ZCBiZSBnb29kIGFzLWlzLgo+Cj4gVW5mb3J0dW5hdGVseSwgdXBzdHJlYW0gdS1ib290IGFsc28g
Y2Fubm90IGJvb3QgdXAgb24gdGhpcyBib2FyZC4KPiBBdCBwcmVzZW50LCBJIGhhdmVuJ3QgaGFk
IHRpbWUgdG8gZGVidWcgd2hhdCBpcyBnb2luZyBvbi4KPgo+IEFub3RoZXIgcmVhc29uIEkgd2Fu
dCB0byB1c2UgZG93bnN0cmVhbSB1LWJvb3QgaXQgaXM6IEkgdHJ5IHJ1bgo+IHRoaXMgYm9hcmQg
d2l0aCBtYWlubGluZSBqdXN0IGJlY2F1c2UgaSB3YW50IHRvIHRlc3Qgc29tZSBjb21tdW5pdHkK
PiBwYXRjaGVzIGFib3V0IGlubm8taGRtaSBkcml2ZXIsIGFzIHlvdSBzYWlkICJ0aGUgaW5uby1o
ZG1pIGRyaXZlciAKPiBjdXJyZW50bHkgZ2V0cyBhIGxvdCBvZiBhdHRlbnRpb24iWzBdCj4KVGhh
bmtzIGZvciBoZWxwaW5nIHRlc3RpbmcgdGhpcy4KCkFsZXgKCj4gV2l0aCBhIGRvd25zdHJlYW0g
dS1ib290IEkgY2FuIGVhc3kgc3dpdGNoIGJldHdlZW4gdXBzdHJlYW0ga2VybmVsIGFuZCAKPiBk
b3duc3RyZWFtIGtlcm5lbChubyBuZWVkIHRvIHJlcGxhY2Ugb3RoZXIgY29tcG9uZW50cykKPiBp
ZiBJIGZvdW5kIHNvbWUgZnVuY3Rpb24gaXMgbm90IHdvcmsgYXMgZXhwZWN0ZWQuCj4KPgo+IFsw
XWh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJvamVjdC9saW51eC1yb2NrY2hpcC9jb3Zl
ci8yMDIzMTIxOTE3MDEwMC4xODg4MDAtMS1rbmFlcnpjaGVAZ21haWwuY29tLyAKPgo+Pgo+PiBB
bGV4Cj4+PiDCoMKgwqDCoMKgIHRpbWVyIHsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBjb21wYXRp
YmxlID0gImFybSxhcm12Ny10aW1lciI7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAgYXJtLGNwdS1y
ZWdpc3RlcnMtbm90LWZ3LWNvbmZpZ3VyZWQ7Cj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dAo+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
