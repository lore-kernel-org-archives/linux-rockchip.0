Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3177EC88E75
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Sep 2026 10:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MjCyiLfhJ5dXUfIknYbx80wfvMpYv3P8wSVqftHD4CA=; b=k7isoOOxPvSpOk
	NSHt5NkBGEiJjsBTwBX2coCzdCHyxxcevfxuOsf8SS92V4OFrahKLX20i3RDeFUr4my547wTL5TOZ
	InQWZSwipMfj231iIxi879+doHJIroRH9U7esX/CeO4UOlddc+4AGSb/AjqUWRvDlec71hT/oz8hj
	k7FWfsjZ0CTurMpl7/RDOjyRc1EikHmW/EoLQFVXn9+O130bWjIA+fOCMJpud+lpYH3Uv9RHayvAg
	/ZJuyZWk7nq4rlJqecIaZVLKHmBxjhmjd8/B3GrYmNOrkS0f+i+li69E7c8BhjJPvtouArllHaX4Y
	KEUB3Nkz8kEidVGQ3alA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QMp-00000005uXM-2veW;
	Tue, 15 Sep 2026 10:26:23 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6QMo-00000005uWv-3bZl
	for linux-rockchip@bombadil.infradead.org;
	Tue, 15 Sep 2026 10:26:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=PDmTn3anCnjZEAou9hrMuvIHzai6E6SOKUBtirHS8WY=; b=UMPtKRt7Sa0PeQwt+2GVA7c9qE
	+jUgZB6loga1CCjDCBH6uRibqbLvJ6yfkQdk0KAPOR/Oi4feBrfgfzZ9N8ztaC0s6P1pttdsyxmdy
	N0wb6I9RXImwmG5WJ/gIrDH1oi/Jh1CAaKICqFE47c01UipsxfYrtqMDzSGbveT19bRsg/cLi0uU9
	OsTg96hjpXAepf3W/fgBA5UaOG50zikDtGIaNpsA+GDg/jtvgj4NKW8/fZGJJk42MZlJWYe1wBMP0
	PzhM+5hoAG5uQAh4DkxwIahqoZyd46k7E4sr7N4EDoFxGBmKAOplAbi/HAqZYWjLtiB5Ocv8qm284
	PIs7mQMA==;
Received: from mail-ed2-x0a.google.com ([2a00:1450:4864:33::a])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6QMl-00000006YqA-2Mt6
	for linux-rockchip@lists.infradead.org;
	Tue, 15 Sep 2026 10:26:21 +0000
