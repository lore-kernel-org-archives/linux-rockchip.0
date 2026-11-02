Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC6FD606A324
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Nov 2026 22:02:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Ns6A1nvX;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=oixYca/t
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=E04hXOW2/u8eaScxds1WNiAuICDbl5sohbQiHEoP66E=; b=Ns6A1nvX4cNa5Se4ZZdAMIQrFi
	yGUP99Jhh1n9qoggd+vuv1YUcb+hruouACKYUkTm2dAtesyd2cYOTtPOClouTzJchbWGxx9ram1Ol
	/Mdr6sf8CNuVK2t9DT1DTlHt4c6kfFixmjPRqKjp40fdr4DsbWpLOq+PjSdES/KOGE5ZLtANDR7OQ
	xQcK9HyrCue7i1/N6u57KJI0FCvC7+1qjwKlqGmtspMNd9bt5tknI/us1cL80zvG6QNZm+pppgI0W
	sefsEJDFnSmw7Udnq7+nNLDVVBzCo1ZhtuSoPmAr/KmaCJN1ZG0qD8nAGMd9venzDgBWVyu2OOjRe
	FW93Lt0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO06g-00000000WVe-0gAZ;
	Mon, 02 Nov 2026 22:02:22 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xO06d-00000000WUy-09dz
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Nov 2026 22:02:20 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-3acd21ba21aso2590369a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Nov 2026 14:02:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793656938; cv=none;
        d=google.com; s=arc-20260327;
        b=hvHY7rsUGdxruKs/8qnbuktLy0F71UQAzyrpa9CzMd/ZdJ3ujGQrOGm8730Qh6q9bL
         Qxd0umpnU99Ez3JwopucjZ621lgR3DVZZfYSYO7y1KzFw7w5dE39ygI2hK9zhE7wl/Gu
         MieF4Ly2SpoPspXpHg+HfiZFaPsAvxwQTjcyE1fad8xMZdSEPHKW1n7I+syWLSNYRBwv
         DwGaeH+mlFgq6RAt1y/+XckPFjbhMzIfQSoQXhF36uMx8Ep41u+MKH7mFJI2JES5WgW9
         90QklPB4oOle9gGQG0CMF0G9xcYomYEZ1Ve0x27llGH3M0j0Limhm8sGXOofVRrFEZoV
         B4TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=xtjp8uRsMeZtzljno56JPnA05zYp6kp0pecErzMaG48=;
        fh=JGPkvbgnK1GsCW16Qkr2U0773XTadIPAvI0fDvNlbrQ=;
        b=Q7BDbgxkvtOyKDI0IDahJ/5wrz6Hr05hXZKYQMLe27mEJ/OlFpTIyA1Aj7XcdLaJV0
         IjWmlSZRbknABpz/oLs7G8HEgBVRgfE/2LamfNF13KQuhyHdKfhbLHAJxs2I8ht5moyL
         tYXYFQW8VqseWphPnKGN9Ej122/y6hRa9dSfjAjP5V1qk5fDM+N9dZ9wWzQQNR+aHUcN
         D4js23vamYjIc70/7UZTxDRWkUREX2t5mX51RFJbdkblWOH9DNfUrtIgtZJpTxf5K7Jh
         J5RKHlf+ni76+e+5D/hY+KIDVBs1fnETThAIuP/Htn8CPZJFsSYj5XP82pNtx+GnuDmK
         q9KA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793656938; x=1794261738; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=xtjp8uRsMeZtzljno56JPnA05zYp6kp0pecErzMaG48=;
        b=oixYca/tXI58MWh5Lb7PxbwMRs0oUcEtI/lTU9QHDg2/b3Y++TI+KPGuzsPVAklykK
         FcactbE9ZA+xzDEIggwJFwfGBFL/Hv2IfGxkrQxjbXONy7n4p4y1mUh45AyXruq8pKiz
         Z9WcJz+D+WTZk+XibzkGUHw6Y+pMeLmRIGbLwBOOXx65aEonFasFmy6MUv+KtsGCzVyg
         w7yDyfjU2G3lc68/+HQZQYTv54gNzHOG9qhL/uAg/vVEPmYfoErlc96XwhkTjzFBdx0H
         8OJrXOVmGJSQe4IaGi5Z8Q5k0h2CPTkEp6AAP4rPcwUzSgyGtZiEY/eI75aDYiGW28A4
         DA4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793656938; x=1794261738;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xtjp8uRsMeZtzljno56JPnA05zYp6kp0pecErzMaG48=;
        b=1gY0tHu0sh72fLcw3GAt5GTCmYlfSmm7by6Z2rK/3hBqvaJBl5MfJ9XfktdxECbiKK
         36qOumaHq0wFxibR22zYLgMa3m9a3l63YhKaNgfg95YEU9uKHJqWqgiFDMdNXTwBuJpU
         IYDHDdQ5xrOmVQJ7aQCXrhjuGAqlwlMgFBrMEGYDOfsPh8414i7NLlJUOhZU4WTR9lm0
         fgFbyr7ThU2NjDcP/P6Bvm2xhFBWlr3uIEf5vcVJx0EmnTarjZBD8ImuY23sGziCtFSR
         bSOjxd2EMbbXZZ+HqSVuRbQdBpZEVL1Xk8ezJHMYg+GO3vIZLMeKOkErDRzFW4ORnfTz
         8tLA==
