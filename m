Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BEEDE936ED
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 23:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wiPF4i1VtSL16siaePZfHL66aJ1URPjb0bqEc5WuNas=; b=396jU7X8IJrI7/
	gpueE87wQxYwe32HCXh9wmz/bV+W9nGjJhEUY/57Ad1Rxa4zMPWV8TZtuBABQv6AFqpoCpPfXlW/U
	tlbzcNCGghok/3BfsBiAGy6dnAa/wkkUSjTcOoFHVYU/mGpiNdLC9b2yHMbFUEAKlRpS4rgi8aSSS
	uKGqW3cEdt8tdAZp6W0Y6QsHOk6p8d8YjoskJ5ZnUeBPBq+Wv8Wq0qH5YRAStQ1N8Gok3EDf5neA0
	P7YFJyRJD9+oc2iLCj2nq0mzfG8EqFAi9oU5ZtubLmkA+C5tGMk5lLTJNxixYGAnsIx9/Lmlrq/jo
	ghdRb/KbfUwl7YB4qhnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoBUd-0016fL-0T;
	Wed, 04 Oct 2023 23:41:27 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoBUZ-0016eh-13;
	Wed, 04 Oct 2023 23:41:24 +0000
Received: by mail-oi1-x22b.google.com with SMTP id 5614622812f47-3af65455e7fso272357b6e.3;
        Wed, 04 Oct 2023 16:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696462881; x=1697067681; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4C1iihc3EDnsL/rTdUR5Op9U6iZWDJfi2p6KDHXbMCg=;
        b=VGRm0g+CdpAEY36zP0oYuBsfj1fBrLeX1q/plGyq/RtEcqS4MO8+UDZFM4lCB1EjCA
         MEPE6z7ppZq7aXWDTLmVV6B/19cDULHZ1u06jDtMld4IWelY4pVSixBixWAI/Zw79zbW
         MjD4LPiSr/4A761PbfLLhrCml5a4lUX5Op9yAGAU+2vbdt6hCK8+VzkDuAnGbVrF0h1E
         ZlZyCeqzcpEIeADj0jjY0yqRC90M8458IiuzZpHaoe+b3SrmR9GxuPiV79k3QhaYeUI1
         NcJ8aDvgbudFlGaMFiGDTuNx1PAgjjIq7xImAbAjM2lZnlOLrekeMacHRZjALalaW/qI
         L24Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696462881; x=1697067681;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4C1iihc3EDnsL/rTdUR5Op9U6iZWDJfi2p6KDHXbMCg=;
        b=lGBvFO/O5plH3z+nC2DhRkaFWrntW7GWHZPKL2HjOusc0PggPPPkBeyuJo/sn/PyFD
         I0b2aiw0ccUDYnKY+CcqzSftN18DhWXggPjb/Ymb2q3ypEYeeicAVrPWZhPH5iyN29EG
         PwDiLXJGojerEsAhSUV54BuZTOiLlrNEA7h1g8zTRDlP7Stq99y0sFXxyxeJuVLCO5lL
         mA6HvoFhJnnarbZBStWcUg77ED1Pe2Mzp9KkfFGUkj/hO1ep6X6u0KL2FqzPjq9cm0td
         1RU1JgYg5VULnEycqxWIGFnDD3RdErAP8zctMO4kwQCirJ2306OGTGSWfBF5B7qw7o90
         ANjg==
X-Gm-Message-State: AOJu0YyGFmo885J/EcjRF+z4rV9Kw28sO6QlUnC8XTL3MRgjxjUYqgWO
	xTzA1xadh3H3DnZiU71CJQBwElKy5+WmvEvjIS4=
X-Google-Smtp-Source: AGHT+IF1G34r6cm8vMu/bXXwaMqnblKv3w1itMr8e1W0/KkBZ7RueirXtjIlAqju5LO/oQRnSsQ9D66zRw06dgwbdk8=
X-Received: by 2002:a05:6358:6f06:b0:13c:eea2:d021 with SMTP id
 r6-20020a0563586f0600b0013ceea2d021mr3677892rwn.9.1696462880856; Wed, 04 Oct
 2023 16:41:20 -0700 (PDT)
MIME-Version: 1.0
References: <20231004091552.3531659-1-hugues.fruchet@foss.st.com> <20231004091552.3531659-4-hugues.fruchet@foss.st.com>
In-Reply-To: <20231004091552.3531659-4-hugues.fruchet@foss.st.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 4 Oct 2023 18:41:09 -0500
Message-ID: <CAHCN7xKrriTPaRMJ-r86cSgFDUUP1At08imLBr_zEP0g3fga_g@mail.gmail.com>
Subject: Re: [PATCH 3/7] dt-bindings: media: Document STM32MP25 VENC video encoder
To: Hugues Fruchet <hugues.fruchet@foss.st.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, linux-media@vger.kernel.org, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-stm32@st-md-mailman.stormreply.com, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_164123_389285_330E51C1 
X-CRM114-Status: GOOD (  17.82  )
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

