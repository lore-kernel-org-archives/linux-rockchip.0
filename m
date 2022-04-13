Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A78EC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 12:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mpf+vwJu2UxlOBV4UmGuDC2w2eMoGavkEURaY5qt1BA=; b=hh3o+ee8Dzw40G
	CQAtAmiW2eJT2P2I5MMXjDZO6dzReCL2TqUMo+/RPZYT8+u6wOCke/vivSpJfGBbV0KN9VVcDvDY5
	Xj1JXvH/zuneKUXTgqxi+hYsfaXsi/dQRQ+9UBnrIGyV19VilfEpN/f4zu2KrgyMWb0wG5Lcf19uG
	CfiVV/0sTPjPjjWlr8k+v5AxI080oOu5eWNvkjbk2WOGpsFrbIZyXBn+uvUx2XQbTeWr3I4B5Y+kp
	QizKiUDvU5c4/aIKEaZAUmKmqZUQOi/EcYbjE51J8feu70RbSjwRADk/B5TJLvr87Fr3fCx65D0wm
	7K3ibZxyMxXX4zHhG6rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neboo-000vd2-2j; Wed, 13 Apr 2022 12:09:54 +0000
Received: from mail-yw1-x1131.google.com ([2607:f8b0:4864:20::1131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nebok-000vaO-EO; Wed, 13 Apr 2022 12:09:51 +0000
Received: by mail-yw1-x1131.google.com with SMTP id
 00721157ae682-2ef5380669cso2729807b3.9; 
 Wed, 13 Apr 2022 05:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=uHgjRJ5n7gxa3U8bHk8ZxYgUPiikIG3e7D0EHXtK/WI=;
 b=Bu0b0Y/KrqMGaQ4XJKkH1snEUiP5tOPA+/pDExEqKjnvrtenziyOmLtOByO8yMXuLz
 vPf6g56ZQ4o6xcz7/UTrb6IvkeJIhqpA7ATKqKSPVVqO/k33/xFJ4Aed/FocWMs2WUN2
 0xXheoOV9fn4KwKnhOc3foPFRav+bDee4afUyrIyRksibz+ruSPBSV5AbpzjtlqrMzZR
 2xB5e8PvEx6vA3cAEDbuAViP/fmX07uF+XyZTZ31Ij0vssvoggpeuX6Z2JEuNeJkMrn4
 a2aKUJ2/jXxmFnQw0+1zMapR577dUDxf0G9Kem3oDSZquoK9lNXdGMO405vjkV39C+Fm
 J7/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=uHgjRJ5n7gxa3U8bHk8ZxYgUPiikIG3e7D0EHXtK/WI=;
 b=Zx0wLldZvG9z2n18KPNmTi9emKQPud160JTs5wmLn3iNFWeMj/oiYj4h8RKNnOfDD7
 KEhJ9E3hdN/la6/TiNy2i6EWvexaFXoYMxWhnZe2DQHUGTeI6/geFqeBZVCB1+8qOGl/
 t4tTVKINZ7jrVbaF3X7RdgCbdT7Jy/x/n++v3RTtk4DiDZ24faJBPvOyu/JTk7D3Oth9
 6zfkrqrb2zORMaor3gmyKPkKcM12qAMrl+KR2q6bCymgaWOyqt/HbZsxwOUBwqZol4m6
 OoJpPdyJxHdCpUFB5Mhg394CrbgWraRGfZd0fkTqz/XGRsuJFS7Id0yMEWb9NVI1LTUO
 1HIA==
X-Gm-Message-State: AOAM533aUylZeWQHf/gMSWQpcyM/epZocyJQvFHD3tQByNL12dZdjEQb
 b7UXJ1wwrfB7ZGd9RzbwUg3AY7vwYEV+NJLOksQ=
X-Google-Smtp-Source: ABdhPJwMJK0m2bHfAT/ZqxMVu8kycGcqPLvMYcqzO9MiUl1ZsR/O2Xc/2lRjo9G2u4vlQIt0yFuVlD/CuSh3WZ381yg=
X-Received: by 2002:a81:578c:0:b0:2e6:2488:7ef8 with SMTP id
 l134-20020a81578c000000b002e624887ef8mr34012300ywb.519.1649851787737; Wed, 13
 Apr 2022 05:09:47 -0700 (PDT)
MIME-Version: 1.0
References: <20220412185751.124783-1-pgwipeout@gmail.com>
 <20220412185751.124783-3-pgwipeout@gmail.com>
 <0cf83ec0-29d3-fbde-0b7d-9d58d210f0a4@rock-chips.com>
In-Reply-To: <0cf83ec0-29d3-fbde-0b7d-9d58d210f0a4@rock-chips.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 13 Apr 2022 08:09:36 -0400
Message-ID: <CAMdYzYoX=4a_nMfNJ++nVTm18896g6jDngPrq36mRs8e2kj7tA@mail.gmail.com>
Subject: Re: [PATCH v1 2/4] PCI: dwc: rockchip: add legacy interrupt support
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, 
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_050950_560473_C8DC5820 
X-CRM114-Status: GOOD (  15.30  )
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

T24gVHVlLCBBcHIgMTIsIDIwMjIgYXQgMTA6NTQgUE0gU2hhd24gTGluIDxzaGF3bi5saW5Acm9j
ay1jaGlwcy5jb20+IHdyb3RlOgo+Cj4gSGkgUGV0ZXIsCj4KPiDlnKggMjAyMi80LzEzIDI6NTcs
IFBldGVyIEdlaXMg5YaZ6YGTOgo+ID4gVGhlIGxlZ2FjeSBpbnRlcnJ1cHRzIG9uIHRoZSByazM1
NnggcGNpZSBjb250cm9sbGVyIGFyZSBoYW5kbGVkIGJ5IGEKPiA+IHNpbmdsZSBtdXhlZCBpbnRl
cnJ1cHQuIEFkZCBpcnEgZG9tYWluIHN1cHBvcnQgdG8gdGhlIHBjaWUtZHctcm9ja2NoaXAgPgo+
ID4gK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfbGVnYWN5X2ludF9oYW5kbGVyKHN0cnVjdCBp
cnFfZGVzYyAqZGVzYykKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgaXJxX2NoaXAgKmNoaXAgPSBp
cnFfZGVzY19nZXRfY2hpcChkZXNjKTsKPiA+ICsgICAgIHN0cnVjdCByb2NrY2hpcF9wY2llICpy
b2NrY2hpcCA9IGlycV9kZXNjX2dldF9oYW5kbGVyX2RhdGEoZGVzYyk7Cj4gPiArICAgICBzdHJ1
Y3QgZGV2aWNlICpkZXYgPSByb2NrY2hpcC0+cGNpLmRldjsKPiA+ICsgICAgIHUzMiByZWc7Cj4g
PiArICAgICB1MzIgaHdpcnE7Cj4gPiArICAgICB1MzIgdmlycTsKPiA+ICsKPiA+ICsgICAgIGNo
YWluZWRfaXJxX2VudGVyKGNoaXAsIGRlc2MpOwo+ID4gKwo+ID4gKyAgICAgcmVnID0gcm9ja2No
aXBfcGNpZV9yZWFkbF9hcGIocm9ja2NoaXAsIDB4OCk7Cj4gPiArCj4KPgo+IE92ZXJhbGwgaXQg
bG9va3MgZ29vZCBleGNlcHQgdGhhdCAweDggaGFzIGEgbmFtZSwKPiBQQ0lFX0NMSUVOVF9JTlRS
X1NUQVRVU19MRUdBQ1kuIEJUVywgSWYgeW91IGNvbnNpZGVyIGFkZGluZyBtb3JlIHN1cHBvcnQK
PiB0byBpdCwgZm9yIGluc3RhbmNlLCBlbmFibGUvZGlzYWJsZS9hZmZpbml0eT8gIFRoZSBkb3du
c3RyZWFtIGtlcm5lbAo+IGZpbmlzaGVkIHRoZXNlIGZvciBiZXR0ZXIgZml0dGluZyBmb3IgZnVu
Y3Rpb24gZHJpdmVyIHVzYWdlLgoKR29vZCBjYXRjaCwgdGhhbmtzLgoKVGhpcyBwYXRjaCBoYXMg
cmVtYWluZWQgbGFyZ2VseSB1bmNoYW5nZWQgZnJvbSB3aGVuIEkgZmlyc3QgY3JlYXRlZCBpdApw
cmlvciB0byBhc2tpbmcgZm9yIFJvY2tjaGlwIHRvIGluY2x1ZGUgc3VwcG9ydCBmb3IgaXQgaW4g
dGhlIGluaXRpYWwKc2VyaWVzLgpJIHdvdWxkIGhhdmUgbGVmdCBpdCBvdXQgYmFzZWQgb24gdGhl
IG9yaWdpbmFsIGNvdW50ZXIgYXJndW1lbnRzLApleGNlcHQgaW4gdGVzdGluZyB3ZSBoYXZlIGRp
c2NvdmVyZWQgdHdvIGlzc3VlczoKQSBzdXJwcmlzaW5nIG51bWJlciBvZiBjYXJkcyBkbyBub3Qg
c3VwcG9ydCBNU0lzLgpUaGUgY3VycmVudCBNU0kgaW1wbGVtZW50YXRpb24gaGFzIHBvb3IgY29t
cGF0aWJpbGl0eS4KCkkgd2lsbCBsb29rIGF0IHRoZSBkb3duc3RyZWFtIGltcGxlbWVudGF0aW9u
IGFuZCBjb25zaWRlciBwb3NzaWJsZQpjaGFuZ2VzLCBidXQgZm9yIHRoZSB0aW1lIGJlaW5nIHRo
aXMgZG9lcyB0aGUgam9iLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
