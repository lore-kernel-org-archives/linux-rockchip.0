Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B050DC27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 20:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WX4JNX/KtzgOnu36NJkMYXEBxeTET1wkkA1uyyrgDc=; b=RBNGZMCyMv2KjL
	wxokas1tUkN4UqZKdtnuvDvVbmvXpI9lK6QpRoxwb8SaBK8MAtAvp4RP/5hvyqcNtrMABG3or0VK4
	nV1QMGe6K//Ih+OpOdDbLq2QaoJrfaQF9WQI/6zmcfvAKJMVdUdD67p5WekSqBWXmOYxh4L/AtchD
	nsPBesmCrLY6s5lVaf/vArpswJUX0CcesRUlBMG324QL3a19/IK+6NlKbC3SedyGzJnZR7/qDMDV0
	s7OPNv/FHgYULcl/ppdARserkPr2Ol/sEGZAbDPvWkhAvGthXmKgYyMneXxVowYTPVd5B6YphskxE
	uI6f1WhoI8vKl611lknQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKO5I-00000006ZBl-3JDe;
	Thu, 20 Jun 2024 20:08:40 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKO5G-00000006ZB5-2BfM
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Jun 2024 20:08:40 +0000
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6f95be3d4c4so516263a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Jun 2024 13:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718914117; x=1719518917; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hSJkwRLLXg+/HweJ717ffkym6nyoKfy9FEsPaDbpL/o=;
        b=GhgwDCcWbkLR/g56peqBTpsRxj/Cm7hYfWgZw+Qt4OYfGRPLeXKAtUjxE0iT8XqHCX
         6HBVc6Y6d57pgV0/hiip+phTaAhzcz3AfmLQMQtJY47mcyC3ttmuekVW8ojkAr1q0azc
         EOh7nqoCn17QUvV4r0jIOuSj9UA7a4qZa2iBA0pEjH6Cu06IQvKDSmG60f9epQ42LbaA
         WnXcUQrv4zQ7JibaANLOqgK18AJqegtGBkpXLxkR/mMsgUEw6Hinm0PuaOKF+x4T7ns3
         kLseIcUFZ1uaGZvJwxc0u6jiflEFw/RxdVkdX0MQ1g9Gh92Mm0Jv4dhero/ZdGgBQTl6
         FlBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718914117; x=1719518917;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hSJkwRLLXg+/HweJ717ffkym6nyoKfy9FEsPaDbpL/o=;
        b=t0m0Omay0DlgcJnljWs5WbasIuLBmFt15RxuKvwOp9P94DxE95AviKyeKwUuE2KXbq
         HexWVWQPW6bb7cWShXKEUD7RqHGhnv5wNe9rbXIv0sN8kfRfVqchfqkJNSPkspncqw+q
         nOzDoby8lqxbgcKwenohFBQMbw8tvRnhoW4SVHutv1TwhVaszsxjX06ddiOOlKVIUzeM
         WqX6naOyh98e+KMkytinz7N5lL1nAaOI/DXrXHnbeClBHLyocnxdT6/O/rrcaL6A8Zeh
         OUDQfKTIGvjHYHi5JjPbOx/DgidjFavV9qTn/tfN1sDcNmed3Bc3w7x80RxGJSDzu5Nn
         cXlw==
X-Forwarded-Encrypted: i=1; AJvYcCV1R2ilfh4uvmCOYVHm2Q05hKCdtRivvkv9zQ9a2RB/oJO7gmklIgt9WLaVFt68rz+pXTGjOvxQORnrPSV021SVEedtb18HdnNJNbfnXFdig6tP
X-Gm-Message-State: AOJu0YyvC0qSGF0f/Ci1k4ndtMZ4qxf8pdB46JstDNJbyZ/6P/Hq6MBD
	9I+AyNu61aG+rEIPpQUKq1JcEge485QC7GTEpoIGXO1MgsFqSKsm
