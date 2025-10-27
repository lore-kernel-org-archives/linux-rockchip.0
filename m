Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDF90CCF9EB
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 20:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbBs9PIZzFo5xPPM2yxGNrK8mAKKt9zIoUuIXM91NXg=; b=lpKBlkpTmvmP3I
	bJk74J65DejIq2qNJI94pVxvxTWiCLJFjU0oT/OiIeJXwG3PSfgQGCBMc/CTEDsrtPN72Gc/HPCw7
	xY2Xz4vL7QgZIj3zPw4ZI6TPGPldmSvQx6QDfgs7U0P/7gbk0X1ZsTJeIM51sW/dWwTNcOwzbtM8s
	Knm/VA9sP0kEBI4B8G1n/KtdXcw0y9ZrVIESJABLVM1mxFnHwrOmx2yk8nId30yQFta1rhR+O4P0w
	ktVHAb8FfjisPlEIFjYHjnV6uCVc2yoQge37sKGjWbpTDaH4vl4V+SIb4xmSsDLO+t8yHqXk3ba/A
	wCqGP4BXWVvwfjderT2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDUGb-0000000El8s-2YxA;
	Mon, 27 Oct 2025 20:56:37 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDUGY-0000000El7r-1IQm
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 20:56:36 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-4ecf2244f58so15441251cf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Oct 2025 13:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761598592; x=1762203392; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=01IXpqC7TIZ5mj2iH0pdDn0rPqM6SOZi4vm8wKhQg+A=;
        b=fzj4t2PG7DOqe7PvVu5rp3TSHd4zRmGSdsQBUJDX1PuykHFyaSnLdFMO30r5O2hMxB
         W6RTMbF+NIGWMIBVDAIRQIb3Ms6Cwsw5yrl0vZ4xEl3/ZJHnTuy2VGBqgaM5fJLXGzKf
         HSkOo9oY4JCAWYmNtUJUF1PQoCgP5+M/2lM/dzZ3PlKIKXudL+9fLIzn71TS7EEoMc3R
         z81QAbWcvB52XEDoA1slh8OhDkDnryTlHwhAqic522SnNY3w4n4+4/FcbEnzARweFB45
         lrcZTqQN3HT2bpsgmbg4/BrGcF9ptJGSc2QyHdH6LFULNDDle7d/i5eF7EDNRFyj7Alg
         mfCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761598592; x=1762203392;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=01IXpqC7TIZ5mj2iH0pdDn0rPqM6SOZi4vm8wKhQg+A=;
        b=QnjNUvtHRivIyxFoc0dBw0isytJjMhMLKPrhhmlCDNLfFFpMYNmsbIQPUe+J795VaB
         8JejYohp8Ac861r1s9Xqmp8D2upbgNPcYDR7Cv288uHSJVNyrZYcaLOzIAzAPAQ6vDuq
         ry3Fx2GNU4lrz6JCUdLWCjOWeFm0N1RSUOaHNXgcypr534bNzSKgqvaMD/ZyqtCJaYbp
         /YL1iJmpaVQR7gPLOdSRd0XfCKIOyg0rLH2Nx+qrGwghhvnG0ZW+ZjswH1UTFw1eCxkJ
         qCqhl3IJOZyRBAq9XERgeJ0RuRWbgM0ldMnvI93Xm/QkrtwuL2Ad8zWgcCGjU7V/FlcU
         lemw==
X-Forwarded-Encrypted: i=1; AJvYcCXl+hR6cu+pY1DOdg7he6zdBEbettT2ClSEWL1D0cSSZTAKDXE03F6DzUE98wtQNTH3Tx67hALze6Q/7I8qmw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwR9gHBg8IOE7kamu+aECd5oKjPnFHLh6imn9ggIa6Tmk36uFYy
	TTLQf8lgtiaFvJ/pg/aT/l8SRu547TSJ1aG1RaK8PTveth+/5GfNCNgBWTylqC9QllOCL5rHktf
	wsB1pp4aGGmWOxvwRDGJVOGs9y2Ez+nw=
