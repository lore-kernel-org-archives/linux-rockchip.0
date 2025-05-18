Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CDC1AC3ABD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 12:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+nUD3DyccVax7ETVt1kk6IFv+eI42XcM5w9rxTLVII=; b=C5O6RyaBYkGFhS
	vjwar1VPoUmmaHMMcYdmbXd9hSzuFP0lQVHE3aa3tqB8Hp7S/nfccmsaRKV8sDLP7yjaK0QRf8tRI
	PM5tsJHsOKd1WSpb7jIjISGpH1hmIVy/54R5yb6IsaHjBnfO6yI73mHGZ05Od9NHVoJEASFeNgY6v
	LaMlenRHMQI/6o0KFn7DVlVCXI8JBNQVQhBokAFcrsyIqWONtAiDi+w8pITiBX5VV2mh9NZYHU7EM
	RNOZ+ValABdLbq9FgMZSzXMOjfAfRs68ffJ0us4pTvBF5Be/rjJX7Vbds1UqU5T9gJcYTqCOaohhd
	VzmyyCSMKFuVdmgsdRXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGcmw-000000076EL-0uZp;
	Sun, 18 May 2025 12:06:42 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGcmu-000000076Dv-0PN6
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 12:06:41 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-30e7bfef364so2168344a91.1
        for <linux-rockchip@lists.infradead.org>; Sun, 18 May 2025 05:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747569999; x=1748174799; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z9sPuqChQojAWKg0fz4wkdvAY/+fmKjMSJBj97hXBxs=;
        b=OQQJnpZtvZIme2egzgZp/oV/vHbm90W4wkc6aAXzDTm/8oBIhQ7oRs1c9WHmw4aweL
         byQ5nWXU8Ziq1KUBzQqOEyqo5JJ5PfbyaWb9sO5VG54F4ckJb1C8rGp/BJNGv52gAT78
         I4qqO49KilKLnMWj3y0ekbfBF+fnJYkkCEmYKkufJkyoXhvMpxjCL8usgfEOCLjtetX7
         dwfLdc1ERcCwnbvB/o/bNEyQMreC4RHrlQPPDwHLitoPpub0+cOwLmYmzhy1tA173zzk
         YghX/Vv+MhRIhyQbZNFoSHjs4Vtbg3NVelOhIxkZOXGeuy4AEt4S986v2bQDf89Iv4T5
         jNNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747569999; x=1748174799;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z9sPuqChQojAWKg0fz4wkdvAY/+fmKjMSJBj97hXBxs=;
        b=PqAbMOK3cCaWCkLJpcL8/q/bLcxPfRYieizZbrisO2hGIaa7O2pDSursj8ObsoVROQ
         VfvcSKMbx3WzUpUkQxXGkKGMXxFeHMgk8TZWvHdaihx5zSJXPZbky6483ztiV0CAHoWs
         2U07lvxhX9/DsD4IExbNpWFfrR3P/RxZdyFf4HaVa35INpTa46Ohu+gU1Qp6SxKWEneo
         zf6i1Noiuyr3DqVMce1MraIewKWev7oYCrnx3Rfhr/q8HsmluDh/r7dYou44iXJWs6Od
         Boo9oPIKAb+RsyePOcA972MKVN6IhxTaj8oCuJL8UCB4GCUOk6b/+nyIwTAliYVyRSyq
         2W4A==
X-Forwarded-Encrypted: i=1; AJvYcCUsNMlv2aGmHN0N6eV0VXLRrbcgnC3fp8O1ZwpfATz2vgLurrXUJgf5wiukzDxE3lBJAln8rwxwqYA9gWJZaA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwItHSlxcaFDVhu4m8COpt8Pt9lPi3ywKpPzupBCn8YJqEHlha7
	xu/2aKlgyTe2eZxQJKh5lrnsiGpqpfFdsGsZtG4G1d3gLksnZxjymiOrYREIwe6ItGjqnvjIA7y
	zFOtD4nAHc0MorgVMZolyO7QBDuaoHw==
X-Gm-Gg: ASbGncuLeh4TRsU56mut9p3owB4dTcGVYYgw6r1gCEDd9r2RuRUtDW5yXPBZ9hTkkmb
	wLBA3FPxy3Wf+jb55wfySzCNrIWE3Qh8HxuseQcZb33YN7TtKeycHwOpYPnd4iwbn0noLS9Fk2Z
	M+aghvOtrtj4jHI50+zRU2/rJeQzY4nSeVI+/2KvkAaiVmQpkV7GvpoyQ1dgjqi0M=