X-Google-Smtp-Source: AGHT+IHnngU3ZQakBlBJ5TB+6vWBs8aTudZ7SmnM7Sd2XLBetvpnshnjvmcJgVI8PVyZJmWGxYffww==
X-Received: by 2002:a9d:3e50:0:b0:700:6835:3993 with SMTP id 46e09a7af769-7007401b8d3mr6373837a34.19.1718914117028;
        Thu, 20 Jun 2024 13:08:37 -0700 (PDT)
Received: from nicolas-tpx395.lan ([2606:6d00:17:6d4e::580])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b51ab947f4sm3967176d6.113.2024.06.20.13.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 13:08:36 -0700 (PDT)
Message-ID: <6a6e42f6980da2e76d25b2315b206457afe9043e.camel@gmail.com>
Subject: Re: [PATCH 1/1] media: verisilicon: Move rockchip hardware drivers
 to the corresponding option
From: Nicolas Dufresne <nicolas.dufresne@gmail.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>, Ezequiel Garcia
	 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab
	 <mchehab@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Thu, 20 Jun 2024 16:08:35 -0400
In-Reply-To: <20240620063313.2309767-1-alexander.stein@ew.tq-group.com>
References: <20240620063313.2309767-1-alexander.stein@ew.tq-group.com>
User-Agent: Evolution 3.52.2 (3.52.2-1.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_130838_586183_6708F53A 
X-CRM114-Status: GOOD (  15.73  )
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

SGksCgpMZSBqZXVkaSAyMCBqdWluIDIwMjQgw6AgMDg6MzMgKzAyMDAsIEFsZXhhbmRlciBTdGVp
biBhIMOpY3JpdMKgOgo+IFRoZXJlIGlzIG5vIG5lZWQgdG8gY29tcGlsZSB0aGUgcm9ja2NoaXAg
c3BlY2lmaWMgZHJpdmVycyBpZgo+IENPTkZJR19WSURFT19IQU5UUk9fUk9DS0NISVAgaXMgbm90
IHNldC4KPiBBbGwgZHJpdmVyIGZ1bmN0aW9ucyBhcmUgb25seSByZWZlcmVuY2VkIGJ5IHJvY2tj
aGlwX3ZwdV9ody5jIHdoaWNoIGlzCj4gYWxyZWFkeSB1bmRlciB0aGlzIG9wdGlvbi4KPiAKPiBT
aWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgU3RlaW4gPGFsZXhhbmRlci5zdGVpbkBldy50cS1ncm91
cC5jb20+CgpUaGFua3MsIGp1c3QgbGlrZSBtYW55IGJ1Z2ZpeCwgaXRzIG5pY2UgdG8gc2VlIGJh
Y2twb3J0ZWQsIGJ1dCB0aGlzIGNhbiBoYXBwZW4Kd2l0aG91dCBGaXhlcyB0YWcuIFRvIG1ha2Ug
dGhpcyBtb3JlIGNvbnZlbmllbnQsIHdvdWxkIHlvdSBtaW5kIHNwbGl0dGluZyB0aGlzCmNoYW5n
ZSBpbiAyIHBhcnRzOgoKPiAtLS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNv
bi9NYWtlZmlsZSB8IDE0ICsrKysrKystLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2Vy
dGlvbnMoKyksIDcgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vTWFrZWZpbGUgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL01ha2VmaWxlCj4gaW5kZXggZWIzOGExODMzYjAyLi5mNmYwMTlkMDRmZjAgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9NYWtlZmlsZQo+
ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vTWFrZWZpbGUKPiBAQCAt
MTQsMTMgKzE0LDYgQEAgaGFudHJvLXZwdS15ICs9IFwKPiAgCQloYW50cm9fZzIubyBcCj4gIAkJ
aGFudHJvX2cyX2hldmNfZGVjLm8gXAo+ICAJCWhhbnRyb19nMl92cDlfZGVjLm8gXAo+IC0JCXJv
Y2tjaGlwX3ZwdTJfaHdfanBlZ19lbmMubyBcCj4gLQkJcm9ja2NoaXBfdnB1Ml9od19oMjY0X2Rl
Yy5vIFwKPiAtCQlyb2NrY2hpcF92cHUyX2h3X21wZWcyX2RlYy5vIFwKPiAtCQlyb2NrY2hpcF92
cHUyX2h3X3ZwOF9kZWMubyBcCgpUaGlzIGdvdCBtZXJnZWQgaW4gNS4zLCBzbyB0aGF0IHdvdWxk
IGJlIHBhdGNoIDEvMiwgd2l0aDoKCkZpeGVzOiBjOWNhZWJkNTdiM2EgKCJtZWRpYTogaGFudHJv
OiBtZXJnZSBSb2NrY2hpcCBwbGF0Zm9ybSBkcml2ZXJzIikKRml4ZXM6IGMwNzY2NWY5OTM4NiAo
Im1lZGlhOiBoYW50cm86IEFkZCBILjI2NCBzdXBwb3J0IGZvciBSb2NrY2hpcCBWRFBVMiIpCgpU
aGUgZmlyc3QgRml4ZXMgaXMgbm90IGZ1bGx5IGFjY3VyYXRlLCBidXQgc2hvdWxkIGRvLgoKPiAt
CQlyb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5vIFwKPiAtCQlyb2NrY2hpcF9hdjFfZmlsbWdy
YWluLm8gXAo+IC0JCXJvY2tjaGlwX2F2MV9lbnRyb3B5bW9kZS5vIFwKClRoaXMgZ290IG1lcmdl
ZCBpbiA2LjMsIHNvIHRoYXQgd291bGQgYmUgcGF0Y2ggMi8yLCB3aXRoOgoKRml4ZXM6IDcyN2E0
MDA2ODZhMiAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogQWRkIFJvY2tjaGlwIEFWMSBkZWNvZGVyIikK
Rml4ZXM6IGQ4ZWJlNTllN2IzNiAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogQWRkIGZpbG0gZ3JhaW4g
ZmVhdHVyZSB0byBBVjEgZHJpdmVyIikKRml4ZXM6IGMwZDBlNTc5ZGI0ZSAoIm1lZGlhOiB2ZXJp
c2lsaWNvbjogQWRkIEFWMSBlbnRyb3B5IGhlbHBlcnMiKQoKV2l0aCB0aGlzIG1pbm9yIGNoYW5n
ZSwgeW91IGNhbiBhbHNvIGFkZDoKClJldmlld2VkLWJ5OiBOaWNvbGFzIER1ZnJlc25lIDxuaWNv
bGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cgo+IAo+ICAJCWhhbnRyb19qcGVnLm8gXAo+ICAJ
CWhhbnRyb19oMjY0Lm8gXAo+ICAJCWhhbnRyb19oZXZjLm8gXAo+IEBAIC0zNSw2ICsyOCwxMyBA
QCBoYW50cm8tdnB1LSQoQ09ORklHX1ZJREVPX0hBTlRST19TQU1BNUQ0KSArPSBcCj4gIAkJc2Ft
YTVkNF92ZGVjX2h3Lm8KPiAgCj4gIGhhbnRyby12cHUtJChDT05GSUdfVklERU9fSEFOVFJPX1JP
Q0tDSElQKSArPSBcCj4gKwkJcm9ja2NoaXBfdnB1Ml9od19qcGVnX2VuYy5vIFwKPiArCQlyb2Nr
Y2hpcF92cHUyX2h3X2gyNjRfZGVjLm8gXAo+ICsJCXJvY2tjaGlwX3ZwdTJfaHdfbXBlZzJfZGVj
Lm8gXAo+ICsJCXJvY2tjaGlwX3ZwdTJfaHdfdnA4X2RlYy5vIFwKPiArCQlyb2NrY2hpcF92cHU5
ODFfaHdfYXYxX2RlYy5vIFwKPiArCQlyb2NrY2hpcF9hdjFfZmlsbWdyYWluLm8gXAo+ICsJCXJv
Y2tjaGlwX2F2MV9lbnRyb3B5bW9kZS5vIFwKPiAgCQlyb2NrY2hpcF92cHVfaHcubwo+ICAKPiAg
aGFudHJvLXZwdS0kKENPTkZJR19WSURFT19IQU5UUk9fU1VOWEkpICs9IFwKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
