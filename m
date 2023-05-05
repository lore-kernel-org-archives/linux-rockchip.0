Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF31AC77B75
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 May 2023 16:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6i5afNM4NlKzgo/Eb0jY+RZfh0c5EQm5+UceGLnxmo4=; b=WEchDzlDiCVjKc
	O8JTIUwtVl7IaAMSLqELMKHWSG95O2Vs5uFSB5dgGDR84VD1ltd5a1XR9MK+VZiM3METXZQP1MtZr
	hL4Qt8gmfd1XQjoazF53QVVVO2I37196mp44kc6l03i+zwjTxC7VCk2I79YRQDSBnDPiO1QmzQ+/p
	7w/Wld0j6/KXdaI3GBtQ1C0xkQsQwQfXfP79Tmlr+Pp1txDjmGYY4PQBTiEjwPlXQg4tVtkFC4w8i
	wYljsKxu8IBU0vbmCzv+elqh1+K6g5/KX5/RcAEw2sVRlaHqzCFJE/cOUs0imCL9/xzYdMFXAfiqm
	fxEmB6YWGaVU4U3bAFgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puyRw-00BKGD-0D;
	Fri, 05 May 2023 16:38:28 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puyRr-00BKE1-38;
	Fri, 05 May 2023 16:38:26 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-24e24b0193fso1517465a91.2;
        Fri, 05 May 2023 09:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683304701; x=1685896701;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WTBj91wY5R7wmMv4RtFK70J7OX94Z7XXVJoL4I58/BI=;
        b=i7g/kNXhpQJ2lZ0x/44jeT7ggaDJG8sBcvdLYoR0vj7zIBg+uhQEuUQcvKd14o0aZg
         rniAL2Eok5wvlEImT0ildBDP6Tej6QxeYRDbyFZYkJZcnfPMUVbgILLoZ05UOr8OLZ4x
         H5pqAk7tblmT8iT2GwFNImxdC1iAebxgmWYxaB7aUhQVQIgNJ+oM/MQS60YT0/+GgOZw
         IrvjyRc5SDIQnvwQi1CFcohSZzUrLzxTfZ0Aa10WBAqz3T084iHNBIkSiHIJ+yHbr4XS
         M4vd24kIJFZyfKZ4dmXQcAhcoXwvuvC3uYKPuDnXJ2ZqaKXKlJZDpNHyE5GutrPXRv0E
         wnnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683304701; x=1685896701;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WTBj91wY5R7wmMv4RtFK70J7OX94Z7XXVJoL4I58/BI=;
        b=AwZcewgkCmfE845inICj+sve++1g9KFDYy/1XqNLRjxNQyH65rqMtFOCmPwseTUFmT
         n3T2kZRn/LzvQc4ZKL1HP+bVo2m6IKCj73NBsOJbezrgv5bm6tjfZyPF7nj8gliYXPJw
         iQ5Znbbl03KQCV1Zu/n2hvNS9g5RdZmQsXscEAYUeXx7GzzRsK/wkr2K4Uwunodl54r0
         l2UMw8ntsR/5tmuUuN5tVa17wux0iNKKME/xqA7MZ2l+A9r44rOmGQiLHa/VfLrJygqC
         heDuo+qFhMAjAmUBNJkFCIAO931vR2bmNNzPrSZ7ZJ07KWTX/CZZwmE2jxrM2GZG3p+U
         d7SQ==
X-Gm-Message-State: AC+VfDzK6/2tZU33siOKN6UjcqQiSPDaGusL1zwjAdzvPsFngEfnW3Rv
	F3ZiFeehYYXyj3E3dVVl7l+/NCRrgFWueLy76Q4=
X-Google-Smtp-Source: ACHHUZ5mGOm/OoFO4l7q3YMsGvV8HJNGf/b7UcX78QFYN1R4H/EP3o2NCCWcW5ClH5RGFgSvI4gX/MBWtTYkzNe3dUY=
X-Received: by 2002:a17:90b:3881:b0:24e:109a:94e with SMTP id
 mu1-20020a17090b388100b0024e109a094emr2075391pjb.7.1683304701585; Fri, 05 May
 2023 09:38:21 -0700 (PDT)
MIME-Version: 1.0
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
In-Reply-To: <20230505113856.463650-1-s.hauer@pengutronix.de>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Fri, 5 May 2023 16:38:10 +0000
Message-ID: <CAEwRq=qnszuMP2FhC=44Qs0NQHSg+X-oiwXEmPbhOxdZinzxfw@mail.gmail.com>
Subject: Re: [PATCH v4 00/21] Add perf support to the rockchip-dfi driver
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	Heiko Stuebner <heiko@sntech.de>, Kyungmin Park <kyungmin.park@samsung.com>, 
	MyungJoo Ham <myungjoo.ham@samsung.com>, Will Deacon <will@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de, 
	Michael Riesch <michael.riesch@wolfvision.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230505_093824_009646_B6D0D66F 
X-CRM114-Status: GOOD (  12.15  )
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

