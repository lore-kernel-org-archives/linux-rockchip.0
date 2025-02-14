Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 060F0C02198
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Feb 2025 12:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FDz9Wr4Mo6G4Udc9pY5E3eiB6VHcyHyfsKCMJFdpGiY=; b=m9ogzUfHvSTPeA
	cUXBB6dHt01tFjrvpwk1zzY1hKfH3EtVmV8odCoJU6VM3VaiR3uK+ZmuXSXrC70OpoLsDmMBYSkoU
	HUQwZSvBtsYRE7y+BboRf68uIyqqf/DTeNQ5b+v8YyMC/peT5CdJH2tYLC9biiZUepdSzs1UjdN8L
	FhiJDh3qVIlhRhetOEiseeFRG2hVNDyUUE6zeRQf5KtK+Bx77B+qK4OOx11Qdd6qXSyG/PXMVMoQK
	EcP9t9QueEm8vAiksdKalr1kAVB1N+65I294Qfjxcr3o40OpHez/bptUEY5hUW+mxqqK/q/CysGp+
	QewmB7d3wn2JKTE2AgGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tiuMq-0000000EmfQ-25Wb;
	Fri, 14 Feb 2025 12:00:24 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tiuMm-0000000Emdq-2RMf;
	Fri, 14 Feb 2025 12:00:22 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-ab771575040so615434266b.1;
        Fri, 14 Feb 2025 04:00:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739534419; x=1740139219; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GI3W9qR1fQieAycCsuIaEjCDuBJjNXKEwknKksP2WWw=;
        b=eB7O27yxvbtmhH7fcDYyZyak8srmZ4n4SJBefbK6uWBCVkuxjAaDQtCjHzOBkb0CJY
         u3FFE0bA9NHS1s0T8bOwHmb9D/UXwA2bWYbHkpM8+vwuHaGwtscfA4H9h8DCB5oo0oNx
         XDJOF0rsxefveIqHroiEWOJbzcB+5ZE1LwyP26467tr0/r2RTGx8W+6GTm3Xk6WAGEMD
         BZoWR7P1+ag1QaZeemm4CZHTtvU9MDKlnA8O/LvwXFFAzZCRrup97vmssm/sJGIvt68o
         wXe4sr+bTRP7iA/bghRCUZS5tmwillPxz7zLQx8IjCKTrYoJEbxQtKrHDVkGIWRCpLNt
         VraA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739534419; x=1740139219;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GI3W9qR1fQieAycCsuIaEjCDuBJjNXKEwknKksP2WWw=;
        b=Hp1Zc4QR2EyORT2RGVS57q0a0xq2NsamdonEuw4Bq/aBb49d5c4lz3faNTH9QcoUBp
         uq+AK2ORDVVHGJjXjDLyZJfrZBTYsFQmJRpQZu3M2HUYepmzqkZDlEQcOMu29b6Xm/Yo
         i0Iupsm2+2tT7QAdGDAu+T7NOLagEB/AGbhnmWPS8W8swASG1H//jnoqvCH10DUW1H3h
         Wf0yoanBUtIPNqCUkkgr/RMZOP9EXUHy3JpKADfOf1YP35H8GzitP/Iwum6rAU9yGcKi
         sT1Lckk+ayDkReZukHXl8CV4cB1U8dhpeVznZoS+kIs9SuME9eQz+ibxh/2WWI98PISC
         oQ/g==
X-Forwarded-Encrypted: i=1; AJvYcCU2tYXL+1TRjN0kkfhdENJqaSQjDRX1Kzg3NOT8cc5h2EYN/LrTG4mY05CLscrKaYwFBsc9iQSD8vDML8lfLkeY@lists.infradead.org, AJvYcCUA5ajmskgQhh2sLZKhyOlsXHn/8SM9xCHLGcf2Z4Lp6GyKGsvybPnV+CiOkOrp7j4kCC8q57OqYZoigeZ/yCQ=@lists.infradead.org, AJvYcCUjlSABHeaOd26/xPghnmzXfy8N25zBSkPpzzK0akiyU87A/fgMeybdtHpqs1c+TxomVe2ELONHj1Xc@lists.infradead.org
X-Gm-Message-State: AOJu0YxBDr+qksloisfwVBcPfQxmWcmJ4HCkV7JoNueopmz8MGFUr6z4
	p0UhZrS/tKP46zd3yQMskw2jy47Otdw/wuVE0/zExLlLpPHux93C
