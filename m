Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EADF0CA0EE0
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Aug 2025 20:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hrr2g0K2cTqYwWBLPDCt0XUn9+NIFCdwzwO3KRevSXI=; b=CI7Dv8089Bw1S7
	yDKGHHx1QhVBFCL5td/7hZwFtoKcHKwl7ZzLUA3a9VW/Jg3nIU613dugZpD3khqrwhAN/24UT0Og6
	aZ6LBOgdgNWC39/v02Ass/cSxBsQqBmK09BT2Rp5WydikwPK6LsNlEoRbNGBI9itVZGlx374vB54J
	b10NWv5/wEQaX15b+JfI4wlNMOIQaBqK24x2Aq0KShhpBNgJDtjz6vF4qsUJRQjtEtrCoVwPo0/v/
	0LmDBezlx0QZw8sdmA/8sj7i1CXWuNVIVxXRR5kRDjVHWCitbBYCIUL+lKp/i1ceV2PUeY/oVjTZ8
	FUK7wvA7Y3fqb2B50MlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulvge-0000000Bx5c-3JCG;
	Tue, 12 Aug 2025 20:33:36 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulteN-0000000Bhib-1nq8;
	Tue, 12 Aug 2025 18:23:08 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-b4245235a77so4896465a12.1;
        Tue, 12 Aug 2025 11:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755022986; x=1755627786; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F+fE4qi+RcEuypAjW0Bd5U93e0N2So4i7NT1OnYWUSk=;
        b=koTO13zkM7aJpO3e7vqt+D5NFOKXCTENP6OeLpPGmhYm8Js+yR8Vvl40dtTSnBluea
         VbESN3YVCRJbMBrFE/TipYK7ChK3CFHsfdYdn9jjoc9z3GjI/Mcd2YF9NOWgyfA64tNh
         MbRT+gqOVjp9NExf+N6sx+yCrH154GCIKk8tE2ZKIMMQjoK8TpG33gEQWm9ZS24Ta0zI
         GDczN2Yi4mvQZEgzOrsIDmdAocEGWppQham2GGH7/BJXyBGzNFWd8hNI95P/G2r/2Pzj
         8JNJb8x3sGKns6Q+XDo0gwdjv1CdUrEDSAofpgR9qMz9h3GIHfnFbxx3REs7tyihwFGT
         IuZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755022986; x=1755627786;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F+fE4qi+RcEuypAjW0Bd5U93e0N2So4i7NT1OnYWUSk=;
        b=NnZ/e6BbsUIYxqHcN1ORRoaAf291lLzNLfMXjXU2R5wHEuLhBUchGhnJqbjL0KWBpb
         OD6OGMmJxggo+FKH4vVFhDpqjUXOOeNgICiOWPfewFpWgvsL3JTCkan7FkpoNe35TZ96
         0SMLxBofeaXReMwQSHpAMOUjJmq22OKjZAJnZlY6uS2TRqOiO461E23osx7H0d/WpxwY
         kMS9+5NhrddQF8d96nuZOvH9WA1EEBg6jqAdTJ6lS3fMl+1lf0zXCjj0dQPUMVZ1YsJT
         m0TrncvLwVl/TbDOTZWy2VVVPWMG1fm+A7BHdDETI+FOP4T8GGOZ9snfJMgdLxENWHtS
         CExQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFy2OE0/8+tjqsrO5JXDVq1p6emIqxWXUKV10FMi1OYpVtChz20vokGE8jyNpAoEKxZ6DSOZy0pZtvBdTQqkTz@lists.infradead.org, AJvYcCXioMc7MOXoGflaC2cwYsXttgZyfyE9yNbVCtiTJHkgkYT8MmXN1yY4IaXbSQ5Ogk5Uyaq85AP64sOMYSggx9g=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHTObkaO3uNTznAE8IvkoqpZpfb2agjcUdMz1AtAaeUziDdult
	0qrPrHZZk9s4bkcyVDmfq/50JafJ9AleUjRBTm+9syfAn/fXh+w/Amh2D10551QVg/9xra018W9
	pcPLGlP80Bettq1VT9pEKt6jEMwtwc3I=
