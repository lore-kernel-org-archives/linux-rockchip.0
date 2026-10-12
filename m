Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9B8ACA9ED0
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 19:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zrs3yWvphnddJldCu7kQvfVbjxWj+n4coc1nrfW4Ce0=; b=GhoxykErCjz6xD
	d2QS27WaAAhwhvo0fFSot8TcskbeWDDd8O03dNIQM08cW+F9nLIVqccF5VdM8RTILx/4TtYNdtNgI
	R+apJlpc+AKR+6MeMkCJxntrIeMaQro7dZcb5pHzkmS16kfu0mNz6HXE2NEeOg55tAzMsEH/PXl1Y
	tAk2itlQJ+laf6Q6GhuvlWihE8b4zCQP+ewAAxhr4GGsgTvtxdl08xJLO90680MmLXdSgF2SE0j1j
	cPZkRjNVAvWMoNmXOQ36Tyhvnk14muMJx5bIXwSbsqoko/vZ0/l7ejlQhenvB6KLi/0NS7+U4ZtTp
	w7OS4Z3z+OYFGtpaNOGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGLe2-0000000BNmx-38Ny;
	Mon, 12 Oct 2026 19:25:10 +0000
Received: from mail-ej2-x06.google.com ([2a00:1450:4864:34::6])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGLe1-0000000BNmA-0Qu2
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Oct 2026 19:25:10 +0000
Received: by mail-ej2-x06.google.com with SMTP id a640c23a62f3a-c3305a41e91so98486366b.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Oct 2026 12:25:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791833107; cv=none;
        d=google.com; s=arc-20260327;
        b=qFSSN3grWwmmOvQamGwl9nXYFjk+487PeSlEMtlaMOgLxtLa1BMbK0ymYw7g2qnA+z
         TyYg+aeyjqMblBAcTLrSgQ2HQT0Psn+GGcdCGZ2BhMedeuwZIdA3BBlIoUBxjoEGEXtb
         mqyNJz+ocsT0/eH+s+3WWr/4W5kqu7sDrvnJR1oemhsRFFX90270ysVp77vULynaZqqk
         I75otnfGKxz453CN+75Ju5AorLAB71ZyJB/DO5djA6GSa20TammCB2VEIpq4X1wUO/Y6
         YtS5+MvEFTm7aI8Mtar8PRYRTogr+jlsmdzCbb8wtU6zkc1UUMJJJE8fTsBtHS6GSmHK
         ksxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=L70Ii9x5C+z302d/Psn2CqblJNvQ2CMmeLwkxN/XibM=;
        fh=4VCk2gx8WpNhO/6eFMx2/p78ofk5bX8/yIbGhnMJurs=;
        b=jS/2a59belYlIea0fESKBLGnjeT2PnQoav19084N2UENgSJsjd08JdCdRgsshdUd7l
         rMB91cBnLZO+d9m2Rh78Dpfd99ffgfRZq2Tq0geiGhkYqOvdmVuWFBalAfF/IKXatc0o
         Uzy0yGPC0FVrVU+UCTdbmN8AuU9d9eCgnDUw2qF30Mh8V8Q8XRedvlSQ1LiYV49pXiO1
         TbcRR78n0ff8sGxzxeMlYGnr9wE9az/jGuqIAd2UDtpl1K8Vx6LtW6cOAUwNyaC2VcnR
         n0+GlvwQFzK2x+dOGnCuIQUK3BZuSKHSW6N2gNqQhfvztrVrC8yX6C1uVUPB5xtt/LhJ
         VIVg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791833107; x=1792437907; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=L70Ii9x5C+z302d/Psn2CqblJNvQ2CMmeLwkxN/XibM=;
        b=hwwYiCiGjJLPspNWcWAgyY1ipMQcSlLPBRrdwXvcu6jkZX0mbiTGc8Ag0SqU95ADvb
         2RNRcM+oR5+Z2hEQXA/805vNF7R0rO3FLGXKOWn62+d587BAOFUTGrcc53yvLGr3pCCo
         4Q8LqloJh77ILbdOv8bg1f1Ubw1vNKdyEf0JqceU+9OqVLX18scRiVov9ZQzZZMU7Qf+
         OW5O9uubyygYSdERFoPiGfkaesohpPw7yEHSTeEwMv4O8lupT3IAVRo5OIvmq20qQWZL
         0bCXWlHF+MZdY23tvokSKKTIS+sJN62m7VcDHXhk4H63vC6bxGMFTOiQZxQ/oAjlT+cF
         QFMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791833107; x=1792437907;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L70Ii9x5C+z302d/Psn2CqblJNvQ2CMmeLwkxN/XibM=;
        b=kOGIliyD+xZpzEuA3D/m7Us63Hgv7Uohrir0f6s8pASqBCat02E6ujrtMTljtkyQum
         n/0oHIExsDa1gJI8HMzOmm8/7pk+D65PBbW0vMXK+JxccLyjFpeXFHrfbT13S6tUJkYz
         68zzg2KYwyYDO6W1lTgG6GpFgL/sOVe0MtG1z/AWl7k7f+cxLGquFaPVmohcHw14MZQI
         v/7iAldiD8Hk93iBcRTtJXRCyGG7t/uHVBCmIiJPrCDxTDhMeFR7+6RbbODN5ENXT5pw
         T5OfFZrU2oLBDxTyYms7lRWo54YjMuth/RYyMXom/ejO94mW1/75ApnhTbYwVSNcaAgI
         pKFw==
