Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDAF5C88E75
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Sep 2026 07:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wpSt5aOnLIka+IOsfAjCBvBnadtImUQw6WlB0YSQQgE=; b=WVUKKiUpDICASE
	DuSE3KTteySdmUd/WZZzRjEAZVxbry/38rwtPpECrxyq7u1Q+tEM+tm/aa8csoYt4/lP+mUKLg7oe
	VvjbYFNXEpUZEkdY4Ug4zAIy5DyOEyQ3GU1ggG09Vzp+x5h7pDebpyzNO039JRk827ziTtDKSu0aE
	F+1GsNwYX5tQSs3pAF/ZeW7Y4S1zn+UrxAcUnjiLjGM84duD3NQI6HNWc2lsBeAXczpgClEHCmFoF
	1Fnrm802Kd6v6Es8d89BiJ8yO/fdue2223j+3mtzz+b/R+2ODTEgtaBFskuS+iFxvA6R21lGlE7lD
	bB4+MR2IE/0OyQmeG1pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Shn-0000000DesN-0l3R;
	Fri, 18 Sep 2026 07:08:19 +0000
Received: from mail-ed2-x2a.google.com ([2a00:1450:4864:33::2a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Shj-0000000DeqC-2dTA
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Sep 2026 07:08:18 +0000
Received: by mail-ed2-x2a.google.com with SMTP id 4fb4d7f45d1cf-6aa06e51bc3so608725a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 18 Sep 2026 00:08:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789715294; cv=none;
        d=google.com; s=arc-20260327;
        b=kQlOkb/0lOI1gzmjoq5BaunaeLe8CmPhMx+4lNg1WnsVyefPz2XYkGneCO71zsCFny
         iy0bgKR2C3uuvJ+tMju96OWu+TU25npTDSZGy1pNLvGx0+YQMaMKNjL0CGe8+ngknAfI
         Y3X7oRO9HvrVamQlFMtKVCFwZ8hApDbI6847y1rCrMQsl41S5ipAMg8bAsIJ7VLi5Eyg
         jEbilHkF3ulacG/wt4kFHk35ajMKKciOcdsFWNVXPc2aagWfjO1Lgt4+4Wy7kQWNONC+
         H3Qyb5jCVOCdHAa8KpYsqU9e8zHAa7e2jTYfxlIvmbrwOCgX4ckziPLpooi0duvNiyD+
         SS9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=We4O+cegvJtoaqFGeYIsxacYH6oBV4cwy/gzDLBfJso=;
        fh=/H4iCqYX9BUXcVfpROI47UYuCqFGf3K6x/ZmtqOgwH4=;
        b=kJP4F0uxiX83/WqmCyfphdDJwmqwCJHnUJVJ4PhzxPtCIXuO363K0hXg/7r51ohPHA
         XToI9SwJvmR7yVw48rH1b0AK4XEOCGo83VYTLUvRc+Q2GCSr3myqm9cYB4n/0UXd1lAx
         lf6tfdisBoRU8mSk2k5IDzdXz8/k9rP9hTXdumknjt3CvLdzwVBdkwGKt2NwqqyYdLSW
         9zjXmsW5lLkF20flQETctlDPtbEzoijsoFKM/WNVdfhxy7KVA+xTFLIxVJ4OzBvyR5y0
         dvY9lOGIcFZoYCit2V8e7scDEO+c0T71aPnCkVLFNc34dcuc1XrhmAI9vGjtOjYdw+vs
         f4qw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1789715294; x=1790320094; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=We4O+cegvJtoaqFGeYIsxacYH6oBV4cwy/gzDLBfJso=;
        b=wofT6pyAQpTJ1NpI575df/NBbk9ZSQC2HlIjoeOXhK1cTid+ldtWe+Q0GRLMjl/eaf
         OYnTj+vzYB+xIOYI3y+JKFb7Rzs7KERcpWv9n56VF/dNVhL+QcXkoJ4IvZZBuk18SzmV
         NwYCzyoNNQaNCElaEZGd59XpWmtioQWs4GfeNWN3puJDe8/mcTmoveREooqgW+568fnr
         O1vsY0GJMYa80KLWEMhc8gCBo7zz9HqYPW3AP92sepBIiL3RHLXjNRb1xT5Ia74niozn
         QYbhV7JEykgkODlafo9jptdE7eqalbd7iHtoA1YBL7bUs2VJuGEiteX2WntDreMUm6uN
         JBOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789715294; x=1790320094;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=We4O+cegvJtoaqFGeYIsxacYH6oBV4cwy/gzDLBfJso=;
        b=MtUzNy8LSbl+JmQtsiWTqn6vejd9UMomGXKgLLkB/Qb3EYMu13zYH9EkH23/WSUxUa
         idEIqH+oJYAqP2YhTmVZlzW2c/6ftP97ID7MO9apVPSRo9B/vjIq25o3FNYmHGS1eTAA
         DECSXYvUbVlvs5Z6NK1ANhLYqMvloybOfKmQvx+wsgc84iTIjK0IKysD7EZbOT0EyFTx
         7pF86FjDTsWkIzlbY6OsSZ+H3PMktOIaXBm6QHPTWb7QwPN0Yvt4a3HkmGyyBfDT6PIA
         jYv8973KLbp50ia502B4KgSDNSZWjdt4lhipX3DPqdiF/U704iV+vg7KobX0qxYf56Nk
         awIA==
X-Forwarded-Encrypted: i=1; AKwUvBxx/sZ4q9kGPKwx5Sfs/BOaJcSlW+T4p0/locNQaXMJI56tvy5xXtnjE9x9DfTyHC5UhSoocPcATPaBj/YApA==@lists.infradead.org
X-Gm-Message-State: AFuF++msL8aPEpCKuzyoivfgeYKy0bSbNmeehQl2dl2viou9s9Wv/jLR
	ZqnWoinwgJka+TWPfVjCm0ZLQFp60WP5TzJD5FlF/JSWignxFcGYNfoGQyAi6oJL/BOWh9ebagb
	yxG8zaY4lY2n5tkJhFlPMcmrChDN1ghuASD8VDWiQlQ==
X-Gm-Gg: AYBFou1ErnoC+NnPMJ1SsAS3re85X3nsMpA0P+lzLLqEXBBx4EwuJWycm176/Z51To2
	rNBmebpd9WjW8z0TrxydN2KP5TBxB08mxMFN2f9hgNvY5ASIvoRsJqn8svJEm6tRRKB4c5DLs3r
	KJGn//z8hkcmb2IaKCK0VgCsS1gNnaOf4atYkBuIxTKUQg0yJBIqQZFATBte6bEclDlkCRy8jwl
	JwYwvEf29xnvrqrkl17iHBMMxN2bhSu7fY+Yokkwdt767O5h7yu+LajQ5/wLn9OV0ujgLMXZpsR
	Su7m7Wz0m1zA3J/oUgbumsQwCTRgntAielsKBGwsFOz+Gz7jn3qBn3hXYOD+FGdMSXSfRSQzGip
	5IKFex562ZDEj
X-Received: by 2002:a17:907:9481:b0:c26:1648:a069 with SMTP id
 a640c23a62f3a-c2a15e529e2mr150203666b.36.1789715293450; Fri, 18 Sep 2026
 00:08:13 -0700 (PDT)
MIME-Version: 1.0
References: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
 <CAKTNdwH9QAgreJ-6+t1j_P1di4VyoMBSsFkf_g=mCi_-M8g9Pw@mail.gmail.com> <20260917221857.GA4056431-robh@kernel.org>
In-Reply-To: <20260917221857.GA4056431-robh@kernel.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 18 Sep 2026 11:08:04 +0400
X-Gm-Features: AcwNN1V38kIzvvjNiCjrlXv4QyepNlxjuEonBAUHUeInRScoNnYe7tr3v4fBPpk
Message-ID: <CAKTNdwH6E5=9gZHB6tdianC2+1aDv4wnLmvL59kDW-dR3a12bg@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] nvmem: Derive Rockchip MAC addresses from the OTP
 CPU ID
To: Rob Herring <robh@kernel.org>
Cc: Srinivas Kandagatla <srini@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Michael Walle <michael@walle.cc>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_000815_705856_9F91BB7A 
X-CRM114-Status: GOOD (  36.04  )
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

SGkgUm9iLAoKT24gRnJpLCBTZXAgMTgsIDIwMjYgYXQgMjoxOeKAr0FNIFJvYiBIZXJyaW5nIDxy
b2JoQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gVGh1LCBTZXAgMTAsIDIwMjYgYXQgMDY6NDg6
MzNQTSArMDQwMCwgQWxleGV5IENoYXJrb3Ygd3JvdGU6Cj4gPiBPbiBXZWQsIFNlcCAyLCAyMDI2
IGF0IDU6MDjigK9QTSBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFya0BmbGlwcGVyLm5ldD4gd3JvdGU6
Cj4gPiA+Cj4gPiA+IFJvY2tjaGlwIFNvQ3MgYXJlIHNoaXBwZWQgd2l0aCBhIHVuaXF1ZSBDUFUg
SUQgaW4gdGhlaXIgaW50ZXJuYWwgT1RQCj4gPiA+IG1lbW9yeSwgYW5kIFJvY2tjaGlwIGJvb3Rs
b2FkZXJzIHVzZSBpdCB0byBnaXZlIGJvYXJkcyB3aGljaCBoYXZlIG5vCj4gPiA+IGRlZGljYXRl
ZCBzdG9yYWdlIGZvciBhIE1BQyBhZGRyZXNzIGEgc3RhYmxlIG9uZSBhbnl3YXk6IHRoZXkgaGFz
aCB0aGUgQ1BVCj4gPiA+IElEIGFuZCBwYXRjaCB0aGUgcmVzdWx0aW5nIGFkZHJlc3NlcyBpbnRv
IHRoZSBkZXZpY2UgdHJlZSB0aGV5IGhhbmQgb3Zlci4KPiA+ID4KPiA+ID4gS2VybmVscyBzdGFy
dGVkIHdpdGhvdXQgdGhhdCBmaXh1cCwgZS5nLiBzdHJhaWdodCBmcm9tIHRoZSBTUEwgaW4gRmFs
Y29uCj4gPiA+IG1vZGUgb3IgYnkgYW55IG90aGVyIGxvYWRlciB3aGljaCBkb2VzIG5vdCBpbXBs
ZW1lbnQgUm9ja2NoaXAncyBkZXJpdmF0aW9uLAo+ID4gPiBmYWxsIGJhY2sgdG8gcmFuZG9tIE1B
QyBhZGRyZXNzZXMgd2hpY2ggY2hhbmdlIG9uIGV2ZXJ5IGJvb3QuCj4gPiA+Cj4gPiA+IEZvcm1h
bGl6ZSB0aGUgZGVyaXZhdGlvbiBpbiB0aGUgRFQgYmluZGluZyBhbmQgYWRkIGEgTGludXgga2Vy
bmVsIGRyaXZlcgo+ID4gPiBpbXBsZW1lbnRpbmcgaXQsIHNvIHRoYXQgYSBMaW51eCBpbWFnZSBj
YW4gdXNlIHRoZSBzYW1lIHN0YWJsZSBhZGRyZXNzZXMKPiA+ID4gcmVnYXJkbGVzcyBvZiB0aGUg
Ym9vdCBmbG93Lgo+ID4gPgo+ID4gPiBPbmx5IFJLMzU3NiBpcyB3aXJlZCB1cCBoZXJlLCB0aGF0
IGJlaW5nIHRoZSBTb0MgSSBjYW4gdGVzdCBvbi4gT3RoZXIKPiA+ID4gUm9ja2NoaXAgU29DcyBr
ZWVwIHRoZSBzYW1lIENQVSBJRCBhdCBhIGRpZmZlcmVudCBPVFAgb2Zmc2V0IC0gMHg3IHJhdGhl
cgo+ID4gPiB0aGFuIDB4YSBvbiBSSzM1ODgsIGZvciBpbnN0YW5jZSAtIHdoaWNoIG1ha2VzIHN1
cHBvcnRpbmcgdGhlbSBhIHR3by1saW5lCj4gPiA+IGFkZGl0aW9uIHRvIHRoZSBkcml2ZXIncyBt
YXRjaCB0YWJsZSBwbHVzIHRoZSBsYXlvdXQgbm9kZS4KPiA+ID4KPiA+ID4gUGF0Y2ggMSBpcyBh
IHByZXJlcXVpc2l0ZSBmaXguIFRoZSBPVFAgaGFyZHdhcmUgaGFzIGl0cyBvd24gaW50ZXJuYWwg
c3RhdGUKPiA+ID4gbWFjaGluZSB3aGljaCBvbmx5IHdvcmtzIGNvcnJlY3RseSB3aXRoIHNlcmlh
bCBhY2Nlc3MsIGJ1dCB0aGUgY3VycmVudAo+ID4gPiBkcml2ZXIgc2VyaWFsaXplcyBub3RoaW5n
LCB3aGljaCByZXN1bHRzIGluIHRpbWVvdXRzIGFuZC9vciBjb3JydXB0ZWQKPiA+ID4gcmVhZHMg
KGUuZy4gcmV0dXJuaW5nIHNwbGljaW5nIGEgVFNBREMgdHJpbSB2YWx1ZSBpbnRvIHRoZSBidWZm
ZXIgb2YgYQo+ID4gPiBjYWxsZXIgYXNraW5nIGZvciB0aGUgQ1BVIElELCBvciBtaXhpbmcgdXAg
dHJpbSB2YWx1ZXMgb2YgZGlmZmVyZW50IFRTQURDCj4gPiA+IGNhbGxlcnMpLiBIZW5jZSB0aGUg
Rml4ZXM6IHRhZyBhbmQgQ2M6IHN0YWJsZS4KPiA+ID4KPiA+ID4gQ3Jvc3MtY2hlY2tlZCBvbiBh
biBSSzM1NzYgYm9hcmQ6IHRoZSBhZGRyZXNzZXMgZml4ZWQgdXAgaW50byB0aGUgRkRUIGJ5Cj4g
PiA+IFUtQm9vdCBtYXRjaCB0aGUgb25lcyBkZXJpdmVkIGJ5IHRoZSBuZXcgZHJpdmVyLCBhbmQg
dGhlIGRyaXZlciBjb3JyZWN0bHkKPiA+ID4gYXNzaWducyB0aGVtIHRvIHRoZSBuZXR3b3JrIGlu
dGVyZmFjZXMgd2hlbiB0aGUga2VybmVsIGlzIGJvb3RlZCB3aXRob3V0Cj4gPiA+IFUtQm9vdCBw
cm9wZXIgYXQgYWxsICh2aWEgRmFsY29uIG1vZGUpLgo+ID4gPgo+ID4gPiBTYXNoaWtvIGFsc28g
cmlnaHRseSBwb2ludGVkIG91dCBhIHVzZS1hZnRlci1mcmVlIGluIHRoZSBudm1lbSBjb3JlIHdo
ZW4KPiA+ID4gYSBsYXlvdXQgZHJpdmVyIGlzIHVubG9hZGVkIGxlYXZpbmcgaXRzIHN5c2ZzIG5v
ZGVzIGFuZCB0aGUgcG9zdHByb2Nlc3Nvcgo+ID4gPiBmdW5jdGlvbiBwb2ludGVyIGRhbmdsaW5n
LiBUaGlzIGlzIGZpeGVkIHNlcGFyYXRlbHkgaW4gWzFdLgo+ID4gPgo+ID4gPiBbMV0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwOTAyLW52bWVtLWxheW91dC11bnJlZy12MS0xLTJk
MTZiZWJlYjUxOEBmbGlwcGVyLm5ldC8KPiA+ID4KPiA+ID4gU2lnbmVkLW9mZi1ieTogQWxleGV5
IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5uZXQ+Cj4gPiA+IC0tLQo+ID4gPiBDaGFuZ2VzIGlu
IHYyOgo+ID4gPiAtIFN3aXRjaGVkIGZyb20gYSBzY29wZS1iYXNlZCBndWFyZCB0byBleHBsaWNp
dCBsb2NrL3VubG9jayBjYWxscyBpbiB0aGUKPiA+ID4gICBPVFAgZHJpdmVyIHRvIGF2b2lkIG1p
eGluZyBzdHlsZXMgaW4gYSBmdW5jdGlvbiB1c2luZyBnb3RvIGVycm9yCj4gPiA+ICAgaGFuZGxp
bmcgKFNhc2hpa28pCj4gPiA+IC0gTGluayB0byB2MTogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5r
LzIwMjYwOTAxLXJrMzU3Ni1vdHAtY3B1aWQtbWFjLXYxLTAtZWE5MTM1MjcwZmMyQGZsaXBwZXIu
bmV0Cj4gPiA+Cj4gPiA+IC0tLQo+ID4gPiBBbGV4ZXkgQ2hhcmtvdiAoNCk6Cj4gPiA+ICAgICAg
IG52bWVtOiByb2NrY2hpcC1vdHA6IFNlcmlhbGl6ZSByZWFkcwo+ID4KPiA+IEluY2lkZW50YWxs
eSwgcGF0Y2ggMSBvZiB0aGlzIHNlcmllcyBhbHNvIGZpeGVzIENQVSB0aGVybWFsIHRocm90dGxp
bmcKPiA+IG9uIG15IFJLMzU3NiBkZXZpY2U6IGFwcGFyZW50bHksIHRoZSBtaXMtcmVhZCBPVFAt
cHJvZ3JhbW1lZCB0aGVybWFsCj4gPiB0cmltIHZhbHVlcyBicm9rZSB0aGUgdGhlcm1hbCBnb3Zl
cm5vciBsb2dpYywgd2hpY2ggbm93IHdvcmtzCj4gPiBjb3JyZWN0bHkgd2l0aCBwcm9wZXJseSBz
ZXJpYWxpemVkIE9UUCByZWFkcy4gU28gaXQgd291bGQgYmUgZ3JlYXQgdG8KPiA+IGhhdmUgdGhl
c2UgbWVyZ2VkLgo+Cj4gSXQgd291bGQgYmUgZ3JlYXQgdG8gaGF2ZSB0aGUgc2FzaGlrbyBjb21t
ZW50cyBhbmFseXplZCBhbmQgcmVwbGllZCB0bwo+IGFzIHdlbGwgaWYgeW91IHdvdWxkIGxpa2Ug
dGhpcyB0byBiZSByZXZpZXdlZC4KCk9mIGNvdXJzZS4gT25lIGNvZGUtcmVsYXRlZCBjb21tZW50
IFNhc2hpa28gcmFpc2VkIGhhcyBiZWVuIGFkZHJlc3NlZAppbiBhIHNlcGFyYXRlIHBhdGNoIFsx
XSB3aGljaCBpcyBzdGlsbCBwZW5kaW5nIHJldmlldy4gVGhlCmJpbmRpbmctcmVsYXRlZCBjb21t
ZW50cyB3aWxsIG5lZWQgdG8gYmUgcmV2aXNpdGVkLCBhcyBJJ2QgbGlrZSB0bwpmaXJzdCBleHBs
b3JlIHRoZSBpZGVhIFJ5YW4gcHJvcG9zZWQgaW4gdGhlIGFkamFjZW50IHRocmVhZCBbMl0sIGFz
IGl0CndpbGwgY2hhbmdlIHRoZSBhcHByb2FjaCBzb21ld2hhdCBpZiBpdCB3b3JrcyBvdXQuCgpC
ZXN0IHJlZ2FyZHMsCkFsZXhleQoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2
MDkwMi1udm1lbS1sYXlvdXQtdW5yZWctdjEtMS0yZDE2YmViZWI1MThAZmxpcHBlci5uZXQvClsy
XSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA5MTYxMjMzNTUuNDUwNy0xLXVudGls
c2NvdXJAcHJvdG9ubWFpbC5jb20vCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
