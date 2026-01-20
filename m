Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57E61D2ECF9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 07:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a2svq4wXg3V1UGxpCjfByiEOcnpPlKck4FSvhDQuIfA=; b=EevYGMbV+mN1Fj
	imdUmbh6p8VuZCBndUH3u8093NoKA7udhdzbdSUDwP5LjoNGCClNtcp5HaGN0GIBADbOrP8hRUeJV
	ELu7PpJ0C6ZuA9BoLDtaU9Lewv/NSuUVoHOSpgQSIuTaru76dCzIaYGmDzE206g6bH9ThzCq4Pwr+
	EJ2e7p+IdGMUiyxsC8vBMlRQA5uWODRmpMo4nNpLLZ+cPljKJ/Bi+Z0W7UxfzEs7pto4ndVwOp2nG
	UzTfMiB9jdme/7B7c7NbMiUrX3SvHYi0iAOA8OYWV6M3WQxrTP/04TDBtL59/dngXLb51m21JMvL9
	Zr2Q5E1fiNa4s+ih6+dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi5vy-00000003KWJ-1G5M;
	Tue, 20 Jan 2026 07:13:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi5vw-00000003KVi-3AHB
	for linux-rockchip@bombadil.infradead.org;
	Tue, 20 Jan 2026 07:13:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=m/AcdJHOfbL98COErVKQfn92HC1scPShYwrkryDi5Tc=; b=N2pL0Ac7a/vLQR4yvxCUZBHHGH
	zv4Mn4yLiLZIpsnTpV8S9kzL1EPQZ7CMLzXQjMLH5URpQwleTwoYWMEDQM5M+24Ig1jVhnwDowUIB
	0OqOhrvxiJQHoansCK4aSpiL5DlBAweSNnGvmzHo+bUjKEZsm9s6tMu5qjVSZ5/YdSxW9qAEq0KV+
	Nln7mkNbg6u4q8OwJR6paTIVBikoyzM4eRBYArLn0nMiLSICkf7IFyuTSqGtrZ2k2MUYPtDW2FZnK
	olHZQFpQegBmCBYHuw/Un66JW3X7ZNKtQgOF7h18OQDrtK3n6XED0v1MPNfbW/quSe0OZJeP7/nz9
	8aEuOCYw==;
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vi5vu-0000000DSuv-0JbN
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jan 2026 07:13:47 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-5014e1312c6so23854881cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Jan 2026 23:13:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768893223; cv=none;
        d=google.com; s=arc-20240605;
        b=X4fZlTrXZwxnpG7Y7ESFg5aw1nvqtMnBlGTKUcRQ7r4a72blkYrY5d3bmRruonOEwt
         uwJKqrf27XDA60Cy7a6KSorcvGBX0kjzhR/hC9G9U57EEkttMPNqLEcFE7e9pXv/oNdq
         r/YF4JJ7dKEvQHCPL64FkSiJ5cjRALKGyBJRn6RVUcWJsXK7LtqzH1gb5KVowJbgAsVA
         9hnZfQ8PzUk7qH9gK2EPcbXTQfzDEvuuS3Q3DHESHCyc6q39OwdbDJrCMFyAsYU8pKwo
         cuCIW4LgwCVZTeiRFrx/ZHXJLJA9Xqhb+7ZOlQK4leGAgd0kuQWYUSCF/Aa2RQK9mbdr
         evbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=m/AcdJHOfbL98COErVKQfn92HC1scPShYwrkryDi5Tc=;
        fh=tvwtFR3g/eNB0c/C+mboCQ6WgQwqlhpwwR70ykX44AE=;
        b=YkOkDzrxvLNkvFm/ITHgksZli0A0HJnrxUHbhgEwjTv1J20nyzwNL5k+/wznPz0GaT
         GTrIYfdsqgaax1AzTle4pLK+mEXYNzg03DRJU7QbyoaVkN7N7fNRR8wgQddHjaolG97w
         3BEGX2gDM5XqWSemK2x/U70s/1ZfxYrA5qUGxVNDb6rfhK8tsPOg00AA0kvVBN05TWJh
         XxryQu/IgS9SvF6GzROPJ6Roq0yI6iqhPKAg2RC/WPMPjcX2rEN0mN5JaLKck2mmKLJr
         dMSgbCzMZR1PpoVQ4vGsARojTmjEW8vk/utFqCJGMNjy4JyBiMxpS6DX+xFd4stoFVka
         mJcw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768893223; x=1769498023; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/AcdJHOfbL98COErVKQfn92HC1scPShYwrkryDi5Tc=;
        b=OVpNuK6XEm5H5/NW20h8dWrvdx7aLlkFwlslzleHhUXknx4eFpwJS9/ayfdTQ+GBPc
         cyEs2RJ0k6S43F2vDBm8xgne9qsR+oQVlCNAQJ/dsu+NkAeld5ccsePCnlvoK3IkCkJw
         tBsKJrjSh73NNEOz7xP2wvXzCQXANflWthHsuvWc07ahUfthQ/9FfrdEjr7kmFDCfUed
         G8NnrLI7O63DO63IPv8/32J/EDHPHqRskPNSYPjx5uzG8BJ2ZvQLDM09HtIFWvt9sNId
         OhezcfoVTGZDfpeh1/t+XpksWTiSA9H4U4SruZLNulll3+uSRXQJhG4PWQPqoDo7fFv0
         wPbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768893223; x=1769498023;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=m/AcdJHOfbL98COErVKQfn92HC1scPShYwrkryDi5Tc=;
        b=s7wOA3Xv9Th5okKzpVYRJPpcrT4hcnlHs56WM/T7syKN6IOpA98h+NR2MTnlN3lil6
         IfYHsIuepQngqCwAtgHkbvyvQqW1pRmn/bCxHBp2HR3lzysg0LYM+OplMR1SSkfB+KnB
         /BqbMr4XqTA6NEQWAfA6MX91ZIPUXpRux4iLeO9ld1Bup/OApIRA9D03ZNIRcRPNNJ9S
         MhLGvpHl2OiK6X3G5bMy+0sKznm6uibNGz5ak5GZusalw1M55jsFYV/3Mt9mZpcFMYCP
         t+IZAaEOXT6L+2ji6PSLr2UzwkItrrVm93qE57YikUHEfQOCGupfrVGoKsZL0wBYG1sD
         7RoA==
