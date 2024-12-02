Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4686CD78322
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 13:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=88HZ0olzdeOR0X2osXYsKbrxD1wp1H+atMcJgnlK9gk=; b=Nq88xnv2AFEaCf
	6xl2FVka8ptjrGYKFCVmbA7YifimgD+sT4czh8x6mSE4wNXPvtlcCnMPozFnBGuv8DTCb1wDOBo8v
	IpzOGb9OYAsF8xxkdp5zUc+AWeSAvcvuAExsY/Q15dGuyVCSH8glHKQV3FYbBTfXLdL4dTsvUtXGm
	v8EsBjAtqMSHeq/WifDrTEaHmJvjL2elHfbA+j07dJ3BOKXnoWuPnBq2V/C43U38RRkqHb2X7TUv/
	heHQ9Xt4ycfGbTIqNiOTJeN0LPvqiyXXGvwdyuq/LEBvYViTx+C+lFCX6Hpv5/c6VWNAMKurgggPM
	7K+lMUTbJOBwSxv8QpZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI6fD-00000006Gq1-0cYO;
	Mon, 02 Dec 2024 13:40:35 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI6ed-00000006GiJ-2Jyf
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Dec 2024 13:40:00 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-466966d8dbaso36332251cf.3
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Dec 2024 05:39:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733146797; x=1733751597; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Go2QJK5N99/ZxaNUR6SVaJEPwnwYySGUbHfGQS2DIBg=;
        b=CYqX3s+rYdTgsKyEoZfmFa+P/iq4YEGovARPXfIO17neZmNFIdvPZgj/hEsJ4cnLFy
         8cuL45UkJvNXyokFA+0y84VFqlzwPk45HdUwcOpDiY17t9COqYRX70zZiCM8SpsGzhKA
         LNLxUCss1BZ+ZuG8lhbzwjeJWEcMkQbap1FrDU9/c0SCkqaB0fxBbL1X37HscXI02lIZ
         5UBpg94Jqf8UrQaiJ4lKN9bXpJLvDhI5sG7JI0mSw8e/fgdjF9jKOa1tWcdB7DnZWW5E
         qbH3OhZksXAOz/qojHqu4Qt5HKUzM1+MSjk37CYvzNQwB3TgTLslvniFAAzPCwxMw2PI
         gTCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733146797; x=1733751597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Go2QJK5N99/ZxaNUR6SVaJEPwnwYySGUbHfGQS2DIBg=;
        b=DJysZaTEEYM/VzmVng4lkr6OdO08NV7aVZkLlsD0UlICPcl5I/LrPPSACXJVlv9ZFy
         jo55E+3EysrthmUyDl0Za66x5CEOPQc+dFPyxul0jrEmRlB7ji6dY/0LrZs+NT29RttP
         Dfrz9mFGNel+QZJOMlSlvT/wzJkJrTREWD05KHIs4Zlok9DT28Quaf/wMA3zdxT2/E19
         iakJVEL905MDJCdIectbTCU08O7PY16/5r56hcwlTxGfocmpVWfJfyC/lxk7iCkZPboM
         Y5Pa8cVS6YtMsbTeskCEJAMSL0bu5cVV8cIoPjdMOBxd3+rYHrOtR2wCxJ1MimGdmleD
         HovA==
X-Forwarded-Encrypted: i=1; AJvYcCVpglUb4Ou4ONAYm1KKk6BiHC9sZ2gRwWdnCF3h1gPNy8BeS3yjmQum0Cz5Nfs6ukHxD6ST6Pn6avB67/pUZw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyuSkN+8loDGTTFdisrZhP0cimFhwzemE0wQKdq364LTbVs2y96
	vxTGMFQ+XwBz1IvXX2qzBco8vUXItWMQa//4rmBcPFx54/y/MuTAzTxEvK4sl4zvl9vM8bqiNCO
	dxSFQKCXO1JVbX5+XamA8drcaHhh8NfTqDug=
