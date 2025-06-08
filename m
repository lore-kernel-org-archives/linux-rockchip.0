Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12FA5C61CE8
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Jun 2025 07:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5N+rZFL/37LAT+BqaXDn+XQTR+AuXQudEt9TjKdo2uQ=; b=pNrWCQkuOeY1kU
	gXiOEyL9hrykeU1Y9r2iNxM8f+X0HT5xHnUi3YtsEaokOIlcJBJ4wTQakT8gsD4OIlllGBIHIypM6
	K1rUHyTp/mW+Za4iHT4t7Y+NdiwlZ1M2e1WAv2/z158nYhQgFSVIgZb5r21YpxwgWK6UX3pTm6qQz
	fFa4EDtcfTQ95CXyy1EWWjam78DEn+/bCVYO7WnCRNkidyvfbI2QCWM0mqrbi+eKJAvIbrot8H+7B
	oIhaTLR00D0RDrHIjmCJsKKgaa4P1V55H+01/Ht//eadtXlD/OZfN7mrxqoZkCe5IezKihJV5I90M
	OSS6exlejPmS/Qpo/gHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOAQP-00000002QNK-02hf;
	Sun, 08 Jun 2025 07:26:37 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOAOG-00000002QCi-2GAC;
	Sun, 08 Jun 2025 07:24:25 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-ad891bb0957so529041666b.3;
        Sun, 08 Jun 2025 00:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749367463; x=1749972263; darn=lists.infradead.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eME8R9QRUtbMs6yNjgukeDUBZeLszNLIRLLaAcTHowg=;
        b=QyvB6jpqOFIT+01t75/Js4hlTyxCr0gbYNOpRdOkskxgPpnnThVRaXuuvjopzUnzky
         lRxX268N8OtI0nnrPE7IAjXhuI9/Hccy2lc10Tnrf30tOdg5MnthaS5ohcIJ+/fB5PMn
         CNPGC6UHVRE5go62UV/JOHu9A44xcdLEilKIEfZk3MCt3tRRozGT83OR6jfRVgaBtdxL
         DgGLNEV4xKKF1HVJ43YevvfhlDnyCAnY6Wv+ZaC+y3etwMFe8J3NvslhKlvscch1eYZJ
         wMy6vbW6Ljljb93MuI/K0X4dWWbC8Btbg29toTBj8g1JqmfErUoJEcNSQ4XjxIy2ciKz
         q6zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749367463; x=1749972263;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eME8R9QRUtbMs6yNjgukeDUBZeLszNLIRLLaAcTHowg=;
        b=neO4OWAi8gVZ187LW+oc/MQ5Xwm0auZ7zMpmgnEZ5QJusHkedlU7nSjhT6TV1B3eCB
         nztW3EjRX4N2FY5vmrcTTPeDf5FHIgQoE3Tau/tTX29AunULUUW3PpKRYD3C5X/BM0nT
         oDEAi/cNzTa8/FuHmsBFsm0hzh6fsk1ThbU1aDmfvdpLPEw+Fffc5dMC8x11opURAqDd
         Yz49kI1JZIjJ6a4xHUrm80vcQnmXR55aWxoZVpZkIxwmSLzeevp2BOTk5cNErgB5fcln
         KAG7cTuVJXRm2VzDt19ceWPUjobHWafg9JeCAoHeaFLkDskYPD7SLnbT9LJFIeEZ2ZMT
         bpZQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJbSOvJd3jO3Jh+q6Vsq2GDtN++Kv0J3qYQMYeeYAQiZeHiksNPzC6YWzy+9OMVH985sSeqt33kfItKSirQ4nH@lists.infradead.org, AJvYcCWyyDSjh6xMPuK85DHX98bF93FRlo7pZE+6iIOZTR1SAUcJzdkWsQXBpnMiZ73d2cOgGGfMbYkNuQPwW5yweuM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz875QEEoC54elwF8mwrgW7XdK8r5i4MefPn+BZm3b2gSmxPnC8
	Ldx87Hs2PVlINhAMoI/JAslMeDSKe2iLJSWabMgG1H7daciCf9ltq49z