X-Forwarded-Encrypted: i=1; AKwUvBzwQjhblnRMi/LL7B40mZYvfeZlo0MAq8kGScc90WLZvslAkTUSGp/aw7p+y7W264VMSM0ULFStwqRiFyDHmg==@lists.infradead.org
X-Gm-Message-State: AFq9FYIvrphS2FB6svLPUCdrQsUKr4LVJJwloW2kA/IEzIY4wKgwhsyD
	V7jVJilYCoh4AF/c+Dyz1Ew5oaOpER5n7ZDZf4jQsBoE5jTd4qL/RIwd9FrapiiNXcjbNrA7zaY
	z3kZOqxfi3P5I1qlaPLjXXi7PGcK/iJY=
X-Gm-Gg: AYBFou0erHoIGzo+/6qlKyQaZSVu78Ep+VuLZL339bLoTxHnTzuDBrCvs2EJyowEAdy
	qnoj4BBgOqwpAyd/iAjcSl7i80HSUBt+2zLFcZC0V7N9MTqyPjhQr+oz+BTtfh7hoYaSUeYJKzd
	e3WVTNFDmiQXxy55mmxx7WQrcUbU/pI9ArqQMvmR0ktKxDPhK/BHCMlPxLYIyfdg8T3pAStGhG2
	90sWl83DSFByljC8u0cErjP8ZByRXbN1s/9iyBLs8Ll3TvnTgioS7djlWTcZj/0wfhS+LmTk0xF
	/II90tF6DaVyvdFRSgW61nR+s/EjCar/6t9gmUzwPzvHdx9omOEcDlPYNg==
X-Received: by 2002:a17:906:7948:b0:c29:60b7:3f14 with SMTP id
 a640c23a62f3a-c31aa02b449mr966426866b.46.1791833106527; Mon, 12 Oct 2026
 12:25:06 -0700 (PDT)
MIME-Version: 1.0
References: <20261008175225.3375274-2-coiaprant@gmail.com> <179183168522.434549.14619345397319265452@kernel.org>
In-Reply-To: <179183168522.434549.14619345397319265452@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 13 Oct 2026 03:24:59 +0800
X-Gm-Features: AclHuK_IK-J3xdjBLHul-e3CTuwWO6mo07_5PjrwMDoCpvY_M9ekvq5ssPY4yMg
Message-ID: <CALj3r0jTq+wztO=-TMDkNTM7OFkB4UHMpugTnQ+YPiuWYD9MFA@mail.gmail.com>
Subject: Re: [PATCH net-next v11 1/6] net: pcs: xpcs: add ANRESTART support
 for SGMII link recovery
