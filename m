Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7BC5606A324
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 20:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ijrBnaCG;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=Ai4+ibZ8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=DEXkjw9PPwAWUVG+g5lURP21eTiNvHI7UtiHNnzRVNE=; b=ijrBnaCGXzara8WjzICysca23U
	SYi8GbuSq/f+Ojfqv0Ro3m2w7yIpdb+8KgtirlnbX3MzYYHeHh99TwWFaIURWxheISONiBFsNjtZB
	aQ47y84xKQgsEE08nbEMUMZP8XfdyatHttWX/xP80swx/nmTh3LykBwNYYsdsKiADQz+2xsfzNwHd
	livRRio3PdkbUs3sdr2ksyaNRl64t1z2lrsUmqoTo2IWt2TEfGJ/cmwWfuwQahPMlHB5XrqpTv6yn
	WGsqSfEeCfWsvZRj177u5DdnuqvRMzeHf1cDzSK6jOoUs0iaQ/ifT4S0+5FPtHRh+4bSCgO0m4v2A
	9gkxuxow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNbuX-0000000Erd9-48Tg;
	Sun, 01 Nov 2026 20:12:13 +0000
Received: from mail-ej2-x06.google.com ([2a00:1450:4864:34::6])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNbuV-0000000ErcC-1Dd8
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Nov 2026 20:12:12 +0000
Received: by mail-ej2-x06.google.com with SMTP id a640c23a62f3a-c46c4bbb06fso137604366b.0
        for <linux-rockchip@lists.infradead.org>; Sun, 01 Nov 2026 12:12:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793563929; cv=none;
        d=google.com; s=arc-20260327;
        b=syJbtyGb8cd8JRPwDXfFX4QLbfmNCA0WrIWIOXz+aB+trOfmBz796dgMnpCQRadiGg
         kfCFCxcKMUpBIvRJDCQ2UQswRnxYxLT3X4+6uR90D9BC/OzrykeZ+80cFe1qaAKhpcMp
         T9dslQSf9EzNxlAsIzCDHLpWB21NEfLAQHOzsZ8TXK6mkIYNz/XVSXyIuG0DH2rjfsS+
         7K1so/oqrX/9jXxEkRixR4Vzkoj1uy/LrDDMD5um1zlw3wlgx8wYn11NaAUc1JB0G7t0
         VtN7GtmLdflUGSioshAeXjigFvyxhgPh1E6vB4pfGolYTUMQUQuoA24UsBu7zgSP/bjk
         2i+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SAEhnewbdseHCyOO8rtnZ+ccqV7eT1Rq136MpuhqgwQ=;
        fh=Pa08g2Q+qlWdmUZtmKSK0tfZ4626NpKekJM2kFwBGPc=;
        b=rOmDj+4zEJe6asyccZaI5QBoSijSrC691s+4Wo1sc+XgY4bBiw8pnuRkuCFJeCTXp1
         80TH0XHzugNqmYEKPn41LpBtgchCpdVtpuwEufo5QOG046ogMGMa5qudKcqoN55I2HDt
         FSXMspA1ufADNjXmvkj7WGRN9fognCHAjQ4YtJMjCyaPWN63QNN5axDQJMBn9irGoRsE
         n9KzczaQ0uDAswsbp7PyWf83kIv8cjk4Og6cqen0XbTlV3Z/ILbV6DfWyQSoKRbrsdMO
         3PlWcOQhHTE+zfxLACZ3LMP9Toia4aODU7EB5lAuXODPKpo2JDoAckSddL09M5jNlOT3
         zbLw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793563929; x=1794168729; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=SAEhnewbdseHCyOO8rtnZ+ccqV7eT1Rq136MpuhqgwQ=;
        b=Ai4+ibZ8SNBiI9xUFWF1MuyZbEl/YIMHs5ta17HvOVNKjOgSrUwqVFxC53ts5t3G+6
         ALluax9q1YTAX2k25A/0usyUTE/I7DjVEDOC2udeam0zz2OQVhw6OXT/yZlW2NNyTT8E
         NFueiXi3d0G47xVl+c56abde3FGUD8/FLPrGjyPhwmu2nDYli8vsNwIISs/xB2DUkxTE
         e9P85tDKgrLxMTgu7q3CftQH0t/VDGSdlatDxW7d5Z7O3hXKLCsVWBAl19CmbRuK885v
         u36pK3cYJHaV2DGGcoWF+9X05ExIur9XrzxzhcFCWZ35i2t/N8b5RTf5C6TgZru1VDRs
         BydA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793563929; x=1794168729;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SAEhnewbdseHCyOO8rtnZ+ccqV7eT1Rq136MpuhqgwQ=;
        b=nxqNbQ8e2jjiwzmNIdURZQWQcgRl3FVkq4+Ka7VSB+CquhkZ26gR/4HOIo8KEJ5kWd
         imdwmYH37fwjWzajo5wNg8U2oC+ZpjxFETztBdf8bBI/ancgGr+GrDSWDDPnf2ztUyWZ
         KvcpV/v97VGc2tD1+F0a5Sp6LPAjBgTmYNA1tx/v7hL0KPswsg1M2a1w4agdvMPS7yzo
         5R/lbQd+dFSMfBdUuh/cFXehOBRHrdACST7/MA159GbCfxPuMhw+9r/5KGZHuBV3Zg19
         qUu6buPmvt63gOb+OCdjQBM5AvoYl4pGdXfxABKBXDdX+qGQSrDRG5FK50Xk32Zq4Qxc
         h9ww==
