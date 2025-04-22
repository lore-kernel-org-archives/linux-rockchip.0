Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5530EC369D5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 00:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2OJ26DAzUgim+Y7UD67XJEQztNDOUZdvUvQDY73T6S4=; b=WYdNXw8pX7esWJ
	Yk2PqniGCEekolvhyw7vetAijKKTE0gL52xHZ5fxGyy6d65GN2iHSL5wWyr2FChbpn9gTxU2hivg5
	LYzO0crsuLl5tMJ8B2AfxDlEsxeP/JQpUM5eo/e4v823OSEGmSLXYzTqWiQbc7KR1zgq6CmZMOHp7
	ul0KxH/zGxEilrk1zOIk1oym+rdtJF8h4sLOeIBfdhPvFn0lD1+xJGk35y5+O3UTGPupERpRpWVB5
	NisCSFFjuJF9mMh5m6wb8pP+n2JzJB4otFO4jVoVbOsFF3OpAmgan3hbvvlweyZDV5IvPBY94YBIN
	ErvvTzYhAAla5GZshA+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u71D0-00000005RdO-3cka;
	Tue, 22 Apr 2025 00:09:54 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u71B7-00000005ROQ-1igR;
	Tue, 22 Apr 2025 00:07:58 +0000
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-6ecf0e07947so44899436d6.0;
        Mon, 21 Apr 2025 17:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745280475; x=1745885275; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H8wLDV1hb56J4g1qGTPdYS2+5saoEpO4u3c0/B+uqvk=;
        b=JwY4a9JVJwn2SJ0+LbSwRbjEOhq5ubnoJkyJviPpBiA8GTYLj5FmUnFgYNQIkJ8IHD
         FMeI8Yo/l5u2lEN75cOrD9EWTnvd9+fU9Oi6SXdZSPWeEws1eICp/mlbFKedqossCQPO
         136EwLHQbgX1CFOeunvdC3+HYVMw1bTRm70MIAc2MYfHIT7KB3gZtRkbX0twE8ZKVXKM
         8fx1TqoP6CafwYx/Qm7/Zekn9gHqeo4XRrWGUG7duJtEs+bMBjA7buVlod2hzStRN7qT
         zK86L436HgfF1p4FPj2eH1PDE8WsCA5u6OdG1TEGo0g50AEDi2GSzGxHPDX07HbmMgNN
         TvJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745280475; x=1745885275;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H8wLDV1hb56J4g1qGTPdYS2+5saoEpO4u3c0/B+uqvk=;
        b=n+y1wedxnXaVdFTIinklS7Ij38WSpd+FxhXPqWln/HUr86r9xcgDLmed8/B67oJ6Dt
         yq9U2N1Gl8dUo68A0tTC/m2rz15W1/NYgXPZq4CHQxKO/AuupGLvtvi0jdK1Rj4k0HPN
         x/R78UcpWgz57U0G9dG1KK+LEzmq+6RAwPemujztV2xPco/3+dqhCsO9Aed63zWHFdmB
         UjZf2r+2JibdTOvaC7pMGUf+opvXbZBz583Ly/sEIDp0WSQLBy4uVDOV+jXp9NBwzQX0
         YQn1h+PWLvA3YOJGvLJ3Gyq26waiehpl5CR3IoH1ama3xKETWMXiPIBSa4awSas7Qsjs
         7aDw==
X-Forwarded-Encrypted: i=1; AJvYcCULmvtsR+0TnJd1txevnPKTbtBbnpNc2a9RjZtG9LAqnTXEmJt+/1nBd2JbE2ZrHr69hnPKLIVFoeAVH2GUk50=@lists.infradead.org, AJvYcCVqaeNykpSvZQf8sc1sIsmB60QEgObqg9NdLb7TYcwnlXfsNtfKUdA0cuOYDQluchYgiLo2FOSXsqUNEK0QTFiu@lists.infradead.org
X-Gm-Message-State: AOJu0Yy5Jrf1SImtpSvJAHe2TrlFcT95v0JK9igNulhT65q7jaeBwqel
	xmV+O6WU5bUq2WP3amsNC80XwG+CAYm4JScBe/qdvklym5LNWZI0
X-Gm-Gg: ASbGncsGnFmvAdNRcesLYytoQ1hqgloH7152+YAquPsTzC+XdBTkSQIJcOEfMl7UynV
	PTH5sVLzqPsM2b3CcTjL220NM2UUE5iWGRhlLH2NHIeVhg3swLbGmJN9/IerHm1crOpqIoVes9H
	PxR7KeXS9a/cNJ2L7PI/DfZBcSyMH40+hR+6HnTdCjTjFZt71pnY+ycJyYV5PI+x38iyHLC/vgn
	y0PCo4GxDhChKMnpQ4TGPRn0uKsMVEb2MAMUw2zzOhADa5yk2FIF7Eh/HePwylnBkdMrWk0sT+H
	JxqEX5tk6iy6vf8RM+hBgQOnetilA1Z8kek/0bzqatbvworO+a7V