SGVsbG8sCgpPbiBGcmksIE1heSA1LCAyMDIzIGF0IDExOjQx4oCvQU0gU2FzY2hhIEhhdWVyIDxz
LmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPiBUaGlzIGlzIHY0IG9mIHRoZSBwYXRjaGVz
IGFkZGluZyBERFIgcGVyZiBzdXBwb3J0IHRvIHRoZSByb2NrY2hpcC1kZmkKPiBkcml2ZXIuCgpJ
IHRlc3RlZCB0aGlzIHNlcmllcyBvbiBhIFBpbmU2NCBRdWFydHpQcm82NCBkZXYgYm9hcmQuCgpJ
IGFwcGxpZWQgdGhlIHNlcmllcyBvbiB0b3Agb2YgbXkgYnJhbmNoLCB3aGljaCBpcyBiYXNlZCBv
biBDb2xsYWJvcmEncwpyb2NrY2hpcC0zNTg4IHBsdXMgc29tZSBRUDY0IERUUyBwYXRjaGVzLCBh
bmQgeW91ciBXSVAgcGF0Y2ggdG8KZW5hYmxlIHRoZSBzZXJpZXMgaW4gdGhlIHJrMzU4OHMuZHRz
aS4KCkxvb2tzIGxpa2UgdGhpcyBpcyB3b3JraW5nIHByb3Blcmx5OgoKIyBwZXJmIGxpc3QgfCBn
cmVwIHJvY2tjaGlwX2RkcgogIHJvY2tjaGlwX2Rkci9ieXRlcy8gICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIFtLZXJuZWwgUE1VIGV2ZW50XQogIHJvY2tjaGlwX2Rkci9jeWNsZXMvICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIFtLZXJuZWwgUE1VIGV2ZW50XQogIHJvY2tjaGlw
X2Rkci9yZWFkLWJ5dGVzLyAgICAgICAgICAgICAgICAgICAgICAgICAgIFtLZXJuZWwgUE1VIGV2
ZW50XQogIHJvY2tjaGlwX2Rkci93cml0ZS1ieXRlcy8gICAgICAgICAgICAgICAgICAgICAgICAg
IFtLZXJuZWwgUE1VIGV2ZW50XQoKIyBhbmQgd2hpbGUgZG9pbmcgbm90aGluZy4uLgojIHBlcmYg
c3RhdCAtYSAtZQpyb2NrY2hpcF9kZHIvY3ljbGVzLyxyb2NrY2hpcF9kZHIvcmVhZC1ieXRlcy8s
cm9ja2NoaXBfZGRyL3dyaXRlLWJ5dGVzLyxyb2NrY2hpcF9kZHIvYnl0ZXMvCnNsZWVwIDEKCiBQ
ZXJmb3JtYW5jZSBjb3VudGVyIHN0YXRzIGZvciAnc3lzdGVtIHdpZGUnOgoKICAgICAgICAxMDU4
NDk3NTY2ICAgICAgcm9ja2NoaXBfZGRyL2N5Y2xlcy8KICAgICAgICAgICAgICA5LjAxIE1CICAg
cm9ja2NoaXBfZGRyL3JlYWQtYnl0ZXMvCiAgICAgICAgICAgICAgMC42NiBNQiAgIHJvY2tjaGlw
X2Rkci93cml0ZS1ieXRlcy8KICAgICAgICAgICAgICA5LjY1IE1CICAgcm9ja2NoaXBfZGRyL2J5
dGVzLwoKICAgICAgIDEuMDAyNDYwMTM3IHNlY29uZHMgdGltZSBlbGFwc2VkCgojIHRoZW4gd2l0
aCBhIGJhY2tncm91bmQgbWVtb3J5IChhYi0pdXNlci4uLgojIG1lbXRlc3RlciA0RyA+IC9kZXYv
bnVsbCAyPiYxICYKIyBwZXJmIHN0YXQgLWEgLWUKcm9ja2NoaXBfZGRyL2N5Y2xlcy8scm9ja2No
aXBfZGRyL3JlYWQtYnl0ZXMvLHJvY2tjaGlwX2Rkci93cml0ZS1ieXRlcy8scm9ja2NoaXBfZGRy
L2J5dGVzLwpzbGVlcCAxMAoKIFBlcmZvcm1hbmNlIGNvdW50ZXIgc3RhdHMgZm9yICdzeXN0ZW0g
d2lkZSc6CgogICAgICAgMTA1NjE5Mzc4MzMgICAgICByb2NrY2hpcF9kZHIvY3ljbGVzLwogICAg
ICAgICAgNTkxOTIuOTAgTUIgICByb2NrY2hpcF9kZHIvcmVhZC1ieXRlcy8KICAgICAgICAgIDI5
MTA0LjAyIE1CICAgcm9ja2NoaXBfZGRyL3dyaXRlLWJ5dGVzLwogICAgICAgICAgODgyOTYuOTIg
TUIgICByb2NrY2hpcF9kZHIvYnl0ZXMvCgogICAgICAxMC4wMDE4Njc3MjMgc2Vjb25kcyB0aW1l
IGVsYXBzZWQKCllvdSBjYW4gYWRkIG15IFQtQiwgZm9yIHRoZSB3aG9sZSBzZXJpZXM6CgpUZXN0
ZWQtYnk6IFZpbmNlbnQgTGVnb2xsIDx2aW5jZW50LmxlZ29sbEBnbWFpbC5jb20+CgpUaGFua3Mg
Zm9yIHlvdXIgd29yawpSZWdhcmRzCgotLQpWaW5jZW50IExlZ29sbAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
