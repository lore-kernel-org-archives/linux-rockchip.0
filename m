Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73E1E108B8ED
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Mar 2026 10:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMdLgM7sIed1ncbw8qPrWUnBt7upj+rKWJc1RG295+A=; b=ykERjuqLIV2Jnl
	GLamFgrSPA0EHlDiteXt14JsSsH8q1TEpL7OFljdC/nW2saRLxnyPVToMHmRsB6j84U0j7nKuWet0
	j7mSY8kdr6V3Mucdg/ozBLXIwqBurwCL9NIYg68P1/otIHUnrur58QnB7S7EFWa5ER3uI4Nfq1ULu
	ej+j4d6QPSGtf7QLvV8WwmmNLznpTCUyn4aD7Ib0wvGLZBUGhbALT5dj61tuy+tX3AyDd+qFz7JTv
	WhZuMpOnisu84CkrLpw3WitSVdn0Ds7nVpDPvFk1+oRVSKzqV+Q1dCtkhyncNdq+qgls1PX6lwcex
	aAi/qn57XHhyVfggma6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3X4P-0000000Cb9X-0x97;
	Fri, 20 Mar 2026 10:27:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3X4O-0000000Cb8p-0HLH
	for linux-rockchip@bombadil.infradead.org;
	Fri, 20 Mar 2026 10:27:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Of1GTO29+yjjKMoSpTK0dYyRr27IYqJgiYG8Z21ueZY=; b=f+ZofuHqUupUuadOpN8RnLV7xV
	6q5W913ArCYtcd0PkeA5L8+DkaP3v4GnV4yrOEn2HzSVOhvJO7AxhJlyRIvtd1hN8WNUP0tr0CrY2
	H+aa5Axx0ISRDvmhWL17O1LFxSbLbOo7KenPVo4LSWcWS3lNDPgILdl1J0AGS7hM+i7y0TSRkPf+C
	8Z14x/DL8s/z7Efr2GiFJx+jmXRPrbE3l1RQpPEt526oyXQMeSS8AUvtstTVoAx3mST2k2r6IXBjy
	j5HaLZ+d3QtYJEJWx/hhXM8WFqxxXaTkkbjbgq2O+cQRMtQSs7ODDuSvuDNmMvWsOXaCmAkUGebPN
	YqIYynEg==;
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3X4K-0000000FK4e-3axS
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Mar 2026 10:27:06 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b976536806cso280698966b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Mar 2026 03:27:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774002423; cv=none;
        d=google.com; s=arc-20240605;
        b=LWEW1idUeLAor1HHKxcybkqsSqs1vNFse8IINMBH5jvi/7LxyPVSUZhBcxGp2Ub3lh
         OHvF+FEQpKxnKioVNOHdfSFQ5TSmAW4rGZqT3ujMCGdejOgOKoCUoOSmXAJBBD2q2KDR
         uO4wjrKpuMZVxAP57oI7+tS79e0jH2iUs/Ua4D1LQsWJ4rMCY2qMuLiFhQGSAxFQHNql
         413rQDQeNOerMHkI7gt+tRWqQmogp7RrpDqwfdLR4X20pNGd9KhX0mOFm3RwfOm875qd
         1U7YXbAIT7TC4mjRg44XBu5qyQzZWf1i5GNpPtuBIdQsG9RA7uSBJR9pT1b7d5b4gZc4
         B5vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Of1GTO29+yjjKMoSpTK0dYyRr27IYqJgiYG8Z21ueZY=;
        fh=N1w6jbPSc/rjmlICuMrN8YDxsksnC86MsvFl1o0j/po=;
        b=DI0U7+pfPbQmDrdnGmjJEiM9J+p7kqgL2hnpXvZafz6xxST8sSsI8k4mklEabN0f+U
         HiUtvYRliydLOXmMcHbx+5BYsjA0IKhdxElbqJH7d8I4kYknIzkgkbxRDrfJ1/qlUW00
         qA4krUsixNPIaI1SwvkH7qTE+YRy5GU+/LjJrdFE3H4IrpYR5GP0RoZbkhm+5wae1jlO
         5NDTVUOFFCzJib19T5qTwQMSBur10DuQ4EZ1Lx9G1AOjH7rXDGa3dQuodTjJ/bvTiQTY
         vpi8y02mlhzTXH2OELba5qDWB7Sbcyp7sns9VFFF5mYk2H1D1elFWsCVYwhRBzy6U9Oh
         Indg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1774002423; x=1774607223; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Of1GTO29+yjjKMoSpTK0dYyRr27IYqJgiYG8Z21ueZY=;
        b=ftaRdp1KR2+vSB83oxVj+doIy/9galtfQprQR5hyRVBhEgmKGokrx2sfdaZK1I4z3n
         fAjws9dzq+NIq7z8SYpghYWUIG346IDNFxkuoWc1eD+mAaxCTs4x/g/w57dqwYB41fTB
         C7FV9icRNS06AKML/GVcpzYoGCeWlv9oNh20bs9X5qoAAgfXsgmi+6/QNfWPoDmxknu4
         p8tKtQxqJSEIYsCWqOWZDwYXhNDcHrAWADoi274wMNRB44XfESnp4DrdFT9OndBWO8DR
         yTw3DXY0CL6OSPVb9DsO6Jx1nBXVNOmvFtZmHXrVDk1ihEJ1XL3NJijqfU5BRXbW82uL
         //6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774002423; x=1774607223;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Of1GTO29+yjjKMoSpTK0dYyRr27IYqJgiYG8Z21ueZY=;
        b=QQ9odIR5qiGlB+1pyRXFU0DM1s5t1CoOMwo9OpqGdQGeowRYilpjS5vvB3/eNfdQTr
         vUx/VhXZHhq0O1F3VsNqdYsjC9F/mWUsYjlMrBIC/SHC8Yvi3D4MYhsBXpJf2ggzIq87
         zWiY6TpAHYZPkh4eKWiMPBLcgsEfbJ7cCNP76AgZgWIxxU/7TSZGdNtHXJ7zfS6/0uoq
         HnHVMEIQeJlsxXVEcUNi6XFdA3qeX4NzA58npZFih6wntEKvHP/PdiSJPcvNxCzimLZS
         CVGlnZ7g3PnCFy4ZhXedLD6xbd6TE/5h9Re4/8t3K/x5SOhLtKTHNBMylQUy50vYiLFi
         AMGw==