X-Gm-Gg: ASbGnctgFIyVNofCaPB5rsKQOa+zRZOG6Ru2iK1Hd7bb+8dob424JVmE7fHODxKJBW8
	tGbg6g1ODCJc1O77f9msrEIl9VLXvkmkKrx5inynGE6IOOYQLlbLp7rFm2913fc5jS6tEoP04CD
	fxexqe9AooVTkSG/+ILluFXPDDP0MhfWduqzHNGKuhL1zZnD1GWy1jWcnLpqpW9+uCgO6wkKYAq
	SsilaJqThlOWzGn6gvAIQm26M6ovzm2g+iLdIDwMyO2Z0KIpJFmWxOgtLW/EsXIVSsNZlb4v8U3
	0fVfYYqMMCHsvd4peYX19qVw+A/1M/LeoQC2vWf6sZJBZEDxTTjniLjoeYiKwhvE879sVHeG+fv
	mEeCcG2YY+A==
X-Google-Smtp-Source: AGHT+IHs2Im8ufOJ5O1PoZh7we14S+ZSLXjoRhkB7jNicHTv/HzPCNoDXtBRaSPrY7thT1gbcil+tA==
X-Received: by 2002:a17:907:6d0e:b0:ad8:8efe:3201 with SMTP id a640c23a62f3a-ade1aaba1cemr833053066b.43.1749367462288;
        Sun, 08 Jun 2025 00:24:22 -0700 (PDT)
Received: from smtpclient.apple ([89.66.237.154])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade44af8215sm180104366b.15.2025.06.08.00.24.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Jun 2025 00:24:21 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.600.51.1.1\))
Subject: Re: [PATCH 1/4] arm64: dts: rockchip: list all CPU supplies on ArmSoM
 Sige5
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CABjd4YxGQP=rH15EX12w36b7+82Dedf+rVH3v5V6gBwNv3V3iw@mail.gmail.com>
Date: Sun, 8 Jun 2025 09:24:09 +0200
Message-Id: <90218D7B-0CF5-4F5D-969A-909A44E6044F@gmail.com>
References: <20250603-sige5-updates-v1-0-717e8ce4ab77@gmail.com>
 <20250603-sige5-updates-v1-1-717e8ce4ab77@gmail.com>
 <6656934.DvuYhMxLoT@workhorse>
 <CABjd4Yx05SCm+03jWbsEP-A5AuhL14wLj=+VdKyQgqMbnxi3xQ@mail.gmail.com>
 <512E950E-E8CB-443B-8E47-79F073D217E8@gmail.com>
 <CABjd4YxGQP=rH15EX12w36b7+82Dedf+rVH3v5V6gBwNv3V3iw@mail.gmail.com>