X-Gm-Gg: ASbGncsCLJgSIY19pvWNhY1w1iLyfLyjMCN0wNjVY6W1ZxTL8OgsLy8xl7zRxe1dLoa
	ZY0fwaZeXxfrtgP3jm9ehP6opEJHnUWW6wkzSy8AltR46M4yqQQZoPtbHrLgPgatqXMOlHgDwT9
	7gjTY02p5gXMhO63YuU86Qupm36tVJ57qISaPohREMbdMWi4tGB7/kY1mISVLOak6rGShhqyUXw
	I8qAHbTxi3rU3Fd62zlANUennedwOWrDyUi5umk3y59YgiRbRzojhvb67fKurF7ee/wnBNcPDMF
	Y6DE90p5Bxpdr+hmJf77WVtoVh3ns1WpeTF2sbWCYvPxRwoNCvt6ZqQCwiNIKMGRhFIcFKNY
X-Google-Smtp-Source: AGHT+IEuZ76Lk8B5kT7BpvuBO88bUmgM7KzRYxZvjjTT1LTHSgCtEgbI85Tx+usx0aBQ6F7U8VS0vA==
X-Received: by 2002:a17:906:fe02:b0:ab7:c11:a980 with SMTP id a640c23a62f3a-aba510aecf0mr643697766b.17.1739534416957;
        Fri, 14 Feb 2025 04:00:16 -0800 (PST)
Received: from smtpclient.apple (89-66-237-154.dynamic.chello.pl. [89.66.237.154])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece1c416asm2819667a12.18.2025.02.14.04.00.14
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Feb 2025 04:00:15 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.400.131.1.6\))
Subject: Re: [PATCH v6 00/14] Add eDP support for RK3588
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <tg6eyew4qahuxqakmmejne7xx2rkouj6htp55acun4ajz2irz2@vlmvqv3zc5vc>
Date: Fri, 14 Feb 2025 13:00:03 +0100
Cc: Damon Ding <damon.ding@rock-chips.com>,
 heiko@sntech.de,
 robh@kernel.org,
 conor+dt@kernel.org,
 algea.cao@rock-chips.com,
 rfoss@kernel.org,
 devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 hjc@rock-chips.com,
 kever.yang@rock-chips.com,
 dmitry.baryshkov@linaro.org,
 vkoul@kernel.org,
 andy.yan@rock-chips.com,
 krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org,
 l.stach@pengutronix.de
Message-Id: <C81810F2-6E9B-4DCC-85D1-CCB63CBFBFEA@gmail.com>
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <5044FFCB-B325-40D0-BA82-03AF64EAF029@gmail.com>
 <tg6eyew4qahuxqakmmejne7xx2rkouj6htp55acun4ajz2irz2@vlmvqv3zc5vc>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: Apple Mail (2.3826.400.131.1.6)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_040020_623585_CF165886 
