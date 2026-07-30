Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9305C55160
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 11:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eAN2dKE8QnngchOQ48bZTarUF5nGfwAXGJSNrtrVKjU=; b=TrBvsgOjZ6/a0h
	WFZOKhV5jNazCs+O9YVNVf3kitKr1SaqrzXN+Fv+z+NShLyU2Cds1TIgK57m5WoGUo1X2ABSJKE+F
	SVFFqxsyDz/p4BZdOK7jomPA0upAwA53gWfJ8ZhJ0FSw8RHRaYmhDItaQdkAj/HSNzzxsT1iFR+27
	ZOUX+4HTMO4z1LwtQT224hci9e9EQNMAusxzVDOaq4zdypYlFUuGMMFHL8hx7FVHIgWId5FhGpOM2
	64ZY+joxCKFDZ5edR9ofGwEwLQbcG36n+2TfohnGANdcGJduo/IW3Nnk7cF5csr5gGHmhuElxi9W8
	Oa6jE9Fo5yBHcOpd1D5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpP6Z-0000000AMwj-1SlR;
	Thu, 30 Jul 2026 11:39:15 +0000
Received: from mail-yw1-x112a.google.com ([2607:f8b0:4864:20::112a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpP6W-0000000AMuU-3InR
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 11:39:14 +0000
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-81062fdeaf5so10669687b3.0
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 04:39:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785411551; cv=none;
        d=google.com; s=arc-20260327;
        b=hEjbMvnxoXDUikoBlN0lTX8mUxBoZodeOf0Kb2S34q4J3GJivmPQpb8hBsdOLwtg1D
         yq8wgDa9xv8Gx3hMLUmQIxKP6UulgPrD52Z+foj5QsJMOHifp6X1Wp8vyNk1ACd9Fabn
         m+o2gQbjYBVQpFqcsi7FrXMwUh6mAzJAehRXzZl9GGI+dX2vCJyMiqh1U2jFphjtBqBy
         wwlV2nFH1lgmor3OamDUb9PuZc1GRSMpkRbgxc9F4vFPdO8yk9NXV1DnqCSLBZ7LNGLe
         8YXcpks2EAr01cce105TRO1SVpUGPCQ+7+j0MKL8L9mATMzIcbA2qMLKedMzDD67shnj
         BC0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GOxhSnayK8QxbrD63cf2oNZmoFkPournY0d5EVv7OdM=;
        fh=J1IQY/ePkyuHcdBOLo8zdl1iltE7QIv4WF1u8NbkrEE=;
        b=S+dxpb0cTjCuKs/G3OoQhkYGegTCx6ylJT0NsQiS39hqWKBVp2TFNsn9hJTs5FiiHs
         pb+W37RAQ0Se/QeOmwJ8HBT5tG1JZPDDsWiNXY/hu750xg20NdvyP3vejxMhGBVtTn/G
         a8vWZD1GtEidVWf7n+LKrCTj6mrF/IJ0hDrOPJb1CzRH9hRCKSpi4b9d0w27xIPpoGdG
         /cs0rwIkVMxWYBhnUcbOgLf6VgPyFa00jgbXTLI7nd3rr5DJjfa/ILXx0Hy0sgj4b661
         rsPJGAABNAMt2YUB9aRD5dPCFCahj3EaRCkBc5uQQEjCRqWXGvjBy6XhTN16pH2HRLUj
         qEqg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785411551; x=1786016351; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=GOxhSnayK8QxbrD63cf2oNZmoFkPournY0d5EVv7OdM=;
        b=Ft10VygswMHpyJI6Oxs5YcS3bSVErOVAL1PbLrOx8/DMEY7zreDHNN8SglL5Tphb1g
         910EVn/UPh5wG8OflRSfP5Ox1bQZ3UHnNPC/anyWuvUv1/I5BgaPY19yxGIEDt20UGWq
         4OlQUJ1NZcKcSEGirXat9QITXF5A8xSd8tWZ73EdcUWgkhvPgOikt1q4N95GRHwwknwN
         bO+PiDu0UkSImWaZU0uq86ws9cnn/k+pzm/U+cl3+OVkqwfMgl36htUAAj3lZ1JBv9aI
         LeTgi07U6Gx2yZqqd8/dihStlMb1WtIuRP3ZEBKTlq1iqBiT7AFnpY9/2+qqIcRDC0m0
         iWfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785411551; x=1786016351;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GOxhSnayK8QxbrD63cf2oNZmoFkPournY0d5EVv7OdM=;
        b=FX/NL63CRzVFupMim0TvQJ8QnO3tfls6CWlVRA8VsKQHpPPWiKvRuZPkDfRNUOp+gJ
         Ee14cqWQBnYct1TBDHJNpiRuM1OF47ytOtdBgBpr1abvI/NZG/d7q5qEEuNIlnJ26fuO
         nbgBVTX/Somo1ItPAcPrJd8oIjE5foFWPTXfupfek1faf6AEyEVmP8NKN/jxoYHJHrH6
         RDZiF3yNp2d8cDRUlakm0zwijK2wV+Agxp0kdk2EpdpdG7CmWTKnMLDcCHOFqHV6Q0/B
         qCbdGsSu5fge2PP5vRQL0cKBUtl78LyrmCR3cjOSZ9S92OOJuEKO/I6qRJzkFJzlDFXt
         R72g==
X-Forwarded-Encrypted: i=1; AHgh+RqPypX2LqN/yV8lWqh0OUPpyMdqOt61NK6ovkAOQyh7dn3LoHNc+5Yc8TacoDbZbBv61iGJIPo494EsWnRDhg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxenRPgsTRThubDj3RD6imITQ8YVAHVAmR7cyOQfANrLmItkUMr
	/kAR1IyBT83SCZDkkx8JtE9ABR29FTKK6c9GU3jAASpsFkz01wkX1SHHBAc0lkHCcPJkJSo2ik6
	cAuBjIH2m5g2K2C7a6m1R3P/mY0VIAto=
X-Gm-Gg: AR+sD137tQBFnE0h7bXr8tC8XdCoA1wuBHx5t+TBO+lw1bVXybjDMGsReoghHdLe/6N
	XJDqDT2v0NF9xXQFRGliAqPx79thFfVWOea52jlbACjEx7YaHArPgJB5d5KZ0VfeBG0H4nC8JOy
	TnfO9XIh73chIC/ECFjtDnJysG+1Kc/0OsQg0XjWFGSuNjQfrR33Qt/8hToFTybaeeauMEkCxES
	YpYbOAQc4xqxHcD2+onWH6uTocMj1fFWkFuCXmA+g3WfDkePq1d/C/P19nRz9Tqv2hgSeLYihKM
	IPgivjGDS8ZDJ0wyvjan84EASNUUhA6sfXUm46JZbgAi
X-Received: by 2002:a05:690c:6b01:b0:7fd:5508:b2dd with SMTP id
 00721157ae682-81fb97f7a2emr12051367b3.22.1785411551310; Thu, 30 Jul 2026
 04:39:11 -0700 (PDT)
MIME-Version: 1.0
References: <20260727021048.3375444-1-attinagaoxu@gmail.com>
 <20260727021048.3375444-2-attinagaoxu@gmail.com> <20260730-lucky-strict-oryx-9ce8de@quoll>
In-Reply-To: <20260730-lucky-strict-oryx-9ce8de@quoll>
From: Gavin Gao <attinagaoxu@gmail.com>
Date: Thu, 30 Jul 2026 19:38:57 +0800
X-Gm-Features: AUfX_mzaCwnwh8yAtjVvunPNaTB-XiGKKcyJxT9ge1AJjv97-ODm4c4wF7ehf-4
Message-ID: <CAK2JjQVoaHjzf4Z=_LDVzTj0R-ey1Z4T+1OF_xYACdz1C4yReQ@mail.gmail.com>
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: rockchip-dwmac: Add 25M
 refout clock
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, mcoquelin.stm32@gmail.com, 
	alexandre.torgue@foss.st.com, richardcochran@gmail.com, 
	nicolas.frattaroli@collabora.com, sebastian.reichel@collabora.com, 
	sashal@kernel.org, alchark@gmail.com, chaoyi.chen@rock-chips.com, 
	amadeus@jmu.edu.cn, rmk+kernel@armlinux.org.uk, horms@kernel.org, 
	alok.a.tiwari@oracle.com, david.wu@rock-chips.com, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_043912_847852_16852E8B 
X-CRM114-Status: GOOD (  17.05  )
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

T24gVGh1LCBKdWwgMzAsIDIwMjYgYXQgNDoyN+KAr1BNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBNb24sIEp1bCAyNywgMjAyNiBhdCAxMDoxMDo0
NUFNICswODAwLCBHYXZpbiBHYW8gd3JvdGU6Cj4gPiBTb21lIFJvY2tjaGlwIEdNQUMgaW5zdGFu
Y2VzIGNhbiBwcm92aWRlIGEgMjUgTUh6IHJlZmVyZW5jZSBjbG9jayBvdXRwdXQKPiA+IGZvciBh
biBleHRlcm5hbCBSR01JSSBQSFkuCj4gPgo+ID4gQWRkIGEgY2xvY2sgbmFtZSBmb3IgdGhpcyAy
NSBNSHogcmVmZXJlbmNlIG91dHB1dCBzbyBTb0MgZHRzaSBmaWxlcyBjYW4KPiA+IGRlc2NyaWJl
IGl0IHNlcGFyYXRlbHkgZnJvbSB0aGUgZXhpc3RpbmcgTUFDIHJlZmVyZW5jZSBjbG9ja3MuCj4g
Pgo+ID4gU2lnbmVkLW9mZi1ieTogR2F2aW4gR2FvIDxhdHRpbmFnYW94dUBnbWFpbC5jb20+Cj4g
PiAtLS0KPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbmV0L3JvY2tjaGlw
LWR3bWFjLnlhbWwgfCAxICsKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+
Cj4gPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9y
b2NrY2hpcC1kd21hYy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25l
dC9yb2NrY2hpcC1kd21hYy55YW1sCj4gPiBpbmRleCAwYWM3YzRiNDdkNmIuLjA3NGFjMjc0ZjJl
MCAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQv
cm9ja2NoaXAtZHdtYWMueWFtbAo+ID4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sCj4gPiBAQCAtODEsNiArODEsNyBAQCBwcm9w
ZXJ0aWVzOgo+ID4gICAgICAgICAgLSBwY2xrX21hYwo+ID4gICAgICAgICAgLSBjbGtfbWFjX3Jl
Zgo+ID4gICAgICAgICAgLSBjbGtfbWFjX3JlZm91dAo+ID4gKyAgICAgICAgLSBjbGtfbWFjXzI1
bV9yZWZvdXQKPgo+IFRoYXQncyB0aGUgc2FtZSBhcyBjbGtfbWFjX3JlZiBhbmQgY2xrX21hY19y
ZWZvdXQuIGNsb2NrcyBhcmUgbm90Cj4gb3V0cHV0cyBidXQgaW5wdXRzLCBzbyBleHBsYWluIGhv
dyBkb2VzIHRoZSBkZXZpY2UgdGFrZSB0aHJlZSBTQU1FCj4gY2xvY2tzOiBjbGtfbWFjX3JlZiwg
Y2xrX21hY19yZWZvdXQgYW5kIGNsa19tYWNfMjVtX3JlZm91dD8KPgo+IEJlc3QgcmVnYXJkcywK
PiBLcnp5c3p0b2YKPgoKVGhpcyBpcyBub3QgdGhlIGV4aXN0aW5nIGNsa19tYWNfcmVmb3V0IGNs
b2NrLiBPbiBSSzM1NzYgdGhlClJFRkNMS08yNU1fR01BQ1swMV1fT1VUIGNsb2NrcyBhcmUgc2Vw
YXJhdGUgMjUgTUh6IHJlZmVyZW5jZSBjbG9jayBvdXRwdXRzCmludGVuZGVkIGZvciBSR01JSSBQ
SFlzLCB3aGlsZSBjbGtfbWFjX3JlZm91dCBpcyB0aGUgZXhpc3RpbmcgcmVmb3V0IGNsb2NrCnVz
ZWQgYnkgdGhlIFJvY2tjaGlwIERXTUFDIGJpbmRpbmcgZm9yIHRoZSBSTUlJIHJlZmVyZW5jZSBv
dXRwdXQgcGF0aC4KCi0tIApCZXN0IFJlZ2FyZHMsCkdhdmluIEdhbwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
