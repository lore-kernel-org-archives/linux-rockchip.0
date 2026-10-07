Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33851CA5FF1
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Oct 2026 07:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5gOCDv5/n58iQoxwHiavCDnbPo8G15OAeE7Qyup0nIE=; b=M61BLaHshCZnjb
	4J90h+x/BTky7g5DpXtfOkyxpPLs7+S12PmIFwKBX72OA3zd8OUWKycdqmAByXeLEbapsW0ZTAUJs
	9v0JM8d3KnGnJra75xJ4h/bRz9lsBp7/3WZD6DpUpGW4scCjtf2sCOzIOau+xWLTNml0ezogHTYIC
	XQlXXRQcgmWvvlfEtNJMP9FU4GXA2JulNazHefRyLDKiPGp8pAX2KwRlWRyULew4X/QWrmmD+/U5k
	vFoIZLL3DJR1lNpjss5dTCh2Ut9zqVOciiZTVFoNYy1Ysc2vUPAGp46tZnl7gbJ/Hz5oFEiGFonjA
	80nWL20b9LkgG8ZgRqlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEM4V-00000001q70-1zbw;
	Wed, 07 Oct 2026 07:28:15 +0000
Received: from mail-ej2-x08.google.com ([2a00:1450:4864:34::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEM4O-00000001q5U-2CdQ
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Oct 2026 07:28:13 +0000
Received: by mail-ej2-x08.google.com with SMTP id a640c23a62f3a-c2e2e238134so233101766b.1
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Oct 2026 00:28:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791358085; cv=none;
        d=google.com; s=arc-20260327;
        b=nlqK6/Os/EQLTmKW8sb0YcHxLmcrYZf5tkTLUuMZGDrUa1MlTwVKGeEKYlUh0C3b30
         +fU8STGTp+I0lpQAF+uXP+fKKPvchosJPI2sdhT5/dL01qI7vO6a+yh2jLU/X4VE8fFw
         UcdsNtYD+453wq/F6ztm+CE4kUsXCCbZv6NxZQXZ9tOFMb+i2SiX3D7ZTPIXOjt8Bie4
         vM1F/5jSPLcs3T+arVcmgYIynI1vVy1nVnu2NM19583j4esTBAsJLNWzZOeQyHY/FbqE
         o7BrtqMiJ8Qh8TNUGWgmLom2KRG8DOKBQiaeWIt2ujtk00dncd2pHTyY328EWB0UL2Y0
         uRLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=1Zq8NlPwkeL9howQ0mnjaivcphRCiBVQ8OhdmA2H/pU=;
        fh=lVBgyLkXCIQvEHeIiu/7R7nt0raM2bqHwMMnbqufC+4=;
        b=BNPVf6e8Le2YZPIPK5lLB/csUwtz/yOJal6Yb4h3Kq6H1mGA125xGBi9ix9hNTSf81
         PuzQcGJBnrkJJ1erRsyLxtLAiVUzFXP2Tsv4PXenyeInHopRa8aRMpEHsHBvb96tvCcI
         znrdZDJwegyhz2Cib2WTTPWWh057zm9V/hl+xh5GSoZSC5CcIKGr9/E0M7hJv44mdyz9
         sBrtnwPFMNe9nouiKM6hJCjbyeK7WFwAGkoAZrJPvsFo3dnKaKPfpnt3YV2nCdMe/lDm
         32+35jZ6tRFkUBQmQe0W0sljaOwdlNxLRTmFDaxiFWE9MpNfHuLY5TmuYLzuJBEPnrle
         KuWA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791358085; x=1791962885; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=1Zq8NlPwkeL9howQ0mnjaivcphRCiBVQ8OhdmA2H/pU=;
        b=iGYUnG8aJh3vxv5OtugzmR89CGfMXVF2izEFB+quEagKHXK507lbsjd4/MtqqQ2O01
         Qf1e2AjcZItBQqTP0thE9+W+btkzukG6CLolZ5J6BuzFryxtfkOQyFiEVlsUrMU0uqBK
         vPdFnWarC5uYdIeBuRi7RuX2D+jnJ7bOhbhSko/mokJNQu8Vk3tdtx6CwTnBLCX81SQ9
         I4gfmu+TgvT1yW/kfa/Rds0Q5236CDnsf/QEfRDhiOMBOY567ezD4mAr73EvC8yM5ANZ
         d4/eH7HAA3JAaYqcHfxBHYc8W5D3c9f7XfbV4nWTrieOd7alRoIB/NPkid9QBBHnaf6s
         fwMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791358085; x=1791962885;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1Zq8NlPwkeL9howQ0mnjaivcphRCiBVQ8OhdmA2H/pU=;
        b=l+neHyygT0bld9WDIAsiF36UuwpacALfO0676T5fWHnu0yOD0u38JfiSDxBK4KBlVY
         vsSxXBwxk3E5QGGY92wMcEYrOCWY69cwcWzXCopwWdxYvBCD99AXV1OqWsR7Hoj2N1nD
         vVb+FkQG7bHAtiN0OvVJl7Ej47x9fVbGgI6qcdIALcONrLcA07OnQ1gXTcP15EdCWFxf
         3AzGlgyp3pl9eVUPsNIV3pPCYcMZN1w0jcSfnEy8VxO1TGi7DpCVG26szUVJ/ZoN51ZN
         W3MVy+VTCmaIBOphkXgSjRNpZNtjWhbT06jTXsU1nd8Gu2b4dJQ484wwBGNxnvBWWvWD
         qkoA==
X-Forwarded-Encrypted: i=1; AKwUvBycU8vvbynR8TOrxoYKMQF1E6RNbKbAEcaN3ewafZNpMCY6zQ/YtCqe84onr5lOJUFNxsqNELgdTRBKvuBeYA==@lists.infradead.org
X-Gm-Message-State: AFuF++k2WiZGHcjg+wDKUJSw1Ucf7uP68jAo7/2xv2glc0eRYUQOGqUU
	SXhR65rrS/fDVC34YvCXurOrX6kvUqLpgtUcjPyd8KL9aOYj936Llk+G0SqgtBiOdDLXY2mSQyI
	i7IBQiwkLSKTkvntQGYMnhwkM0lXpVQc=
X-Gm-Gg: AYBFou3TO3xnnbswIvLLkYyhErloal6ixwU5Pbx/+pxu/+G0XDzGPHP+alAMumfoZFV
	+nmgSvpJ5PUBOXN7kaSo5sfz00MIr9/HA3ChG448Oc8xuUzIWX2oTh+X2HOWmUmcnJgET6gtwJ9
	hQlwwAN44uv0TRCgTZveOAeKDpEtEeNom7g0zdNJdTolKsBD/cfKgw86LHJLlEhilZ5hlm6v7KK
	8g0CMvwWavjGQTuFOP4mBNWHBfS9kbDS8d3CSIX4lIL2dFLDsftLoHqqmH8X0T6NcpzjRw6wESk
	KYgBsehkPuA46oa5AZYwbFj9RZ8OKj0+GdkBex1Rmf4qXeX0H6Fyjml2ECvf19cHTUMb
X-Received: by 2002:a17:907:6ea8:b0:c29:659e:2fd2 with SMTP id
 a640c23a62f3a-c317bdfe7aamr131010766b.27.1791358085108; Wed, 07 Oct 2026
 00:28:05 -0700 (PDT)
MIME-Version: 1.0
References: <20261006162807.2843858-1-coiaprant@gmail.com> <20261006162807.2843858-3-coiaprant@gmail.com>
 <ac2a4e80-6d35-457a-bdc5-ee8511198bec@rock-chips.com>
In-Reply-To: <ac2a4e80-6d35-457a-bdc5-ee8511198bec@rock-chips.com>
From: Coia Prant <coiaprant@gmail.com>
Date: Wed, 7 Oct 2026 15:27:54 +0800
X-Gm-Features: AclHuK9-vNcZxKo1OhLsfKqvuLHm0D_pklXBR5Ny7XJ7B7WuohnKFrZGwSHbsF8
Message-ID: <CALj3r0gQ_U2ZUJkRgF4NdB1Gd3A8ZT3T6qjLhwGZPg=VUXLsrQ@mail.gmail.com>
Subject: Re: [PATCH v13 2/2] phy: rockchip: naneng-combphy: add SGMII MAC
 selection for RK3568
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_002808_671889_6239E4ED 
X-CRM114-Status: GOOD (  30.01  )
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

U2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+IOS6jjIwMjblubQxMOaciDfml6Xl
kajkuIkgMDg6NTPlhpnpgZPvvJoKPgo+IOWcqCAyMDI2LzEwLzA3IOaYn+acn+S4iSAwOjI4LCBD
b2lhIFByYW50IOWGmemBkzoKPiA+IE9uIFJLMzU2OCwgdGhlIFNHTUlJIGludGVyZmFjZSBjYW4g
YmUgcm91dGVkIHRvIGVpdGhlciBHTUFDMCBvcgo+ID4gR01BQzEgdmlhIHRoZSBHUkYgcmVnaXN0
ZXIgcGlwZV9zZ21paV9tYWNfc2VsLgo+ID4KPiA+IEFkZCBzdXBwb3J0IGZvciB0aGlzIHNlbGVj
dGlvbiBieSBpbnRyb2R1Y2luZyB0aGUKPiA+ICJyb2NrY2hpcCxzZ21paS1tYWMtc2VsIiBEVCBw
cm9wZXJ0eS4KPiA+Cj4gPiAgRnJvbSB0aGUgUkszNTY4IFRSTSAoUGFydDEsIFBhZ2UgMjI5KSwg
dGhlIFBJUEVfR1JGX1hQQ1NfQ09OMAo+ID4gYml0IDEgKHBpcGVfc2dtaWlfbWFjX3NlbCkgaXMg
ZGVmaW5lZCBhczoKPiA+Cj4gPiAgICAgIDA6IFNHTUlJIHJvdXRlZCB0byBHTUFDMAo+ID4gICAg
ICAxOiBTR01JSSByb3V0ZWQgdG8gR01BQzEKPiA+Cj4gPiBUaGUgaGFyZHdhcmUgcmVzZXQgdmFs
dWUgaXMgMSAoR01BQzEpLiBJZiB0aGUgcHJvcGVydHkgaXMgc2V0IHRvIDAsCj4gPiB0aGUgZHJp
dmVyIHJvdXRlcyBTR01JSSB0byBHTUFDMDsgaWYgc2V0IHRvIDEsIGl0IHJvdXRlcyB0byBHTUFD
MS4KPiA+IElmIHRoZSBwcm9wZXJ0eSBpcyBhYnNlbnQsIHRoZSBkcml2ZXIgbGVhdmVzIHRoZSBy
b3V0aW5nIHVuY2hhbmdlZCwKPiA+IHNvIHRoZSBlZmZlY3RpdmUgdmFsdWUgaXMgd2hhdGV2ZXIg
dGhlIGJvb3Rsb2FkZXIgb3IgaGFyZHdhcmUgcmVzZXQKPiA+IGxlZnQuCj4gPgo+ID4gVGhlIGRy
aXZlciB2YWxpZGF0ZXMgdGhlIHZhbHVlIGFuZCByZWplY3RzIGFueXRoaW5nIG90aGVyIHRoYW4g
MCBvciAxLgo+ID4KPiA+IFRoaXMgaXMgbmVjZXNzYXJ5IGZvciBib2FyZHMgc3VjaCBhcyB0aGUg
QXJpYWJvYXJkIFBob3RvbmljYXQsIHdoaWNoCj4gPiB1c2VzIHRoZSBTR01JSSBpbnRlcmZhY2Ug
Y29ubmVjdGVkIHRvIEdNQUMwLgo+ID4KPiA+IExpbms6IGh0dHBzOi8vZGwucmFkeGEuY29tL3Jv
Y2szL2RvY3MvaHcvZGF0YXNoZWV0L1JvY2tjaGlwJTIwUkszNTY4JTIwVFJNJTIwUGFydDElMjBW
MS4xLTIwMjEwMzAxLnBkZiAoUGFnZSAyMjkpCj4gPiBTaWduZWQtb2ZmLWJ5OiBDb2lhIFByYW50
IDxjb2lhcHJhbnRAZ21haWwuY29tPgo+ID4gLS0tCj4gPiAgIC4uLi9yb2NrY2hpcC9waHktcm9j
a2NoaXAtbmFuZW5nLWNvbWJwaHkuYyAgICB8IDQyICsrKysrKysrKysrKysrKysrKysKPiA+ICAg
MSBmaWxlIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVuZy1jb21icGh5LmMgYi9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+ID4gaW5kZXggNzg0
MzM1NmE0ZGQ0Ny4uZjc2YjQ4MDA5NjczZCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5jCj4gPiArKysgYi9kcml2ZXJzL3Bo
eS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJwaHkuYwo+ID4gQEAgLTE4Niw2ICsx
ODYsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeV9ncmZjZmcgewo+ID4gICAgICAgc3RydWN0
IGNvbWJwaHlfcmVnIHBpcGVfeHBjc19waHlfcmVhZHk7Cj4gPiAgICAgICBzdHJ1Y3QgY29tYnBo
eV9yZWcgcGlwZV9wY2llMWwwX3NlbDsKPiA+ICAgICAgIHN0cnVjdCBjb21icGh5X3JlZyBwaXBl
X3BjaWUxbDFfc2VsOwo+ID4gKyAgICAgc3RydWN0IGNvbWJwaHlfcmVnIHBpcGVfc2dtaWlfbWFj
X3NlbDsKPiA+ICAgICAgIHN0cnVjdCBjb21icGh5X3JlZyB1M290ZzBfcG9ydF9lbjsKPiA+ICAg
ICAgIHN0cnVjdCBjb21icGh5X3JlZyB1M290ZzFfcG9ydF9lbjsKPiA+ICAgfTsKPiA+IEBAIC0y
MTIsNiArMjEzLDggQEAgc3RydWN0IHJvY2tjaGlwX2NvbWJwaHlfcHJpdiB7Cj4gPiAgICAgICBi
b29sIGVuYWJsZV9zc2M7Cj4gPiAgICAgICBib29sIGV4dF9yZWZjbGs7Cj4gPiAgICAgICBzdHJ1
Y3QgY2xrICpyZWZjbGs7Cj4gPiArICAgICBib29sIHNnbWlpX21hY19zZWxfcHJlc2VudDsKPiA+
ICsgICAgIHUzMiBzZ21paV9tYWNfc2VsOwo+ID4gICB9Owo+ID4KPiA+ICAgc3RhdGljIHZvaWQg
cm9ja2NoaXBfY29tYnBoeV91cGRhdGVsKHN0cnVjdCByb2NrY2hpcF9jb21icGh5X3ByaXYgKnBy
aXYsCj4gPiBAQCAtMzQxLDYgKzM0NCw3IEBAIHN0YXRpYyBzdHJ1Y3QgcGh5ICpyb2NrY2hpcF9j
b21icGh5X3hsYXRlKHN0cnVjdCBkZXZpY2UgKmRldiwgY29uc3Qgc3RydWN0IG9mX3BoCj4gPiAg
IHN0YXRpYyBpbnQgcm9ja2NoaXBfY29tYnBoeV9wYXJzZV9kdChzdHJ1Y3QgZGV2aWNlICpkZXYs
IHN0cnVjdCByb2NrY2hpcF9jb21icGh5X3ByaXYgKnByaXYpCj4gPiAgIHsKPiA+ICAgICAgIGlu
dCBpOwo+ID4gKyAgICAgaW50IHJldDsKPiA+Cj4gPiAgICAgICBwcml2LT5udW1fY2xrcyA9IGRl
dm1fY2xrX2J1bGtfZ2V0X2FsbChkZXYsICZwcml2LT5jbGtzKTsKPiA+ICAgICAgIGlmIChwcml2
LT5udW1fY2xrcyA8IDEpCj4gPiBAQCAtMzc1LDYgKzM3OSwxNiBAQCBzdGF0aWMgaW50IHJvY2tj
aGlwX2NvbWJwaHlfcGFyc2VfZHQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1Y3Qgcm9ja2NoaXBf
Y29tYnBoeQo+ID4KPiA+ICAgICAgIHByaXYtPmV4dF9yZWZjbGsgPSBkZXZpY2VfcHJvcGVydHlf
cHJlc2VudChkZXYsICJyb2NrY2hpcCxleHQtcmVmY2xrIik7Cj4gPgo+ID4gKyAgICAgaWYgKGRl
dmljZV9wcm9wZXJ0eV9wcmVzZW50KGRldiwgInJvY2tjaGlwLHNnbWlpLW1hYy1zZWwiKSkgewo+
ID4gKyAgICAgICAgICAgICByZXQgPSBkZXZpY2VfcHJvcGVydHlfcmVhZF91MzIoZGV2LCAicm9j
a2NoaXAsc2dtaWktbWFjLXNlbCIsICZwcml2LT5zZ21paV9tYWNfc2VsKTsKPiA+ICsgICAgICAg
ICAgICAgaWYgKHJldCkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoZGV2LCAi
ZmFpbGVkIHRvIHJlYWQgc2dtaWktbWFjLXNlbCBwcm9wZXJ0eVxuIik7Cj4gPiArICAgICAgICAg
ICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICsgICAgICAgICAgICAgfQo+ID4gKwo+Cj4gZGV2
aWNlX3Byb3BlcnR5X3JlYWRfdTMyKCkgc2hvdWxkIHJldHVybiBub24temVybyB2YWx1ZSBpZiBp
dCdzIGFic2VudC4KPiBIb3cgYWJvdXQgdGhpczoKPgo+ICAgICAgICAgc3RydWN0IHJvY2tjaGlw
X2NvbWJwaHlfcHJpdiB7Cj4gICAgICAgICAgICAgICAgIGludCBzZ21paV9tYWNfc2VsOwo+ICAg
ICAgICAgfQo+Cj4gc3RhdGljIGludCByb2NrY2hpcF9jb21icGh5X3BhcnNlX2R0Ogo+ICAgICAg
ICAgdTMyIHZhbDsKPgo+ICAgICAgICAgIHByaXYtPnNnbWlpX21hY19zZWwgPSAtMTsKPiAgICAg
ICAgICBpZiAoIWRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMihkZXYsICJyb2NrY2hpcCxzZ21paS1t
YWMtc2VsIiwKPiAmdmFsKSkgewo+ICAgICAgICAgICAgICAgICAgaWYgKHZhbCA+IDEpCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgLUVJTlZBTCwK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImludmFsaWQg
c2dtaWktbWFjLXNlbAo+ICV1XG4iLCB2YWwpOwo+ICAgICAgICAgICAgICAgICAgcHJpdi0+c2dt
aWlfbWFjX3NlbCA9IHZhbDsKPiAgICAgICAgICB9Cj4KPgo+IHN0YXRpYyBpbnQgcmszNTY4X2Nv
bWJwaHlfY2ZnOgo+ICAgICAgICAgIGNhc2UgUEhZX1RZUEVfU0dNSUk6Cj4gICAgICAgICAgICAg
ICAgICBpZiAocHJpdi0+c2dtaWlfbWFjX3NlbCA+PSAwKQo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICByb2NrY2hpcF9jb21icGh5X3BhcmFtX3dyaXRlKHByaXYtPnBpcGVfZ3JmLAo+Cj4gJmNm
Zy0+cGlwZV9zZ21paV9tYWNfc2VsLAo+Cj4gcHJpdi0+c2dtaWlfbWFjX3NlbCA+IDApOwoKSGks
CgpUaGFua3MgZm9yIHRoZSBzdWdnZXN0aW9uLiBJJ2QgcHJlZmVyIHRvIGtlZXAgdGhlIGN1cnJl
bnQgZm9ybSwgYmVjYXVzZQppdCBrZWVwcyAibWlzc2luZyIgYW5kICJtYWxmb3JtZWQiIGFzIHR3
byBkaXN0aW5jdCBjYXNlcy4KCkN1cnJlbnQgbG9naWM6CgppZiAoZGV2aWNlX3Byb3BlcnR5X3By
ZXNlbnQoZGV2LCAicm9ja2NoaXAsc2dtaWktbWFjLXNlbCIpKSB7CiAgICByZXQgPSBkZXZpY2Vf
cHJvcGVydHlfcmVhZF91MzIoZGV2LCAicm9ja2NoaXAsc2dtaWktbWFjLXNlbCIsCiAgICAgICAg
ICAgICAgICAmcHJpdi0+c2dtaWlfbWFjX3NlbCk7CiAgICBpZiAocmV0KQogICAgICAgIHJldHVy
biByZXQ7CiAgICBwcml2LT5zZ21paV9tYWNfc2VsX3ByZXNlbnQgPSB0cnVlOwp9CgotIGRldmlj
ZV9wcm9wZXJ0eV9wcmVzZW50KCkgY2hlY2tzIHdoZXRoZXIgdGhlIHByb3BlcnR5IGV4aXN0cy4K
LSBJZiBpdCBleGlzdHMsIGRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMigpIHJlYWRzIGl0LiBBIG5v
bi1pbnRlZ2VyIHZhbHVlCiAgKGUuZy4gYSBzdHJpbmcpIHJldHVybnMgYW4gZXJyb3IsIHdoaWNo
IGlzIHByb3BhZ2F0ZWQgLS0gaXQgaXMgbm90CiAgc2lsZW50bHkgdHJlYXRlZCBhcyAiYWJzZW50
Ii4KLSBUaGUgcmFuZ2UgY2hlY2sgaXMgZG9uZSBsYXRlciwgaW4gcmszNTY4X2NvbWJwaHlfY2Zn
J3MgU0dNSUkgY2FzZSwgc28KICBhIGJhZCB2YWx1ZSBvbmx5IGZhaWxzIHdoZW4gU0dNSUkgaXMg
YWN0dWFsbHkgdXNlZC4gVGhhdCBrZWVwcyBub24tU0dNSUkKICB1c2VycyAoUENJZSwgU0FUQSkg
d29ya2luZywgYW5kIGxlYXZlcyByb29tIGZvciBmdXR1cmUgU29DcyB0aGF0IG1heQogIHN1cHBv
cnQgYSBkaWZmZXJlbnQgc2V0IG9mIE1BQ3MuCgpXaXRoIGludCArIC0xIGFzIHRoZSAiYWJzZW50
IiBzZW50aW5lbCwgYSBEVCB2YWx1ZSBsaWtlIDB4RkZGRkZGRkYgd291bGQKd3JhcCB0byAtMSBh
bmQgYmUgbWlzdGFrZW4gZm9yICJhYnNlbnQiLCBieXBhc3NpbmcgdGhlIHJhbmdlIGNoZWNrLiBU
aGUKdTMyICsgcHJlc2VudCBmbGFnIGF2b2lkcyB0aGF0IGFtYmlndWl0eS4KClNvIEknZCBsaWtl
IHRvIGtlZXAgdjEzIGFzLWlzLiBMZXQgbWUga25vdyBpZiB5b3Ugc3RpbGwgZmVlbCBzdHJvbmds
eQphYm91dCBpdC4KClRoYW5rcywKQ29pYQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