X-Gm-Gg: ASbGncsI6WEViHE+q0L2koR4GbOaZZUcyPHtKzo4BlB5pjp3YiUYctVMoBrG2biUSeU
	k/HKFYNWNgX9xleRxAkjU4Q10j5DJJo3/PZAn7B0YHeOu2bFaeZLZROUvjRu2uAswHKUqIKoUec
	SZMaMscBydG2ze/rpG/ci/mWpfZj3SK8hhuIgNek/XiqclueOnQoQXZ2onCOV5OVUe3pWPm3ard
	AJ/O+4=
X-Google-Smtp-Source: AGHT+IF1A81h6PBEtWt1slLi737ERxn8vSMYRw2gKSj0MQoOmspT2W2SwpWW3xVupvi6KHU+18JPG2LtGK88eiUCFBY=
X-Received: by 2002:a17:902:f612:b0:240:10dc:b795 with SMTP id
 d9443c01a7336-2430d08b468mr3464675ad.1.1755022986134; Tue, 12 Aug 2025
 11:23:06 -0700 (PDT)
MIME-Version: 1.0
References: <175308758352.3134829.9472501038683860006@localhost>
 <175326599663.2811177.16620980968274114885@localhost> <m3h5z2vw12.fsf@t19.piap.pl>
 <175344176070.2811177.10693943493658922992@localhost> <m3qzxyug1s.fsf@t19.piap.pl>
 <m3cy9futcj.fsf@t19.piap.pl> <m34iumujcs.fsf@t19.piap.pl> <m3zfcet41n.fsf@t19.piap.pl>
 <m3a545t789.fsf@t19.piap.pl> <20250812103243.GK30054@pendragon.ideasonboard.com>
 <175501095338.74722.11604545949710100799@localhost>
In-Reply-To: <175501095338.74722.11604545949710100799@localhost>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 12 Aug 2025 13:22:54 -0500
X-Gm-Features: Ac12FXwjCPlZoDfcVHADfdJKsSiklxExi-nNGmkRvmvpKutlc9OII1WL40p-4DM
Message-ID: <CAHCN7xKq_o_u7PhPMcZ2W9nzrFP8+CnhaYJOyxnjpKfbMTBCEw@mail.gmail.com>
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption: resolved
To: Stefan Klug <stefan.klug@ideasonboard.com>
Cc: =?UTF-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>, 
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250812_112307_469670_D05DFF7A 
X-CRM114-Status: GOOD (  36.40  )
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

