Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B432CC5B543
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 14:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cLIUNb0MmVvstxoH3OX2n3LS/2agXo12AHSdAprYCGo=; b=IKriydajhW8lN2
	M63TyyRVG+Ore1mnsPcSoVDStzClD4s5LxNI6xrpHfo0wQ51gBHqKs0Z0Nxr45fh2Zrl/iAtUjotP
	xrr+KTqTzWuoEhbDX1fddjFd1fWZvBUPXWcSkH4dl0DoJT+Jv9D6/bxdUcpmmrjXphlyWdnL/z6b2
	pR1e9QGIG/aVv7xQLDp+hEvBzbvDttLSbxmWjuPw5/mBVTlBkXrtQ2upC3aJj6EG4HJBXThNVKGmO
	fHGFHuWMT2dzqDUS2rFLJgPfggPhO4RK3DXwzGziXVVS97czdQJ/j1nQZK1C3e6VSW5B80T+SqS/l
	pBqpe8LGzkLJcolA97Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNBHF-0000000Fjgv-053E;
	Thu, 05 Jun 2025 14:09:05 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNArn-0000000FgJN-3tky;
	Thu, 05 Jun 2025 13:42:49 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-4a4bb155eb1so10364681cf.1;
        Thu, 05 Jun 2025 06:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749130966; x=1749735766; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b1Aw1oATIRI4U6r0tJJxa/pTsMT8z1zs/O7llSWlNeU=;
        b=nTj0X2RhLDU7vnpfXjXQFlthSIDDh55r+tVVSU2PfFeTgtvMQ5FTumQ4+nhTMwEaGv
         JZ4+8wCoxCvPjUXAbThxWARUfwJ9sOIFi8MKFSYooB3XuwhScX9N72o9ev6y0fHD4r9L
         7zzr4/4Qp6IQ75ei5wclnjawL0is9sNS/KML4kZ1/SJpaNLYEDhIKFO01DatwIkiKjp3
         fbGQv4I0rQCc1e7LWGrW496kur4TJGjPmZm50Pfsb+1DCP1m3E94tFRuXhGPDfNZKPH1
         xGUOhZ+8hlmwqHyMEx4VmtIOh2XP/yGtFZoh9J5QCi4n6FqACwBcbVl4MnLGkLEHWZpR
         K9Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749130966; x=1749735766;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b1Aw1oATIRI4U6r0tJJxa/pTsMT8z1zs/O7llSWlNeU=;
        b=kRX0yYR/Toj96W6CYn6bTBimYeVOZw2Ip+lzZJE+jXo8ogDmmi7xIv67E6uvhOHQvS
         2Xrji41DFrEZgLvCOd5SP/l3ODRFkijm5iPx/WWi14a+aZFXrySftxTwGuwx6f5BdtWZ
         iUWkohldvHh3VfUv0XStLB4Vi7XKUrmEiGO7sSCpkpdEVBM5slxmcRhAvLVSNmY6qct3
         ZwR84ltPc+x2co+jorHE24LC88CiL/mSa3quk66fmOMowJEQc6jcAlOOawBOu/ii/4wm
         Bh4SIegnpPjZL0faFyOqFtoWGMhNoDz3zcU5Y4g/IW0fwvE1PFlq62AJDABul2GmjGlM
         TTtw==
X-Forwarded-Encrypted: i=1; AJvYcCUGaDv5WJkQJx4dTjoAG8xuRgardE3KJrzVOwktD/95p4Ymqaq2Q3Hx3JSQEPgke9IRSHyMKOiYsgXqv6Gcy4ht@lists.infradead.org, AJvYcCUaoA5mqY5VyijEUO4GqUUFENFViwtsDWc5DlOJV9hO/Cxs5dGHMtdHlL7elikCeEGdlTUgby0keF9vcJpt8WU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyOGEYH/zYGAZrpU6jFPIw8xEyKeuZUFNVCbQULJYOqXR3woBW+
	4HHXphlGeqZOO8quCQzcHwZunhBHguLddcL2197hwoOlONu/4ZdaNMQerxVPhz0dvp9ynERh5hW
	GxFl+4xVfr0hZrlPpmvORyQcRdpzoFSk=
X-Gm-Gg: ASbGncvdNLMrD+ZAY2+KbXaI2XomDNRl+TuFx94QwESAHUMzJA9mEbagYiD3XvIADd/
	4akqJazs0tfhmaZioXcidMiyVT/BsCCtFhD6n5s6gb10tyHzQDKzKNmFZCjIQ7pLZscI3tXCMnG
	pFsWAMv7JdEiEXvgYIeee5KtmT8qAujp6QWq4IME9ISud2
