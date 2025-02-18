Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF54EC02198
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 11:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3G/ubse8RaryhBCWt633bI0ZQe4BlO168NWT2EwLdNc=; b=lBikeLg1aAs9h2
	zPW3egskLSzm0QDwsxPoxoVSa+ibNpe1pvIN6a3kQ/OG1nxXjBJU9G6KQUJFJdsU+5tGlNraii5hd
	rAj5YNccEqBszGgzMMiDqq2gee9vZXVl+mg53+oworYJSOdQaFzJKSbPFqZgr2j0hSyn+Z8KbBWCR
	ehvocn1lsX2BgmExwLHnXMCfMUTona4mg7nPFTsKj+JtKLTWzOaN0YEdbOYGdlFG5QISpTn/q5DvX
	/StRu7+3NB/IYzH8rGrnQCGkugUdkLUF/2wddjnDPsb3DmpMoGpQQC+HZh9WbLS0z3Os0Rqx35u3W
	Gg8fWqAHgaWbCNy0C3BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkLRf-00000007seQ-0OE1;
	Tue, 18 Feb 2025 11:07:19 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkLQz-00000007sZf-3v9W
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Feb 2025 11:06:39 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-6f7031ea11cso47277917b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 18 Feb 2025 03:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739876797; x=1740481597; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZxBzcG+1RCPRksrqYQsyAhoS4ssC4QSuiEWJmIW8two=;
        b=lakbIhGMdb7Ya4WuLcIUc8kEZr4pxk0Nf5x6pqdSbTrj8lh6x10janMAOU43fqJOjr
         2A89QgXv0D+HNfj8LfMiZ8rSQQZm0EMDbIliVWdztoOSCutc+ViMk3pUy6D0qsq4zc/6
         pH4nH7RlimRh9L4X5HtqJtLLecyrS8Xa40XzPyzwz68qiSuMOxPqrfMWlcBqm1D6HhBH
         95E9CN8n5/5OGhT8WkC7HvajjCpvmlekgs3hECjWFW2vAtuu7pPAN4wtPpPi/8uLwtOX
         JPo5B3z1jv8eW60DLLP+Q/t5aCFixkOh2S2v4q9M/sWKdfAPD4rZShkZ4q7Q/HK0O7bE
         WtQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739876797; x=1740481597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZxBzcG+1RCPRksrqYQsyAhoS4ssC4QSuiEWJmIW8two=;
        b=j6fT+AFkVRPdmRVKlmLEMrpSscsKEoN+PcguRcTYvVtHlY/fsthr4q2eqLsq3HMzqp
         OYO0TZNFrYwy0spgjgJNEpeFqs4sk8P0u5c42KRwCsuzdkG/DS/Xqp8WwVQpSCxblqNS
         iciHR7V9ahXSjlynK/bYy0eHyDcG3vAblcduCg4YxPf/fUu7mbx0WCCMyFZEo8WDovZ9
         uXb9vDzGBjuuF+4sL6e/scBfaoF+DCBAeNulZw6lvslbnf8MCuL3lFM7kapmQxSdJK8L
         AvpJsUjtuL/iJBtwPgxyHdPBAoS/6IKHmudqNKJpE4cd2T2PsJnWTgdAP2SKoZPfKz82
         /XpA==
X-Forwarded-Encrypted: i=1; AJvYcCVUF3s3o6ltud6ntF5oj1I9XM8e/42VnoEensGE0uSxpOdxOC+r0N08Lnq73IKFPpqKL+TrB2+p+vB6Ef7aPA==@lists.infradead.org
X-Gm-Message-State: AOJu0YztmEiWsXXYkqk7PP2QFh72VID1suSgcIodeZ/bXejGr31An45O
	FI9rimaqFNHrbJkzGFgVyj5C5f6h8RVGnIUCqag5l4DhdDUJhfalIeMFJ3UpclRLJjeFdEue0dG
	xklRKViFZAX7dDANBPGXlfMeI/gUmrcpQB9FBxg==
X-Gm-Gg: ASbGncsCN5J+rG3n5ZMgKJ5hAad3N0xD1aNxelZC2GNdIwHwPp3rLD13eZ199ZVCl5j
	KGyoyeFnxSvA2b7dV/sGTR7qlr7D1iwWwFH8oI7AJBeqNlyzqg8bNEtYmXUs8cMlGk4CnFNApxQ
	==
X-Google-Smtp-Source: AGHT+IHLwVd8/FJ71sPKuZozOz3hvT7H8xMZqgkAwVXdbgbT08OeRrY0+2kxMfjx0SKdM7rJ6iJnri3ipFwnGN4coNk=
X-Received: by 2002:a05:6902:2506:b0:e3c:7c3f:253a with SMTP id
 3f1490d57ef6-e5dc91dd54amr9391445276.36.1739876796754; Tue, 18 Feb 2025
 03:06:36 -0800 (PST)