X-Forwarded-Encrypted: i=1; AKwUvBzC5uhu1RnLY6GO84cwciURcbD+oovVgujY9U1MoUo4eL9CR/CE1STxVTH7HKcyJuUxa0gdXlAg6vN5XWJ+pg==@lists.infradead.org
X-Gm-Message-State: AFq9FYJb3iW6QJonZFXRzJIMoM0gY6hzYLPjjRk2fjiQH2dFHG91xSXm
	sBus4SdDWtXjJKfO8/CRUhuKVCUuGly8oQl4zGhgg0oZRAIMh1RWJq8NEYItAYXdjH1JBTTQn2h
	Zhprmrmq7jaOoB5kTL0z5pb735B6Svbs=
X-Gm-Gg: AYBFou0/+9hqGDY4hs49AyIlrZ8HhSXwENeOaXewLEnEtSz2RqhL0LPwDdz8LpT7/xg
	ABiJt/Cqy6zEmgTQyKH+U8fuH8CKBFjI3Ah6uw+squ1KrEB1j8xrN+w5YjL+p7Gu40ZlWkvLSqW
	SdChM6xwIglO+nD57/41h/aTHrM6JKFUoTrW5fSa5yvZGZB6+FMlnYYlNkGLTCthNUla4SwMX1M
	LsSQH2VQSJpsgE6y8MBFKQa/CI/Lb8N77xELjYUxQ69Kvif9QZJg/jRg+2QFtaL9R82WGNp08/t
	Pyg9EdukjjpGCUG+JzohbnJwYRIvUHF+m1OBZSrqV0RykMaz6SbyXq57vxAiPaDBUisnOAE5aXY
	+jzwmWp1w19RWprRYAbKT6X+yklnvgzXV7lLmVntN
X-Received: by 2002:a17:906:c14d:b0:c40:4f39:22e8 with SMTP id
 a640c23a62f3a-c4ca7acfb41mr639189266b.44.1793563928992; Sun, 01 Nov 2026
 12:12:08 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261023053548.1595033-1-coiaprant@gmail.com> <20261023053548.1595033-2-coiaprant@gmail.com>
 <2977688.AiC22s8V5E@phil>