X-Google-Smtp-Source: AGHT+IG0MMWP+x7U8tsJQ6YRTMkTZzqpNjJO/whvvcK/0u3aHGtE8WDWz1uwITy8x/Dviq7md8X536qbBtEfOUabryE=
X-Received: by 2002:a05:622a:8ca:b0:494:b2db:eeca with SMTP id
 d75a77b69052e-4a5a585f3ecmr94610721cf.26.1749130966422; Thu, 05 Jun 2025
 06:42:46 -0700 (PDT)
MIME-Version: 1.0
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-1-717e8ce4ab77@gmail.com> <6656934.DvuYhMxLoT@workhorse>
 <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com> <512E950E-E8CB-443B-8E47-79F073D217E8@gmail.com>
In-Reply-To: <512E950E-E8CB-443B-8E47-79F073D217E8@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Thu, 5 Jun 2025 17:42:38 +0400
X-Gm-Features: AX0GCFsTzLQL93s6ofhHt9HSu3m-CxEmKHnPQLzRarGwazT_7OOgybpDR17U5os
Message-ID: <CABjd4YxGQP=rH15EX12w36b7+82Dedf+rVH3v5V6gBwNv3V3iw@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM Sige5
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_064247_972035_F37F11E6 
X-CRM114-Status: GOOD (  34.89  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBKdW4gNSwgMjAyNSBhdCA1OjIy4oCvUE0gUGlvdHIgT25pc3pjenVrCjxwaW90ci5v
bmlzemN6dWtAZ21haWwuY29tPiB3cm90ZToKPgo+Cj4KPiA+IFdpYWRvbW/Fm8SHIG5hcGlzYW5h
IHByemV6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4gdyBkbml1IDQgY3plIDIw
MjUsIG8gZ29kei4gMjE6MTI6Cj4gPgo+ID4gT24gV2VkLCBKdW4gNCwgMjAyNSBhdCAxMDozOOKA
r1BNIE5pY29sYXMgRnJhdHRhcm9saQo+ID4gPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEu
Y29tPiB3cm90ZToKPiA+Pgo+ID4+Cj4gPgo+ID4gRnJlcXVlbmNpZXMgYXJlIGZpbmUsIGJ1dCBJ
IGRvbid0IHRoaW5rIHRoZSBtb3JlIHBvd2VyIGh1bmdyeSBiaWcgQ1BVCj4gPiBjbHVzdGVyIGdl
dHMgYW55IHZvbHRhZ2Ugc2NhbGluZyB3aXRob3V0IGl0LiBPbmNlIEkgdHJ5IHRvIGxvYWQgdGhl
Cj4gPiBzeXN0ZW0gZW5vdWdoIHRoYXQgdGhlIGdvdmVybm9yIGRlY2lkZXMgdG8gYnVtcCB0aGUg
YmlnIGNsdXN0ZXIKPiA+IGZyZXF1ZW5jeSB1cCwgdGhlIHJlZ3VsYXRvciBzdGF5cyBhdCA4NTAw
MDAgbWljcm92b2x0cywgY2F1c2luZyByYW5kb20KPiA+IHJlYm9vdHMgd2hlbiB0aGUgd2hvbGUg
Y2x1c3RlciBzdGFydHMgc3RhcnZpbmcuIFdpdGggdGhlIHBhdGNoLAo+ID4gdm9sdGFnZSBvc2Np
bGxhdGVzIGJldHdlZW4gNzAwMDAwLTczNzAwMCBtaWNyb3ZvbHRzIGluIGlkbGUgYW5kIGp1bXBz
Cj4gPiB1cCB0byA5NTAwMDAgdW5kZXIgbG9hZCwgYW5kIHRoZSBzeXN0ZW0gc2VlbXMgc3RhYmxl
Lgo+ID4KPiA+IEhlcmUncyB3aGF0IEkgdXNlZCB0byBtb25pdG9yIHRoZSB2b2x0YWdlICh0aGVy
ZSBtdXN0IGJlIGEgYmV0dGVyIHdheQo+ID4gdG8gZG8gaXQsIGJ1dCBpdCB3b3Jrcyk6Cj4gPiBz
aWdlNSB+ICMgd2F0Y2ggY2F0IGBncmVwIC1yIC4gL3N5cy9jbGFzcy9yZWd1bGF0b3IvKi9uYW1l
IHwgZ3JlcAo+ID4gdmRkX2NwdV9iaWdfczAgfCBzZWQgLWUgJ3MvbmFtZS4qLy8nYC9taWNyb3Zv
bHRzCj4gPgo+ID4gQW5kIGluIGFub3RoZXIgdGVybWluYWw6Cj4gPiBzaWdlNSB+ICMgc3RyZXNz
LW5nIC1jOAo+Cj4gQWxleGV5LAo+IEkgc2VlIHlvdSBhcmUgdXNpbmcgcmszNTc2IGJvYXJkIGxp
a2UgbWUgKG5hbm9waS1tNSkKPiBIYXZlIHlvdSBvbiB5b3VyIGJvYXJkIGNvcnJlY3RseSB3b3Jr
aW5nIGNwdSBkdmZzPwo+IEkgbWVhbjogWzFdW2Rlc2lyZWQgY2xvY2tzIHJlcG9ydGVkIGJ5IGtl
cm5lbCBzeXNmcyBhcmUgaW4gcGFpciB3aXRoIFsyW11jdXIgY2xvY2tzPwo+IEluIG15IGNhc2Ug
aSBzZWUgbWluZSBjcHUgbGl2ZXMgdG90YWxseSBvbiBpdOKAmXMgb3duIHdpdGggZHZmczoKCkhp
IFBpb3RyLAoKSSBoYXZlbid0IHRyaWVkIHRvIHZhbGlkYXRlIGFjdHVhbCBydW5uaW5nIGZyZXF1
ZW5jaWVzIHZzLiByZXF1ZXN0ZWQKZnJlcXVlbmNpZXMsIGJ1dCBzdWJqZWN0aXZlIHBlcmZvcm1h
bmNlIGFuZCBwb3dlciBjb25zdW1wdGlvbiBzZWVtIHRvCmJlIGluIGxpbmUgd2l0aCB3aGF0IEkg
ZXhwZWN0LgoKQmlnIHRoaW5nIHRvIG5vdGUgaGVyZSBpcyB0aGF0IG9uIFJvY2tjaGlwIHRoZSBr
ZXJuZWwgZG9lcyBub3QgcmVhbGx5CnNldCB0aGUgQ1BVIGZyZXF1ZW5jeSBkaXJlY3RseS4gSXQg
b25seSBpc3N1ZXMgYW4gU0NNSSByZXF1ZXN0IHRvIHRoZQpBVEYgZmlybXdhcmUgd2l0aCB0aGUg
ZGVzaXJlZCB0YXJnZXQgZnJlcXVlbmN5IGFuZCBwcm92aWRlcyBzdWZmaWNpZW50CnZvbHRhZ2Ug
dmlhIHRoZSBzdXBwbHkgcmVndWxhdG9yIGFzIGRlZmluZWQgYnkgdGhlIHJlc3BlY3RpdmUgT1BQ
LgoKV2hhdCB0aGUgQVRGIGZpcm13YXJlIChydW5uaW5nIG9uIGEgZGVkaWNhdGVkIE1DVSBjb21w
bGV0ZWx5IHNlcGFyYXRlCmZyb20gdGhlIE9TKSB0aGVuIGRvZXMgaXMgaXQgdGFrZXMgdGhlIGRl
c2lyZWQgdGFyZ2V0IGZyZXF1ZW5jeSwKbWF0Y2hlcyBpdCB0byBhIGxvb3AgbGVuZ3RoIGZvciB0
aGUgUFZUUExMIGJsb2NrIHZpYSBhbiBpbnRlcm5hbApsb29rdXAgdGFibGUsIGFuZCBQVlRQTEwg
dGhlbiBkZXRlcm1pbmVzIHRoZSBzdGFibGUgZnJlcXVlbmN5IHRoYXQKdGhpcyBwYXJ0aWN1bGFy
IGNoaXAgc3BlY2ltZW4gY2FuIHJ1biBhdCB3aXRoIHRoZSBwcm92aWRlZCBsb29wIGxlbmd0aAph
bmQgdm9sdGFnZS4gVGhpcyBmcmVxdWVuY3kgdGhlbiBnZXRzIGFwcGxpZWQgdG8gdGhlIGhhcmR3
YXJlIHZpYSB0aGUKQ1JVIC0gYW5kIGFzIHlvdSBjYW4gaW1hZ2luZSwgaXQgY2FuIHdlbGwgZGlm
ZmVyIGZyb20gd2hhdCB0aGUga2VybmVsCndhcyByZXF1ZXN0aW5nIHZpYSBTQ01JLgoKPiBSZXF1
ZXN0ZWQgaXMgWzFdCj4gUnVubmluZyBpcyBbMl0KPiBNZWFzdXJlZCBpcyBbM10KPgo+IHJhbmRv
bSByZWFkIDE6Cj4gUmVxdWVzdGVkIENQVTQ6IDQwOCBNSHoKPiBSZXF1ZXN0ZWQgQ1BVMDogNDA4
IE1Iego+IFJ1bm5pbmcgQ1BVNDogMTgwMCBNSHoKPiBSdW5uaW5nIENQVTA6IDE0MTYgTUh6Cj4g
TWVhc3VyZWQgb24gSFc6IDE1NzkuMDMgTUh6CgpIbW0sIGhhdmUgeW91IHRyaWVkIHBpbm5pbmcg
YSBwYXJ0aWN1bGFyIGZyZXF1ZW5jeSBvbiBlYWNoIG9mIHRoZQpjbHVzdGVycywgc28gdGhhdCB0
aGUgZ292ZXJub3IgZG9lc24ndCBjaGFuZ2UgaXQgd2hpbGUgeW91IGFyZSBnb2luZwpmcm9tIHRo
ZSBwb2ludCB3aGVyZSB5b3UgcmVhZCB0aGUgInJlcXVlc3RlZCIgZnJlcXVlbmN5IHRvICJydW5u
aW5nIgphbmQgIm1lYXN1cmVkIj8gQWxzbyBJIHRoaW5rIGl0IHdvdWxkIGJlIGEgZ29vZCBpZGVh
IHRvICJ0YXNrc2V0IiB0aGUKbWVhc3VyaW5nIHRocmVhZCB0byBwYXJ0aWN1bGFyIENQVSBjb3Jl
cyAtIG90aGVyd2lzZSBJJ20gbm90IHN1cmUgd2hhdAppdCBzaG93cyB3aGVuIHRoZSBzY2hlZHVs
ZXIgY2FuIGJvdW5jZSB0aGUgcHJvY2VzcyBiZXR3ZWVuIGNvcmVzIGFzIGl0CnBsZWFzZXMgaXQu
Cgo+IHJhbmRvbSByZWFkIDI6Cj4gUmVxdWVzdGVkIENQVTQ6IDE2MDggTUh6Cj4gUmVxdWVzdGVk
IENQVTA6IDQwOCBNSHoKPiBSdW5uaW5nIENQVTQ6IDIwMTYgTUh6Cj4gUnVubmluZyBDUFUwOiAx
ODAwIE1Iego+IE1lYXN1cmVkIG9uIEhXOiA0MTAuMzMgTUh6Cj4KPiByYW5kb20gcmVhZCAzOgo+
IFJlcXVlc3RlZCBDUFU0OiA2MDAgTUh6Cj4gUmVxdWVzdGVkIENQVTA6IDE4MDAgTUh6Cj4gUnVu
bmluZyBDUFU0OiA4MTYgTUh6Cj4gUnVubmluZyBDUFUwOiAxMDA4IE1Iego+IE1lYXN1cmVkIG9u
IEhXOiAyMjc1LjA3IE1Iego+Cj4gcmFuZG9tIHJlYWQgNDoKPiBSZXF1ZXN0ZWQgQ1BVNDogMTYw
OCBNSHoKPiBSZXF1ZXN0ZWQgQ1BVMDogMTIwMCBNSHoKPiBSdW5uaW5nIENQVTQ6IDgxNiBNSHoK
PiBSdW5uaW5nIENQVTA6IDgxNiBNSHoKPiBNZWFzdXJlZCBvbiBIVzogMjExNC41OCBNSHoKPgo+
IHRoaXMgaXMgb24gcmszNTc2Cj4gb24gaS5lIGFsbHdpbm5lciBoNjE4IG9yIHJrMzU4OCBhbGwg
bG9va3MgcXVpdGUgbm9ybWFsIC0gWzFdIGFuZCBbMl0gYXJlIGVxdWFsLi4uCgpBcmUgdGhlc2Ug
dGFrZW4gb24gdGhlIG1haW5saW5lIGtlcm5lbCBvciBSb2NrY2hpcCBvbmU/IEJpbmFyeSBCTDMx
CmZyb20gUm9ja2NoaXAgb3Igb3BlbnNvdXJjZSBURi1BPyBXaXRoIGJpZy1jb3JlIENQVXMgbGlu
a2VkIHVwIHRvCnRoZWlyIHN1cHBseSByZWd1bGF0b3IgKGFzIHBlciB0aGlzIHBhdGNoKSBvciB3
aXRob3V0PwoKQ2FuJ3Qgc2VlIHdoeSB0aGUgYmVoYXZpb3Igd291bGQgZGlmZmVyIHZzLiBSSzM1
ODggdGhvdWdoLCB1bmxlc3MKdGhlcmUgYXJlIHNvbWUgYnVncyBzb21ld2hlcmUuCgpCZXN0IHJl
Z2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