MIME-Version: 1.0
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <2579724.BzM5BlMlMQ@diego> <321804ef-f852-47cf-afd7-723666ec8f62@arm.com>
 <5649637.F8r316W7xa@diego> <fa184920-e1f5-4eee-894a-f617e6d8e817@rock-chips.com>
In-Reply-To: <fa184920-e1f5-4eee-894a-f617e6d8e817@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 18 Feb 2025 12:05:59 +0100
X-Gm-Features: AWEUYZl62zD8xYisGrHF_NbsDrxarZMOFP8pvEVYVbnRWAYdlQmrw0kY_HrKSt8
Message-ID: <CAPDyKFqPZcQOqEbyfy8uC-SO8vx1f=Ck-fPSqvXqiS1H-JJsrA@mail.gmail.com>
Subject: Re: [PATCH v7 4/7] pmdomain: rockchip: Add smc call to inform firmware
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Steven Price <steven.price@arm.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_030637_995708_1092F009 
X-CRM114-Status: GOOD (  27.21  )
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

T24gVHVlLCAxOCBGZWIgMjAyNSBhdCAwMTo1MywgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1j
aGlwcy5jb20+IHdyb3RlOgo+Cj4gSGkgSGVpa28sIFN0ZXZlbgo+Cj4g5ZyoIDIwMjUvMi8xOCA0
OjUwLCBIZWlrbyBTdMO8Ym5lciDlhpnpgZM6Cj4gPiBBbSBNb250YWcsIDE3LiBGZWJydWFyIDIw
MjUsIDE4OjEwOjMyIE1FWiBzY2hyaWViIFN0ZXZlbiBQcmljZToKPiA+PiBPbiAxNy8wMi8yMDI1
IDE1OjE2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+Pj4gSGkgU3RldmVuLAo+ID4+Pgo+ID4+
PiBBbSBNb250YWcsIDE3LiBGZWJydWFyIDIwMjUsIDE1OjQ3OjIxIE1FWiBzY2hyaWViIFN0ZXZl
biBQcmljZToKPiA+Pj4+IE9uIDA1LzAyLzIwMjUgMDY6MTUsIFNoYXduIExpbiB3cm90ZToKPiA+
Pj4+PiBJbmZvcm0gZmlybXdhcmUgdG8ga2VlcCB0aGUgcG93ZXIgZG9tYWluIG9uIG9yIG9mZi4K
PiA+Pj4+Pgo+ID4+Pj4+IFN1Z2dlc3RlZC1ieTogVWxmIEhhbnNzb24gPHVsZi5oYW5zc29uQGxp
bmFyby5vcmc+Cj4gPj4+Pj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9j
ay1jaGlwcy5jb20+Cj4gPj4+Pj4gLS0tCj4gPj4+Pgo+ID4+Pj4gVGhpcyBwYXRjaCBpcyBjYXVz
aW5nIG15IEZpcmVmbHkgUkszMjg4IHRvIGZhaWwgdG8gYm9vdCwgaXQgaGFuZ3MKPiA+Pj4+IHNo
b3J0bHkgYWZ0ZXIgcmVhY2hpbmcgdXNlciBzcGFjZSwgYnV0IHRoZSBib290dXAgbWVzc2FnZXMg
aW5jbHVkZSB0aGUKPiA+Pj4+IHN1c3BpY2lvdXMgbGluZSAiQmFkIG1vZGUgaW4gcHJlZmV0Y2gg
YWJvcnQgaGFuZGxlciBkZXRlY3RlZCIuCj4gPj4+PiBJIHN1c3BlY3QgdGhlIGZpcm13YXJlIG9u
IHRoaXMgYm9hcmQgZG9lc24ndCBzdXBwb3J0IHRoaXMgbmV3IFNNQwo+ID4+Pj4gY29ycmVjdGx5
LiBSZXZlcnRpbmcgdGhpcyBwYXRjaCBvbiB0b3Agb2YgbGludXgtbmV4dCBnZXRzIGV2ZXJ5dGhp
bmcKPiA+Pj4+IHdvcmtpbmcgYWdhaW4uCj4gPj4+Cj4gPj4+IElzIHlvdXIgYm9hcmQgYWN0dWFs
bHkgcnVubmluZyBzb21lIHRydXN0ZWQgZmlybXdhcmU/Cj4gPj4KPiA+PiBOb3QgYXMgZmFyIGFz
IEkga25vdy4KPiA+Pgo+ID4+PiBTdG9jayByazMyODggbmV2ZXIgaGFkIHRmLWEgLyBwc2NpIFsw
XSwgSSBkaWQgd29yayBvbiB0aGF0IGZvciBhIHdoaWxlLAo+ID4+PiBidXQgZG9uJ3QgdGhpbmsg
dGhhdCBldmVyIHRvb2sgb2ZmLgo+ID4+Pgo+ID4+PiBJJ20gd29uZGVyaW5nIHdobyB0aGUgc21j
YyBjYWxsIGlzIGNhbGxpbmcsIGJ1dCBkb24ndCBrbm93IGFib3V0Cj4gPj4+IGFib3V0IHNtY2Mg
c3R1ZmYuCj4gPj4KPiA+PiBHb29kIHF1ZXN0aW9uIC0gaXQncyBxdWl0ZSBwb3NzaWJsZSB0aGlu
Z3MgYXJlIGJsb3dpbmcgdXAganVzdCBiZWNhdXNlCj4gPj4gdGhlcmUncyBub3RoaW5nIHRoZXJl
IHRvIGhhbmRsZSB0aGUgU01DLiBNeSBEVEIgaXMgYXMgdXBzdHJlYW06Cj4gPj4KPiA+PiAgICAg
ICAgICBjcHVzIHsKPiA+PiAgICAgICAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDB4MDE+
Owo+ID4+ICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MHgwMD47Cj4gPj4gICAgICAg
ICAgICAgICAgICBlbmFibGUtbWV0aG9kID0gInJvY2tjaGlwLHJrMzA2Ni1zbXAiOwo+ID4+ICAg
ICAgICAgICAgICAgICAgcm9ja2NoaXAscG11ID0gPDB4MDY+Owo+ID4+Cj4gPj4gSSBoYXZlbid0
IGludmVzdGlnYXRlZCB3aHkgdGhpcyBjb2RlIGlzIGF0dGVtcHRpbmcgdG8gY2FsbCBhbiBTTUMg
b24KPiA+PiB0aGlzIGJvYXJkLgo+ID4KPiA+IEkgZ3Vlc3MgdGhlIHdoeSBpcyBlYXN5LCBzb21l
dGhpbmcgdG8gZG8gd2l0aCBzdXNwZW5kIDotKSAuCj4gPgo+ID4gSSBkaWQgZ28gdGVzdGluZyBh
IGJpdCwgYm9vdGluZyBhIHJrMzI4OC12ZXlyb24gcHJvZHVjZXMgdGhlIHNhbWUgaXNzdWUKPiA+
IHlvdSBzYXcsIGxpa2VseSBkdWUgdG8gdGhlIG5vbi1leGlzdGVudCB0cnVzdGVkLWZpcm13YXJl
Lgo+ID4KPiA+IE9uIHRoZSBhcm02NC1zaWRlLCBJIHRyaWVkIGEgcGxldGhvcmEgb2Ygc29jcyAr
IHRmYS12ZXJzaW9ucywKPiA+Cj4gPiAgICByazMzMjg6IHYyLjUgdXBzdHJlYW0oPyktdGYtYQo+
ID4gICAgcmszMzk5OiB2Mi45IHVwc3RyZWFtLXRmLWEKPiA+ICAgIHB4MzA6IHYyLjQrdjIuOSB1
cHN0cmVhbS10Zi1hCj4gPiAgICByazM1Njg6IHYyLjMgdmVuZG9yLXRmLWEKPiA+ICAgIHJrMzU4
ODogdjIuMyB2ZW5kb3ItdGYtYQo+ID4KPiA+IGFuZCBhbGwgcmFuIGp1c3QgZmluZS4KPiA+IFNv
IGl0IHJlYWxseSBsb29rcyBsaWtlIHRoZSBzbWNjIGNhbGwgZ29pbmcgdG8gc29tZSB1bnNldCBs
b2NhdGlvbiBpcwo+ID4gdGhlIGN1bHByaXQuCj4gPgo+ID4gTG9va2luZyBhdCBvdGhlciB1c2Vy
cyBvZiBhcm1fc21jY19zbWMsIG1vc3Qgb2YgdGhlbSBzZWVtIHRvIGJlIGhhbmRsZWQKPiA+IHVu
Z3VhcmRlZCwgYnV0IHNvbWUgb2xkZXIoPykgYXJtMzIgYm9hcmRzIGFjdHVhbGx5IGNoZWNrIHRo
ZWlyIERUcyBmb3IgYW4KPiA+IG9wdGVlIG5vZGUgYmVmb3JlIHRyeWluZyB0aGVpciBzbWMtY2Fs
bC4KPiA+Cj4gPiBJIGd1ZXNzIGluIHRoZSBwbS1kb21haW4gY2FzZSwgd2UgY291bGQganVzdCB3
cmFwIHRoZSBjYWxsIHdpdGg6Cj4gPiAgICAgICBpZihhcm1fc21jY2NfMV8xX2dldF9jb25kdWl0
KCkgIT0gU01DQ0NfQ09ORFVJVF9OT05FKQo+ID4KPgo+IFRoYW5rcyBmb3IgdGhlIHJlcG9ydCBh
bmQgaGVscGluZyBmaW5kIG91dCB0aGUgY2F1c2UhCj4KPiBAVWxmLCBpZiB0aGUgc29sdXRpb24g
YWJvdmUgc2VlbXMgcmVhc29uYWJsZSB0byB5b3UsIEkgY2FuIGNvb2sgYSBmaXgtdXAKPiBwYXRj
aC4KClNlZW1zIHJlYXNvbmFibGUgdG8gbWUsIHRoYW5rcyEKClsuLi5dCgpLaW5kIHJlZ2FyZHMK
VWZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