X-Google-Smtp-Source: AGHT+IE8Jj3CM/JmTKb2ASWpYNZZ62w/yVrXgUBmwdTYC8IuyZ/ZSj3++gk2EU+iZobraqih76E8olzgbMxd5+52uZs=
X-Received: by 2002:a17:90b:4b0f:b0:2fe:8a84:e033 with SMTP id
 98e67ed59e1d1-30e7d4ebdbcmr14696049a91.2.1747569998909; Sun, 18 May 2025
 05:06:38 -0700 (PDT)
MIME-Version: 1.0
References: <20250517020552.737932-1-jihed.chaibi.dev@gmail.com>
 <62bd6757-c4d0-42c1-a76d-abea18a8a55e@kernel.org> <CANBuOYpRQNx+n6BjpAF0LufpUqRA3wU-GzSNygeWurohXYNF6A@mail.gmail.com>
 <5f7f8cbc-6501-459f-906a-250be5443d0e@kernel.org>
In-Reply-To: <5f7f8cbc-6501-459f-906a-250be5443d0e@kernel.org>
From: Jihed Chaibi <jihed.chaibi.dev@gmail.com>
Date: Sun, 18 May 2025 14:06:27 +0200
X-Gm-Features: AX0GCFuB2F8YdWG4M6QquX7RSLJifIP2KUvWmNy9H9sSlJ0n7sh9CbHxp2tuYXU
Message-ID: <CANBuOYohE0JofP6vnN_sLZrPkURDxRgOBCM2-NqtCPw1fZ24+A@mail.gmail.com>
Subject: Re: [PATCH 1/1] Fixing a minor typo in YAML document
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, briannorris@chromium.org, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel-mentees@lists.linux.dev, 
	skhan@linuxfoundation.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_050640_137764_42005725 
X-CRM114-Status: GOOD (  14.74  )
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

T24gU3VuLCBNYXkgMTgsIDIwMjUgYXQgMTI6MzTigK9QTSBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnprQGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gT24gMTcvMDUvMjAyNSAxNDowNSwgSmloZWQgQ2hh
aWJpIHdyb3RlOgo+ID4gVGhhbmtzIGZvciB0aGUgZmVlZGJhY2ssIHRoaXMgZml4IGJlaW5nIGtp
bmQgb2YgInRyaXZpYWwiIEkgZGlkbid0Cj4gPiBpbml0aWFsbHkgd2FudCB0byBpbmNsdWRlIGV2
ZXJ5b25lIGFuZCB0aG91Z2h0IGl0IHdvdWxkIGVuZCB1cCB0byB0aGUKPiA+IG1haW4gbWFpbnRh
aW5lciBhZnRlciBiZWluZyByZXZpZXdlZCBieSB0aGUgcmV2aWV3ZXJzL2F1dGhvcnMgb2YgdGhl
Cj4gPiBmaWxlLCBzb3JyeSBmb3IgdGhhdCwgSSB3aWxsIG1ha2Ugc3VyZSBldmVyeSBtYWludGFp
bmVyIGlzIGluY2x1ZGVkIGluCj4gPiBmdXR1cmUgcGF0Y2hlcy4KPiA+Cj4gPiBPbiB0aGUgb3Ro
ZXIgaGFuZCwgSSBjYW4gY29uZmlybSB0aGF0IEknbSB1c2luZyB0aGUgbGFzdCBrZXJuZWwgdmVy
c2lvbi4KPgo+Cj4gUGxlYXNlIGRvbid0IHRvcCBwb3N0LiBJZiB5b3UgZG8gbm90IENjIG1haW50
YWluZXJzLCBob3cgaXMgaXQgc3VwcG9zZWQKPiB0byBiZSBwaWNrZWQgdXAgYnkgdGhlc2UgbWFp
bnRhaW5lcnM/Cj4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKCk15IGFwb2xvZ2llcyBh
Z2FpbiBmb3Igbm90IENDJ2luZyB0aGUgY29ycmVjdCBtYWludGFpbmVycyBhbmQgZm9yIHRvcApw
b3N0aW5nIGluIG15IHByZXZpb3VzIHJlcGx5LiBJIHVuZGVyc3RhbmQgdGhlIGltcG9ydGFuY2Ug
b2YgYm90aCBmb3IKdGhlIHdvcmtmbG93IGFuZCBwcm9wZXIgY29tbXVuaWNhdGlvbi4KCkkndmUg
dGFrZW4gbm90ZSBvZiB5b3VyIGZlZWRiYWNrIGFuZCB3aWxsIGVuc3VyZSBJIGZvbGxvdyB0aGUK
cmVjb21tZW5kZWQgcHJvY2VkdXJlcyBmb3IgZnV0dXJlIHN1Ym1pc3Npb25zLgoKQXMgSSdtIHN0
aWxsIGxlYXJuaW5nIHRoZSBjb250cmlidXRpb24gcHJvY2VzcywgSSBhcHByZWNpYXRlIHRoZSBn
dWlkYW5jZS4KQmVzdCByZWdhcmRzLAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
