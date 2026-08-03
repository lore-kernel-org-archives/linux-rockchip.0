Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54D5AC55175
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 07:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vqmOo1MrEyF0ecPDPuelPutSXqC2gc+RdbezkAO08w=; b=2iJdpnfaf4RO2p
	p0sZox9XIAxv3YFRx1U4ptxFd+I5QIYjP50p6r2PMe/wUgOmOCGTG4T+dgLyU2KhyJbwcpprzURdU
	wl7TnPUTVu/4Q4C2HlXm3dJVKhrxOBxzR91xccvaNXA1+7AeJEq+fllgZ/A1qIb1G6BfHV5B1CPUL
	Nl+33/73eK2mk2v3LSVup2eH2LcQO1mDHZibY6jMIk7BERXZhU/Wn8uLdjEeqJoann3ckrNi1cCTC
	RXm+D0bUV0AEC85jSZQPwsZO5mRvHSo7HOH2AbH9IQYFJYgBXuBzXcJUgkIeGI2Kk9c6mq9iRFB0+
	/mQQwW1r0vmalNpuF9+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqnVH-0000000GZCF-1T0n;
	Mon, 03 Aug 2026 07:54:31 +0000
Received: from mail-vs1-xe30.google.com ([2607:f8b0:4864:20::e30])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqnVE-0000000GZBK-3zaN
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 07:54:30 +0000
Received: by mail-vs1-xe30.google.com with SMTP id ada2fe7eead31-738bcf9a573so996888137.2
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 00:54:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785743667; cv=none;
        d=google.com; s=arc-20260327;
        b=W8nJoeLr0caKo3v7zWC9lpH5raYn3IkkJX2KoSlH2WAH0Bf9OfStjWc1/BbGXOKHrs
         28GkeVkALvg1Do/7OeGkEsBYC2hTM59OA4uUc3yM/KOfLK5J4InsQYrXPYr+ROfHx0T0
         W/BHaDvXX2I1h2DYV645z/zOuIl4qRuzKRHc7vPGw63R5c3D1ChMhySPtrZjjZtHawgs
         +nzeOlEKWIALcZRcbrEHNeq0KLPRkC6rfjVCWCpudmryx+BqV9onkyh+173nAyCCmgbx
         V7SyjhaFibcZ1uakOnLxcSTdKOdoBtrErEBateKgoRayJXS/XrbrvhHmQTFUQ/fdFNKn
         QjRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=psfVqHSrgaZTUpwYinIDfYYI61bABe7ffXMHd3MgwJ8=;
        fh=H7iWfDUeJWoqOuKX0NeEOcwClN5zXEkMzTr1lAGzXcA=;
        b=c71sldq6KRfd+0JvXgO2lsxBwt0oM/X0aT+0Q8ckbfxv5HQ7ptw1/MSiRZ+alfQScX
         oohhnNxzRfGfvOGcd495sR1JPur7XmxKbsQKewpZdqOwSEUpsyaDB94V5gTeAFTqlolE
         ifp+E1DZ36yVhhgitZMaWW0meVgBqewILjO76/kAg2lhbpw7Zpqowp6BmVuK2qxsVlHO
         X4hlcX6a8bTyd1TvchsDE4igOeEU9LPr/9ekbqt/XCmMn6JQ6+OBcz4n3K95XXuoPacQ
         RiEWysDcDLopdDsUHYW3hJfK1AAQFMnjCOFwDpUG+mPHG0RSppkaUE6EbICFYiJqhOdF
         Z8SQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785743667; x=1786348467; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=psfVqHSrgaZTUpwYinIDfYYI61bABe7ffXMHd3MgwJ8=;
        b=V6Ha54d0OD4FMw0cGipQFvwq4qwbxFMYgP4SX3/ARUNErrBMRDvY6UmpF0mieYa38c
         jCGwiiLtffwNBOvT2Qw76a/eSAA1QfiVy9erht1rCf1ugiwErWrC6Yz16iWRgoVmbl4E
         gg/PDmwYb9JDdgKXgwgVRvfMQTZ4WDWcv/FEoMaZcsry/KMAhdXKIn9YIM1XYqlji/Kc
         ArKsdeUOi7T8j+QJiYzpd/nVqZc32+Y25L1gnYifpkEJYGV73gE2DJoeb33DumYgZttV
         uCUOpufmV8lrJm/iPKJ1fXY+/UqOMuHTPhE8YyoinhazcFS1oTj4gHWd6eC4t+COMDNt
         cqzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785743667; x=1786348467;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=psfVqHSrgaZTUpwYinIDfYYI61bABe7ffXMHd3MgwJ8=;
        b=dRh/9tBwXdm1ymv3URft5xyBcsQyN/6Va3NeAUv7/+inIQy8US675R+BYHsbRcm2h9
         ZmLSkLX8o4gNd28hkX0+IbrVzoJX7HjuovwOCr4U9MtEQhT3HhaDOdrfOOnFwXOPqrW+
         Z1WZ3VCOLJs+uOtYlT0T6vV+DCZ3rPD4cny8D0ijUBLdxEB+XuxdEmVmqeOB4CL6C4xy
         f0rm+QAP20D6ExhFLH4FjUxZDSGC5sOw3ivsJnTPQfBOa+ZVvbVOLojouZsaMPih0Dom
         efPVPAc4IkjHDoA+8IoS4SbaHIx0MjOysLWjhz23+4EVzXAmSKL/OYvu27kVNn8qKpYC
         j8Fw==