X-Forwarded-Encrypted: i=1; AJvYcCUNUicv9nzdS7+Z0ZN2260cHpFe4H0LZ4HYR5B5YnQznmHo4Fe0Br8yknmx1rSFMCs19MC8/geV1ChuPxdcDg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyhHgDCHCeCdJcy8I2l/L9Zxu4rJjirtDZApWCcCeMHJowoJzvG
	/Y4jc55nUqfiQYGm8qhxNKA3uWjeD/lCjL5t79rL86ky+rIyF7SXrJjX0sGHzybndKQMt5vIKTC
	3TGzPoc4aHbf0BjsI/oJLip6NudWiD7ubb7LGGqI=
X-Gm-Gg: AY/fxX4GcXSvpjHu/xPk8SgjEwAe4jO/DPCrEJrtU+P3RtU9W8BMhq5O4BaYtGw1TU+
	Emo/KNnFkJUQivnzNnsJlatHzOODSXF/+18AtTr7IGEML6rW/SblO5vhyMvqtI80o2+OOEcnsDy
	gqG+sMteHi6qwXA8GvCjbZF0kTEcV9Ke4zj5mC2k8zwopwvymx/fHyD9j7Z8KzJBwvAvCkGF/Qu
	sws9/kKyPiEdc185oXy5iT580wTy1U1wSA7bTx6zodQ1TGnn2sSlPtYjkUtkgpqo2D8/aAEnaTK
	yJqqXyMxGs5F54CkB3qRguGSqRY=
X-Received: by 2002:a05:622a:489:b0:4f1:ba0b:90 with SMTP id
 d75a77b69052e-502d82775d1mr8090231cf.8.1768893223391; Mon, 19 Jan 2026
 23:13:43 -0800 (PST)