X-Gm-Gg: ASbGncuXww7GJhFUaAQ9yLxGXq4QEXiNZNu9bf78Afc7clx4bbcoBRI6BwCYrb2CPaN
	W5Z/z+RfbvJ3Ifo6cDxGR7Ik75gICLGynaKsvT+3850d3O/2OXLB1PrlSzp2LU7FP1d+pXlzOhj
	2yymm8iXzz0N2pqLEhLXEKAxVK8IrxAFhjezb7eJOriz6jBqZXNHmrVKakcdjEJ1yB14hgy5jC3
	bDCp17g0S+jyZmL9K98ryByeOShHEJwjZo4sMLuDqJbqQqS1ZvQQDw07TFLfl7zqGWUTv+y
X-Google-Smtp-Source: AGHT+IFNepnjW1ln2/qkUxgl+nTX/lKuWDuPuR+uSkSWvw1XDCRuJvbtDz+7gIkX9u2wG4O2TSxknsPpmxchsLm6W7Q=
X-Received: by 2002:a05:622a:56:b0:4eb:72a3:d700 with SMTP id
 d75a77b69052e-4ed07486220mr18468201cf.1.1761598591759; Mon, 27 Oct 2025
 13:56:31 -0700 (PDT)
MIME-Version: 1.0
References: <d583ee43-38c4-40fb-b33b-ce3153c9723b@gmail.com> <20251027200213.1821809-1-dsimic@manjaro.org>
In-Reply-To: <20251027200213.1821809-1-dsimic@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 28 Oct 2025 00:56:20 +0400
X-Gm-Features: AWmQ_bn5rbspTLkQfy8fItkWXbaf0FPuu7U9ED3igS0nELLu-MdDWTDVKU7YnWg
Message-ID: <CABjd4Yzfx-4xBHVB=W_r6nEdbwNJKdpHYB6bN3Xsk8dZOegJWw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: pwm-fan overlay for NanoPC-T6
To: Dragan Simic <dsimic@manjaro.org>
Cc: sigmaris@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	robh@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_135635_242157_45EB6043 
X-CRM114-Status: GOOD (  41.34  )
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