T24gVHVlLCBBdWcgMTIsIDIwMjUgYXQgMTA6MDfigK9BTSBTdGVmYW4gS2x1Zwo8c3RlZmFuLmts
dWdAaWRlYXNvbmJvYXJkLmNvbT4gd3JvdGU6Cj4KPiBIaSBLcnp5c3p0b2YsIGhpIExhdXJlbnQs
Cj4KPiBRdW90aW5nIExhdXJlbnQgUGluY2hhcnQgKDIwMjUtMDgtMTIgMTI6MzI6NDMpCj4gPiBI
aSBLcnp5c3p0b2YsCj4gPgo+ID4gT24gVHVlLCBBdWcgMTIsIDIwMjUgYXQgMDc6NTQ6NDZBTSAr
MDIwMCwgS3J6eXN6dG9mIEhhxYJhc2Egd3JvdGU6Cj4gPiA+IEhpIFN0ZWZhbiBldCBhbCwKPiA+
ID4KPiA+ID4gQlRXIEkndmUgYWRkZWQgTHVjYXMgU3RhY2ggYW5kIFNoYXduIEd1byB0byAiQ2Mi
IGxpc3QuCj4gPiA+Cj4gPiA+IFRoZSBwcm9ibGVtIGlzIHRoZSBDUFUgY29yZSBwb3dlciBzdXBw
bHkgdm9sdGFnZSA6LSkKPiA+Cj4gPiBBaCwgdGhlIGRyZWFkZnVsIG92ZXJkcml2ZSBtb2RlLgo+
ID4KPiA+ID4gLSB3aGlsZSB0aGUgcmVmZXJlbmNlIG1hbnVhbCBzcGVjaWZpZXMgdGhlIG1heCBJ
U1AgYW5kIE1FRElBIGNsb2NrcyBhdAo+ID4gPiAgIDUwMCBNSHosIHRoZSBkYXRhc2hlZXRzIHNo
b3cgdGhpcyByZXF1aXJlcyB0aGUgIm92ZXJkcml2ZSIgbW9kZSA9Cj4gPiA+ICAgaW5jcmVhc2Vk
IENQVSBwb3dlciBzdXBwbHkgdm9sdGFnZS4gSW4gIm5vcm1hbCIgbW9kZSB0aGUgSVNQcyBhcmUK
PiA+ID4gICBsaW1pdGVkIHRvIDQwMCBNSHogKHRoZXJlIGFyZSBvdGhlciBsaW1pdHMsIHRvbyku
Cj4gPiA+Cj4gPiA+IC0gSSd2ZSB0cmllZCBsb3dlcmluZyB0aGUgY2xvY2sgcmF0ZSBhZnRlciBi
b290aW5nIHRoZSBzeXN0ZW1zICh3aXRoCj4gPiA+ICAgYSBDQ00gcmVnaXN0ZXIgd3JpdGUpLCBi
dXQgaXQgZGlkbid0IGZpeCB0aGUgcHJvYmxlbS4gSSBndWVzcyBzb21lCj4gPiA+ICAgcmVzZXQg
bG9naWMgaXMgYWZmZWN0ZWQgaGVyZSwgYW5kIHRoZSAobG93ZXIpIGNsb2NrIHJhdGUgbXVzdCBi
ZSBzZXQKPiA+ID4gICByaWdodCBmcm9tIHRoZSBzdGFydCwgaW4gdGhlIERULgo+ID4KPiA+IFRo
YXQncyBpbnRlcmVzdGluZy4gSSB3b3VsZG4ndCBoYXZlIGV4cGVjdGVkIHRoYXQuCj4gPgo+ID4g
PiAtIGFueXdheSwgbG93ZXJpbmcgdGhlIGZyZXF1ZW5jaWVzIG9mIElTUCBhbmQgTUVESUEgcm9v
dCBjbG9ja3MgZml4ZXMKPiA+ID4gICB0aGUgSVNQMiBNSSBjb3JydXB0aW9uLiBJJ20gY3VycmVu
dGx5IGludmVzdGlnYXRpbmcgUE1JQyBzZXR0aW5ncwo+ID4gPiAgIChib3RoIG15IENvbXB1bGFi
IGFuZCBTb2xpZFJ1biBtb2R1bGVzIHVzZSBQQ0E5NDUwQyBQTUlDcyksIHNvIHBlcmhhcHMKPiA+
ID4gICBJJ2xsIGJlIGFibGUgdG8gdXNlIHRoZSBoaWdoZXIgNTAwIE1IeiBjbG9ja3MuIEl0IGRv
ZXNuJ3QgbWF0dGVyIG11Y2gsCj4gPiA+ICAgdGhvdWdoLgoKSSB3YXMgcmVhZGluZyB0aHJvdWdo
IHRoZSBkYXRhIHNoZWV0IChub3QgdGhlIHJlZmVyZW5jZSBtYW51YWwpLCBhbmQKaXQgbGlzdHMg
YSBmZXcgbGltaXRhdGlvbnMgZm9yIHRoZSBjbG9ja3M6CgpGb3Igc2luZ2xlIENhbWVyYSwgTUlQ
SSBDU0kgMSBjYW4gc3VwcG9ydCB1cCB0byA0MDAvNTAwIE1IeiBwaXhlbApjbG9jayBpbiB0aGUg
Tm9taW5hbC9PdmVyZHJpdmUgbW9kZS4KRm9yIHNpbmdsZSBDYW1lcmEsIE1JUEkgQ1NJIDIgY2Fu
IHN1cHBvcnQgdXAgdG8gMjc3IE1IeiBwaXhlbCBjbG9jay4KRm9yIGR1YWwgQ2FtZXJhLCBib3Ro
IE1JUEkgQ1NJIGNhbiBzdXBwb3J0IHVwIHRvIDI2NiBNSHogcGl4ZWwgY2xvY2suCgpJZiB5b3Un
cmUgcnVubmluZyBkdWFsIGNhbWVyYXMsIGl0IHNvdW5kcyBsaWtlIHlvdSdyZSBjYXBwZWQgYXQg
MjY2Ck1IeiByZWdhcmRsZXNzIG9mIHdoZXRoZXIgb3Igbm90IHlvdSdyZSBpbiBvdmVyZHJpdmUg
b3Igbm9taW5hbC4KCgoKPiA+ID4KPiA+ID4gLSB0aGUgcXVlc3Rpb24gaXMgaWYgd2Ugc2hvdWxk
IGxvd2VyIHRoZSBjbG9ja3MgaW4gdGhlIG1haW4gaW14OG1wLmR0c2kKPiA+ID4gICBEVCBmaWxl
LCBvciB0aGUgb3ZlcmRyaXZlIG1vZGUgc2hvdWxkIHN0YXkgdGhlcmUsIGFuZCB0aGUgY2hhbmdl
cwo+ID4gPiAgIHNob3VsZCBiZSBtYWRlIHRvIHRoZSBpbmRpdmlkdWFsIGJvYXJkIGZpbGVzLCBv
ciBtYXliZSB0aGUgVS1Cb290Cj4gPiA+ICAgY29uZmlncyAoUE1JQyBvdXRwdXQgdm9sdGFnZXMp
IHNob3VsZCBiZSBjaGFuZ2VkIGV0Yy4KPiA+Cj4gPiBJIHRoaW5rIGl0IHdvdWxkIG1ha2Ugc2Vu
c2UgdG8gbG93ZXIgdGhlIGRlZmF1bHQgY2xvY2sgZnJlcXVlbmNpZXMsIGFuZAo+ID4gcHJvdmlk
ZSBhbiBvdmVybGF5IHRvIGVuYWJsZSBvdmVyZHJpdmUgbW9kZS4KPiA+Cj4gPiBJdCdzIGFsc28g
aW50ZXJlc3RpbmcgdGhhdCB0aGUgaXNzdWUgb25seSBhZmZlY3RlZCB0aGUgc2Vjb25kIElTUCwg
YXMKPiA+IHRoZSBmaXJzdCBvbmUgc2hvdWxkIGFsc28gYmUgbGltaXRlZCB0byA0MDAgTUh6IGlu
IG5vcm1hbCBtb2RlLgo+Cj4gSSBzdXBwb3J0IHRoYXQuIEFzIGEgc2lkZSBub3RlLCB0aGVyZSBp
cyBhbHJlYWR5IGlteDhtcC1ub21pbmFsLmR0c2kKPiB3aGljaCBpcyBvbmx5IHVzZWQgYnkgb25l
IGJvYXJkLiBUaGF0IGR0c2kgYWxzbyB1c2VzIHRoZQo+IGZzbCxvcGVyYXRpbmctbW9kZSBwcm9w
ZXJ0eSB3aGljaCBlbmFibGVzIGFkZGl0aW9uYWwgY2xvY2sgY2hlY2tzLiBTbyBJCj4gYXNrIG15
c2VsZiBpZiB0aGUgZGVmYXVsdCBpbXg4bXAuZHRzaSBzaG91bGQgc3BlY2lmeSBvdmVyZHJpdmUg
bW9kZSwgb3IKPiBpZiB3ZSBzaG91bGQgYWRkIGEgaW14OG1wLW92ZXJkcml2ZS5kdHNpICh0aGVu
IHdlIHNob3VsZCBwb3NzaWJseSByZW5hbWUKPiB0aGVtIHRvIGlteDhtcC1tb2RlLXh4eC5kdHNp
IHNvIHRoYXQgdGhleSBzaXQgc2lkZSBieSBzaWRlKSB0byBtYWtlIGl0Cj4gZWFzaWVyIHRvIGNy
ZWF0ZSBvdmVybGF5cyBmb3IgYm90aCBjYXNlcy4KCk15IHVuZGVyc3RhbmRpbmcgaXMgdGhhdCB0
aGUgaW14OG1wLmR0c2kgaXMgcHJlLWNvbmZpZ3VyZWQgZm9yCm92ZXJkcml2ZSBtb2RlLCBzbyBp
ZiB5b3UgbmVlZCB0byBydW4gdGhlIElTUCBpbiBub21pbmFsLCB0aGUgY2xvY2sKdXBkYXRlcyBz
aG91bGQgZ28gaW50byBpbXg4bXAtbm9taW5pYWwuZHRzaS4KCmFkYW0KPgo+IEJlc3QgcmVnYXJk
cywKPiBTdGVmYW4KPgo+ID4KPiA+IC0tCj4gPiBSZWdhcmRzLAo+ID4KPiA+IExhdXJlbnQgUGlu
Y2hhcnQKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