T24gV2VkLCBPY3QgNCwgMjAyMyBhdCA0OjE24oCvQU0gSHVndWVzIEZydWNoZXQKPGh1Z3Vlcy5m
cnVjaGV0QGZvc3Muc3QuY29tPiB3cm90ZToKPgo+IEFkZCBTVE0zMk1QMjUgVkVOQyB2aWRlbyBl
bmNvZGVyIGJpbmRpbmdzLgo+Cj4gU2lnbmVkLW9mZi1ieTogSHVndWVzIEZydWNoZXQgPGh1Z3Vl
cy5mcnVjaGV0QGZvc3Muc3QuY29tPgo+IC0tLQo+ICAuLi4vYmluZGluZ3MvbWVkaWEvc3Qsc3Rt
MzJtcDI1LXZlbmMueWFtbCAgICAgfCA1NiArKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBj
aGFuZ2VkLCA1NiBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvc3Qsc3RtMzJtcDI1LXZlbmMueWFtbAo+Cj4g
ZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdCxz
dG0zMm1wMjUtdmVuYy55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21l
ZGlhL3N0LHN0bTMybXAyNS12ZW5jLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4
IDAwMDAwMDAwMDAwMC4uYzY5ZTBhMzRmNjc1Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZWRpYS9zdCxzdG0zMm1wMjUtdmVuYy55YW1s
Cj4gQEAgLTAsMCArMSw1NiBAQAo+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIu
MCBPUiBCU0QtMi1DbGF1c2UpCj4gKwo+ICslWUFNTCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDov
L2RldmljZXRyZWUub3JnL3NjaGVtYXMvbWVkaWEvc3Qsc3RtMzJtcDI1LXZlbmMueWFtbCMKCkNh
biB0aGlzIGR0LWJpbmRpbmcgYmUgbWFkZSBtb3JlIGdlbmVyaWMsIGxpa2Ugc29tZXRoaW5nIGxp
a2UKaGFudHJvLWgxIG9yIFZDODAwME5hbm9FPwoKSSB0aGluayB0aGVyZSB3aWxsIGJlIG1vcmUg
Ym9hcmRzIHRoYXQgbWF5IGluY29ycG9yYXRlIHRoZSBIYW50cm8tSDEKb3IgYSBWQzgwMDAgaW4g
dGhlIGZ1dHVyZSwgYmVjYXVzZSBJIGRvbid0IHRoaW5rIHRoaXMgSVAgaXMgdW5pcXVlIHRvCnRo
ZSBTVE0zMk1QMjUuCgphZGFtCgo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0
YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBTVE1pY3JvZWxlY3Ryb25pY3MgU1RN
MzJNUDI1IFZFTkMgdmlkZW8gZW5jb2Rlcgo+ICsKPiArbWFpbnRhaW5lcnM6Cj4gKyAgLSBIdWd1
ZXMgRnJ1Y2hldCA8aHVndWVzLmZydWNoZXRAZm9zcy5zdC5jb20+Cj4gKwo+ICtkZXNjcmlwdGlv
bjoKPiArICBUaGUgU1RNaWNyb2VsZWN0cm9uaWNzIFNUTTMyTVAyNSBTT0NzIGVtYmVkcyBhIFZF
TkMgdmlkZW8gaGFyZHdhcmUgZW5jb2Rlcgo+ICsgIHBlcmlwaGVyYWwgYmFzZWQgb24gVmVyaXNp
bGljb24gVkM4MDAwTmFub0UgSVAgKGZvcm1lciBIYW50cm8gSDEpLgo+ICsKPiArcHJvcGVydGll
czoKPiArICBjb21wYXRpYmxlOgo+ICsgICAgY29uc3Q6IHN0LHN0bTMybXAyNS12ZW5jCj4gKwo+
ICsgIHJlZzoKPiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICsgIGludGVycnVwdHM6Cj4gKyAgICBt
YXhJdGVtczogMQo+ICsKPiArICBpbnRlcnJ1cHQtbmFtZXM6Cj4gKyAgICBtYXhJdGVtczogMQo+
ICsKPiArICBjbG9ja3M6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICBjbG9jay1uYW1lczoK
PiArICAgIG1heEl0ZW1zOiAxCj4gKwo+ICtyZXF1aXJlZDoKPiArICAtIGNvbXBhdGlibGUKPiAr
ICAtIHJlZwo+ICsgIC0gaW50ZXJydXB0cwo+ICsgIC0gaW50ZXJydXB0LW5hbWVzCj4gKyAgLSBj
bG9ja3MKPiArICAtIGNsb2NrLW5hbWVzCj4gKwo+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFs
c2UKPiArCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2ludGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPiArICAgIHZlbmM6IHZlbmNANTgwZTAw
MDAgewo+ICsgICAgICAgIGNvbXBhdGlibGUgPSAic3Qsc3RtMzJtcDI1LXZlbmMiOwo+ICsgICAg
ICAgIHJlZyA9IDwweDU4MGUwMDAwIDB4ODAwPjsKPiArICAgICAgICBpbnRlcnJ1cHRzID0gPEdJ
Q19TUEkgMTY3IElSUV9UWVBFX0xFVkVMX0hJR0g+Owo+ICsgICAgICAgIGludGVycnVwdC1uYW1l
cyA9ICJ2ZW5jIjsKCgpJcyB0aGUgaW50ZXJydXB0LW5hbWVzIG5lZWRlZCBpZiB0aGVyZSBpcyBv
bmx5IG9uZT8KCj4gKyAgICAgICAgY2xvY2tzID0gPCZja19pY25fcF92ZW5jPjsKPiArICAgICAg
ICBjbG9jay1uYW1lcyA9ICJ2ZW5jLWNsayI7CgpTYW1lIHRoaW5nIGZvciB0aGUgY2xvY2suICBp
ZiB0aGVyZSBpcyBvbmx5IG9uZSBjbG9jaywgZG9lIHRoZXkgbmVlZCBuYW1lcz8KCmFkYW0KPiAr
ICAgIH07Cj4gLS0KPiAyLjI1LjEKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