Received: by mail-ed2-x0a.google.com with SMTP id 4fb4d7f45d1cf-6a14f2e937cso2496298a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 15 Sep 2026 03:26:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789467977; cv=none;
        d=google.com; s=arc-20260327;
        b=Gajp9eIYnapXr8KeSx/He7mZDJiivSSb/HdBUl9ivbI+v/t3/NbM+VEMz7Gk5tBSVK
         RMiEfGKdDAhnsderEnW4z75J9x77OvatrG5ZgvTRyV6i1yTs6ajwvsL/sitfPIWZAALw
         2Att1tpADmkRUMlKT3ZuY9RlgsygP7y6Ag+EzYtEV1gPfrIhkDy5TCxS99ndRTEZ2RYH
         PA6F9W2acGflchc7AwOqxnmnkfDK00KTEmUG66DRhV2yEEU72r9E5FXvH5fCwLA5+eLh
         dtKxvOy0z1B/udLSq4uOYRK2b7MQhvOx6ICXT503xOvFMFSCnKGerzts8u0oNZ5kj0W/
         v1RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PDmTn3anCnjZEAou9hrMuvIHzai6E6SOKUBtirHS8WY=;
        fh=FtCDYWRW4lrtlFSF/NjfPMWqIQT6yXr6xlCY+tvXJaY=;
        b=JCb56T2HX0+tq6p2sixBzkGULml4zLBemFPBfIUEJAtiAZjiLNCHeN+nmTDsJ30Zh/
         GQEx9oPz1y9ox87f2WqBITXv6A5OOImUeY4Ayhx8R98SGqQJgxkWEBVdt3OQ5nb1VEqr
         SvP82YqyKR0PyYNnJJpTwfkdyhOQ74dHcObxbp/waOt75XuOQt8QweKW5jLPtKcisSXR
         k3MBh33S7NpxcqbBonoCdUtA8YpoJMquq2XiOYKFgRDqjcr8ztl8f7vH7rtGhFFvUQea
         AEkCht73OFP3yDvtiM/siPWqMvUHt6xmstPe+XdMkamrvlENsYf+p5jGSCzea6IzjAki
         qIWg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789467977; x=1790072777; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=PDmTn3anCnjZEAou9hrMuvIHzai6E6SOKUBtirHS8WY=;
        b=EIAVhLgMrdW6qsTb395//4+3yPeCybPnJC1sDOJtxJYUqqd67kn9TzLPjvk9VXW5SY
         iLYlQ6lvdIuOB42iwsSUzZtdAYLx4bkJOAQGfk1+V3MmQqcopeNK0E9bTX31pt0P3IzW
         XAxdortJyb2qYDgq22h4ZBFPLT1vhi+Unv2nO6CKOt+2t72QtO6ku+VLsyJTR0KFv7NO
         vfpo7GQnb54ryo1lg1E7l7sIKhpmOyzEYMaQM1t0PmwypsUJAm+novbEx9dIVeBhqg05
         FxjKGKK0VYbGxtii1IM6s1lHExBDi4rMrSuyLm8qN6zkbHP1AnlwyztbDlaB94snsWc5
         htaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789467977; x=1790072777;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=PDmTn3anCnjZEAou9hrMuvIHzai6E6SOKUBtirHS8WY=;
        b=KLZG37W1OMMdMRjWU/b4dgUvOPx9sk8YkqR6K9G9GLc7FxxkFSc0BrveR8DLwNhF6d
         w7XfqEXanvK2d7pW4Tc6Y+0vMAa6Ipmp2v0SSGO6o8Mr0eoGERDy1ASrmlEA7rndvi3f
         dtFH9phHeTlIxRbUL954KBXzuu8ube5xwXKae7bvhmfND9l7jSaAVVFW4jyX9+/efZ3N
         JXDt535QpePmP5c7ZOZeE2Uhz4QBcCKm5zebCJZB1Esx4xdZv80Bc8/4Bz6dpXCoJzNU
         PDHI1+lUsG75aEJLGYeFKXV9i2KHWECCAkX2WMcO6mvPB6gd3SQgKaOORNaBcNsxIV44
         8c5Q==
X-Forwarded-Encrypted: i=1; AKwUvBz5EGrAqpXEuq7FpnfMHik/j5tE92BadAyhLvg7sCuT1kd4oHVKrgfDudcfhsud4SB4MdZ7/pxoelheV3GRiw==@lists.infradead.org
X-Gm-Message-State: AFuF++nGnbIrGinfcLTlEgiMXhLQDvY06+0FS5QI3DjY6omlTzD2jrat
	0ELIi7rVrVP33/B/1PFYRV/btLH3LdAl1wfsFh7kC7gYyn4Ni2OxDwLXiplNT371Hwp1yJ7jbQV
	1Sr+oimyExqEvaG0ivb5+8ukPr44bcQA=
X-Gm-Gg: AYBFou2CmXxG4x6sBwjwy2Lv+9z586P4g1IZlhK0jHlYfzyUWlrjvXlJ/tx3zoowJRl
	lLUjdqbKR1YsZIJCLdz+iNB8EFtJRUb603WAV0wIiAUqY8lfLcaRuDQV33hia3x9/byhnu4Rdq5
	qHzrlSnGVFESV4ZeAmJtH88PLcRaUlerlqCLBwiUQk8A64V+2BBNSStfSeMa/+BvI5a0jVjs7dV
	8YduSOeZg9uvmQ4NTFVbvstkZ3O6/ZP+nOPYG1L9M0x5rAbQLaB9UAB/58AsCPV4gZqW95DyU94
	pFWQoduQoZ+nEtkMjM3+etpqkh8V5C9DYLwvfxVPXeAjmUFqujmB6Cvw4w==