X-Gm-Message-State: AOJu0YzWVKSmJgMN1/Q2Pfrn/0IT757fIGQQep8tTkT/kDciVQAZw+qX
	/3Q8mHlnWJHZPc23hsUMqfOvRwYrncY3I41RAD+J8y55rAJIUJcmDJdwFuETizo8+fa7h7IAjDn
	TlkLjvqabYqH1vax9bx8Da/n4MFRQtGI=
X-Gm-Gg: ATEYQzyS7Q8PaHjSa1V1Jv0FDH6t56DFsN8dTwRx/aNIBL9ZIGZh2p0HOp0xv02Tj0n
	zgJUzBnM+Vd3Syl1Bj4aWKwSUDbQsPwy3ybDrUzgT2TUzpt2jtEBlZ8M06Mceu/4Lg862RO1fFY
	XLUheuY5syGkAARRoWZTqNZkw13Q/rDBQUtMwSKG+vNskOQdFvWJwtvsC/b+mFa+7+oCxUyeO3f
	p896i47inrJYfat3NsjZU1qY3IgZEebA6g+BdD8/WEfoZttduWvfae+0+2tbPgQ37q8rky+n8a3
	YuJb0oM=
X-Received: by 2002:a17:906:2746:b0:b83:95c8:15d0 with SMTP id
 a640c23a62f3a-b982f4eca0fmr137601766b.52.1774002422707; Fri, 20 Mar 2026
 03:27:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260304132957.684616-1-midgy971@gmail.com> <20260319145120.99833-1-midgy971@gmail.com>
 <2053182.usQuhbGJ8B@phil>
In-Reply-To: <2053182.usQuhbGJ8B@phil>
From: Midgy Balon <midgy971@gmail.com>
Date: Fri, 20 Mar 2026 11:28:30 +0100
X-Gm-Features: AaiRm50aoIyNWdgdoBKg1CMZ-LC4yDu8KW38iE0PNSuQDdq7oh2keNG7d0JnC3k
Message-ID: <CA+GS1Y0CZA1sbLhoz5LM-dFCCRuWQOr-bYQUVGV4uotKUmy96A@mail.gmail.com>
Subject: Re: [PATCH v4] arm64: dts: rockchip: rock-3b: Model PI6C20100 as gated-fixed-clock
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, shawn.lin@rock-chips.com, 
	jonas@kwiboo.se, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_102705_150318_E466ECE9 
X-CRM114-Status: GOOD (  28.35  )
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