X-Forwarded-Encrypted: i=1; AHgh+RqODmSybI5i073dHhQ2wiMWB4tTgp65a0HG6b3MlipI96sJP5SNNF+4oSXdv4HiRdqR+EwJNiprfzjkA2T1Hw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw2RUuRRdYT7YeGomQehcbaa8TeJQ+Ap930ePwByyIFJJRRFnqn
	yycu5UdmpC+3fjFaCp29VIWP1P9f8z/4WksWycXe1opaObxeMLDQDZUZJ/FxKkjP2FgCGQlSmU3
	sNt/Op1FKRHtEyyN45pioivTieoJg+4Y=
X-Gm-Gg: AR+sD13b4BUK6ceVhZEtjqzv6K4bOCjnm8EZOUV2AEGY3XZEwq7sx3F8wSt7vkeSHgW
	1VOlpc9vOmwaH6eEZIwt1cXRdPdMvrnQ14VNev5gYAGPDvT8S+bOPdEwF3CjcGWcBsM871zAWxQ
	VW5j7rYTVfjC6TdbZ2vxv/ggnFn0HES+1H/Df/ifDOM62TosKSfTJUK6INQGjZ89ZrOft88/qrI
	IRfZjeV2CttiuQcK+dnZhwkLwkrDYCjDysMXZj5V6elTkgj+iNsj9h9lQdTTa4zZboDSAsu+GAA
	9ETxCzyLUXEHzmBFr2f2jMSfuAbhx7l49dYpzY/V9/82gBXsDp2IEArvocJRFeZ+2onJDLgWjbA
	pPwB9s94FYIHSg2kFDbaYpWdLZ4WZG+mZRlmm5wRx/S3Lqqr23fbeKpIagWCd77x6psEyE80tIY
	HXK3wIIK9N2j9Vnkj4K2j5Cd0D3AMwq+UT1RcccRgEpaw5lvA=
X-Received: by 2002:a05:6102:160e:b0:65a:fcea:5a8 with SMTP id
 ada2fe7eead31-75b21860c9dmr6557280137.3.1785743667347; Mon, 03 Aug 2026
 00:54:27 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-8-0a53cd9e21cc@gmail.com> <f2cc3c90-060f-40c1-a55e-e2ed91e65487@kernel.org>
In-Reply-To: <f2cc3c90-060f-40c1-a55e-e2ed91e65487@kernel.org>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 3 Aug 2026 01:54:16 -0600
X-Gm-Features: AUfX_mzypJX8cJAuXN5et4vt4pytYhwgZWhNFqSZnDYLwz1Lp-gZapkTkGPrkCE
Message-ID: <CADvTj4q7HnOYJZE-M070-1npEdne__Ct5D9FeUNVVXa8Bsm7qQ@mail.gmail.com>
Subject: Re: [PATCH 08/21] dt-bindings: mfd: x-powers: add AC200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>, 
	Richard Genoud <richard.genoud@bootlin.com>, Maxime Ripard <mripard@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_005429_009509_C384CD4C 
X-CRM114-Status: GOOD (  26.92  )
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