X-Received: by 2002:a17:906:6a01:b0:c26:2205:3df8 with SMTP id
 a640c23a62f3a-c29d7717424mr36060866b.9.1789467977119; Tue, 15 Sep 2026
 03:26:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260913185849.907479-4-coiaprant@gmail.com> <178941747926.22033.15174869537556409251@kernel.org>
In-Reply-To: <178941747926.22033.15174869537556409251@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 15 Sep 2026 18:26:04 +0800
X-Gm-Features: AcwNN1ULwDCN22NcSTGJGIqUo7wEAVDbHGW4RjkupXf6vRbCRoH1F1Vq6Gp7hg4
Message-ID: <CALj3r0hg6kchV72wSv0ybPVqG93D4_QnB-diFmW45jLZwoP_cA@mail.gmail.com>
Subject: Re: [PATCH net-next v5 03/11] phy: rockchip: naneng-combphy: add
 SGMII MAC selection for RK3568
To: netdev-bot+sashiko@kernel.org
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org, 
	maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com, 
	alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org, 
	linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz, 
	netdev@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_112619_790346_2C56755F 
X-CRM114-Status: GOOD (  36.64  )
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

PG5ldGRldi1ib3Qrc2FzaGlrb0BrZXJuZWwub3JnPiDkuo4yMDI25bm0OeaciDE15pel5ZGo5LqM
IDA0OjI05YaZ6YGT77yaCj4KPiBUaGFuayB5b3UgZm9yIHlvdXIgY29udHJpYnV0aW9uISBTYXNo
aWtvIEFJIHJldmlldyBmb3VuZCAxIHBvdGVudGlhbAo+IGlzc3VlKHMpIHRvIGNvbnNpZGVyOgo+
Cj4gQ3JpdGljYWw6IDAgwrcgSGlnaDogMCDCtyBNZWRpdW06IDAgwrcgTG93OiAxCj4KPiAtIFtM
b3ddIEluIHJrMzU2OF9jb21icGh5X2NmZygpIChkcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9j
a2NoaXAtCj4gICBuYW5lbmctY29tYnBoeS5jOjg4MS04ODIpIHRoZSBuZXdseSBhZGRlZCB3cml0
ZSBvZiBwaXBlX3NnbWlpX21hY19zZWzigKYKPgo+IC0tCj4KPiBwaHk6IHJvY2tjaGlwOiBuYW5l
bmctY29tYnBoeTogYWRkIFNHTUlJIE1BQyBzZWxlY3Rpb24gZm9yIFJLMzU2OAo+Cj4gVGhpcyBh
ZGRzIGEgInJvY2tjaGlwLHNnbWlpLW1hYy1zZWwiIERUIHByb3BlcnR5IHRvIHBpY2sgd2hldGhl
ciB0aGUgUkszNTY4Cj4gU0dNSUkgaW50ZXJmYWNlIGlzIHJvdXRlZCB0byBHTUFDMCBvciBHTUFD
MSB2aWEgUElQRV9HUkZfWFBDU19DT04wIGJpdCAxLgo+IFRoZSB2YWx1ZSBpcyByZWFkIGluIHJv
Y2tjaGlwX2NvbWJwaHlfcGFyc2VfZHQoKSBhbmQgcHJvZ3JhbW1lZCBmcm9tIHRoZQo+IFBIWV9U
WVBFX1NHTUlJIGJyYW5jaCBvZiByazM1NjhfY29tYnBoeV9jZmcoKS4KPgo+IExpbms6IGh0dHBz
Oi8vZGwucmFkeGEuY29tL3JvY2szL2RvY3MvaHcvZGF0YXNoZWV0L1JvY2tjaGlwJTIwUkszNTY4
JTIwVFJNJTIwUGFydDElMjBWMS4xLTIwMjEwMzAxLnBkZiAoUGFnZSAyMjkpCj4KPiBPbmUgcXVl
c3Rpb24gYWJvdXQgdGhlIGNvbW1pdCBtZXNzYWdlIHdvcmRpbmc6Cj4KPiAgICAgVGhlIGhhcmR3
YXJlIHJlc2V0IHZhbHVlIGlzIDEgKEdNQUMxKS4gSWYgdGhlIHByb3BlcnR5IGlzIHNldCB0byAw
LAo+ICAgICB0aGUgZHJpdmVyIHJvdXRlcyBTR01JSSB0byBHTUFDMDsgaWYgc2V0IHRvIDEgKG9y
IG9taXR0ZWQpLCBpdAo+ICAgICByZW1haW5zIGF0IEdNQUMxLgo+Cj4gRG9lcyAib3Igb21pdHRl
ZCAuLi4gaXQgcmVtYWlucyBhdCBHTUFDMSIgbWF0Y2ggdGhlIGNvZGU/ICBUaGUgd3JpdGUgaW4K
PiByazM1NjhfY29tYnBoeV9jZmcoKSBpcyB1bmNvbmRpdGlvbmFsLCBzbyBpbiB0aGUgb21pdHRl
ZCBjYXNlIHRoZSBkcml2ZXIKPiBkb2VzIG5vdCBsZWF2ZSB0aGUgYml0IGFsb25lLCBpdCBhY3Rp
dmVseSBwcm9ncmFtcyBpdCB0byAxLiAgU2VlIHRoZQo+IGlubGluZSBjb21tZW50IGJlbG93Lgo+
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLW5hbmVu
Zy1jb21icGh5LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNv
bWJwaHkuYwo+ID4gaW5kZXggNzg0MzM1NmE0ZGQ0Ny4uN2I4NjdlNzUyMDA2NCAxMDA2NDQKPiA+
IC0tLSBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1uYW5lbmctY29tYnBoeS5j
Cj4gPiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtbmFuZW5nLWNvbWJw
aHkuYwo+Cj4gWyAuLi4gXQo+Cj4gPiBAQCAtMzc1LDYgKzM3Nyw5IEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfY29tYnBoeV9wYXJzZV9kdChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCByb2NrY2hp
cF9jb21icGh5Cj4gPgo+ID4gICAgICAgcHJpdi0+ZXh0X3JlZmNsayA9IGRldmljZV9wcm9wZXJ0
eV9wcmVzZW50KGRldiwgInJvY2tjaGlwLGV4dC1yZWZjbGsiKTsKPiA+Cj4gPiArICAgICBwcml2
LT5zZ21paV9tYWNfc2VsID0gMTsKPiA+ICsgICAgIGRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMihk
ZXYsICJyb2NrY2hpcCxzZ21paS1tYWMtc2VsIiwgJnByaXYtPnNnbWlpX21hY19zZWwpOwo+ID4g
Kwo+Cj4gW1NldmVyaXR5OiBMb3ddCj4gU2luY2UgZGV2aWNlX3Byb3BlcnR5X3JlYWRfdTMyKCkg
bGVhdmVzIHRoZSBvdXRwdXQgdW50b3VjaGVkIG9uIGZhaWx1cmUsCj4gcm9ja2NoaXBfY29tYnBo
eV9wYXJzZV9kdCgpIGVuZHMgdXAgd2l0aCBwcml2LT5zZ21paV9tYWNfc2VsID09IDEgYm90aCB3
aGVuCj4gdGhlIHByb3BlcnR5IHNheXMgMSBhbmQgd2hlbiB0aGUgcHJvcGVydHkgaXMgYWJzZW50
LiAgSXMgdGhlcmUgYSB3YXkgZm9yIHRoZQo+IGRyaXZlciB0byBleHByZXNzICJsZWF2ZSB0aGUg
Yml0IGFzIGZpcm13YXJlIGxlZnQgaXQiPwo+Cj4gQmVmb3JlIHRoaXMgcGF0Y2ggdGhlIGtlcm5l
bCBuZXZlciB0b3VjaGVkIFBJUEVfR1JGX1hQQ1NfQ09OMCBiaXQgMSwgc28gYQo+IGJvYXJkIHdo
b3NlIGJvb3Rsb2FkZXIgcm91dGVkIFNHTUlJIHRvIEdNQUMwIGtlcHQgdGhhdCByb3V0aW5nLiAg
V2l0aCB0aGlzCj4gY2hhbmdlLCBhIERUIHRoYXQgaW5zdGFudGlhdGVzIHRoZSBjb21icGh5IGFz
IFBIWV9UWVBFX1NHTUlJIGJ1dCBkb2VzIG5vdAo+IGNhcnJ5IHRoZSBuZXcgcHJvcGVydHkgaGFz
IHRoZSBiaXQgcmUtcHJvZ3JhbW1lZCB0byBHTUFDMSBvbiBldmVyeQo+IHBoeV9pbml0KCkuICBD
YW4gdGhhdCBicmVhayBzdWNoIGEgYm9hcmQncyBTR01JSSBsaW5rPwo+Cj4gPiAgICAgICBwcml2
LT5waHlfcnN0ID0gZGV2bV9yZXNldF9jb250cm9sX2dldF9leGNsdXNpdmUoZGV2LCAicGh5Iik7
Cj4gPiAgICAgICAvKiBmYWxsYmFjayB0byBvbGQgYmVoYXZpb3VyICovCj4gPiAgICAgICBpZiAo
UFRSX0VSUihwcml2LT5waHlfcnN0KSA9PSAtRU5PRU5UKQo+ID4gQEAgLTg3Myw2ICs4NzgsOCBA
QCBzdGF0aWMgaW50IHJrMzU2OF9jb21icGh5X2NmZyhzdHJ1Y3Qgcm9ja2NoaXBfY29tYnBoeV9w
cml2ICpwcml2KQo+ID4gICAgICAgICAgICAgICBicmVhazsKPiA+Cj4gPiAgICAgICBjYXNlIFBI
WV9UWVBFX1NHTUlJOgo+ID4gKyAgICAgICAgICAgICByb2NrY2hpcF9jb21icGh5X3BhcmFtX3dy
aXRlKHByaXYtPnBpcGVfZ3JmLCAmY2ZnLT5waXBlX3NnbWlpX21hY19zZWwsCj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcHJpdi0+c2dtaWlfbWFjX3NlbCA+
IDApOwoKVGhlIGhhcmR3YXJlIHJlc2V0IHZhbHVlIG9mIFBJUEVfR1JGX1hQQ1NfQ09OMCBiaXQg
MSBpcyAxIChHTUFDMSksCnNvIHByb2dyYW1taW5nIGl0IHRvIDEgd2hlbiB0aGUgcHJvcGVydHkg
aXMgYWJzZW50IHByb2R1Y2VzIHRoZSBzYW1lCnJlc3VsdCBhcyBsZWF2aW5nIGl0IGFsb25lIOKA
lCB0aGUgYml0IGlzIGFscmVhZHkgMSBhZnRlciByZXNldC4gVGhlCiJyZW1haW5zIGF0IEdNQUMx
IiB3b3JkaW5nIGluIHRoZSBjb21taXQgbWVzc2FnZSByZWZsZWN0cyB0aGF0LgoKU0dNSUkgaGFz
IG5ldmVyIGJlZW4gZnVuY3Rpb25hbCBvbiBSSzM1NjggaW4gbWFpbmxpbmUgYmVmb3JlIHRoaXMK
c2VyaWVzLCBzbyB0aGVyZSBpcyBubyBleGlzdGluZyBpbi10cmVlIG9yIG91dC1vZi10cmVlIGJv
YXJkIHdob3NlClNHTUlJIGxpbmsgY291bGQgYmUgYnJva2VuIGJ5IHRoaXMuIEEgYm9hcmQgd2hv
c2UgZmlybXdhcmUgaGFwcGVuZWQgdG8Kcm91dGUgdGhlIGJpdCB0byBHTUFDMCBzdGlsbCBjYW5u
b3QgdXNlIFNHTUlJIHdpdGggYSBtYWlubGluZSBrZXJuZWwKYmVmb3JlIHRoaXMgc2VyaWVzLCBh
bmQgd2lsbCBuZWVkIHRoZSBuZXcgcHJvcGVydHkgdG8gZGVzY3JpYmUgdGhhdApyb3V0aW5nIG9u
Y2UgaXQgY2FuLgoKPiBbU2V2ZXJpdHk6IExvd10KPiBUaGlzIHdyaXRlIGFsd2F5cyBoYXBwZW5z
LCBpbmNsdWRpbmcgaW4gdGhlICJwcm9wZXJ0eSBvbWl0dGVkIiBjYXNlLCBhbmQKPiByb2NrY2hp
cF9jb21icGh5X3BhcmFtX3dyaXRlKCkgc2V0cyB0aGUgd3JpdGUtZW5hYmxlIG1hc2sgYWxvbmcg
d2l0aCB0aGUKPiB2YWx1ZToKPgo+ICAgICAgICAgdG1wID0gZW4gPyByZWctPmVuYWJsZSA6IHJl
Zy0+ZGlzYWJsZTsKPiAgICAgICAgIG1hc2sgPSBHRU5NQVNLKHJlZy0+Yml0ZW5kLCByZWctPmJp
dHN0YXJ0KTsKPiAgICAgICAgIHZhbCA9ICh0bXAgPDwgcmVnLT5iaXRzdGFydCkgfCAobWFzayA8
PCBCSVRfV1JJVEVBQkxFX1NISUZUKTsKPgo+ICAgICAgICAgcmV0dXJuIHJlZ21hcF93cml0ZShi
YXNlLCByZWctPm9mZnNldCwgdmFsKTsKPgo+IHNvIHdpdGggcHJpdi0+c2dtaWlfbWFjX3NlbCBk
ZWZhdWx0aW5nIHRvIDEgdGhlIHJlZ2lzdGVyIGdldHMKPiAoMHgxIDw8IDEpIHwgKEdFTk1BU0so
MSwgMSkgPDwgMTYpLCBpLmUuIEdNQUMxIGlzIGZvcmNlZC4gIFdvdWxkIGl0IGJlCj4gYmV0dGVy
IHRvIG9ubHkgaXNzdWUgdGhpcyB3cml0ZSB3aGVuIHRoZSBwcm9wZXJ0eSBpcyBhY3R1YWxseSBw
cmVzZW50Pwo+Cj4gQSBzZWNvbmQgcXVlc3Rpb246IGJpdCAxIG9mIFBJUEVfR1JGX1hQQ1NfQ09O
MCBpcyBhIHNpbmdsZSBTb0Mtd2lkZSBtdXgsCj4gd2hpbGUgdGhlIHByb3BlcnR5IHNpdHMgb24g
YSBwZXItUEhZIG5vZGUuICBJZiB0d28gY29tYnBoeSBpbnN0YW5jZXMgdGhhdAo+IHNoYXJlIHRo
ZSBzYW1lIHJvY2tjaGlwLHBpcGUtZ3JmIHN5c2NvbiBhcmUgYm90aCBicm91Z2h0IHVwIGFzCj4g
UEhZX1RZUEVfU0dNSUkgd2l0aCBkaWZmZXJlbnQgcHJvcGVydHkgdmFsdWVzLCB0aGUgbGFzdCBw
aHlfaW5pdCgpIHdpbnMgYW5kCj4gbm90aGluZyBpcyByZXBvcnRlZC4gIFNob3VsZCBjb25mbGlj
dGluZyB2YWx1ZXMgYmUgcmVqZWN0ZWQgb3IgYXQgbGVhc3QKPiB3YXJuZWQgYWJvdXQ/Cj4KPiA+
ICAgICAgICAgICAgICAgcm9ja2NoaXBfY29tYnBoeV9wYXJhbV93cml0ZShwcml2LT5waXBlX2dy
ZiwgJmNmZy0+cGlwZV94cGNzX3BoeV9yZWFkeSwgdHJ1ZSk7Cj4gPiAgICAgICAgICAgICAgIHJv
Y2tjaGlwX2NvbWJwaHlfcGFyYW1fd3JpdGUocHJpdi0+cGh5X2dyZiwgJmNmZy0+cGlwZV9waHlt
b2RlX3NlbCwgdHJ1ZSk7Cj4gPiAgICAgICAgICAgICAgIHJvY2tjaGlwX2NvbWJwaHlfcGFyYW1f
d3JpdGUocHJpdi0+cGh5X2dyZiwgJmNmZy0+cGlwZV9zZWxfcXNnbWlpLCB0cnVlKTsKPiA+IEBA
IC05ODQsNiArOTkxLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCByb2NrY2hpcF9jb21icGh5X2dy
ZmNmZyByazM1NjhfY29tYnBoeV9ncmZjZmdzID0gewo+ID4gICAgICAgLmNvbjNfZm9yX3NhdGEg
ICAgICAgICAgPSB7IDB4MDAwYywgMTUsIDAsIDB4MDAsIDB4NDQwNyB9LAo+ID4gICAgICAgLyog
cGlwZS1ncmYgKi8KPiA+ICAgICAgIC5waXBlX2NvbjBfZm9yX3NhdGEgICAgID0geyAweDAwMDAs
IDE1LCAwLCAweDAwLCAweDIyMjAgfSwKPiA+ICsgICAgIC5waXBlX3NnbWlpX21hY19zZWwgICAg
ID0geyAweDAwNDAsIDEsIDEsIDB4MDAsIDB4MDEgfSwKPiA+ICAgICAgIC5waXBlX3hwY3NfcGh5
X3JlYWR5ICAgID0geyAweDAwNDAsIDIsIDIsIDB4MDAsIDB4MDEgfSwKPgo+IEZvciB3aGF0IGl0
IGlzIHdvcnRoLCB0aGUgb25seSBpbi10cmVlIFNHTUlJIGNvbnN1bWVyIGF0IHRoZSBlbmQgb2Yg
dGhpcwo+IHNlcmllcywgcmszNTY4LXBob3RvbmljYXQuZHRzLCBzZXRzIHJvY2tjaGlwLHNnbWlp
LW1hYy1zZWwgPSA8MD4KPiBleHBsaWNpdGx5LCBzbyBubyB1cHN0cmVhbSBEVCBjaGFuZ2VzIGJl
aGF2aW91ciB0b2RheTsgdGhlIGNvbmNlcm4gaXMgYWJvdXQKPiBvdXQtb2YtdHJlZSBvciBwb3J0
ZWQgZGV2aWNlIHRyZWVzIGFuZCBhYm91dCB0aGUgY29tbWl0IG1lc3NhZ2Ugd29yZGluZy4KClRo
ZXJlIGlzIG5vIGluLXRyZWUgY2FzZSB3aGVyZSB0d28gY29tYnBoeSBpbnN0YW5jZXMgYXJlIGJv
dGggYnJvdWdodAp1cCBhcyBQSFlfVFlQRV9TR01JSSB3aXRoIGRpZmZlcmVudCB2YWx1ZXMuIFRo
aXMgaXMgYSBzaW5nbGUgU29DLXdpZGUKbXV4IGFuZCBvbmx5IG9uZSBTR01JSSBsaW5rIGV4aXN0
cyBvbiBSSzM1NjgsIHNvIHRoZSBzaXR1YXRpb24gY2Fubm90CmFyaXNlIG9uIHJlYWwgaGFyZHdh
cmUuIEknbGwgbGVhdmUgaXQgYXMgaXMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