SGVsbG8gSGVpa28KICA+IFNvcnJ5IGZvciBoYXZpbmcgdG8gYnJpbmcgdXAgdGhlIHByb2Nlc3Mg
YWdhaW4sCiAgYnV0IHRoZSBwYXRjaAogID4gYXV0aG9yIHNob3VsZCBtYXRjaCB0aGUgU2lnbmVk
LW9mZi1ieSBsaW5lLgoKICBBcG9sb2dpZXMgZm9yIHRoZSBpbmNvbnNpc3RlbmN5LiBJJ2xsIGZp
eCB0aGF0IGluIHY1LgoKICA+IEFsc28gaXMgdGhlIGxhc3QgbmFtZSBhbHdheXMgIlVQUEVSIENB
U0UiIGluIHlvdXIKICAgcmVnaW9uPwoKICBZZXMgaXQgaXMgc3RhbmRhcmQgcHJhY3RpY2UgaW4g
RnJhbmNlIHRvIHdyaXRlIGZhbWlseSBuYW1lcyBpbiBhbGwKY2FwaXRhbHMgdG8gZGlzdGluZ3Vp
c2ggdGhlbSBmcm9tIGdpdmVuIG5hbWVzLCBlc3BlY2lhbGx5IHdoZW4gdGhlCmZhbWlseSBuYW1l
IGNvdWxkIGJlIGNvbmZ1c2VkIHdpdGggYSBnaXZlbiBuYW1lLCBub3QgbXkgY2FzZSBidXQgSQpj
b21wbHkuCgogIHY1IHNlbnQgc2VwYXJhdGVseS4KCiAgQmVzdCByZWdhcmRzLAogIE1pZGd5IEJB
TE9OCgoKTGUgdmVuLiAyMCBtYXJzIDIwMjYgw6AgMDk6NDgsIEhlaWtvIFN0dWVibmVyIDxoZWlr
b0BzbnRlY2guZGU+IGEgw6ljcml0IDoKPgo+IEFtIERvbm5lcnN0YWcsIDE5LiBNw6RyeiAyMDI2
LCAxNTo1MToyMCBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIE1pZEc5NzE6
Cj4gPiBUaGUgUmFkeGEgUk9DSyAzQiB1c2VzIGEgUEk2QzIwMTAwIFBDSWUgcmVmZXJlbmNlIGNs
b2NrIGJ1ZmZlciB0bwo+ID4gcHJvdmlkZSBhIDEwME1IeiByZWZlcmVuY2UgY2xvY2sgdG8gdGhl
IFBDSWUgMy4wIFBIWSBhbmQgY29udHJvbGxlcnMuCj4gPiBUaGlzIGNoaXAgaXMgY3VycmVudGx5
IG1vZGVsZWQgb25seSBhcyBhIGZpeGVkIHJlZ3VsYXRvcgo+ID4gKHZjYzN2M19waTZjXzAzKSwg
d2l0aCBubyBjbG9jayBvdXRwdXQgcmVwcmVzZW50YXRpb24uCj4gPgo+ID4gVGhlIFBJNkMyMDEw
MCBpcyBhIGNsb2NrIGdlbmVyYXRvciwgbm90IGEgcG93ZXIgc3VwcGx5LiBNb2RlbCBpdAo+ID4g
cHJvcGVybHkgYXMgYSBnYXRlZC1maXhlZC1jbG9jaywgZm9sbG93aW5nIHRoZSBwYXR0ZXJuIGVz
dGFibGlzaGVkCj4gPiBmb3IgdGhlIFJvY2sgNSBJVFggYW5kIG90aGVyIGJvYXJkcyB3aXRoIHNp
bWlsYXIgUENJZSBjbG9jayBidWZmZXIKPiA+IGNoaXBzLgo+ID4KPiA+IFRoZSByZWd1bGF0b3Ig
bm9kZSBpcyBrZXB0IGFzLWlzIHNpbmNlIGl0IGNvbnRyb2xzIHRoZSBwb3dlciBzdXBwbHkKPiA+
IHRvIHRoZSBQSTZDMjAxMDAgY2hpcCB2aWEgR1BJTzBfRDQuIFRoZSBuZXcgZ2F0ZWQtZml4ZWQt
Y2xvY2sgbm9kZQo+ID4gcmVmZXJlbmNlcyB0aGlzIHJlZ3VsYXRvciBhcyBpdHMgdmRkLXN1cHBs
eSBhbmQgcHJvdmlkZXMgYSBwcm9wZXIKPiA+IDEwME1IeiBjbG9jayBvdXRwdXQuIFRoZSBwY2ll
M3gyIG5vZGUgaXMgdXBkYXRlZCB0byBpbmNsdWRlIHRoZQo+ID4gcGlwZSBhbmQgcmVmZXJlbmNl
IGNsb2NrcywgbWF0Y2hpbmcgdGhlIGFwcHJvYWNoIHVzZWQgaW4KPiA+IHJrMzU4OC1yb2NrLTUt
aXR4LmR0cy4KPiA+Cj4gPiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNsYXVkZS0zLW9wdXMKPiA+IFJl
dmlld2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiA+IFNpZ25l
ZC1vZmYtYnk6IE1pZGd5IEJBTE9OIDxtaWRneTk3MUBnbWFpbC5jb20+Cj4KPiBTb3JyeSBmb3Ig
aGF2aW5nIHRvIGJyaW5nIHVwIHRoZSBwcm9jZXNzIGFnYWluLCBidXQgdGhlIHBhdGNoCj4gYXV0
aG9yIHNob3VsZCBtYXRjaCB0aGUgU2lnbmVkLW9mZi1ieSBsaW5lLgo+Cj4gWW91IGNhbiB1cGRh
dGUgdGhlIHBhdGNoIGF1dGhvciB3aXRoIHNvbWV0aGluZyBsaWtlOgo+ICAgZ2l0IGNvbW1pdCAt
LWF1dGhvcj0iTWlkZ3kgQkFMT04gPG1pZGd5OTcxQGdtYWlsLmNvbT4iIC0tYW1lbmQKPgo+IEFs
c28gaXMgdGhlIGxhc3QgbmFtZSBhbHdheXMgIlVQUEVSIENBU0UiIGluIHlvdXIgcmVnaW9uPwo+
Cj4gVGhhbmtzIGEgbG90IGZvciBzdGF5aW5nIG9uIHRoaXMKPiBIZWlrbwo+Cj4KPiA+IC0tLQo+
ID4KPiA+IENoYW5nZXMgc2luY2UgdjMgWzFdOgo+ID4gIC0gQWRkIFJldmlld2VkLWJ5IGZyb20g
U2hhd24gTGluCj4gPgo+ID4gQ2hhbmdlcyBzaW5jZSB2MiBbMl06Cj4gPiAgLSBGaXggQUkgYXR0
cmlidXRpb246IHVzZSBBc3Npc3RlZC1ieSB0YWcgaW5zdGVhZCBvZiBTaWduZWQtb2ZmLWJ5IChT
aGF3bikKPiA+ICAtIEFkZCBtaXNzaW5nIHBpcGUgY2xvY2sgKENMS19QQ0lFMzBYMl9QSVBFX0RG
VCkgdG8gcGNpZTN4MiBjbG9ja3MKPiA+ICAgIG92ZXJyaWRlIChTaGF3biwgcmVmZXJlbmNpbmcg
RGF2aWQncyBwYXRjaCBbM10pCj4gPgo+ID4gQ2hhbmdlcyBzaW5jZSB2MSBbNF06Cj4gPiAgLSBE
cm9wIHBoeS1zdXBwbHkgYXBwcm9hY2ggZW50aXJlbHkgKEpvbmFzLCBTaGF3bikKPiA+ICAtIE1v
ZGVsIFBJNkMyMDEwMCBhcyBnYXRlZC1maXhlZC1jbG9jayBpbnN0ZWFkCj4gPiAgLSBXaXJlIHJl
ZmVyZW5jZSBjbG9jayB0byBwY2llM3gyIGNvbnRyb2xsZXIKPiA+ICAtIEZvbGxvdyBwYXR0ZXJu
IGZyb20gcmszNTg4LXJvY2stNS1pdHguZHRzCj4gPgo+ID4gWzFdIGh0dHBzOi8vbG9yZS5rZXJu
ZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjYwMzA0MTMyOTU3LjY4NDYxNi0xLW1pZGd5OTcxQGdt
YWlsLmNvbS8KPiA+IFsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8y
MDI2MDMwNDEzMjk1Ny42ODQ2MTYtMS1taWRneTk3MUBnbWFpbC5jb20vCj4gPiBbM10gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvZDk4MWZhODQtYmQwNS1hYzlkLTk4Y2Et
ODllZTQ3MTc3ODI5QHJvY2stY2hpcHMuY29tL1QvI202YTgyODk2MDllNmE2MDY5MWQzYzA2MzU4
YjYzMjJjN2FhNWU0M2QxCj4gPiBbNF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9j
a2NoaXAvMjAyNjAyMTMxNTE0NTIuNTM1NTI3LTEtbWlkZ3k5NzFAZ21haWwuY29tLwo+ID4KPiA+
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyB8IDIxICsr
KysrKysrKysrKysrKysrKysrLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1Njgtcm9jay0zYi5kdHMKPiA+IGluZGV4IGM1ZjY3ZGQ2ZGZkOS4uMWEyYjNjNGQ1ZTZm
IDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9j
ay0zYi5kdHMKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJv
Y2stM2IuZHRzCj4gPiBAQCAtNTYsNyArNTYsMTYgQEAKPiA+ICAgICAgICAgICAgICAgfTsKPiA+
ICAgICAgIH07Cj4gPgo+ID4gLSAgICAgLyogcGk2YyBwY2llIGNsb2NrIGdlbmVyYXRvciAqLwo+
ID4gKyAgICAgLyogUEk2QzIwMTAwIFBDSWUgcmVmZXJlbmNlIGNsb2NrIGJ1ZmZlciAoMTAwTUh6
KSAqLwo+ID4gKyAgICAgcGNpZTMwX3JlZmNsazogcGNpZS1jbG9jay1nZW5lcmF0b3Igewo+ID4g
KyAgICAgICAgICAgICBjb21wYXRpYmxlID0gImdhdGVkLWZpeGVkLWNsb2NrIjsKPiA+ICsgICAg
ICAgICAgICAgI2Nsb2NrLWNlbGxzID0gPDA+Owo+ID4gKyAgICAgICAgICAgICBjbG9jay1mcmVx
dWVuY3kgPSA8MTAwMDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgY2xvY2stb3V0cHV0LW5hbWVz
ID0gInBjaWUzMF9yZWZjbGsiOwo+ID4gKyAgICAgICAgICAgICB2ZGQtc3VwcGx5ID0gPCZ2Y2Mz
djNfcGk2Y18wMz47Cj4gPiArICAgICB9Owo+ID4gKwo+ID4gKyAgICAgLyogUEk2QzIwMTAwIHBv
d2VyIHN1cHBseSAtIGFjdGl2ZS1oaWdoIEdQSU8wX0Q0ICovCj4gPiAgICAgICB2Y2MzdjNfcGk2
Y18wMzogcmVndWxhdG9yLTN2My12Y2MtcGk2Yy0wMyB7Cj4gPiAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPiA+ICAgICAgICAgICAgICAgZW5hYmxlLWFjdGl2
ZS1oaWdoOwo+ID4gQEAgLTU1Myw2ICs1NjIsMTUgQEAKPiA+ICB9Owo+ID4KPiA+ICAmcGNpZTN4
MiB7Cj4gPiArICAgICBjbG9ja3MgPSA8JmNydSBBQ0xLX1BDSUUzMFgyX01TVD4sIDwmY3J1IEFD
TEtfUENJRTMwWDJfU0xWPiwKPiA+ICsgICAgICAgICAgICAgIDwmY3J1IEFDTEtfUENJRTMwWDJf
REJJPiwgPCZjcnUgUENMS19QQ0lFMzBYMj4sCj4gPiArICAgICAgICAgICAgICA8JmNydSBDTEtf
UENJRTMwWDJfQVVYX05ERlQ+LAo+ID4gKyAgICAgICAgICAgICAgPCZjcnUgQ0xLX1BDSUUzMFgy
X1BJUEVfREZUPiwKPiA+ICsgICAgICAgICAgICAgIDwmcGNpZTMwX3JlZmNsaz47Cj4gPiArICAg
ICBjbG9jay1uYW1lcyA9ICJhY2xrX21zdCIsICJhY2xrX3NsdiIsCj4gPiArICAgICAgICAgICAg
ICAgICAgICJhY2xrX2RiaSIsICJwY2xrIiwgImF1eCIsCj4gPiArICAgICAgICAgICAgICAgICAg
ICJwaXBlIiwgInJlZiI7Cj4gPiAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4g
ICAgICAgcGluY3RybC0wID0gPCZwY2llMzB4Mm0xX3BpbnM+Owo+ID4gICAgICAgcmVzZXQtZ3Bp
b3MgPSA8JmdwaW8yIFJLX1BENiBHUElPX0FDVElWRV9ISUdIPjsKPiA+IC0tCj4gPiAyLjM5LjUK
PiA+Cj4gPgo+Cj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