X-Google-Smtp-Source: AGHT+IFfDWwvneQduY1xpp0BmYEQ8b2EqMecuS/b3VvGJHRaIDr0uNIu9yTru25IprQs8WvetVgDkQ==
X-Received: by 2002:a05:6214:1c84:b0:6e2:383f:4acd with SMTP id 6a1803df08f44-6f2c4d8b11emr226098736d6.7.1745280475490;
        Mon, 21 Apr 2025 17:07:55 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f2c2b0f11fsm50085206d6.39.2025.04.21.17.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 17:07:55 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: sigmaris@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	mjuszkiewicz@redhat.com,
	sebastian.reichel@collabora.com,
	jonas@kwiboo.se,
	John Clark <inindev@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: rk3588-nanopc-t6: fix usb-c port functionality
Date: Mon, 21 Apr 2025 20:07:48 -0400
Message-Id: <20250422000748.59664-1-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <bda07179-1ff4-46e4-9dda-ece9c63fd613@gmail.com>
References: <20250419023715.16811-1-inindev@gmail.com> <bda07179-1ff4-46e4-9dda-ece9c63fd613@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_170757_468178_909CB552 
X-CRM114-Status: GOOD (  20.60  )
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

T24gVHVlLCBBcHIgMjIsIDIwMjUgYXQgMDA6MTI6MDIgKzAxMDAsIEh1Z2ggQ29sZS1CYWtlciA8
c2lnbWFyaXNAZ21haWwuY29tPiB3cm90ZToKPiBIaSBKb2huLAo+Cj4gT24gMTkvMDQvMjAyNSAw
MzozNywgSm9obiBDbGFyayB3cm90ZToKPj4gVGhlIFVTQi1DIHBvcnQgb24gdGhlIE5hbm9QQy1U
NiB3YXMgbm90IHByb3ZpZGluZyBWQlVTICh2YnVzNXYwX3R5cGVjCj4+IHJlZ3VsYXRvciBkaXNh
YmxlZCwgZ3Bpby01OCBvdXQgbG8pIGR1ZSB0byBtaXNjb25maWd1cmF0aW9uLiBUaGUKPj4gb3Jp
Z2luYWwgc2V0dXAgd2l0aCByZWd1bGF0b3ItYWx3YXlzLW9uIGFuZCByZWd1bGF0b3ItYm9vdC1v
biBmb3JjZWQKPj4gdGhlIHBvcnQgb24sIG1hc2tpbmcgdGhlIGlzc3VlLCBidXQgcmVtb3Zpbmcg
dGhlc2UgcHJvcGVydGllcyByZXZlYWxlZAo+PiB0aGF0IHRoZSBmdXNiMzAyIGRyaXZlciB3YXMg
bm90IGVuYWJsaW5nIHRoZSByZWd1bGF0b3IgZHluYW1pY2FsbHkuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IEpvaG4gQ2xhcmsgPGluaW5kZXZAZ21haWwuY29tPgo+PiAtLS0KPj4gIC4uLi9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtbmFub3BjLXQ2LmR0c2kgICB8IDIxICsrKysrKysrKystLS0tLS0t
LS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkK
Pj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5h
bm9wYy10Ni5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtbmFub3Bj
LXQ2LmR0c2kKPj4gaW5kZXggY2VjZmI3ODhiZjllLi44ZjJiZDMwNzg2ZDkgMTAwNjQ0Cj4+IC0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNpCj4+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5hbm9wYy10Ni5kdHNp
Cj4+IEBAIC0xNzQsOCArMTc0LDYgQEAgdmJ1czV2MF90eXBlYzogcmVndWxhdG9yLXZidXM1djAt
dHlwZWMgewo+PiAgCQlncGlvID0gPCZncGlvMSBSS19QRDIgR1BJT19BQ1RJVkVfSElHSD47Cj4+
ICAJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICAJCXBpbmN0cmwtMCA9IDwmdHlwZWM1
dl9wd3Jlbj47Cj4+IC0JCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+IC0JCXJlZ3VsYXRvci1ib290
LW9uOwo+PiAgCQlyZWd1bGF0b3ItbmFtZSA9ICJ2YnVzNXYwX3R5cGVjIjsKPj4gQEAgLTQ2NSwy
NCArNDYxLDMwIEBAIHJlZ3VsYXRvci1zdGF0ZS1tZW0gewo+PiAgJmkyYzYgewo+PiAtCWNsb2Nr
LWZyZXF1ZW5jeSA9IDwyMDAwMDA+Owo+PiAgCXN0YXR1cyA9ICJva2F5IjsKPj4KPj4gLQlmdXNi
MzAyOiB0eXBlYy1wb3J0Y0AyMiB7Cj4+ICsJdXNiYzA6IHVzYi10eXBlY0AyMiB7Cj4+ICAJCWNv
bXBhdGlibGUgPSAiZmNzLGZ1c2IzMDIiOwo+PiAgCQljb25uZWN0b3Igewo+PiAgCQkJY29tcGF0
aWJsZSA9ICJ1c2ItYy1jb25uZWN0b3IiOwo+PiAgCQkJZGF0YS1yb2xlID0gImR1YWwiOwo+PiAg
CQkJbGFiZWwgPSAiVVNCLUMiOwo+PiAtCQkJcG93ZXItcm9sZSA9ICJzb3VyY2UiOwo+PiArCQkJ
LyogZnVzYjMwMiBzdXBwb3J0cyBQRCBSZXYgMi4wIFZlciAxLjIgKi8KPj4gKwkJCXBkLXJldmlz
aW9uID0gL2JpdHMvIDggPDB4MiAweDAgMHgxIDB4Mj47Cj4+ICsJCQlwb3dlci1yb2xlID0gImR1
YWwiOwo+PiArCQkJb3Atc2luay1taWNyb3dhdHQgPSA8MTAwMDAwMD47Cj4+ICsJCQlzaW5rLXBk
b3MgPSA8UERPX0ZJWEVEKDUwMDAsIDMwMDAsIFBET19GSVhFRF9VU0JfQ09NTSk+Owo+PiAgCQkJ
c291cmNlLXBkb3MgPSA8UERPX0ZJWEVEKDUwMDAsIDIwMDAsIFBET19GSVhFRF9VU0JfQ09NTSk+
Owo+PiArCQkJdHJ5LXBvd2VyLXJvbGUgPSAic291cmNlIjsKPj4gKwkJCXR5cGVjLXBvd2VyLW9w
bW9kZSA9ICIzLjBBIjsKPgo+IEFjY29yZGluZyB0byB0aGUgbWFudWZhY3R1cmVyIHdpa2kgWzFd
ICJQb3dlciBPdXRwdXQgQ2FwYWNpdHkiIHRhYmxlLCB0aGUgVVNCLUMKPiBwb3J0IG1heGltdW0g
b3V0cHV0IGlzIDVWLzJBLiBTbyBJIHRoaW5rICIxLjVBIiB3b3VsZCBiZSBhIGJldHRlciB2YWx1
ZSBoZXJlLgo+Cj4gWzFdOiBodHRwczovL3dpa2kuZnJpZW5kbHllbGVjLmNvbS93aWtpL2luZGV4
LnBocC9OYW5vUEMtVDYKCkhpIEh1Z2gsCgpUaGFuayB5b3UgZm9yIHlvdXIgZmVlZGJhY2sgYW5k
IGZvciByZWZlcmVuY2luZyB0aGUgbWFudWZhY3R1cmVy4oCZcyB3aWtpLiBUbyBjbGFyaWZ5LCB0
aGUgbGluZSBpbiBxdWVzdGlvbjoKCnNvdXJjZS1wZG9zID0gPFBET19GSVhFRCg1MDAwLCAyMDAw
LCBQRE9fRklYRURfVVNCX0NPTU0pPjsKCndhcyBub3QgbW9kaWZpZWQgaW4gbXkgcGF0Y2guIFRo
aXMgdmFsdWUsIHdoaWNoIHNldHMgdGhlIFVTQi1DIHBvcnTigJlzIHNvdXJjZSBjYXBhYmlsaXR5
IHRvIDVWLzJBLCBpcyB1bmNoYW5nZWQgZnJvbSB0aGUgZXhpc3RpbmcgZGV2aWNlIHRyZWUuCgpG
dXJ0aGVybW9yZSwgdGhlIHNjaGVtYXRpYyBmb3IgdGhlIE5hbm9QQy1UNiBhbmQgdGhlIHZlbmRv
cuKAmXMgdXBzdHJlYW0gTGludXggZGV2aWNlIHRyZWUgKGUuZy4sIEZyaWVuZGx5QVJN4oCZcyBr
ZXJuZWwgYXQgaHR0cHM6Ly9naXRodWIuY29tL2ZyaWVuZGx5YXJtL2tlcm5lbC1yb2NrY2hpcC9i
bG9iL25hbm9waTYtdjYuMS55L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW5h
bm9waTYtcmV2MDEuZHRzI0wzNDYpIGFsc28gc3BlY2lmeSB0aGUgc291cmNlIGNhcGFiaWxpdHkg
YXMgNVYvMkEuIEdpdmVuIHRoaXMgY29uc2lzdGVuY3kgYWNyb3NzIHRoZSBzY2hlbWF0aWMgYW5k
IHZlbmRvciBzb3VyY2VzLCBJIGJlbGlldmUgMkEgaXMgYW4gYXBwcm9wcmlhdGUgdmFsdWUgZm9y
IHRoaXMgY29uZmlndXJhdGlvbi4KClBsZWFzZSBsZXQgbWUga25vdyBpZiB5b3UgaGF2ZSBmdXJ0
aGVyIGNvbmNlcm5zIG9yIHN1Z2dlc3Rpb25zIQoKQmVzdCByZWdhcmRzLApKb2huIENsYXJrCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