X-CRM114-Status: GOOD (  20.55  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3IGRuaXUgMTMgbHV0IDIwMjUsIG8gZ29kei4gMTg6
MjY6Cj4gCj4gSGVsbG8gUGlvdHIsCj4gCj4gCj4gVGhlIFJLMzU4OCBoYXMgdHdvIGRpZmZlcmVu
dCBEUCBjb250cm9sbGVycy4gVGhlIG9uZSBoYW5kbGVkIGluIHRoaXMKPiBzZXJpZXMgc2hvdWxk
IGdldCB0aGUgZURQIHBvcnQgcnVubmluZywgd2hpY2ggaXMgcm91dGVkIHRvIHRoZQo+ICJlRFAg
UGFuZWwiIGluIHRoZSBibG9jayBkaWFncmFtIG9uIHBhZ2UgMyBvZiB0aGUgUm9jayA1IElUWCBz
Y2hlbWF0aWNzLgo+IFNvIHRoaXMgc2VyaWVzIGFkZHMgc3VwcG9ydCBmb3IgdXNpbmcgIkhETUkv
ZURQIFRYMCIgYW5kICJIRE1JL2VEUCBUWDEiCj4gaW4gRFAgbW9kZS4KPiAKPiBUaGUgcG9ydCBy
b3V0ZWQgdG8gSERNSTAgdmlhIFJBNjIwIGlzIHRoZSBvdGhlciBEUCBjb250cm9sbGVyLCB3aGlj
aAo+IGFsc28gZXhpc3RzIHR3aWNlOiAiVFlQRUMwL0RQMCIgYW5kICJUWVBFQzEvRFAxIi4gVGhp
cyBEUCBjb250cm9sbGVyCj4gaXMgbm90IHlldCBzdXBwb3J0ZWQgdXBzdHJlYW0gYW5kIHRoZXJl
IGlzIG5vIHBlbmRpbmcgcGF0Y2hzZXQuIEFzIGZhcgo+IGFzIEkga25vdyBSb2NrY2hpcCBwbGFu
cyB0byB3b3JrIG9uIHByZXBhcmluZyB1cHN0cmVhbSBzdXBwb3J0IGZvciB0aGF0Cj4gc29vbi4K
PiAKCk9oIC0gdGhpcyBpcyB2ZXJ5IHZhbHVhYmxlIGluZm8gYW5kIGV4cGxhaW5zIGEgbG90LgpU
aHguIAoKPiBOb3RlLCB0aGF0IHRoZSB0d28gRGlzcGxheVBvcnQgY29udHJvbGxlcnMgYXJlIGNv
bXBsZXRlbHkgZGlmZmVyZW50Lgo+IFRoZSBIRE1JL2VEUCBjb250cm9sbGVyIGlzIGEgZGVzaWdu
IGZyb20gQW5hbG9naXggYW5kIHRoZSBUeXBlQy9EUAo+IGNvbnRyb2xsZXIgaXMgYSBkZXNpZ24g
ZnJvbSBTeW5vcHN5cy4KPiAKPiBQLlMuOiBIZWlrbyBtZXJnZWQgc3VwcG9ydCBmb3IgSERNSTEg
KFJLMzU4OCBTb0MgbGV2ZWwpIHJlY2VudGx5LiBTbyB5b3UKPiBzaG91bGQgYmUgYWJsZSB0byBn
ZXQgdGhhdCBydW5uaW5nIGJ5IHNvbWUgRFQgYWRkaXRpb25zIHRvIHRoZSBSb2NrIDUKPiBJVFgg
Ym9hcmQgRFQgd2l0aCB0aGUgbGF0ZXN0IGxpbnV4LW5leHQgY29kZSA6KQo+IAoKQW5kIGl0IHdv
cmtzIHBlcmZlY3RseSBvbiBhbGwgbXkgMzU4OCBiYXJkcyAoaW5jbHVkaW5nIGF1ZGlvIGFuZCBt
eSBjZWMgYWRkaXRpb24pCkJ1dCBvbmx5IG9uIGJvYXJkcyB1c2luZyBib3RoIGhkbWkgdHgwIGFu
ZCB0eDEgdG8gaGRtaTAvaGRtaTEgcG9ydHMuCgpvbiByb2NrNSBpdHg6ICAKCldpdGggYm90aCBo
ZG1pIHR4MCBhbmQgdHgxIGVuYWJsZWQgaW4gZHRzIGl0IGxvb2tzIGxpa2Uga2VybmVsIGRldGVj
dHMgaGRtaSB0eDAgYXMgY29ubmVjdGVkIGFuZCB0cmllcyByZWFkIGVkaWQuIApBcyBub3RoaW5n
IGlzIGNvbm5lY3RlZCB0byBKMTEgKGVEUCBjb24pIC0gaeKAmW0gZ2V0dGluZyBpMmMgZGRjIHRp
bWVvdXRzIApbICAgNTQuMTg4ODgwXSBkd2hkbWlxcC1yb2NrY2hpcCBmZGU4MDAwMC5oZG1pOiBp
MmMgcmVhZCB0aW1lZCBvdXQKWyAgIDU0LjI5MjIwN10gZHdoZG1pcXAtcm9ja2NoaXAgZmRlODAw
MDAuaGRtaTogaTJjIHJlYWQgdGltZWQgb3V0ClsgICA1NC4zOTU1NTRdIGR3aGRtaXFwLXJvY2tj
aGlwIGZkZTgwMDAwLmhkbWk6IGkyYyByZWFkIHRpbWVkIG91dAoKCmRpc2FibGluZyBoZG1pMCBt
YWtlcyBrZXJuZWwgdGFsa2luZyB0byBoZG1pMSBidXQgd2l0aCBpc3N1ZXM6IApbICAgIDAuNTQw
NDQ2XSBkd2hkbWlxcC1yb2NrY2hpcCBmZGVhMDAwMC5oZG1pOiByZWdpc3RlcmVkIERlc2lnbldh
cmUgSERNSSBRUCBJMkMgYnVzIGRyaXZlcgpbICAgIDAuNTQxMjMwXSByb2NrY2hpcC1kcm0gZGlz
cGxheS1zdWJzeXN0ZW06IGJvdW5kIGZkZWEwMDAwLmhkbWkgKG9wcyBkd19oZG1pX3FwX3JvY2tj
aGlwX29wcykKWyAgICAwLjU0MjI4NV0gW2RybV0gSW5pdGlhbGl6ZWQgcm9ja2NoaXAgMS4wLjAg
Zm9yIGRpc3BsYXktc3Vic3lzdGVtIG9uIG1pbm9yIDAKWyAgICAwLjU0MjkzM10gcm9ja2NoaXAt
ZHJtIGRpc3BsYXktc3Vic3lzdGVtOiBbZHJtXSBDYW5ub3QgZmluZCBhbnkgY3J0YyBvciBzaXpl
cwpbICAgIDAuNTQzNjA1XSByb2NrY2hpcC1kcm0gZGlzcGxheS1zdWJzeXN0ZW06IFtkcm1dIENh
bm5vdCBmaW5kIGFueSBjcnRjIG9yIHNpemVzCgphbmQgaGVyZSBp4oCZbSBhIGJpdCBwdXp6bGVk
IGFzIG9uIG90aGVyIDM1ODggYm9hcmRzIChpLmUuIHJvY2s1YikgLSB3aGVuIGkgY29ubmVjdGVk
IG1vbml0b3IgdG8gaGRtaTEgLSBhbGwgd29ya3MgcGVyZmVjdGx5CihrZXJuZWwsIE9TIGFuZCBh
cHAgbmljZWx5IHNraXBwaW5nIGhkbWkwIGFuZCB0YWxraW5nIHRvIGFjdHVhbGx5IGNvbm5lY3Rl
ZCBoZG1pMSBwb3J0LiBhbGwgd29ya3MpIAoKb24gcm9jazUgaXR4IHRoaXMgbm90IHdvcmtzLgoK
bXkgb2JzZXJ2YXRpb25zIHNvIGZhciBhcmU6Ci1vbiByb2NrNSBpdHggaGRtaTAgaXMgZmFsc2Vs
eSBkZXRlY3RlZCBhcyBjb25uZWN0ZWQgLSBldmVuIHdoZW4gZURQIGNvbm5lY3RvciAoSjExKSBo
YXMgbm90aGluZyBjb25uZWN0ZWQKLW9uIHJvY2s1IGl0eCBkaXNhYmxpbmcgaGRtaTAgaW4gZHRz
IGJyZWFrcyBoZG1pMSAKLW9uIG90aGVyIDM1ODggKGUuZy4gcm9jayA1YikgZGlzYWJsaW5nIGhk
bWkwIGluIGR0cyBOT1QgYnJlYWtzIGhkbWkxICAKCnN0cmFuZ2XigKYuCgogICAKCj4gR3JlZXRp
bmdzLAo+IAo+IC0tIFNlYmFzdGlhbgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