To: netdev-bot+sashiko@kernel.org
Cc: kuba@kernel.org, netdev@vger.kernel.org, andrew+netdev@lunn.ch, 
	davem@davemloft.net, edumazet@kernel.org, pabeni@redhat.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, 
	maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com, 
	alexandre.torgue@foss.st.com, hkallweit1@gmail.com, linux@armlinux.org.uk, 
	david.wu@rock-chips.com, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_122509_194660_002302AC 
X-CRM114-Status: GOOD (  39.06  )
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

VGhhbmtzLiBCb3RoIHBvaW50cyB3ZXJlIHJhaXNlZCBpbiBlYXJsaWVyIHZlcnNpb25zIGFuZCBh
cmUgaW50ZW50aW9uYWwKZm9yIHRoaXMgaGFyZHdhcmUuCgo8bmV0ZGV2LWJvdCtzYXNoaWtvQGtl
cm5lbC5vcmc+IOS6jjIwMjblubQxMOaciDEz5pel5ZGo5LqMIDAzOjAx5YaZ6YGT77yaCj4KPiBU
aGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNoaWtvIEFJIHJldmlldyBmb3VuZCAy
IHBvdGVudGlhbAo+IGlzc3VlKHMpIHRvIGNvbnNpZGVyLgo+Cj4gQ3JpdGljYWw6IDAgwrcgSGln
aDogMCDCtyBNZWRpdW06IDEgwrcgTG93OiAxCj4KPiBJZiB5b3UgYmVsaWV2ZSBub25lIG9mIHRo
ZSBpc3N1ZXMgYXJlIGxlZ2l0aW1hdGUsIHBsZWFzZSByZXBseSB0byBlYWNoCj4gaXNzdWUgb2Yg
TWVkaXVtIHNldmVyaXR5IG9yIGhpZ2hlciBhbmQgZXhwbGFpbiB3aHkgdGhlIEFJIGlzIHdyb25n
Lgo+IElmIGFueSBvZiB0aGVtIGFyZSBsZWdpdGltYXRlIGFuZCB5b3UgcGxhbiB0byByZXNwaW4s
IHBsZWFzZSBsZXQgcGF0Y2h3b3JrCj4ga25vdyBieSBpbmNsdWRpbmcgInB3LWJvdDogY3IiIGFz
IGEgc2VwYXJhdGUgbGluZSBhdCB0aGUgZW5kIG9mIHlvdXIgcmVwbHkKPiAob25lIHN1Y2ggcmVw
bHkgcGVyIHNlcmllcyBpcyBlbm91Z2gpLgo+Cj4gLSBbTWVkaXVtXSB4cGNzX2dldF9zdGF0ZV9j
Mzdfc2dtaWkoKSBub3cgZG9lcyBhIG5vbi1hdG9taWMgcmVhZCAtPiBhY3QKPiAgIHNlcXVlbmNl
Lgo+IC0gW0xvd10gQ29uY2VybjogaW4geHBjc19nZXRfc3RhdGVfYzM3X3NnbWlpKCkgdGhlIEFO
Q01QTFQgbGF0Y2ggaXMKPiAgIGNsZWFyZWQgKHBjcy14cGNzLmM6MTExMikgYmVmb3JlIEJNQ1Jf
QU5SRVNUQVJUIGlzIGlzc3VlZCAocGNzLeKApgo+Cj4gLS0KPgo+IG5ldDogcGNzOiB4cGNzOiBh
ZGQgQU5SRVNUQVJUIHN1cHBvcnQgZm9yIFNHTUlJIGxpbmsgcmVjb3ZlcnkKPgo+IFRoaXMgcGF0
Y2ggc2V0cyBCTUNSX0FOUkVTVEFSVCBhbG9uZ3NpZGUgQk1DUl9BTkVOQUJMRSB3aGVuIGNvbmZp
Z3VyaW5nCj4gQzM3IFNHTUlJIEFOLiBJdCBhbHNvIGNsZWFycyBEV19WUl9NSUlfQU5fSU5UUl9T
VFMgYmVmb3JlIEFOIHN0YXJ0cy4gSW4KPiB4cGNzX2dldF9zdGF0ZV9jMzdfc2dtaWkoKSwgd2hl
biBBTiBjb21wbGV0aW9uIGlzIHNlZW4gd2l0aCB0aGUgbGluayBkb3duLAo+IGl0IGNsZWFycyB0
aGUgQU5DTVBMVCBsYXRjaCBhbmQgcmVzdGFydHMgQU4sIHNvIHRoYXQgcGFydHMgc3VjaCBhcyBS
SzM1NjgKPiBjYW4gcmVjb3ZlciB0aGUgbGluay4KPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bmV0L3Bjcy9wY3MteHBjcy5jIGIvZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLmMKPiA+IGluZGV4
IGI0MTViOTNkNzdjMTUuLjY0NjZlMGZmMmE5OGIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL25l
dC9wY3MvcGNzLXhwY3MuYwo+ID4gKysrIGIvZHJpdmVycy9uZXQvcGNzL3Bjcy14cGNzLmMKPgo+
IFsgLi4uIF0KPgo+ID4gQEAgLTEwOTMsOSArMTEwNywxOCBAQCBzdGF0aWMgaW50IHhwY3NfZ2V0
X3N0YXRlX2MzN19zZ21paShzdHJ1Y3QgZHdfeHBjcyAqeHBjcywKPiA+ICAgICAgICAgICAgICAg
cmV0dXJuIDA7Cj4gPiAgICAgICB9Cj4gPgo+ID4gLSAgICAgLyogQ2xlYXIgQU4gY29tcGxldGUg
c3RhdHVzIG9yIGludGVycnVwdCAqLwo+ID4gLSAgICAgaWYgKHN0YXRlLT5hbl9jb21wbGV0ZSkK
PiA+IC0gICAgICAgICAgICAgeHBjc193cml0ZSh4cGNzLCBNRElPX01NRF9WRU5EMiwgRFdfVlJf
TUlJX0FOX0lOVFJfU1RTLCAwKTsKPiA+ICsgICAgIGlmIChzdGF0ZS0+YW5fY29tcGxldGUpIHsK
PiA+ICsgICAgICAgICAgICAgLyogQ2xlYXIgQU4gY29tcGxldGUgc3RhdHVzIG9yIGludGVycnVw
dCAqLwo+ID4gKyAgICAgICAgICAgICByZXQgPSB4cGNzX3dyaXRlKHhwY3MsIE1ESU9fTU1EX1ZF
TkQyLCBEV19WUl9NSUlfQU5fSU5UUl9TVFMsIDApOwo+ID4gKyAgICAgICAgICAgICBpZiAocmV0
IDwgMCkKPiA+ICsgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Owo+ID4gKwo+ID4gKyAg
ICAgICAgICAgICAvKiBJbml0aWF0ZSB0aGUgbmV4dCByb3VuZCBvZiBBTiAqLwo+ID4gKyAgICAg
ICAgICAgICByZXQgPSB4cGNzX21vZGlmeSh4cGNzLCBNRElPX01NRF9WRU5EMiwgTUlJX0JNQ1Is
IEJNQ1JfQU5SRVNUQVJULAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBCTUNS
X0FOUkVTVEFSVCk7Cj4gPiArICAgICAgICAgICAgIGlmIChyZXQgPCAwKQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4KPiBbU2V2ZXJpdHk6IE1lZGl1bV0KPiBDYW4gdHdv
IGNhbGxlcnMgb2YgLnBjc19nZXRfc3RhdGUoKSByYWNlIGhlcmUgYW5kIHJlc3RhcnQgYSBuZWdv
dGlhdGlvbgo+IHRoYXQgaGFzIGp1c3QgZmluaXNoZWQgd2l0aCB0aGUgbGluayB1cD8KPgo+IFRo
ZSByZWFkIG9mIERXX1ZSX01JSV9BTl9JTlRSX1NUUyBhdCB0aGUgdG9wIG9mIHRoZSBmdW5jdGlv
biBhbmQgdGhlCj4gY2xlYXIgYW5kIHJlc3RhcnQgaGVyZSBhcmUgbm90IGF0b21pYy4gcGh5bGlu
ayBjYWxscyAucGNzX2dldF9zdGF0ZSgpCj4gZnJvbSBjb250ZXh0cyB0aGF0IGRvIG5vdCBzaGFy
ZSBhIGxvY2s6Cj4KPiAgIHBoeWxpbmtfcmVzb2x2ZSgpICAgICAgICAgICAgICAgICAgIGhvbGRz
IHBsLT5zdGF0ZV9tdXRleCwgbm90IFJUTkwKPiAgIHBoeWxpbmtfZXRodG9vbF9rc2V0dGluZ3Nf
Z2V0KCkgICAgIGhvbGRzIFJUTkwgb25seSAoTUxPX0FOX0lOQkFORCwKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIG5vIHBoeWRldikKPiAgIHBoeWxpbmtfbWlpX2lvY3Rs
KCktPnBoeWxpbmtfbWlpX3JlYWQoKSAgIGhvbGRzIFJUTkwgb25seQo+Cj4gc3RydWN0IGR3X3hw
Y3MgaGFzIG5vIGxvY2sgb2YgaXRzIG93biwgYW5kIHRoZSBNRElPIGJ1cyBsb2NrIG9ubHkgY292
ZXJzCj4gZWFjaCBzaW5nbGUgYWNjZXNzLgo+Cj4gQSBwb3NzaWJsZSBpbnRlcmxlYXZpbmc6Cj4K
PiBDUFUxIChldGh0b29sIGdldCkgICAgICAgICAgICAgICAgICBDUFUwIChwaHlsaW5rX3Jlc29s
dmUpCj4geHBjc19yZWFkKElOVFJfU1RTKQo+ICAgbGluaz0wLCBBTkNNUExUPTEKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB4cGNzX3JlYWQoSU5UUl9TVFMpCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsaW5rPTAsIEFOQ01QTFQ9MQo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHhwY3Nfd3JpdGUoSU5UUl9TVFMsIDApCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgeHBjc19tb2RpZnkoQk1DUiwgQU5S
RVNUQVJUKQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC4uLiBBTiBjb21w
bGV0ZXMsIGxpbmsgdXAgLi4uCj4geHBjc193cml0ZShJTlRSX1NUUywgMCkKPiB4cGNzX21vZGlm
eShCTUNSLCBBTlJFU1RBUlQpCj4KPiBDUFUxIGFjdHMgb24gaXRzIHN0YWxlIHNhbXBsZS4gSXQg
Y2xlYXJzIHRoZSBuZXdseSBsYXRjaGVkIEFOQ01QTFQgYW5kCj4gcmVzdGFydHMgQU4gb24gYSBs
aW5rIHRoYXQgaGFzIGp1c3QgY29tZSB1cC4KPgo+IEJlZm9yZSB0aGlzIHBhdGNoLCBhIGNvbmN1
cnJlbnQgY2FsbGVyIGNvdWxkIG9ubHkgY2xlYXIgdGhlIGxhdGNoLiBUaGUKPiBleHRyYSByZXN0
YXJ0IGlzIG5ldy4gVW5wcml2aWxlZ2VkIHVzZXJzIGNhbiBpc3N1ZSBldGh0b29sIGdldCBsaW5r
Cj4gc2V0dGluZ3MuCj4KPiBUaGUgY29tbWl0IG1lc3NhZ2UncyByZWFzb24gZm9yIGNsZWFyaW5n
IHRoZSBsYXRjaCBiZWZvcmUgdGhlIHJlc3RhcnQKPiBhc3N1bWVzIHRoYXQgZ2V0X3N0YXRlIGNh
bGxzIGFyZSBzZXJpYWxpemVkLiBEb2VzIHBoeWxpbmsgYWN0dWFsbHkKPiBndWFyYW50ZWUgdGhh
dCBmb3IgdGhlc2UgY2FsbGVycz8KClRoZSBDMzcgU0dNSUkgcGF0aCBuZWVkcyB0byByZXN0YXJ0
IEFOIGZyb20geHBjc19nZXRfc3RhdGUoKSBiZWNhdXNlCnBoeWxpbmsgZG9lcyBub3QgY2FsbCAu
cGNzX2FuX3Jlc3RhcnQgZm9yIFNHTUlJLiBPbiBSSzM1NjggdGhlIFBDUyBkb2VzCm5vdCByZXN0
YXJ0IEFOIGJ5IGl0c2VsZiwgc28gYSBsaW5rIHRoYXQgZ29lcyBkb3duIHdvdWxkIHN0YXkgZG93
bgp3aXRob3V0IHRoaXMuIFRoZSBzYW1lIHBhdHRlcm4gaXMgYWxyZWFkeSB1c2VkIGJ5IHhwY3Nf
Z2V0X3N0YXRlX2M3MygpLAp3aGljaCBjYWxscyB4cGNzX3NvZnRfcmVzZXQoKSBhbmQgeHBjc19k
b19jb25maWcoKSBmcm9tIHRoZSBzYW1lCmNhbGxiYWNrLgoKT24gdGhlIG5vbi1hdG9taWMgcmVh
ZC1hY3Qgc2VxdWVuY2U6IHRoZSBjb25jdXJyZW50IGNhbGxlciBjYW4gb25seQpjb21lIGZyb20g
ZXRodG9vbCBvciBtaWlfcmVhZCwgd2hpY2ggZG8gbm90IGhvbGQgcGwtPnN0YXRlX211dGV4LiBT
bwp5ZXMsIHRoZSBzZXF1ZW5jZSBpcyBub3Qgc3RyaWN0bHkgc2VyaWFsaXplZCBhZ2FpbnN0IHRo
ZSBub3JtYWwgcG9sbApwYXRoLgoKVGhlIGNvbnNlcXVlbmNlIGlzIGEgcG9zc2libGUgZXh0cmEg
QU4gcmVzdGFydCBvbiBhIGxpbmsgdGhhdCBqdXN0CmNhbWUgdXAuIE9uIHRoaXMgaGFyZHdhcmUg
YW4gQU4gcmVzdGFydCBpcyBpZGVtcG90ZW50IGFuZCBzYWZlOiBpZiB0aGUKbGluayBpcyBhbHJl
YWR5IHVwLCB0aGUgUENTIHJlLW5lZ290aWF0ZXMgYW5kIGNvbWVzIGJhY2sgdXAuIFRoZXJlIGlz
Cm5vIHN0YXRlIGNvcnJ1cHRpb24sIG5vIHJlZ2lzdGVyIGxlZnQgaW4gYSBiYWQgc3RhdGUsIGFu
ZCBubyB3YXkgZm9yCnRoZSBjb25jdXJyZW50IGNhbGxlciB0byBvYnNlcnZlIGEgdG9ybiB2YWx1
ZSwgc2luY2UgZWFjaCBNRElPIGFjY2VzcwppcyBpbmRpdmlkdWFsbHkgbG9ja2VkLgoKQmVmb3Jl
IHRoaXMgcGF0Y2ggYSBjb25jdXJyZW50IGNhbGxlciBjb3VsZCBjbGVhciB0aGUgbGF0Y2g7IHRo
ZSBleHRyYQpyZXN0YXJ0IGlzIG5ldywgYnV0IGl0cyBvbmx5IGVmZmVjdCBpcyB0byBzaG9ydGVu
IHRoZSB3aW5kb3cgaW4gd2hpY2gKYSBzdGFsZSBzYW1wbGUgY2FuIGJlIGFjdGVkIHVwb24uCgo+
IFtTZXZlcml0eTogTG93XQo+IFdoYXQgcmV0cmllcyB0aGUgcmVzdGFydCBpZiB0aGUgeHBjc193
cml0ZSgpIG9mIERXX1ZSX01JSV9BTl9JTlRSX1NUUwo+IHN1Y2NlZWRzIGFuZCB0aGVuIHRoaXMg
eHBjc19tb2RpZnkoKSBvZiBNSUlfQk1DUiBmYWlscz8KPgo+IFRoZSBsYXRjaGVkIEFOQ01QTFQg
dGhhdCB0cmlnZ2VycyB0aGlzIHBhdGggaGFzIGFscmVhZHkgYmVlbiBjbGVhcmVkLiBObwo+IHJl
c3RhcnQgaXMgcGVuZGluZywgYW5kIHhwY3NfZ2V0X3N0YXRlKCkgb25seSBsb2dzIHRoZSBlcnJv
cjoKPgo+IHBoeWxpbmtfcmVzb2x2ZSgpCj4gICB4cGNzX2dldF9zdGF0ZSgpCj4gICAgIHhwY3Nf
Z2V0X3N0YXRlX2MzN19zZ21paSgpCj4gICAgICAgeHBjc193cml0ZShEV19WUl9NSUlfQU5fSU5U
Ul9TVFMsIDApICAgIHN1Y2NlZWRzCj4gICAgICAgeHBjc19tb2RpZnkoTUlJX0JNQ1IsIEJNQ1Jf
QU5SRVNUQVJUKSAgIGZhaWxzCj4gICAgIGRldl9lcnIoLi4uLCAieHBjc19nZXRfc3RhdGVfYzM3
X3NnbWlpIiwgLi4uKQo+Cj4gT24gcGFydHMgdGhhdCBkbyBub3QgcmVzdGFydCBBTiBieSB0aGVt
c2VsdmVzLCB0aGUgbGluayB3b3VsZCB0aGVuIHN0YXkKPiBkb3duIHVudGlsIHRoZSBpbnRlcmZh
Y2UgaXMgcmVjb25maWd1cmVkLgo+Cj4gVGhlIGNvbW1pdCBtZXNzYWdlIGNvdmVycyB0aGlzIGNh
c2U6Cj4KPiAgICJJZiBhbiBNRElPIGFjY2VzcyBmYWlscyBhdCB0aGlzIHBvaW50LCBpdCBpbmRp
Y2F0ZXMgYW4gdW5yZWNvdmVyYWJsZQo+ICAgaGFyZHdhcmUgY29uZGl0aW9uIHVudGlsIHJlc2V0
LiIKPgo+IE9uIFJLMzU2OCwgdGhlIE1NSU8tYmFzZWQgTURJTyBiYWNrIGVuZCBhZGRlZCBsYXRl
ciBpbiB0aGUgc2VyaWVzIHNlZW1zCj4gdG8gZmFpbCBvbmx5IHRocm91Z2ggcG1fcnVudGltZV9y
ZXN1bWVfYW5kX2dldCgpLiBUaGF0IGZhaWx1cmUgaXMgbm90Cj4gdHJhbnNpZW50LiBPbiBvdGhl
ciBYUENTIHBsYXRmb3JtcyB0aGUgZGF0YWJvb2sgc2F5cyBBTiByZXN0YXJ0cyBvbiBpdHMKPiBv
d24uIFNvIHRoZSBkb2N1bWVudGVkIGJlaGF2aW91ciBtYXkgYmUgZmluZSBhcyBpdCBpcy4KPgo+
ID4gKyAgICAgfQo+ID4KPiA+ICAgICAgIHJldHVybiAwOwo+ID4gIH0KClRoZSBsYXRjaCBvcmRl
cmluZyBpcyBkZWxpYmVyYXRlOiBjbGVhcmluZyBpdCBhZnRlciB0aGUgcmVzdGFydCB3b3VsZApk
aXNjYXJkIGEgZnJlc2hseSBsYXRjaGVkIEFOQ01QTFQgZnJvbSB0aGUgbmV3IG5lZ290aWF0aW9u
LiBBbiBNRElPCmZhaWx1cmUgYXQgdGhhdCBwb2ludCBtZWFucyB0aGUgdHJhbnNwb3J0IGlzIGdv
bmUsIHNvIHRoZXJlIGlzIG5vdGhpbmcKdG8gcmV0cnkuCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