To: Alexey Charkov <alchark@gmail.com>
X-Mailer: Apple Mail (2.3826.600.51.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250608_002424_582034_53FF06DB 
X-CRM114-Status: GOOD (  16.00  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdt
YWlsLmNvbT4gdyBkbml1IDUgY3plIDIwMjUsIG8gZ29kei4gMTU6NDI6Cj4+IAo+Pj4gCj4+PiAK
Pj4gCj4+IEFsZXhleSwKPj4gSSBzZWUgeW91IGFyZSB1c2luZyByazM1NzYgYm9hcmQgbGlrZSBt
ZSAobmFub3BpLW01KQo+PiBIYXZlIHlvdSBvbiB5b3VyIGJvYXJkIGNvcnJlY3RseSB3b3JraW5n
IGNwdSBkdmZzPwo+PiBJIG1lYW46IFsxXVtkZXNpcmVkIGNsb2NrcyByZXBvcnRlZCBieSBrZXJu
ZWwgc3lzZnMgYXJlIGluIHBhaXIgd2l0aCBbMltdY3VyIGNsb2Nrcz8KPj4gSW4gbXkgY2FzZSBp
IHNlZSBtaW5lIGNwdSBsaXZlcyB0b3RhbGx5IG9uIGl04oCZcyBvd24gd2l0aCBkdmZzOgo+IAo+
IEhpIFBpb3RyLAo+IAo+IEkgaGF2ZW4ndCB0cmllZCB0byB2YWxpZGF0ZSBhY3R1YWwgcnVubmlu
ZyBmcmVxdWVuY2llcyB2cy4gcmVxdWVzdGVkCj4gZnJlcXVlbmNpZXMsIGJ1dCBzdWJqZWN0aXZl
IHBlcmZvcm1hbmNlIGFuZCBwb3dlciBjb25zdW1wdGlvbiBzZWVtIHRvCj4gYmUgaW4gbGluZSB3
aXRoIHdoYXQgSSBleHBlY3QuCgp3ZWxsIC0gbXkgc3ViamVjdGl2ZSBsJmYgaXMgdGhhdCAgLSBj
dXJyZW50bHkgLSBteSByazM1NzYgc2VlbXMg4oCec2xvd2VyIiB0aGFuIGkuZS4gNHhBNTMgaDYx
OC4gClRoaXMgZGlyZWN0ZWQgbWUgdG8gaW52ZXN0aWdhdGUgdGhpcyBpc3N1ZS4KVGVzdCBydW4g
d2FzIG1lZGlhIHBsYXllciAobXl0aHR2KSB3aGVyZSB1aSBoYXMgZ2wgZWZmZWN0cyBhbmQgdWkg
Z2wgdHJhbnNpdGlvbnMg4oCec3BlZWTigJ0gYXJlIHF1aXRlIHByb3BvcnRpb25hbCB0byBjcHUg
c3BlZWQgKGFuZCBncHUpLgpNeSBvdmVyYWxsIGZlZWxpbmcgaXM6IHV4IGlzIGNvbXBhcmFibGUg
dG8gc2xvdyBzb2NzIDR4QTUzQDEuNEdIei9HMzEuIFRoaXMgaXMgd2l0aCBtYWlubGluZSBhdGYg
KyBjb2xsYWJvcmEgdWJvb3QgWzFdIGFuZCBvbi1kZW1hbmQgZ292LgpJIGRvbmUgdGVzdCB3aXRo
IHJlcGxhY2luZyB1Ym9vdCBmcm9tIG1haW5saW5lIGF0ZiArIGNvbGxhYm9yYSB1Ym9vdCB0byBi
aW4uIGR1bXAgb2YgdmVuZG9yIHVib290ICgyMDE3LjA5KSBhbmQgd2l0aCB0aGlzIHV4IGJlY29t
ZSBhbG1vc3QgYXMgZXhwZWN0ZWQgKGkgbWVhbiBjb21wYXJhYmxlIHdpdGggaS5lLiByazMzOTkp
LgoKSSBkb25lIHRlc3Qgd2l0aCBwZXJmIGdvdi4gYW5kCgoxLmNvbGxhYm9yYSB1Ym9vdFsxXSAr
IG1haW5saW5lIGF0ZiAyLjEzCjIuY29sbGFib3JhIHVib290WzFdICsgcm9ja2NoaXAgcmtiaW4g
YmwzMSBibG9iIFsyXQozLnZlbmRvciB1Ym9vdCAoYmluIGR1bXAgZnJvbSBmcmllbmRseWVsZWMg
dWJ1bnR1IGltYWdlKSAgIAoKW2FdIG9uIHZlbmRvciB1Ym9vdDoKUmVxdWVzdGVkIENQVTQ6IDIz
MDQgTUh6IApSZXF1ZXN0ZWQgQ1BVMDogMjIwOCBNSHogClJ1bm5pbmcgQ1BVNDogMTAwOCBNSHog
ClJ1bm5pbmcgQ1BVMDogMTAwOCBNSHogCk1lYXN1cmVkIG9uIEhXOiAxNTgwLjExIE1IeiAKClti
XSBvbiBjb2xsYWJvcmEgdWJvb3QgKyBtYWlubGluZSBhdGY6ClJlcXVlc3RlZCBDUFU0OiAyMzA0
IE1IegpSZXF1ZXN0ZWQgQ1BVMDogMjIwOCBNSHoKUnVubmluZyBDUFU0OiA4MTYgTUh6ClJ1bm5p
bmcgQ1BVMDogODE2IE1IegpNZWFzdXJlZCBvbiBIVzogODA4LjcyIE1IeiAgIAoKW2NdIG9uIGNv
bGxhYm9yYSB1Ym9vdCArIHJvY2tjaGlwIHJrYmluIGJsMzEgYmxvYjoKUmVxdWVzdGVkIENQVTQ6
IDIzMDQgTUh6ClJlcXVlc3RlZCBDUFUwOiAyMjA4IE1IegpSdW5uaW5nIENQVTQ6IDgxNiBNSHoK
UnVubmluZyBDUFUwOiA4MTYgTUh6Ck1lYXN1cmVkIG9uIEhXOiA4MTIuNDkgTUh6CgppbiBhbGwg
Y2FzZXMgYWxsIGNsb2NrcyBhcmUgY29uc3RhbnQgYXMgdGhleSBzaG91bGQKSW50ZXJlc3Rpbmcg
dGhhdCBvbiBjb2xsYWJvcmEgdWJvb3QgW2JdW2NdIG1lYXN1cmVkIGNsb2NrIGlzIDgwOCB2cyAx
NTgwIG9uIHZlbmRvciB1Ym9vdCBbYV0uLi4Kc3cgdmlkZW8gZGVjb2RlIGNvbmZvcm1zIHRoaXMg
ZGlmZjogaGQgaDI2NCBnZXRzIGNwdSBsb2FkOiAxNzIlW2JdW2NdIHZzIDg3JVthXQoK4oCmLgoK
PiAKPiAKPiBBcmUgdGhlc2UgdGFrZW4gb24gdGhlIG1haW5saW5lIGtlcm5lbCBvciBSb2NrY2hp
cCBvbmU/CgpJIHRlc3RlZDoKCjYuMTUgbWFpbmxpbmUgKyBzb21lIGNvbGxhYm9yYSBwYXRjaGVz
CgoxLmNvbGxhYm9yYSB1Ym9vdFsxXSArIG1haW5saW5lIGF0ZiAyLjEzCjIuY29sbGFib3JhIHVi
b290WzFdICsgcm9ja2NoaXAgcmtiaW4gYmwzMSBibG9iIFsyXQozLnZlbmRvciB1Ym9vdCAoYmlu
IGR1bXAgZnJvbSBmcmllbmRseWVsZWMgdWJ1bnR1IGltYWdlKSAgIAoKCj4gQmluYXJ5IEJMMzEK
PiBmcm9tIFJvY2tjaGlwIG9yIG9wZW5zb3VyY2UgVEYtQT8gV2l0aCBiaWctY29yZSBDUFVzIGxp
bmtlZCB1cCB0bwo+IHRoZWlyIHN1cHBseSByZWd1bGF0b3IgKGFzIHBlciB0aGlzIHBhdGNoKQoK
eWVzCgpTbyBzdW1tYXJpc2luZzoKCjEuIGkgc2VlIGtpbmQgb2YgaXNzdWUgd2l0aCBjbG9jayB2
YWx1ZXMgKGUuZy4gcGVyZiBnb3YgZ2l2ZXMgODAwTUh6IG9uIG1haW5saW5lIGF0ZikuIAppbWhv
IHJvdCBjYXVzZSBzZWVtcyB0byBiZSBpbiBjb2xsYWJvcmEgdWJvb3QKCjIuIG9uLWRlbWFuZCBn
b3YuIHNlZW1zIGJlaGF2ZSBtdWNoIG1vcmUgbGlrZSBwb3dlcnNhdmUuCnRoaXMgc2VlbXMgdG8g
YmUgMzU3NiBzcGVjaWZpYzogCi1vbiAzNTg4IGNoYW5nZSBmcm9tIHBlcmYgdG8gb25fZGVtYW5k
IGlzIGhhcmRseSBub3RpY2VhYmxlIGluIHV4Ci1vbiAzNTc2IHN1Y2ggY2hhbmdlIG1ha2VzIHV4
IGZlZWxpbmcgbm90aWNlYWJsZSBzbG93IChsaWtlIDR4QTUzIHNvYykKaSB0aGluayB0aGlzIGlz
IG1vcmUgcmVsYXRlZCB0byBkaWZmIGJldHdlZW4gc2NtaSBtY3UgZ292IGFsZ28gaW4gMzU3NiB2
cy4gMzU4OAooaW1obyAzNTc2IGFsZ28gaGFzIGhpZ2ggbGF0ZW5jeSBpbiBjbG9jayBpbmNyZWFz
ZXMgd2hlbiBkZW1hbmQgaGFwcGVucyArIHRvbyBzaG9ydCBkZWxheSBmb3IgIGNsb2NrcyBkZWNy
ZWFzZXMgdG8gc2F2ZSBwb3dlcikKICAgICAKCgpbMV0gaHR0cHM6Ly9naXRsYWIuY29sbGFib3Jh
LmNvbS9oYXJkd2FyZS1lbmFibGVtZW50L3JvY2tjaGlwLTM1ODgvdS1ib290ClsyXSBodHRwczov
L2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgvcmtiaW4vYmxvYi9tYXN0ZXIvYmluL3JrMzUvcmsz
NTc2X2JsMzFfdjEuMTUuZWxmCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