In-Reply-To: <2977688.AiC22s8V5E@phil>
From: Coia Prant <coiaprant@gmail.com>
Date: Mon, 2 Nov 2026 04:11:56 +0800
X-Gm-Features: AclHuK9JsP_sappSiOI-OzoOwsqicY7ddXohMyF8cGA-5NNfJ9GwpFb4-3V7qU0
Message-ID: <CALj3r0g5twZNEiO5b1hHpxy3kAVBxLZNt55E2dxSSeZ5GgXisA@mail.gmail.com>
Subject: Re: [PATCH v12 1/3] arm64: dts: rockchip: rk3568: add XPCS and
 fixed-clock nodes
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	David Heidelberg <david@ixit.cz>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_121211_360094_343E6B5E 
X-CRM114-Status: GOOD (  26.85  )
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
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4g5LqOMjAyNuW5tDEx5pyIMeaXpeWRqOaX
pSAyMjowNuWGmemBk++8mgo+Cj4gSGksCj4KPiBBbSBGcmVpdGFnLCAyMy4gT2t0b2JlciAyMDI2
LCAwNzozNTo0NiBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIENvaWEgUHJh
bnQ6Cj4gPiBUaGUgUkszNTY4IFNvQyBpbnRlZ3JhdGVzIGEgU3lub3BzeXMgRGVzaWduV2FyZSBY
UENTIHRoYXQgcHJvdmlkZXMKPiA+IHRoZSBQaHlzaWNhbCBDb2RpbmcgU3VibGF5ZXIgZm9yIDEw
MDBCQVNFLVgsIFNHTUlJLCBhbmQgUVNHTUlJCj4gPiBpbnRlcmZhY2VzIHZpYSBpdHMgZm91ciBN
SUkgcG9ydHMuICBBZGQgdGhlIFhQQ1MgZGV2aWNlIG5vZGUgdG8gdGhlCj4gPiBTb0MgZGV2aWNl
IHRyZWUuCj4gPgo+ID4gVGhlIFhQQ1MgZGV2aWNlIGlzIGFjY2Vzc2VkIHZpYSB0aGUgQVBCMyBi
dXMgYXQgMHhmZGEwMDAwMCBhbmQKPiA+IHJlcXVpcmVzIHRoZSBDU1IgY2xvY2sgKFBDTEtfWFBD
UykgZm9yIHJlZ2lzdGVyIGFjY2VzcyBhbmQgdGhlIEVFRQo+ID4gY2xvY2sgKENMS19YUENTX0VF
RSkgZm9yIEVuZXJneSBFZmZpY2llbnQgRXRoZXJuZXQgb3BlcmF0aW9uLiAgVGhlCj4gPiBQRF9Q
SVBFIHBvd2VyIGRvbWFpbiBtdXN0IGJlIGVuYWJsZWQgYmVmb3JlIGFueSByZWdpc3RlciBhY2Nl
c3MuCj4gPgo+ID4gQWxzbyBhZGQgdHdvIGZpeGVkLWNsb2NrIG5vZGVzIChjbG9jay14cGNzLWdt
YWMwIGFuZCBjbG9jay14cGNzLWdtYWMxLAo+ID4gbGFiZWxsZWQgY2xrX2dtYWMwX3hwY3NfbWlp
IGFuZCBjbGtfZ21hYzFfeHBjc19taWkpIHByb3ZpZGluZyB0aGUKPiA+IDEyNSBNSHogcmVmZXJl
bmNlIGNsb2NrIGZvciB0aGUgR01BQ3Mgd2hlbiBvcGVyYXRpbmcgd2l0aCBYUENTLiAgVGhlaXIK
PiA+IGNsb2NrLW91dHB1dC1uYW1lcyBtYXRjaCB0aGUgQ1JVIG11eCBwYXJlbnQgbmFtZXMgaW4g
Y2xrLXJrMzU2OC5jLCBzbwo+ID4gYm9hcmRzIGNhbiByZXBhcmVudCBTQ0xLX0dNQUMwX1JYX1RY
IC8gU0NMS19HTUFDMV9SWF9UWCB0aHJvdWdoCj4gPiBhc3NpZ25lZC1jbG9jay1wYXJlbnRzLgo+
ID4KPiA+IFRoZSBYUENTIG5vZGUgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdCBhbmQgbXVzdCBiZSBl
bmFibGVkIGF0IHRoZSBib2FyZAo+ID4gbGV2ZWwgd2hlbiAxMDAwQkFTRS1YL1NHTUlJL1FTR01J
SSBpcyBpbiB1c2UuICBUaGUgZml4ZWQtY2xvY2sgbm9kZXMKPiA+IGFyZSBhbHdheXMgcHJlc2Vu
dCBhbmQgZG8gbm90IGhhdmUgYSBzdGF0dXMgcHJvcGVydHksIGFzIHRoZXkgYXJlCj4gPiBzdGF0
aWMgY2xvY2sgc291cmNlcy4KPiA+Cj4gPiBUaGUgWFBDUyBub2RlIHJlcXVpcmVzIGEgcmVmZXJl
bmNlIHRvIHRoZSBhcHByb3ByaWF0ZSBOYW5lbmcgQ29tYm8gUEhZCj4gPiB2aWEgdGhlIHBoeXMg
cHJvcGVydHkuICBkdGJzX2NoZWNrIG9ubHkgdmFsaWRhdGVzIHJlcXVpcmVkIHByb3BlcnRpZXMK
PiA+IGZvciBlbmFibGVkIG5vZGVzLCBzbyB0aGUgU29DIGR0c2kgZG9lcyBub3QgcHJvdmlkZSBw
aHlzOiBib2FyZHMgdGhhdAo+ID4gZW5hYmxlIHRoZSBYUENTIG11c3Qgc3VwcGx5IGl0LCBzaW5j
ZSB0aGUgU2VyRGVzIGxpbmsgaXMgYSBib2FyZC1sZXZlbAo+ID4gZGVzaWduIGNob2ljZSAoY29t
YnBoeTEgb24gc29tZSBib2FyZHMsIGNvbWJwaHkyIG9uIG90aGVycykuCj4gPgo+ID4gU2lnbmVk
LW9mZi1ieTogQ29pYSBQcmFudCA8Y29pYXByYW50QGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kgfCAyMyArKysrKysrKysrKysr
KysrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspCj4gPgo+ID4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpCj4gPiBpbmRleCAzYmM2NTNm
MDI3ZjFmLi4yMGE3Mjc4NWFkYmMyIDEwMDY0NAo+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjguZHRzaQo+ID4gQEAgLTgsNiArOCwyMCBAQAo+ID4gIC8gewo+ID4gICAgICAg
Y29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgiOwo+ID4KPiA+ICsgICAgIGNsa19nbWFjMF94
cGNzX21paTogY2xvY2steHBjcy1nbWFjMCB7Cj4gPiArICAgICAgICAgICAgIGNvbXBhdGlibGUg
PSAiZml4ZWQtY2xvY2siOwo+ID4gKyAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MTI1
MDAwMDAwPjsKPiA+ICsgICAgICAgICAgICAgY2xvY2stb3V0cHV0LW5hbWVzID0gImNsa19nbWFj
MF94cGNzX21paSI7Cj4gPiArICAgICAgICAgICAgICNjbG9jay1jZWxscyA9IDwwPjsKPiA+ICsg
ICAgIH07Cj4gPiArCj4gPiArICAgICBjbGtfZ21hYzFfeHBjc19taWk6IGNsb2NrLXhwY3MtZ21h
YzEgewo+ID4gKyAgICAgICAgICAgICBjb21wYXRpYmxlID0gImZpeGVkLWNsb2NrIjsKPiA+ICsg
ICAgICAgICAgICAgY2xvY2stZnJlcXVlbmN5ID0gPDEyNTAwMDAwMD47Cj4gPiArICAgICAgICAg
ICAgIGNsb2NrLW91dHB1dC1uYW1lcyA9ICJjbGtfZ21hYzFfeHBjc19taWkiOwo+ID4gKyAgICAg
ICAgICAgICAjY2xvY2stY2VsbHMgPSA8MD47Cj4gPiArICAgICB9Owo+ID4gKwo+Cj4gdGhlc2Ug
Y2xvY2tzIGRvbid0IGJlbG9uZyBoZXJlLgo+Cj4gV2hlbiB5b3UgcGxhY2UgdGhlc2Ugbm9kZXMg
aW4gdGhlIG1haW4sIHRoZXkgc2VlbSB0byBjb21lIG91dCBvZgo+IHRoaW4gYWlyLCB3aGlsZSB0
aGF0IG1pZ2h0IGJlIHRydWUgZm9yIHNvbWUgYm9hcmRzLCB0aGF0IHRoZXkKPiBoYXZlIGRlZGlj
YXRlZCBvc2NpbGxhdG9ycyBmb3IgdGhhdCwgdGhpcyB3aWxsIGxpa2VseSBub3QgYmUgdHJ1ZQo+
IGZvciBhbGwuCj4KPiBTbyB0aGVzZSBzaG91bGQgYmUgZGVmaW5lZCBpbiB0aGUgYm9hcmQgZHRz
LCB0byBtYXRjaCB0aGUgYWN0dWFsCj4gaGFyZHdhcmUuCj4KPgo+IEhlaWtvCj4KCkhpIEhlaWtv
LAoKT2theSwgdGhlc2UgYXJlIGJvYXJkLWxldmVsIGNsb2NrIHNvdXJjZXMsIG5vdCBzb21ldGhp
bmcgdGhlIFNvQwpwcm92aWRlcy4gTW92aW5nIGJvdGggZml4ZWQtY2xvY2sgbm9kZXMgdG8gdGhl
IFBob3RvbmljYXQgRFRTIGFuZApsZWF2aW5nIG9ubHkgdGhlIHhwY3Mgbm9kZSBpbiByazM1Njgu
ZHRzaS4KCkknbGwgcmVzcGluLgoKQ29pYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