X-Forwarded-Encrypted: i=1; AKwUvBygtqm35vikKPHI/SP/5t9el1Vm8FmHSF5XesMCeoqviNB8My2aNoraUw3SGSAHrHReAP5Hpz7qGkIdwbJHDw==@lists.infradead.org
X-Gm-Message-State: APuU4Z+efbS3EjvhCQi188mMRH7HoKt9FgyT5ZQm5rXiT72N9azKVgRd
	q9ShR5WYUzqZ8upAielrQJzCtFLvX8CDJO4m57b/3vZtq6XV+eDJCcU/KX6wI7D6ijaKzXG1P7G
	7AVNo6GEo2YgHtZixb6GR43Ws7yivHkQ=
X-Gm-Gg: AYBFou1T8PI79bsrErFJM8dKODtJK2vBifYO/PqDRWWyCDK9csPBJD+IzexYPBPKvDP
	y9HDkWFK7Ib1NZU6W20rdxsu03+1sIjkPDWQO+0gdvUVdSg2RfIyVelcVyrLpEnMFQYRjBRnwQI
	g0sQOwT4F/8My+6eZLhj7CrMuiE4mgXyIG+UY4zof4Rft1DlCir3FvTpijz8IwbKSmezoGL54nW
	3JMgTfcKL5m/IZxh+er/8v/hj8qHh8DSbOgLzElsbUtYXY0fQ83IZuOx1YfakfQNUByVlb2t/9s
	L8S4OMxpUxJiTjYKNmnSTd0a/yXGy+bymM/baJ8iMfnmB4tdpgOfE0SSm0/sxmJsh737MjmN5Dv
	NYQdP4aJAF2cN8QnLlpqTrY4UP+fZSrihwLqIjP2mQSFA6pAHAcuCK4t5HVWNBqdP6HwubNeIiQ
	lNl9jedzsCmXcwDdtHjusog3C4nplE2zKMr4cg6tHJNCYL8+S1RQ==
X-Received: by 2002:a17:90b:5286:b0:3ad:a8bc:20cb with SMTP id
 98e67ed59e1d1-3ae8987d2d2mr9574855a91.66.1793656937652; Mon, 02 Nov 2026
 14:02:17 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261101-nanopi-m6-improvements-v2-0-a24769efda23@gmail.com> <17766357.Ash8RoxBsO@diego>
In-Reply-To: <17766357.Ash8RoxBsO@diego>
From: Joachim Eastwood <joachim.eastwood@gmail.com>
Date: Mon, 2 Nov 2026 23:02:05 +0100
X-Gm-Features: AclHuK9tCDntyLcfsDMcIMJcuLi-7mMTrptnQIWxhgk53CbLpMpuIZ3RXH4vlrk
Message-ID: <CAPSPb=uNcjWHa0SH+qvO0VC7Vku6fP6OajWR9noO52_R2HDOvw@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] arm64: dts: rockchip: NanoPi 6 series fixes and improvements
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Lin <Shawn.lin@rock-chips.com>, 
	Diederik de Haas <diederik@cknow-tech.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_140219_085765_906ED971 