X-Gm-Gg: ASbGncsDZu4WiaitCvFPdkAq4Wbhv8aF1Q7IlxX0CZsx7wd4ejie+ovEXrWxhjfs7a1
	aPTVDKGpYHGods4xhQeOhD8lpE/pBR17bmpiQljGj3KZl9+LHQAc7WqoLzoB52/Q=
X-Google-Smtp-Source: AGHT+IGstlLcCFJpHkRAg42eh7KZl/i+CKsEuiJDlDZHxAkhc8lIxzYPj+BnGrQsbzRQn9lJ/eMVvML+J2MFUgQodDM=
X-Received: by 2002:ac8:59cc:0:b0:466:96ef:de06 with SMTP id
 d75a77b69052e-466b3646872mr373457801cf.34.1733146797554; Mon, 02 Dec 2024
 05:39:57 -0800 (PST)
MIME-Version: 1.0
References: <20241130004057.7432-1-naoki@radxa.com> <20241130004057.7432-6-naoki@radxa.com>
In-Reply-To: <20241130004057.7432-6-naoki@radxa.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 2 Dec 2024 17:39:46 +0400
Message-ID: <CABjd4YwV+cthjL4uYkpnwxzTzEUWsWEyoOZCkt+Un2iB=GMgxA@mail.gmail.com>
Subject: Re: [PATCH 5/6] arm64: dts: rockchip: fix pwm-fan node for Radxa ROCK 5B
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, conor+dt@kernel.org, inindev@gmail.com, 
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com, 
	linux-rockchip@lists.infradead.org, krzk+dt@kernel.org, dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_053959_587721_8E55ECE6 
X-CRM114-Status: GOOD (  12.08  )
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

SGkgTmFva2ksCgpPbiBNb24sIERlYyAyLCAyMDI0IGF0IDU6MzXigK9QTSBGVUtBVU1JIE5hb2tp
IDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+Cj4gZml4IHByb3BlcnRpZXMgdG8gbWF0Y2ggd2l0
aCB2ZW5kb3Iga2VybmVsLgo+Cj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lA
cmFkeGEuY29tPgo+IC0tLQo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1y
b2NrLTViLmR0cyB8IDYgKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDMgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODgtcm9jay01Yi5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1yb2NrLTViLmR0cwo+IGluZGV4IDdjODM1OWZlNzEyYS4uNmEwMmZlYmFlZmI3IDEwMDY0
NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRz
Cj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMK
PiBAQCAtNjQsMTAgKzY0LDEwIEBAIGxlZC0wIHsKPgo+ICAgICAgICAgZmFuOiBwd20tZmFuIHsK
PiAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJwd20tZmFuIjsKPiAtICAgICAgICAgICAg
ICAgY29vbGluZy1sZXZlbHMgPSA8MCAxMjAgMTUwIDE4MCAyMTAgMjQwIDI1NT47Cj4gLSAgICAg
ICAgICAgICAgIGZhbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+IC0gICAgICAgICAgICAgICBw
d21zID0gPCZwd20xIDAgNTAwMDAgMD47Cj4gICAgICAgICAgICAgICAgICNjb29saW5nLWNlbGxz
ID0gPDI+Owo+ICsgICAgICAgICAgICAgICBjb29saW5nLWxldmVscyA9IDwwIDY0IDEyOCAxOTIg
MjU1PjsKCkNvdWxkIHlvdSBwbGVhc2Ugc2hhcmUgeW91ciB0ZXN0aW5nIHNldHVwIGZvciB0aGlz
IHBhcnQ/IEluIG15CmV4cGVyaWVuY2UgdXNpbmcgUmFkeGEgNDAxMCBmYW4sIGl0IGRpZG4ndCBz
cGluIHVwIHJlbGlhYmx5IGJlbG93IDEyMCwKc28gdGhlIHZhbHVlIG9mIDY0IGxvb2tzIG5vdCBo
ZWxwZnVsIGhlcmUuCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
