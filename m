Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8D5CC44507
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jul 2026 23:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cKAB/nf2awWOMzhsblz17gVigksGq4MCdKeIFU79bBs=; b=XtReBmXN6dBqpN
	6ambYlTz5/BSFIGdHGqc1JrXzQ/GvqjKJ16sB2XiDAbjUuJAA+TruPPo5kVvlulKT30hxQ2GfKVJQ
	/JNt9TvMWF1Qr2H+pBZn8dPje+jtveCpRdE1B8xTbgJkRjpmBU7txjxkJOeeeiHdEOU4tn1PECIE3
	w4tLm7rxDE3x/FKqQQxpouVeZi4Jp04gBbaK15oEe/s2ZCyyrC6yeUH+vfucY1diH+B/zpUfE7Qlq
	SG6CjjxyaGhuI8TQsYTFty9bIKzXx6qG6jEK5XF16unnZKdG1qo0HnobImKD7q2J3noEis+zs+17b
	VvLka0wLDTbZ1HtC9m+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk8bz-0000000G3hi-0uBF;
	Wed, 15 Jul 2026 23:01:55 +0000
Received: from mail-ej2-x03.google.com ([2a00:1450:4864:34::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wk8bx-0000000G3g1-062A
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Jul 2026 23:01:54 +0000
Received: by mail-ej2-x03.google.com with SMTP id a640c23a62f3a-c15a2e27498so373701166b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Jul 2026 16:01:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784156509; cv=none;
        d=google.com; s=arc-20260327;
        b=AMUjS4/un51QnCWSzQ9qkggf5OGVzsJrgJs+gm+7J0n1umpWlLygfkvGqn86sjJcOk
         ppTF9yBNP3LakhCHagzvPaZjIbDF8UoJV68aUbHJdvoXriV9aSn2c6v9NsF5JlPyQMVm
         Xmdhmo2x7grFe5q5Snxu2U5JAi8vW8J77lm2nfYQhA2hJnOCgrfqjXePMJCejXgdlHWW
         og+iHvrvW9TcusRURMP50rj4kwkGPMnmyptmFzWVK6TVmkNM59ksOq7FBPInbavDBGrl
         0kvLjf6Xhhkbp0FFYmTvSEpkbduNlyJeGCoW7e2w6RfoC70vJdwRJeGCSJHpBseqStZ2
         lwng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Y8obYoQRW0D7bMouRYacqh4D5cOARHGrRdydWcpJ2O8=;
        fh=Zz4pKMv5bFPdPo84ll5v0DlmHT0/K09au2Khq67wf2A=;
        b=mE+RnEKQ4Xd1qQfnhsELmWUezSk397U1wvG6fo0cK2Vj3EYocFQPAKSu0GsDkP6FAH
         9X7g8R45Ibb70lvEYWLu9qiUVj5tu+KHlfZsJcJZbvNL9nI5Kd7M9UTD2YtHbGDV2dz7
         uMnsTZOcaCpvxg74LzddCOl8MCQhbVk6/Xe7hzjLdk/9WARZl8XGx8wJOQOfVA7EVPS+
         H9wAODkMN2x56nu/0zLSdDYPtu5IItlyNNOiet0Ieo4FPZVCgJaViqkAp+c5l7uIEGjU
         rNmqQSDlEItYu3ZtTR1gjVNTktfQvYgUjMjYdBGM0JtMOfy6oj6lP4nmYMnnsH+wuSjV
         j5Fg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784156509; x=1784761309; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Y8obYoQRW0D7bMouRYacqh4D5cOARHGrRdydWcpJ2O8=;
        b=VmUbIgjv/IAYNVwj1H04oQPJm3t3kVPhrXhbkfNilpdWe/RVZxEhpsLZp+gJEGB7H8
         38dkXvBUwUdconWabC1xkFybqfrO7stWhJN2twlfAFCLjLTBwh1bBy8I04iRSWx0Bkjz
         U2Xc5E48bkm8OG4SEhSe71OvA/5ZOZ/BXRib5ZRG1PVdkSuZwIG2AMYMfcSbo/b+a972
         xlS/Rp7F4mcH9dKpPrED7rJL7M+Hj5SJBaG0YEhMgDHhgkEZP0/N4avrdkqtNMyCKScc
         mooBazjRVYenBN+LmuHPWyiYsN5vaCsEwzzpL4fOuuAaY/ABE+xBPXx54PjN/MtVGQPc
         7N1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784156509; x=1784761309;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Y8obYoQRW0D7bMouRYacqh4D5cOARHGrRdydWcpJ2O8=;
        b=SxZu3Gdn7B3wugoYXSrp2Utcz3HXHBF3S8OQkD87JNdc7Vprv2kjDWBq4FxR4eaqmB
         LurKrKLBw5gCSJclWWeFNlzuuzAN119BWdGfja44rDPwjELy2ZhtX6fjdzVNUl8iUH2A
         kKbWokWURDba4eVRwJklSoS1C3zk2F1amYuXxPiCnbI4eIjrJCVVmSHKROXuyflmgMsi
         +MBrMPiTjXpg4ADt9uSYsMeSF9ZXllGeBpaYLL6X9MFHpFZKeDRb5aZZxis93GXEc8Y3
         tQzj0Na9cmBV7rixrhI9xWHqa34In3bcBiXGokjK4j4pdQzjvYqoLoL8r7K/5xUoHaP+
         wH2w==
X-Forwarded-Encrypted: i=1; AHgh+Rqq4r8LtyhWhYGqYVHqiNmlkA+6yt6es/hp4UUB0LUqG+L5/U5po1WIfUxzKaEte4J+yrRwJ4pm21GbBsglfw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxl/sPBzeXngI77icht4o3nhgYxcHwFuY8XfNkxRZn+BDOuO1A4
	o5cbdoF7WfFOdalqGsBtuFXdc4HGcewwiWdsuMKoOLVQGVb9zklbi1RVbeZWBGmDbsEfe8mbwz3
	E3b7v9/x8A+kwFZwS1zEHxyc8SxbyJY4=
X-Gm-Gg: AfdE7cly6ofjuXmzFAUmhLUUWPeSIntBp5EGFgJx4iRmYnZhRu5jOGwMy/D5iyhf6BL
	RuoO4BeakOLmEl2g5z1knW/Twx7e3eGlyJFUJQ9YJm6P90i22HUt4zwIhDbqbF+0DVdX2fz+y2R
	OgCPC9DtI8gqyVy0zWRcJBfvFAnWf6EiKVe4/fxymtDe2CTMhNgwylSO4iVviEwf7e0zwwSuXLp
	wS/DHDt/dMOB751UuyaXhlu2o1mAX55BrADb3PJV+6ypmCzS08RDrh73KFGX+9K
X-Received: by 2002:a17:907:3f22:b0:c15:9350:dfa6 with SMTP id
 a640c23a62f3a-c16619ad2b0mr539188966b.60.1784156508425; Wed, 15 Jul 2026
 16:01:48 -0700 (PDT)
MIME-Version: 1.0
References: <20260714191341.690906-1-coiaprant@gmail.com> <20260714191341.690906-8-coiaprant@gmail.com>
 <4823c1d9-51d9-45fa-a96c-f2caab1cb29e@bootlin.com> <CALj3r0h4cFd-tp9-UVxihL9-a1W7_4nvnKoXW_cP5WECKc66Hw@mail.gmail.com>
 <1d92078f-3009-43d1-a228-c3e67a1f4f4c@lunn.ch> <CALj3r0gBnyEVwo3rK-dKssYN9F4nFn93QJ24FVv8YBLjNNgPmg@mail.gmail.com>
 <039c2cce-e76e-4321-ba4a-cd80801f136e@lunn.ch>
In-Reply-To: <039c2cce-e76e-4321-ba4a-cd80801f136e@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 16 Jul 2026 07:01:37 +0800
X-Gm-Features: AUfX_mwFPn4a5IZZI8ivW-vw003zPra-aQ5NOk6yPm8eSjdntp4P_3w-2rjiAlg
Message-ID: <CALj3r0gmNudG2pCebGzd+453ORVakkyct4oDYR+SrqLPkx1nFg@mail.gmail.com>
Subject: Re: [RFC PATCH 07/10] net: pcs: xpcs: add Rockchip RK3568 platform
 glue driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, kuba@kernel.org, davem@davemloft.net, 
	edumazet@google.com, pabeni@redhat.com, andrew+netdev@lunn.ch, 
	robh@kernel.org, krzk+dt@kernel.org, heiko@sntech.de, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260715_160153_282152_EE6EAC27 
X-CRM114-Status: GOOD (  24.77  )
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

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI25bm0N+aciDE25pel5ZGo5ZubIDA2
OjI15YaZ6YGT77yaCj4KPiA+IFRoZSBjdXJyZW50IGRlc2lnbgo+ID4gPT09PT09PT09PT09PT09
PT09Cj4gPiBUaGUgZGVwZW5kZW5jeSBjaGFpbiBJIGNob3NlIGlzIHNpbXBsZToKPiA+Cj4gPiAg
ICAgc3RtbWFjIChHTUFDKSAtPiBwY3MtaGFuZGxlIC0+IFhQQ1Mgbm9kZSAtPiBwaHlzIC0+IFNl
ckRlcyBQSFkKPgo+IE1heWJlIHdlIG5lZWQgdG8gYmUgbW9yZSBhY2N1cmF0ZSBoZXJlLgo+Cj4g
SW4gUVNHTUlJIEkgX3RoaW5rXyBpdCBpcyBhY3R1YWxseQo+Cj4gc3RtbWFjIChHTUFDKSAtPiBw
Y3MtaGFuZGxlIC0+IFhQQ1Mgbm9kZSAtXAo+IHN0bW1hYyAoR01BQykgLT4gcGNzLWhhbmRsZSAt
PiBYUENTIG5vZGUgLS0tLS0tLT4gcGh5cyAtPiBTZXJEZXMgUEhZCj4gc3RtbWFjIChHTUFDKSAt
PiBwY3MtaGFuZGxlIC0+IFhQQ1Mgbm9kZSAtLyAvCj4gc3RtbWFjIChHTUFDKSAtPiBwY3MtaGFu
ZGxlIC0+IFhQQ1Mgbm9kZSAtLS8KPgo+IFRoZXJlIGFyZSBmb3VyIGluc3RhbmNlcyBvZiBzdG1t
YWMsIGZvdXIgaW5zdGFuY2VzIG9mIHRoZSBYUENTLCB3aGljaAo+IHRoZW4gYWxsIGNvbWUgdG9n
ZXRoZXIgaW50byBvbmUgUEhZLgo+Cj4gV2hlbiB1c2luZyBTR01JSSwgZG9lcyBpdCBsb29rIGxp
a2UgdGhpcyA/Cj4KPiBzdG1tYWMgKEdNQUMpIC0+IHBjcy1oYW5kbGUgLT4gWFBDUyBub2RlIC0t
LS0tLS0+IHBoeXMgLT4gU2VyRGVzIFBIWQo+IHN0bW1hYyAoR01BQykgLT4gcGNzLWhhbmRsZSAt
PiBYUENTIG5vZGUgLS0tLS0tLT4gcGh5cyAtPiBTZXJEZXMgUEhZCj4gc3RtbWFjIChHTUFDKSAt
PiBwY3MtaGFuZGxlIC0+IFhQQ1Mgbm9kZSAtLS0tLS0tPiBwaHlzIC0+IFNlckRlcyBQSFkKPiBz
dG1tYWMgKEdNQUMpIC0+IHBjcy1oYW5kbGUgLT4gWFBDUyBub2RlIC0tLS0tLS0+IHBoeXMgLT4g
U2VyRGVzIFBIWQo+Cj4gVGhlcmUgYXJlIGZvdXIgb2YgZXZlcnl0aGluZywgYWxsIHdvcmtpbmcg
aW5kZXBlbmRlbnRseS4KPgo+IElzIHRoZXJlIDEgUVNHTUlJIFBIWSBhbmQgNCBTR01JSSBQSFlz
PyBPciBkb2VzIG9uZSBvZiB0aGUgNCBwaHlzCj4gc3VwcG9ydCBTR01JSSArIFFTR01JSSwgd2hp
bGUgMyBhcmUgU0dNSUkgb25seT8KPgo+ID4gMi4gVXNlciBtaXNjb25maWd1cmF0aW9uOiBldmVu
IHdpdGggcmVmZXJlbmNlIGNvdW50aW5nLCBpZiBhIHVzZXIgc2V0cwo+ID4gICAgYHBoeXMgPSA8
JmNvbWJwaHkyIFBIWV9UWVBFX1NHTUlJPmAgZm9yIEdNQUMwIGFuZAo+ID4gICAgYHBoeXMgPSA8
JmNvbWJwaHkyIFBIWV9UWVBFX1FTR01JST5gIGZvciBHTUFDMSwgdGhlIHNhbWUgUEhZIHdvdWxk
Cj4gPiAgICBiZSBpbml0aWFsaXplZCBpbiB0d28gZGlmZmVyZW50IG1vZGVzLgo+Cj4gSSB3b3Vs
ZCBob3BlIHRoYXQgcmVzdWx0cyBpbiAtRUlOVkFMLgo+Cj4gICBBbmRyZXcKCkhpIEFuZHJldywK
ClRoYW5rcyBmb3IgdGhlIGZvbGxvdy11cC4gSSd2ZSBkdWcgdGhyb3VnaCBSb2NrY2hpcCdzIEJT
UCBhbmQgZm91bmQgdGhlCmV4YWN0IGRldmljZSB0cmVlIGNvbmZpZ3VyYXRpb25zIHRoZXkgdXNl
IGZvciB0aGVpciBFVkJzLCB3aGljaCBJIHRoaW5rCmNsZWFycyB1cCB0aGUgdG9wb2xvZ3kgcXVl
c3Rpb24uCgpGb3IgcmVmZXJlbmNlLCBoZXJlIGFyZSB0aGUgcmVsZXZhbnQgQlNQIGRldmljZSB0
cmVlIGZpbGVzOgotIFFTR01JSTogaHR0cHM6Ly9naXRodWIuY29tL2FybWJpYW4vbGludXgtcm9j
a2NoaXAvYmxvYi9yay02LjEtcmtyNi4xL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LWV2YjItbHA0eC12MTAuZHRzaSNMMTg1Ci0gU0dNSUk6IGh0dHBzOi8vZ2l0aHViLmNvbS9h
cm1iaWFuL2xpbnV4LXJvY2tjaGlwL2Jsb2IvcmstNi4xLXJrcjYuMS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1ldmI1LWRkcjQtdjEwLmR0c2kjTDIwOAoKSGFyZHdhcmUgdG9w
b2xvZ3kgY29uZmlybWVkCj09PT09PT09PT09PT09PT09PT09PT09PT09PQpUaGUgQlNQIHNob3dz
IHRoYXQgZm9yIFJLMzU2OCwgdGhlIGhhcmR3YXJlIGlzIGluZGVlZCBhIHNoYXJlZCByZXNvdXJj
ZS4KCk9uZSBpbXBvcnRhbnQgY2xhcmlmaWNhdGlvbjogdGhlIFhQQ1MgYmxvY2sgaGFzIGZvdXIg
bG9naWNhbCBlbnRpdGllcwooY29ycmVzcG9uZGluZyB0byB0aGUgZm91ciBNSUkgcG9ydHMsIHBj
cy1taWlAMC4uMykuIEluIG15IGRyaXZlciwgdGhlc2UKYXJlIGFsbCBhdHRhY2hlZCB0byB0aGUg
c2FtZSBNRElPIGJ1cyBhbmQgZGlzdGluZ3Vpc2hlZCBieSBhZGRyZXNzLgoKVG8gY2xhcmlmeSB0
aGUgUEhZIHRvcG9sb2d5OiB0aGVyZSBpcyBvbmx5IG9uZSBwaHlzaWNhbCBTZXJEZXMgUEhZIG9u
ClJLMzU2OCAoY29tYnBoeTFfdXNxKS4gSW4gUVNHTUlJIG1vZGUsIHRoaXMgc2luZ2xlIFBIWSBw
cm92aWRlcyBmb3VyCmxvZ2ljYWwgcG9ydHMgdmlhIHRpbWUtZGl2aXNpb24gbXVsdGlwbGV4aW5n
LiBJbiB0aGUgZGV2aWNlIHRyZWUsIGFsbApmb3VyIHBvcnRzIGFyZSBhdHRhY2hlZCB0byB0aGUg
c2FtZSBNRElPIGJ1cyBhbmQgZGlzdGluZ3Vpc2hlZCBieQphZGRyZXNzIChwY3MtbWlpQDAuLjMp
LgoKU28gaXQncyBub3QgIjQgUEhZcyIgYnV0ICIxIFBIWSB3aXRoIDQgbG9naWNhbCBwb3J0cyIs
IGFsbCBhY2Nlc3NpYmxlCnRocm91Z2ggdGhlIHNhbWUgTURJTyBidXMgd2l0aCBkaWZmZXJlbnQg
YWRkcmVzcy4gVGhlIEJTUCBFVkIyCmNvbmZpZ3VyYXRpb24gY29uZmlybXMgdGhpczoKYm90aCBn
bWFjMCBhbmQgZ21hYzEgcmVmZXJlbmNlIHRoZSBzYW1lIGNvbWJwaHkxX3VzcSB3aXRoClBIWV9U
WVBFX1FTR01JSS4KClRvIGNsYXJpZnkgdGhlIGRpZmZlcmVuY2UgYmV0d2VlbiBTR01JSSBhbmQg
UVNHTUlJOgotIFNHTUlJIGlzIGEgc2luZ2xlIHNlcmlhbCBsaW5rIGF0IDEuMjUgR2JhdWQsIHBy
b3ZpZGluZyBvbmUgR2lnYWJpdCBwb3J0LgotIFFTR01JSSBpcyBhIDUgR2JhdWQgU2VyRGVzIHBy
b3RvY29sIHRoYXQgbXVsdGlwbGV4ZXMgZm91ciBTR01JSSBsaW5rcwogIG9udG8gdGhlIHNhbWUg
cGh5c2ljYWwgbGFuZXMuCgpTbyBmb3IgUkszNTY4OiBvbmUgUEhZIGZvciBTR01JSSwgb3Igb25l
IFBIWSBmb3IgUVNHTUlJIChib3RoIEdNQUNzIHNoYXJlCnRoZSBzYW1lIFBIWSwgZWFjaCB1c2lu
ZyBhIGRlZGljYXRlZCBsb2dpY2FsIHBvcnQpLgoKRm9yIFNHTUlJIG1vZGUsIG9ubHkgb25lIG9m
IHRoZXNlIHBvcnRzIGNhbiBiZSB1c2VkIGF0IGEgdGltZSwgYW5kIG9ubHkKb25lIEdNQUMgY2Fu
IHVzZSB0aGUgU0dNSUkgbGluay4gVGhlIEJTUCBFVkI1IGNvbmZpZ3VyYXRpb24gc2hvd3MgdGhp
cwpjbGVhcmx5OiBnbWFjMCB1c2VzIFNHTUlJLCB3aGlsZSBnbWFjMSBmYWxscyBiYWNrIHRvIFJH
TUlJLgoKRm9yIFFTR01JSSBtb2RlLCB0aGUgQlNQIEVWQjIgY29uZmlndXJhdGlvbiBzaG93cyBi
b3RoIGdtYWMwIGFuZCBnbWFjMQpjb25maWd1cmVkIHdpdGggcGh5LW1vZGUgPSAicXNnbWlpIiwg
Ym90aCByZWZlcmVuY2luZyB0aGUgc2FtZSBjb21icGh5MV91c3EKYXMgdGhlaXIgcGh5cy4gVGhp
cyBjb25maXJtcyB5b3VyIGRpYWdyYW06IG11bHRpcGxlIE1BQ3MgY29udmVyZ2Ugb24gYQpzaW5n
bGUgU2VyRGVzIFBIWSB2aWEgdGhlIFhQQ1MsIHdpdGggdGhlIGZvdXIgbG9naWNhbCBwb3J0cyB0
aW1lLWRpdmlzaW9uCm11bHRpcGxleGVkIG9udG8gdGhlIHNpbmdsZSBQSFkuCgpXaHkgdGhpcyBt
YXR0ZXJzIGZvciB0aGUgZGVzaWduCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KVGhp
cyBCU1AgZXZpZGVuY2Ugc3VwcG9ydHMgbXkgY3VycmVudCBkZXNpZ24gd2hlcmUgdGhlIFhQQ1Mg
bm9kZSBvd25zCnRoZSBTZXJEZXMgUEhZOgoKMS4gSXQgbWF0Y2hlcyB0aGUgaGFyZHdhcmU6IHRo
ZSBYUENTIGlzIHRoZSBjZW50cmFsIG11bHRpcGxleGVyLgogICBQbGFjaW5nIHRoZSBQSFkgdW5k
ZXIgdGhlIFhQQ1Mgbm9kZSBpbiB0aGUgZGV2aWNlIHRyZWUgYWNjdXJhdGVseQogICByZWZsZWN0
cyB0aGlzIGhhcmR3YXJlIHJlYWxpdHkuCgoyLiBJdCdzIHRoZSBvbmx5IHZpYWJsZSBwYXRoIGZv
ciBRU0dNSUk6IGFzIHRoZSBCU1Agc2hvd3MsIFFTR01JSQogICByZXF1aXJlcyBtdWx0aXBsZSBN
QUNzIHRvIHNoYXJlIG9uZSBQSFkuIElmIHRoZSBQSFkgd2VyZSBvd25lZCBieSB0aGUKICAgTUFD
IGRyaXZlciAoZHdtYWMtcmspLCB3ZSdkIG5lZWQgY29tcGxleCByZWZjb3VudGluZyBhbmQgY3Jv
c3MtTUFDCiAgIGNvb3JkaW5hdGlvbi4gVGhlIFhQQ1Mtb3duZXIgbW9kZWwgc29sdmVzIHRoaXMg
Y2xlYW5seSBieSBtYWtpbmcgdGhlCiAgIFhQQ1MgdGhlIHNpbmdsZSBwb2ludCBvZiBjb250cm9s
LgoKMy4gSXQgYWxpZ25zIHdpdGggdGhlIEJTUCdzIG93biBsb2dpYzogZXZlbiB0aG91Z2ggdGhl
IEJTUCB1c2VzIGEKICAgbm9uLXN0YW5kYXJkIHByb3BlcnR5IChyb2NrY2hpcCx4cGNzKSwgdGhl
IHVuZGVybHlpbmcgaWRlYSBpcyB0aGUKICAgc2FtZTogdGhlIE1BQ3MgcG9pbnQgdG8gYSBzaGFy
ZWQgWFBDUyBub2RlLCB3aGljaCB0aGVuIG1hbmFnZXMgdGhlCiAgIFBIWS4gTXkgZGVzaWduIGp1
c3QgZG9lcyB0aGlzIHVzaW5nIHRoZSBzdGFuZGFyZCBrZXJuZWwgZnJhbWV3b3Jrcy4KClNvLCBJ
IGJlbGlldmUgdGhlIGN1cnJlbnQgZGVzaWduIGlzIGNvcnJlY3QuIEl0J3MgYmFzZWQgb24gdGhl
IGhhcmR3YXJlCnJlYWxpdHkgY29uZmlybWVkIGJ5IFJvY2tjaGlwJ3Mgb3duIEJTUCwgYW5kIGl0
IHVzZXMgdGhlIHN0YW5kYXJkIGtlcm5lbAppbnRlcmZhY2VzIHRvIGRvIHNvLiBJJ20gaGFwcHkg
dG8ga2VlcCB0aGUgWFBDUyBhcyB0aGUgb3duZXIgb2YgdGhlClNlckRlcyBQSFkgaW4gdjIgaWYg
eW91IGFncmVlLgoKVGhhbmtzLApDb2lhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
