Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C55F8E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 14:14:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iOIUZNHE7ooCzIy7Ke/RVmH4sG46xxtesWWai2pmRV8=; b=uSW07GF3h2qoPF
	/DJBjtRPNlShUYaMBH8bT7YNNIT3V5eHSpWar+nWJFHzjCxqV8T91k3KwplPaQbpRGsu0w5oj3Ngp
	m3+HpOxONEweL8VYy/EJsJiMdtGVPAhlF2m6/bC+wazQLiaYJE7hhwvwnrjASPGlJUFqZdP7DEbCL
	WHmZaXwddiPl6d4479y7YDIL0ea2N/0y8XQZNld9p6Wn6JGqowsalLCJ4NJsAQcZf2us94L2q+sXt
	vhLfDeWOGw3kyj+irAt+DEEomjCms1BjknPfs+d33UgAc8tKJGxLsg1xQmar49MxUKalip8iL++/5
	PkgltAhA8Qv1f6CWpo9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRB6f-00000000MSl-2OpB;
	Fri, 27 Dec 2024 14:14:25 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRB5U-00000000MMV-1Wr4
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 14:13:14 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2163dc5155fso86563025ad.0
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Dec 2024 06:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735308791; x=1735913591; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6HZwM074YdHmbBq0k6H05befZoQf1QFgqWA3jYb89v4=;
        b=poMNmyIL5z3Dw8YQagv/hZPaaYQtL9xwPsQ3TjHJUibMVMCYXDgz7/ZOEHQzUjRzVR
         XmWdotjtfsq9TSvv2FLkqBsBLTzxiTnp4rYDF3rVxBF5QGV5i+EH+m6weso4HTsI5SEe
         r/GqbQcHn9bU8Bm4TkSP30AoZWBkUqyzMOxQssHBjNEfH6Mz8sNj9oX5Hpqyw+GZalC7
         FZ6BYKu3jGYoLZO9C/AMwr/tNJzHXoIYyCr2ZGPkSj3Doal7oHuWj073xavJPyE9/gm5
         TN76P3B/Cypd402mfv4tgMSB6JoxPmoXq46TZm0f1WdPOsoN/LGjPonA+EZQmkZXkpbx
         o7Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735308791; x=1735913591;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6HZwM074YdHmbBq0k6H05befZoQf1QFgqWA3jYb89v4=;
        b=gNBRkReftu7Rb2A1anMG+2o/he3ribcrx3FKHWfWF59UB98QD1M+gQCW6crh8R5cNm
         QU7WURiZt87GCjQu3Ux30ZNRMttiU3lsdMROaB78W6LxeX7FLVKEWDsuONhTUcfw/jfG
         EnmviPd/sNep0LbQYtiS+i5oOPmJEteOJnuRq+iBuBLZTFI1pNI2dfBM4PHWxp6emxUX
         LpFI35+Vi+YSz7bYWScaQVaY6V0onmf70KUhfKPNh+5oI4kUdOCU8UTMMlTQZv+9ypfg
         e/isobEhi4YAinfzGJFDkRFL7j/AEkRX3G9HB1WQvq085QD45opN26+XvY6Jy539OLp8
         4ilw==
X-Forwarded-Encrypted: i=1; AJvYcCVOiSj6gTFaGkZlhOJLvJLm6VeG595Wy47QrIMJRnnmS8BCvVGh1XAW+2GpIMtHsHKXolLRl5RZhekfirScIg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxcC3gSQDKUydWp2+TjmkLWgvxIfeNDc63cTDXZ7Bpwprr4wTKj
	MDBLGmnogQwHdZu+nO2V61Fu/pszBk2+DTQIQzzN2NpwloyrIFMth20tSw7/TDyc/kkvIJ7K2mb
	zJYGkyWD2uOfzHXM94B5+ELyLlRL9hTcIIFNtOw==
X-Gm-Gg: ASbGncsztuSy2UiWm+P9wVgl6asJUpx5nnhCthdOTI81d5LSaBSjySFGA/3Gm7/3JnF
	5AX9JjkCbmHxFZ5T7fOH6qvkCMp7FxUNkdjyW