T24gVHVlLCBPY3QgMjgsIDIwMjUgYXQgMTI6MDLigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4gd3JvdGU6Cj4KPiBIZWxsbyBIdWdoIGFuZCBBbGV4ZXksCj4KPiBPbiBNb24s
IE9jdCAyNywgMjAyNSBhdCA3OjA44oCvUE0gSHVnaCBDb2xlLUJha2VyIDxzaWdtYXJpc0BnbWFp
bC5jb20+IHdyb3RlOgo+ID4gT24gMjcvMTAvMjAyNSAwOToxNCwgQWxleGV5IENoYXJrb3Ygd3Jv
dGU6Cj4gPgo+ID4+IElzIHRoZXJlIGFueSBkb3duc2lkZSB0byBlbmFibGluZyB0aGlzIHVuY29u
ZGl0aW9uYWxseSBpbiB0aGUgYm9hcmQKPiA+PiAuZHRzPwo+ID4KPiA+IE9ubHkgdGhhdCBpdCBn
b2VzIGFnYWluc3QgdGhlIHByaW5jaXBsZSB0aGF0IHRoZSBEVCBzaG91bGQgZGVzY3JpYmUgdGhl
Cj4gPiBoYXJkd2FyZTsgdGhlIGJvYXJkIC5kdHMgd291bGQgZGVzY3JpYmUgYSBjb29saW5nIGRl
dmljZSB0aGF0IGRvZXNuJ3QKPiA+IGFjdHVhbGx5IGV4aXN0IG9uIHRoZSBiYXNlIGJvYXJkLgo+
Cj4gSGF2aW5nIGEgc2VwYXJhdGUgRFQgb3ZlcmxheSBpcyBwZXJmZWN0bHkgZmluZSBpZiB3ZSB3
YW50IHRvCj4gZGVzY3JpYmUgYSBib2FyZCBhYnNvbHV0ZWx5IGNvcnJlY3RseTogaWYgdGhlIGZh
biBhY3R1YWxseSBpc24ndAo+IHByZXNlbnQsIHRoZSBvcGVyYXRpbmcgc3lzdGVtIHNob3VsZG4n
dCBiZSBtYWRlIHRvIHRoaW5rIGl0IGlzCj4gdGhlcmUsIGVzcGVjaWFsbHkgaWYgdGhlcmUncyBu
byBmYW4gUlBNIGZlZWRiYWNrLCB3aGljaCBpcyB0aGUKPiBjYXNlIG9uIGFsbW9zdCBhbGwgUm9j
a2NoaXAgYm9hcmRzIHRoYXQgc3VwcG9ydCBhIGZhbi4KPgo+IFByZXZlbnRpbmcgdGhlIGtlcm5l
bCBmcm9tIG1hbmFnaW5nIGEgbm9uLWV4aXN0ZW50IGZhbiBtaWdodCBldmVuCj4gc2F2ZSBzb21l
IENQVSBjeWNsZXMsIGVuZGluZyB1cCBwcm9kdWNpbmcgYSBiaXQgbGVzcyBoZWF0LCB3aGljaAo+
IGNhbiBvbmx5IGhlbHAgaW4gcGFzc2l2ZWx5IGNvb2xlZCBzZXR1cHMuCgpTb3VuZHMgbGlrZSBh
biBvdmVyY29tcGxpY2F0aW9uIHdpdGhvdXQgcmVhbCBiZW5lZml0LiBJdCdzIG9uZSB0aGluZwp3
aXRoIG92ZXJsYXlzIGZvciBmdW5jdGlvbmFsaXR5IHRoYXQgY2FuIGJlIHNvZnR3YXJlLWluY29t
cGF0aWJsZQpkZXBlbmRpbmcgb24gd2hldGhlciBhbiBleHRlcm5hbCBhdHRhY2htZW50IGlzIGNv
bm5lY3RlZCBvciBkZXBlbmRpbmcKb24gdGhlIHR5cGUgb2YgYXR0YWNobWVudCBjb25uZWN0ZWQu
IEhlcmUgd2UgYXJlIGxvb2tpbmcgYXQgYSBwbGFpbgoyLXBpbiBmYW4gd2hpY2ggY2Fubm90IGJl
IHNvZnR3YXJlIGluY29tcGF0aWJsZSB0byBhbnl0aGluZyByZWFsbHkKKGl0J3Mgbm90IGxpa2Ug
b25lIGNvdWxkIHJlcHVycG9zZSB0aGUgZmFuIGNvbm5lY3RvciBmb3IgYW55dGhpbmcKbWVhbmlu
Z2Z1bCBpZiBhIGZhbiBpcyBub3QgaW4gdXNlLCBhbmQgbm9vbmUgZ2V0cyBodXJ0IGlmIGEgUFdN
IG91dHB1dAppcyBsZWZ0IHJ1bm5pbmcgd2l0aG91dCBsb2FkKS4KClRoZSBDUFUgY3ljbGVzIHNw
ZW50IHBhcnNpbmcgYSBzbGlnaHRseSBsYXJnZXIgRFRCIGF0IGJvb3QgYXJlIGxpa2VseQpjb21w
YXJhYmxlIHRvIHRob3NlIHNwZW50IGFjdGl2YXRpbmcgYSBQV00gb3V0cHV0IG5lZWRsZXNzbHkg
dXBvbgpoaXR0aW5nIHRoZSBhY3RpdmUgY29vbGluZyB0cmlwIHBvaW50LCBhbmQgYm90aCBhcmUg
bmVnbGlnaWJsZSBmb3IgYW55CnByYWN0aWNhbCBwdXJwb3NlLgoKPiBIb3dldmVyLCB0aGUgcHJh
Y3RpY2Ugc28gZmFyIGhhcyBiZWVuIHRvIGRlc2NyaWJlIHRoZSBmYW5zIGluIHRoZQo+IG1haW4g
Ym9hcmQgZHRzIGZpbGVzLCBpZiB0aGUgYm9hcmQgcHJvdmlkZXMgZmFuIHN1cHBvcnQsIHJlZ2Fy
ZGxlc3MKPiBvZiB0aGUgZmFuIGJlaW5nIHByZXNlbnQgaW4gYSBwYXJ0aWN1bGFyIGJvYXJkIHNl
dHVwIG9yIG5vdC4KPgo+ID4gSSBndWVzcyB0aGVuIGluIHRoZW9yeSwgYW4gT1MgbWlnaHQgYWxs
b3cgdGhlIFNvQyB0byByZWFjaCB1bmRlc2lyYWJseSBoaWdoCj4gPiB0ZW1wZXJhdHVyZXMgaWYg
aXQncyByZWx5aW5nIG9uIHRoZSBub25leGlzdGVudCBmYW4gdG8gY29vbCBpdCBkb3duLiBCdXQg
SQo+ID4gZG9uJ3QgdGhpbmsgdGhpcyB3b3VsZCBiZSBhbiBpc3N1ZSBvbiBMaW51eCwgYXQgbGVh
c3QsIGluIHByYWN0aWNlLgo+Cj4gV2UncmUgc2FmZSwgYSB0aGVybWFsIHJ1bmF3YXkgaXNuJ3Qg
Z29pbmcgdG8gaGFwcGVuIHdoZW4gdGhlIGZhbiBpcwo+IGRlZmluZWQgaW4gYSBib2FyZCBEVCBi
dXQgYWN0dWFsbHkgaXNuJ3QgcHJlc2VudC4gIFRoZXJtYWwgQ1BVIGFuZAo+IEdQVSB0aHJvdHRs
aW5nIHdpbGwgcHJldmVudCB0aGUgb3ZlcmhlYXRpbmcgZnJvbSBoYXBwZW5pbmcuCj4KPiA+PiBP
dmVybGF5cyByZXF1aXJlIG1vcmUgdXNlciBjb25maWd1cmF0aW9uLCBhbmQgbm90IGFsbAo+ID4+
IGJvb3Rsb2FkZXJzIHN1cHBvcnQgdGhlbSBkaXJlY3RseSAoZS5nLiBzeXN0ZW1kLWJvb3QgdXNl
cnMgd291bGQKPiA+PiBzdHJ1Z2dsZSkuIENvbXBpbGluZyB3aXRoIG92ZXJsYXlzIGVuYWJsZWQg
YWxzbyBtYWtlcyAuZHRiJ3MgYSBsb3QKPiA+PiBsYXJnZXIgZHVlIHRvIGFkZGVkIHN5bWJvbHMg
aW5mb3JtYXRpb24uCj4gPgo+ID4gTm93YWRheXMgKG9uIERlYmlhbiBhdCBsZWFzdCkgdXNpbmcg
b3ZlcmxheXMgaXMgcHJldHR5IGVhc3ksIEknbSB1c2luZyB0aGUKPiA+IHUtYm9vdC1tZW51IHBh
Y2thZ2UgaW4gRGViaWFuLCBJIGp1c3QgY29weSB0aGUgb3ZlcmxheShzKSB0byAvYm9vdC9kdGJv
LyBhbmQKPiA+IGl0IGRldGVjdHMgdGhlbSBhdXRvbWF0aWNhbGx5IGFuZCBhZGRzIHRoZW0gdG8g
ZXh0bGludXguY29uZiBmb3IgdS1ib290IHRvCj4gPiBhcHBseS4KPiA+Cj4gPiBDb3VsZG4ndCBz
eXN0ZW1kLWJvb3QgdXNlcnMganVzdCB1c2UgcmszNTg4LW5hbm9wYy10Ni0obHRzLSl3aXRoLWZh
bi5kdGIgYXMKPiA+IHRoZWlyIHNpbmdsZSBEVCB0byBsb2FkLCBpZiBpdCBkb2Vzbid0IHN1cHBv
cnQgYXBwbHlpbmcgb3ZlcmxheXMgYW5kIHRoZXkKPiA+IHdhbnQgdG8gdXNlIHRoZSBmYW4gYWRk
b24/CgpTdXJlLCBidXQgaXQncyBhIG1hbnVhbCBjb25maWd1cmF0aW9uIHN0ZXAsIHdoZXJlIG90
aGVyd2lzZSB0aGUga2VybmVsCndvdWxkIGp1c3QgZGVmYXVsdCB0byB0aGUgY29ycmVjdCBkdGIg
Zm9yIHRoZSBib2FyZCB0aGF0IHRoZSBmaXJtd2FyZQp0b2xkIGl0IGFib3V0LiBUaGUgZmFuIGlz
IG5vdCBkaXNjb3ZlcmFibGUsIHNvIHRoZSBmaXJtd2FyZSB3b24ndCBldmVyCm9mZmVyIHRoZSAi
LXdpdGgtZmFuIiB2YXJpYW50LCBtZWFuaW5nIHVzZXJzIHdvdWxkIG5lZWQgdG8gc3VwcGx5IGl0
Cm1hbnVhbGx5IGluIGV2ZXJ5IGluc3RhbmNlLgoKPiBZZXMsIHRoYXQncyBhbiBvcHRpb24uICBI
b3dldmVyLCB0aGF0IGluIGdlbmVyYWwgZG9lc24ndCByZXNvbHZlCj4gdGhlIGlzc3VlcyBhcmlz
aW5nIGZyb20gc3lzdGVtZC1ib290IHVzZXJzIHdhbnRpbmcgdG8gYXBwbHkgbW9yZQo+IHRoYW4g
YSBzaW5nbGUgRFQgb3ZlcmxheS4KPgo+ID4gRldJVywgSSBoYXZlbid0IG5vdGljZWQgYW55IHBy
b2JsZW1zIHdpdGggaGF2aW5nIGEgbGFyZ2VyIC5kdGIgKHVzaW5nIG1haW5saW5lCj4gPiBVLUJv
b3QgdG8gbG9hZCBpdCkgYW5kIHNldmVyYWwgb3RoZXIgUkszNTg4IGJvYXJkcyBhcmUgYWxzbyBj
b21waWxlZCB3aXRoCj4gPiBzeW1ib2xzIGVuYWJsZWQgYWxyZWFkeSwgYW5kIEkgaGF2ZW4ndCBz
ZWVuIGFueSBpc3N1ZXMgcmVwb3J0ZWQgd2l0aCB0aGVtLgo+Cj4gQWZ0ZXIgdGhpbmtpbmcgYSBi
aXQgYWJvdXQgaXQsIEknZCBzdXBwb3J0IHRoZSBleHRyYWN0aW9uIG9mIGZhbgo+IGRlZmluaXRp
b25zIGludG8gc2VwYXJhdGUgRFQgb3ZlcmxheXMuICBBcyBJIHdyb3RlIGFib3ZlIGFscmVhZHks
Cj4gbm90IG1hbmFnaW5nIHRoZSBub24tZXhpc3RlbnQgZmFuIG1pZ2h0IGFjdHVhbGx5IGhlbHAg
YSBiaXQgd2l0aAo+IHBhc3NpdmVseSBjb29sZWQgYm9hcmQgc2V0dXBzLCB3aGljaCBpcyBhIGdv
b2QgZW5vdWdoIHJlYXNvbiBmb3IKPiBtZSB0byBzdXBwb3J0IHNlcGFyYXRlIERUIG92ZXJsYXlz
LgoKUHJhY3RpY2FsIGJlbmVmaXRzIHNvdW5kIGZhciBmZXRjaGVkIGhlcmUsIHdoaWxlIGZvcmNp
bmcgdXNlcnMgdG8KbWFudWFsbHkgY29uZmlndXJlIHNvbWV0aGluZyB0aGF0IHdvdWxkIGhhdmUg
b3RoZXJ3aXNlIGp1c3Qgd29ya2VkLgpMZXQncyBzZWUgd2hhdCBIZWlrbyB0aGlua3MuCgo+IElm
IHdlIGVuZCB1cCBhZ3JlZWluZyB0byBhY2NlcHQgdGhpcyBEVCBvdmVybGF5LCBJJ2xsIGhhdmUg
c29tZQo+IGNvbW1lbnRzIG9uIHRoZSB3YXkgY29vbGluZyBtYXBzIGFyZSBkZWZpbmVkLiAgSSB0
aGluayB0aGVyZSdzCj4gcXVpdGUgYSBiaXQgb2YgcmVkdW5kYW5jeSB0aGVyZS4KCkFncmVlLiBU
aGVybWFsIGdvdmVybm9ycyBjYW4gZmlndXJlIG91dCB0aGUgZmFuIHNwZWVkIHJhbXAtdXAgd2l0
aG91dApzcGVjaWZ5aW5nIGVhY2ggYW5kIGV2ZXJ5IHRlbXBlcmF0dXJlIHRocmVzaG9sZCBtYW51
YWxseS4gVHdvIHRyaXBzCnNlZW0gdG8gYmUgZW5vdWdoIGZvciBldmVyeW9uZSAoYykgLSBhcyB3
ZSd2ZSBkb25lIGUuZy4gb24gUm9jayA1QiBhbmQKb3RoZXJzLgoKQmVzdCByZWdhcmRzLApBbGV4
ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