MIME-Version: 1.0
References: <20260119-ufs-rst-v1-1-c8e96493948c@gmail.com> <6479d7b8-7712-4181-9c82-0021da94d1a8@rock-chips.com>
In-Reply-To: <6479d7b8-7712-4181-9c82-0021da94d1a8@rock-chips.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 20 Jan 2026 11:13:34 +0400
X-Gm-Features: AZwV_Qg9xEnym6d1IbZ761hDP0MCCZD2sOIi6gJCnx0Dbz6NZzcnmt6Sl_0hXVI
Message-ID: <CABjd4Yx_2NPkY7U6U8XL_89uK20j7S3e4px1Cbp+JbF3FavjyQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Explicitly request UFS reset pin on RK3576
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	Quentin Schulz <quentin.schulz@cherry.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260120_071346_163297_163402AD 
X-CRM114-Status: GOOD (  25.61  )
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

T24gVHVlLCBKYW4gMjAsIDIwMjYgYXQgNTozOeKAr0FNIFNoYXduIExpbiA8c2hhd24ubGluQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPgo+IOWcqCAyMDI2LzAxLzE5IOaYn+acn+S4gCAxNzoyMiwg
QWxleGV5IENoYXJrb3Yg5YaZ6YGTOgo+ID4gUm9ja2NoaXAgUkszNTc2IFVGUyBjb250cm9sbGVy
IHVzZXMgYSBkZWRpY2F0ZWQgcGluIHRvIHJlc2V0IHRoZSBjb25uZWN0ZWQKPiA+IFVGUyBkZXZp
Y2UsIHdoaWNoIGNhbiBvcGVyYXRlIGVpdGhlciBpbiBhIGhhcmR3YXJlIGNvbnRyb2xsZWQgbW9k
ZSBvciBhcyBhCj4gPiBHUElPIHBpbi4KPiA+Cj4KPiBJdCdzIHRoZSBvbmx5IG9uZSAxLjJWIElP
IGNvdWxkIGJlIHVzZWQgb24gUkszNTc2IHRvIHJlc2V0IHVmcyBkZXZpY2VzLAo+IGV4Y2VwdCB1
ZnMgcmVmY2xrLiBTbyBpdCdzIGEgZGVkaWNhdGVkIHBpbiBmb3Igc3VyZSBpZiB1c2luZyB1ZnMs
IHRoYXQncwo+IHdoeSB3ZSBwdXQgaXQgaW50byByazM1NzYuZHRzaS4KPgo+ID4gUG93ZXItb24g
ZGVmYXVsdCBpcyBHUElPIG1vZGUsIGJ1dCB0aGUgYm9vdCBST00gcmVjb25maWd1cmVzIGl0IHRv
IGEKPiA+IGhhcmR3YXJlIGNvbnRyb2xsZWQgbW9kZSBpZiBpdCB1c2VzIFVGUyB0byBsb2FkIHRo
ZSBuZXh0IGJvb3Qgc3RhZ2UuCj4gPgo+Cj4gUk9NIGNvZGUgY291bGQgYmUgc3BlY2lmaWMsIGJ1
dCB0aGUgbGludXgvbG9hZGVyIGRyaXZlciBpcyBjb21wYXRpYmxl77yMCj4gc28gZm9yIHRoZSBj
b21pbmcgU29Dcywgd2l0aCBtb3JlIDEuMlYgSU8gY291bGQgYmUgdXNlZCwgaXQncyBtb3JlCj4g
ZmxleGlibGUgdG8gdXNlIGdwaW8tYmFzZWQgaW5zdGVhZCBvZiBoYXJkd2FyZSBjb250cm9sbGVk
KG9mIGNvdXJzZSwKPiBtb3ZlIHJlc2V0IHBpbmN0cmwgc2V0dGluZ3MgaW50byBib2FyZCBkdHMp
LgoKVGhhbmtzIFNoYXduLCBib3RoIG9mIHRoZSBhYm92ZSBpcyB2ZXJ5IGhlbHBmdWwgY29udGV4
dCAtIEkgdGhpbmsgSSdsbAptZW50aW9uIGl0IGluIG15IG5leHQgdmVyc2lvbiBvZiB0aGUgVS1i
b290IHBhdGNoIHNlcmllcyB3aGVyZSB0aGlzCmRpc2N1c3Npb24gZmlyc3Qgc3VyZmFjZWQuCgo+
ID4gR2l2ZW4gdGhhdCBleGlzdGluZyBiaW5kaW5ncyAoYW5kIHJrMzU3Ni5kdHNpKSBleHBlY3Qg
YSBHUElPLWNvbnRyb2xsZWQKPiA+IGRldmljZSByZXNldCwgcmVxdWVzdCB0aGUgcmVxdWlyZWQg
cGluIGNvbmZpZyBleHBsaWNpdGx5Lgo+ID4KPiA+IFRoaXMgZG9lc24ndCBhcHBlYXIgdG8gYWZm
ZWN0IExpbnV4LCBidXQgaXQgZG9lcyBhZmZlY3QgVS1ib290Ogo+ID4KPgo+IElJVUMsIGl0J3Mg
bW9yZSBvciBsZXNzIGEgZml4IGZvciBsb2FkZXIsIG1vcmUgcHJlY2lzZWx5IFUtYm9vdCBoZXJl
Pwo+IEknbSBub3QgZW50aXJlbHkgY2VydGFpbiBhYm91dCB0aGUgaGFuZGxpbmcgaGVyZSwgaXMg
aXQgc3RhbmRhcmQKPiBjb252ZW50aW9uIHRvIGFkZCBhIGZpeGVzIHRhZyBpbiB0aGlzIGNvbnRl
eHQ/CgpEZXZpY2UgdHJlZXMgYXJlIHRyZWF0ZWQgc29tZXdoYXQgaW5kZXBlbmRlbnRseSBvZiBM
aW51eCBkcml2ZXIgY29kZSwKZXZlbiB0aG91Z2ggdGhleSBmb2xsb3cgdGhlIHNhbWUgZGV2ZWxv
cG1lbnQgY3ljbGUuIEkgYmVsaWV2ZSB0aGF0CmJyb2FkZXIgcG9saWN5IGlzIHRoYXQgYm90aCBi
aW5kaW5ncyBhbmQgZGV2aWNlIHRyZWUgc291cmNlcyBzaG91bGQKZXF1YWxseSBjYXRlciB0byBk
aWZmZXJlbnQgY29kZWJhc2VzIHRoYXQgdXNlIHRoZW0sIHNvIGEgcG90ZW50aWFsCmlzc3VlIG91
dHNpZGUgdGhlIExpbnV4IGtlcm5lbCB3YXJyYW50cyBhIGZpeC4gUGVyaGFwcyBSb2IsIEtyenlz
enRvZgphbmQgQ29ub3IgYXJlIGJlc3QgcG9zaXRpb25lZCB0byBjb25maXJtIHRoaXMgb3Igbm90
LgoKSW4gdGhpcyBwYXJ0aWN1bGFyIGNhc2UsIHRoZSBmYWN0IHRoYXQgdGhlIEdQSU8gZGVzY3Jp
cHRvciBpcyBkZWZpbmVkCmluIHJrMzU3Ni5kdHNpLCBidXQgdGhlIHJlc3BlY3RpdmUgcGluIGNv
bmZpZ3VyYXRpb24gaXMgbm90LCBsZWF2ZXMKYW1iaWd1aXR5IGluIHRoZSBoYXJkd2FyZSBkZXNj
cmlwdGlvbiwgd2hpY2ggZGlmZmVyZW50IGNvZGViYXNlcyBtaWdodApyZXNvbHZlIGRpZmZlcmVu
dGx5IChhbmQgbm90IG5lY2Vzc2FyaWx5IGNvcnJlY3RseSBmb3IgdGhlIGhhcmR3YXJlKS4KU28g
dGhlcmUgaXMgYSBiZW5lZml0IGluIGJhY2twb3J0aW5nIHRoZSBjaGFuZ2Ugd2hpY2ggZXhwbGlj
aXRseQpyZXNvbHZlcyB0aGUgYW1iaWd1aXR5LgoKQmVzdCByZWdhcmRzLApBbGV4ZXkKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