T24gTW9uLCBBdWcgMywgMjAyNiBhdCAxOjA34oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6
a0BrZXJuZWwub3JnPiB3cm90ZToKPgo+IE9uIDAzLzA4LzIwMjYgMDc6MTQsIEphbWVzIEhpbGxp
YXJkIHdyb3RlOgo+ID4gVGhlIEFDMjAwIGlzIGFuIEkyQy1jb250cm9sbGVkIG1peGVkLXNpZ25h
bCBjb21wYW5pb24gSUMgY29udGFpbmluZwo+ID4gYXVkaW8sIHZpZGVvLCBSVEMgYW5kIEZhc3Qg
RXRoZXJuZXQgUEhZIGZ1bmN0aW9ucy4KPgo+IFRoaXMgZmFpbHMgd2hlbiBhcHBsaWVkLCBiZWNh
dXNlIHlvdSBkaWQgbm90IGV4cGxhaW4gdGhlCj4gZGVwZW5kZW5jaWVzL21lcmdpbmcgb2YgdGhp
cyBwYXRjaHNldC4KPgo+IFRoaXMgaXMgVEhFIE1PU1QgaW1wb3J0YW50IGluZm9ybWF0aW9uIG9m
IGNvdmVyIGxldHRlci4gVGhlIGZpcnN0IHRoaW5nCj4gdG8gZXhwbGFpbi4KCkkgZGlkIG1lbnRp
b24gaW4gdGhlIGNvdmVyIGxldHRlciB0aGF0IHRoZSBwd20gc2VyaWVzIGlzIGEgZGVwZW5kZW5j
eToKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNzAzMTUyMjE1LjE5Mjg1OS0xLXJp
Y2hhcmQuZ2Vub3VkQGJvb3RsaW4uY29tLwoKV2l0aCB0aGUgcHdtIHNlcmllcyBmaXJzdCB0aGlz
IHNob3VsZCBhcHBseSBvbiB0b3Agb2YgbWFzdGVyLiBTaG91bGQKSSBqdXN0IG1lbnRpb24gdGhh
dCBpdCBhcHBsaWVzIG9uIG1hc3RlciBvciBzaG91bGQgSSByZWZlcmVuY2UgYSBzcGVjaWZpYwpj
b21taXQgaGFzaCBvciBzb21ldGhpbmc/Cgo+ID4KPiA+IERlc2NyaWJlIHRoZSBwYXJlbnQgZGV2
aWNlLCBpdHMgaW5wdXQgY2xvY2ssIHJlcXVpcmVkIGZ1bmN0aW9uIHN1cHBsaWVzLAo+ID4gdGhl
IG9wdGlvbmFsIFNJRCBiYW5kZ2FwIGNhbGlicmF0aW9uIGNlbGwgdXNlZCBieSB0aGUgdmVuZG9y
IGluaXRpYWxpemF0aW9uCj4gPiBzZXF1ZW5jZSwgYW5kIGl0cyBvcHRpb25hbCBFdGhlcm5ldCBQ
SFkgY29udHJvbCBjaGlsZC4gRG9jdW1lbnQgdGhlIDI0IGFuZAo+ID4gMjcgTUh6IHJhdGVzIGVu
Y29kZWQgYnkgdGhlIHB1YmxpYyBFUEhZIGNsb2NrIHNlbGVjdG9yLgo+ID4KPgo+IC4uLgo+Cj4g
PiArcmVxdWlyZWQ6Cj4gPiArICAtIGNvbXBhdGlibGUKPiA+ICsgIC0gcmVnCj4gPiArICAtIGNs
b2Nrcwo+ID4gKyAgLSBhYy1sZG9pbi1zdXBwbHkKPiA+ICsgIC0gZXBoeS12Y2Mtc3VwcGx5Cj4g
PiArICAtIHJ0Yy12Y2Mtc3VwcGx5Cj4gPiArICAtIHR2LXZjYy1zdXBwbHkKPiA+ICsKPiA+ICtk
ZXBlbmRlbmNpZXM6Cj4gPiArICBpbnRlcnJ1cHRzOiBbIGludGVycnVwdC1jb250cm9sbGVyIF0K
PiA+ICsgIGludGVycnVwdC1jb250cm9sbGVyOiBbICcjaW50ZXJydXB0LWNlbGxzJywgaW50ZXJy
dXB0cyBdCj4gPiArICAnI2ludGVycnVwdC1jZWxscyc6IFsgaW50ZXJydXB0LWNvbnRyb2xsZXIg
XQo+ID4gKyAgbnZtZW0tY2VsbHM6IFsgbnZtZW0tY2VsbC1uYW1lcyBdCj4gPiArICBudm1lbS1j
ZWxsLW5hbWVzOiBbIG52bWVtLWNlbGxzIF0KPgo+IFdoeSBkbyB5b3UgbmVlZCBhbGwgdGhlc2Ug
ZGVwZW5kZW5jaWVzPyBXaGF0IGFyZSB5b3UgdHJ5aW5nIHRvIGV4cHJlc3M/CgpMb29rcyBsaWtl
IHdlIHByb2JhYmx5IGNhbiBnZXQgcmlkIG9mIGFsbCBleGNlcHQgdGhlc2U6CmludGVycnVwdC1j
b250cm9sbGVyOiBbIGludGVycnVwdHMgXQpudm1lbS1jZWxsczogWyBudm1lbS1jZWxsLW5hbWVz
IF0KCkkgd2FzIGp1c3QgdHJ5aW5nIHRvIGV4cHJlc3MgdGhlIE1GRCBjb250cm9sbGVyIGRlcGVu
ZGVuY2llcy4KCj4gPiArCj4gPiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4gPiArCj4g
PiArZXhhbXBsZXM6Cj4gPiArICAtIHwKPiA+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lu
dGVycnVwdC1jb250cm9sbGVyL2lycS5oPgo+ID4gKwo+ID4gKyAgICBpMmMgewo+ID4gKyAgICAg
ICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gPiArICAgICAgICAjc2l6ZS1jZWxscyA9IDwwPjsK
PiA+ICsKPiA+ICsgICAgICAgIG1peGVkLXNpZ25hbEAxMCB7Cj4KPiAuLi4KPgo+ID4gKy4uLgo+
ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvbWZkL3gtcG93ZXJzLGFjMjAwLmgg
Yi9pbmNsdWRlL2R0LWJpbmRpbmdzL21mZC94LXBvd2VycyxhYzIwMC5oCj4gPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+ID4gaW5kZXggMDAwMDAwMDAwMDAwLi5jYzU5ZTJhYjQ5MTIKPiA+IC0tLSAv
ZGV2L251bGwKPiA+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvbWZkL3gtcG93ZXJzLGFjMjAw
LmgKPiA+IEBAIC0wLDAgKzEsMTMgQEAKPiA+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjog
KEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpICovCj4gPiArLyoKPiA+ICsgKiBJbnRlcnJ1
cHQgbnVtYmVycyBvZiB0aGUgWC1Qb3dlcnMgQUMyMDAgaW50ZXJydXB0IGNvbnRyb2xsZXIuCj4g
PiArICovCj4gPiArCj4gPiArI2lmbmRlZiBfRFRfQklORElOR1NfTUZEX1hfUE9XRVJTX0FDMjAw
X0gKPiA+ICsjZGVmaW5lIF9EVF9CSU5ESU5HU19NRkRfWF9QT1dFUlNfQUMyMDBfSAo+ID4gKwo+
ID4gKyNkZWZpbmUgQUMyMDBfSVJRX1RWRSAgICAgICAgICAgICAgICAgICAgICAgIDAKPiA+ICsj
ZGVmaW5lIEFDMjAwX0lSUV9FUEhZICAgICAgICAgICAgICAgICAgICAgICAxCj4gPiArI2RlZmlu
ZSBBQzIwMF9JUlFfUlRDICAgICAgICAgICAgICAgICAgICAgICAgMgo+Cj4gSGFyZHdhcmUgY29u
c3RhbnRzIGFyZSBub3QgcmVhbGx5IGJpbmRpbmdzLCBldmVuIHRob3VnaCB5b3UgdXNlIHRoZW0g
aW4KPiB0aGUgZHJpdmVyLgoKU2hvdWxkIEkgZG8gc29tZXRoaW5nIGRpZmZlcmVudCBmb3IgdGhp
cz8KCj4KPiA+ICsKPiA+ICsjZW5kaWYgLyogX0RUX0JJTkRJTkdTX01GRF9YX1BPV0VSU19BQzIw
MF9IICovCj4gPgo+Cj4KPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