X-Google-Smtp-Source: AGHT+IGwRttyOVlXZ4AOH109cli3Ic52EUSjmxRCKHx0nJtVDCigH5HefL9ERaeM+pDyuFAlbW6LgVEVHuDlh8T9ZWs=
X-Received: by 2002:a17:90b:53c5:b0:2ee:74a1:fb92 with SMTP id
 98e67ed59e1d1-2f452dfd236mr37291584a91.6.1735308791255; Fri, 27 Dec 2024
 06:13:11 -0800 (PST)
MIME-Version: 1.0
References: <20241227133420.169714-1-jagan@edgeble.ai> <8f40821508fde291aab01674618c0a2c@manjaro.org>
 <e03da44cd6ae417feeb3de3fbfbff7f9@manjaro.org>
In-Reply-To: <e03da44cd6ae417feeb3de3fbfbff7f9@manjaro.org>
From: Jagan Teki <jagan@edgeble.ai>
Date: Fri, 27 Dec 2024 19:43:00 +0530
Message-ID: <CA+VMnFwjbXbjb5nP6FBASOr0Tz+nSNTx0OoQu31xtLHkoWgE_g@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: Add Rockchip RK3588M
To: Dragan Simic <dsimic@manjaro.org>, Kever Yang <kever.yang@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_061312_406550_58B179D2 
X-CRM114-Status: GOOD (  29.61  )
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