X-CRM114-Status: GOOD (  25.09  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgSGVpa28sCgpPbiBTdW4sIDEgTm92IDIwMjYgYXQgMjM6MTksIEhlaWtvIFN0w7xibmVyIDxo
ZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgSm9hY2hpbQo+Cj4gQW0gU29ubnRhZywgMS4g
Tm92ZW1iZXIgMjAyNiwgMjI6NTU6MTggTWl0dGVsZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2No
cmllYiBKb2FjaGltIEVhc3R3b29kIHZpYSBCNCBSZWxheToKPiA+IFRoaXMgcGF0Y2ggc2VyaWVz
IGNvbnRhaW5zIGEgZmV3IGZpeGVzIGFuZCBtaXNjZWxsYW5lb3VzIGltcHJvdmVtZW50cwo+ID4g
Zm9yIHRoZSBOYW5vUGkgNiBzZXJpZXMgb2YgYm9hcmRzLgo+ID4KPiA+IFBhdGNoIDEgZml4ZXMg
dGhlIHZvbHRhZ2UgcmFuZ2Ugb24gdGhlIFNETU1DIHJlZ3VsYXRvci4KPiA+IFBhdGNoIDIgZW5h
YmxlcyBIUzQwMCBtb2RlIG9uIGVNTUMuIFRlc3RlZCBvbiBteSBNNiBib2FyZC4KPiA+IFBhdGNo
IDMgYWRkcyBhbiBJSU8gSFdNT04gZGV2aWNlIHRvIG1vbml0b3IgdGhlIGlucHV0IHZvbHRhZ2Uu
Cj4gPiBQYXRjaCA0IG1vdmVzIGEgcmVndWxhdG9yIHRoYXQgb25seSBleGlzdCBSNiBib2FyZHMg
dG8gdGhlIGNvcnJlY3QgZHRzaS4KPiA+IFBhdGNoIDUtOSByZW5hbWVzIERUIG5hbWVzIHRvIG1h
dGNoIHRoZSBzY2hlbWF0aWNzIHNpZ25hbHMvbmV0cy4KPiA+Cj4gPiBJZiBwYXRjaCA1LTkgaXMg
anVzdCBjb25zaWRlcmVkIGNodXJuIEknbGwgZHJvcCB0aGVtLiBUaGVzZSBhcmUgbW9yZQo+ID4g
bmljZSB0byBoYXZlIGFuZCBqdXN0IG1ha2VzIGl0IGVhc2llciB0byBjcm9zcy1yZWZlcmVuY2Ug
RFQgYW5kCj4gPiBzY2hlbWF0aWNzLgo+ID4KPiA+IFNjaGVtYXRpY3MgZm9yIHRoZSBib2FyZHMg
Y2FuIGJlIGZvdW5kIGhlcmU6Cj4gPiBNNjogaHR0cHM6Ly93aWtpLmZyaWVuZGx5ZWxlYy5jb20v
d2lraS9pbWFnZXMvOC84NS9OYW5vUGlfTTZfMjQwNV9TQ0guUERGCj4gPiBSNkM6IGh0dHBzOi8v
d2lraS5mcmllbmRseWVsZWMuY29tL3dpa2kvaW1hZ2VzL2YvZjcvTmFub1BpX1I2Q18yMzAyX1ND
SC5QREYKPiA+IFI2UzogaHR0cHM6Ly93aWtpLmZyaWVuZGx5ZWxlYy5jb20vd2lraS9pbWFnZXMv
Mi8yZi9OYW5vUGlfUjZTXzIyMDhfU0NILlBERgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IEpvYWNo
aW0gRWFzdHdvb2QgPGpvYWNoaW0uZWFzdHdvb2RAZ21haWwuY29tPgo+ID4gLS0tCj4gPiBDaGFu
Z2VzIGluIHYyOgo+ID4gLSBBZGQgc2NoZW1hdGljIGxpbmtzIHRvIGNvdmVyIGxldHRlciB0byBl
YXNlIHJldmlldwo+ID4gLSBSZW5hbWVkIHJ0bDgyMTFmIG5vZGUgdG8gZ21hYwo+ID4gLSBBZGQg
Ui1iIHRhZ3MgZnJvbSBTaGF3biBMaW4KPiA+IC0gUmViYXNlZCBvbiB2Ny40LXJjMQo+ID4gLSBM
aW5rIHRvIHYxOiBodHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjEwMTQtbmFub3BpLW02LWlt
cHJvdmVtZW50cy12MS0wLWU3MTNmNzFlYjRkM0BnbWFpbC5jb20KPgo+IGxvb2tzIGxpa2Ugd2Ug
d29ya2VkIGF0IHRoZSBzYW1lIHRpbWUgOi0pIC4KeWVhaCwgc2VlbXMgbGlrZSB0aGF0IDopCgo+
IEFzIHlvdSB3aWxsIGhhdmUgc2VlbiBqdXN0IG5vdywgSSBhcHBsaWVkIHlvdXIgdjEsIHNvIHBs
ZWFzZSBzZW5kIGFueQo+IG5lZWRlZCBjaGFuZ2VzIGFzIGZvbGxvdyB1cCBwYXRjaGVzLgpTdXJl
LCB0aGFua3MgZm9yIGFwcGx5aW5nIQoKVGhlcmUgd2Fzbid0IGEgbG90IG9mIGNoYW5nZXMgaW4g
djIsIHNvIGl0IHdpbGwgYmUganVzdCBhIHNtYWxsIHBhdGNoIHRvCnJlbmFtZWQgdGhlIHJ0bDgy
MTFmIG5vZGUgdG8gZ21hYyBpbiB0aGUgY29tbW9uIG5hbm9waS5kdHNpIGZpbGUuCkkgd2lsbCBp
bmNsdWRlIHRoZSBwYXRjaCBpbiB0aGUgbmV4dCB2ZXJzaW9uIG9mIHRoZSBNNlYyIGJvYXJkIHN1
cHBvcnQKcGF0Y2ggc2V0IFsxXS4gU2FzaGlrbyBmb3VuZCBzb21lIGlzc3VlcyBzbyBhIG5ldyB2
ZXJzaW9uIGlzIGNvbWluZy4KClsxXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9j
a2NoaXAvMjAyNjExMDEtbmFub3BpLW02djItdjEtMC1lNDAxZWE2NGIzOTRAZ21haWwuY29tLwoK
CmJlc3QgcmVnYXJkcywKSm9hY2hpbSBFYXN0d29vZAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