T24gRnJpLCAyNyBEZWMgMjAyNCBhdCAxOTozNywgRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFy
by5vcmc+IHdyb3RlOgo+Cj4gT24gMjAyNC0xMi0yNyAxNDo0OCwgRHJhZ2FuIFNpbWljIHdyb3Rl
Ogo+ID4gSGVsbG8gSmFnYW4sCj4gPgo+ID4gUGxlYXNlIHNlZSBhIGNvbW1lbnQgYmVsb3cuCj4g
Pgo+ID4gT24gMjAyNC0xMi0yNyAxNDozNCwgSmFnYW4gVGVraSB3cm90ZToKPiA+PiBSb2NrY2hp
cCBSSzM1ODhNIGlzIHRoZSBhdXRvbW90aXZlLWdyYWRlIHZlcnNpb24gb2YgUkszNTg4IFNvQyBh
bmQKPiA+PiBpcyBvcGVyYXRlZCB3aXRoIC00MCDCsEMgdG8gKzg1IMKwQyB0ZW1wYXJhdHVyZS4K
PiA+Pgo+ID4+IEFkZCByazM1ODhtIHNwZWNpZmljIGR0c2kgZm9yIGFkZGluZyByazM1ODhtIHNw
ZWNpZmljIG9wZXJhdGluZyBwb2ludHMKPiA+PiBhbmQgb3RoZXIgY2hhbmdlcyB0byBiZSBhZGQg
aW4gZnV0dXJlLgo+ID4+Cj4gPj4gU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AZWRn
ZWJsZS5haT4KPiA+PiAtLS0KPiA+PiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODhtLmR0c2kgfCA3ICsrKysrKysKPiA+PiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KQo+ID4+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODhtLmR0c2kKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OG0uZHRzaQo+ID4+IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODhtLmR0c2kKPiA+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4+IGluZGV4IDAwMDAwMDAw
MDAwMC4uMGJiZWVlMzk5YTYzCj4gPj4gLS0tIC9kZXYvbnVsbAo+ID4+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4bS5kdHNpCj4gPj4gQEAgLTAsMCArMSw3IEBACj4g
Pj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKQo+ID4+ICsv
Kgo+ID4+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjIgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBM
dGQuCj4gPj4gKyAqCj4gPj4gKyAqLwo+ID4+ICsKPiA+PiArI2luY2x1ZGUgInJrMzU4OC1leHRy
YS5kdHNpIgo+ID4KPiA+IEkgZG9uJ3QgdGhpbmsgd2UgbmVlZCBvciB3YW50IGEgc2VwYXJhdGUg
cmszNTg4bS5kdHNpIGZpbGUgZm9yIHRoaXMKPiA+IHB1cnBvc2UsIHVubGVzcyB0aGUgUkszNTg4
TSB2YXJpYW50IGFjdHVhbGx5IGRpZmZlcnMgZnJvbSB0aGUgcmVndWxhcgo+ID4gUkszNTg4IHZh
cmlhbnQgZnJvbSB0aGUgc29mdHdhcmUgc3RhbmRwb2ludC4gIFRoZSBsYXR0ZXIgaXMgYWxyZWFk
eQo+ID4gZGVzY3JpYmVkIGluIHJrMzU4OC5kdHNpLCBzbyBpdCBzaG91bGQganVzdCBiZSBpbmNs
dWRlZCBpbiB0aGUgbmV3Cj4gPiBib2FyZCBkdHMoaSkgZmlsZS4KPgo+IEFjdHVhbGx5LCBhZnRl
ciBoYXZpbmcgYSBsb29rIGF0IHRoZSBkb3duc3RyZWFtIGNvZGUsIGl0IHNlZW1zIHRoYXQKPiB0
aGUgUkszNTg4SiBhbmQgUkszNTg4TSB2YXJpYW50cyBzaGFyZSB0aGUgc2FtZSBPUFBzLCBzbyBh
Y3R1YWxseQo+IHJrMzU4OGouZHRzaSBzaG91bGQgYmUgdXNlZCBmb3IgdGhlIFJLMzU4OE0gdmFy
aWFudC4gIENvdWxkIHlvdSwKPiBwbGVhc2UsIGNvbmZpcm0gdGhpcz8KPgo+IEFsYXMsIGl0IHNl
ZW1zIHdlJ3ZlIGdvdCBzb21lIHNlcmlvdXMgaXNzdWVzIGluIHRoZSBPUFBzIGN1cnJlbnRseQo+
IGRlZmluZWQgaW4gcmszNTg4ai5kdHNpLCB3aGljaCBJJ2xsIGRvdWJsZSBjaGVjayB0byBtYWtl
IHN1cmUgSSdtIG5vdAo+IGdvaW5nIGNyYXp5LCA6KSBhbmQgc3VibWl0IGEgcGF0Y2ggdGhhdCBm
aXhlcyB0aG9zZSBPUFBzLgo+Cj4gSWYgeW91IGNvdWxkIGNvbmZpcm0gdGhlIFJLMzU4OE0gPT0g
UkszNTg4SiBhc3N1bXB0aW9uIGFib3ZlLCBJIGNhbgo+IGFkZCBzb21lIGFkZGl0aW9uYWwgY2xh
cmlmaWNhdGlvbiB0byB0aGUgcmszNTg4ai5kdHNpIGZpbGUgaW4gdGhlCj4gYWJvdmUtbWVudGlv
bmVkIGZpeGVzLgoKQXMtZmFyLWFzLWkta25vdyBib3RoIE9QUHMgd2VyZSBkaWZmZXJlbnQgZHVl
IHRvIGNvbXB1dGF0aW9uIGdyYWRlcyBKCmZvciBJbmR1c3RyaWFsIGFuZCBNIGZvciBBdXRvbW90
aXZlLiBXaGF0IEkgc2F3IGZyb20gZG93bnN0cmVhbQpsaW51eC02LjEtc3Rhbi1ya3IxIHdhcyBh
IHNpbXBsZSBkdHNpIGZvciBNIHZhcmlhbnQgYW5kIG1pZ2h0IGhhdmUKY2hhbmdlcyB0byBhZGQg
T1BQcyB3aGljaCBJIGNhbm5vdCBiZSBzdXJlIGF0IHRoaXMgcG9pbnQgb2YgdGltZS4gSQprZWVw
IHRoYXQgZHRzaSBhcyBzZXBhcmF0ZSBldmVuIHRob3VnaCBpdCBpcyBub3RoaW5nIGFzIGkgd2Fz
CmV4cGVjdGluZyBzb21lIGZ1dHVyZSBjaGFuZ2VzIG9uIE9QUHMgb3Igc28uCgpLZXZlciBvciBI
ZWlrbyBjYW4gaGVscCBoZXJlLgoKVGhhbmtzLApKYWdhbi4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
