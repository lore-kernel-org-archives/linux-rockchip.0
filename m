Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA126EE57D3
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Dec 2025 02:58:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qcM+trS5Zvh78wVu3ResFfRn6QCsxHG0Zy9IDPfCC0Q=; b=cfS1nb2CXOJ1WD
	N+HJb7eC987Pgdcg9t4RKRiykeVV9+mNjNJ7JY9/wdW1tFKLu8nITgC5sesBnH8tWDKFogeg2ILAA
	Nbje3q545456hGrCLBMfNQcxJxY3HohvWq7/WRbYjRkfBn9tJ8w2l1CETtZEMOO66WjqeBmN3sWj3
	dqaX3K47BeRKIdhHqD76ySeMxjduPxjpHXptozfRuCIUZUab7ol1CYqwbw7vKG8RoGj7uCXYNoVDG
	/H2l1koiSOPaDauDMW4sI3SmSuoe67jpxILXRAoNbydProlrTJao6LmjGpce+CLqYP20CqmLSRytZ
	ishLVGBgBdKNXZ4E+uCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vamQA-00000005c3h-00Re;
	Wed, 31 Dec 2025 02:58:46 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vamQ5-00000005c0Z-1yID
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Dec 2025 02:58:42 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-42fb2314eb0so8087046f8f.2
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Dec 2025 18:58:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767149919; x=1767754719; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tjOF9AP1kWt7dtM4qZ2BnQTZbb0vLZh3HtXtIU2plOE=;
        b=b20N1tS9OphmoJ/Ovc0EIOJKwhEQ2l0EDBzrJjRsZqyrVY+tAyl3OpKxtMXLdkN87l
         ohrQY+B0/G6h6+qKJ9RCCGp8tcR+Co+6dn8a6KDkf7UAEDvAIe0laI48/q8J3CKBK8ZL
         l5TpB031SfJDEb1XHsnrv91gxjW4JgzXQSndUnfkhfKntl8ekgTtO3eH2QRmfnOwNdr+
         BiFgocGdh+eqinZtgxK9JTfOM7yLhkH7Mo7tCC69PB6IIbN/uOTNtJ0N799EcYp1YQLG
         Dl6NGGZC2UBi4ZNfVv4NRCzRv36HPxf/pgfJaqkr6+RpgKCKmSn3rAMYq7MjPuOX9y42
         G1IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767149919; x=1767754719;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tjOF9AP1kWt7dtM4qZ2BnQTZbb0vLZh3HtXtIU2plOE=;
        b=tX4h3T2U3EVj3m3MzarL8UIFtkXWr9Bq0Iw5zalnv6DSs4cwsA2VzPR6oJQcSZ28V4
         9Mb7U77QiVF8uB1KKuq/+QpXDXJh5rwobGq/8r9VKX/gJgK90ZUOiQ/Dzr/DT/eFjQBZ
         +zYCABaUr9Jz79q1ciVpGCMATr1Bri4ERW6IigSt7d0Q3/RrQ1+bPTsBGw8FSIWXLs+6
         TLNHpAC9F/aVLtIf+DB9+S5j4qfFWpTaqt3tJ4wCdUH6DPKpBvn+QUBI12AwZcVsyVv5
         Ue9yC15nEiNefXUD7M85UMExAjB2oAeAH7DhZOVDRv+q2CuvPcmf7dg1KQKZNJCI3wss
         mGmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXU8rsDzR6mMB3BuA3/qwBaFhNzuW8kyNMwlMCuTP+t+qcnBxiIbp0m0EGs5PnizuSHb/O1aGw6HUaPdcilag==@lists.infradead.org
X-Gm-Message-State: AOJu0YxmeWjcE2VHJE+y4q6aqoIzXKVe2J0n20kC4dCoP3GzD/y4bS7V
	GJsahLFUQdiymkTM6ONvVvN2vFDax4rgPCHcRLJ1pdihTQ7CjoagkfAsoHfju/fMv0eAbs7mXvg
	O4J1m1WQPVQNmHoeNGUMhGHK4dQsLyw0=
X-Gm-Gg: AY/fxX7+VSfDjX/vS1z2t2ONz+WyoGYABOMHfbzzaoEz9rhEHrT+faa7dIfH3HBhMKj
	pXn9l72fB4HjnPT3UjH212j8IVBfSe3vC5B/qH76F4Z2TOdQxYq0wp0tnAlzXXT36sv8DwWK/lM
	R9Cy/r+k4NSk0Mcuxfx9to2qRfUdX32oNpywmDZrc+dBpN3g5ULeuReGov6MGwd5ya9DqovCsCH
	3PX5oczGS+NMdlhspBtmnrnXGy7q+AZcayo/oqoXwuo/TmrKsJjyYg8z+srgQ1TsqIVe54+k41L
	SD+SFElKhou2D74gAwBB4B+DLa4=
X-Google-Smtp-Source: AGHT+IED0/tBR9xef6QSyYr/ksg8LXHa3v+MUTMcvi0rmIK6StQUKqxOWmDb2kvsqCq0GK7718Mu28JTd3JN67IAXiA=
X-Received: by 2002:a05:6000:40dc:b0:432:8667:51c7 with SMTP id
 ffacd0b85a97d-43286675205mr16586415f8f.44.1767149918957; Tue, 30 Dec 2025
 18:58:38 -0800 (PST)
MIME-Version: 1.0
References: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
In-Reply-To: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 30 Dec 2025 20:58:28 -0600
X-Gm-Features: AQt7F2pDJ_ScaKl1BWdf-T290QF_8Ch1DTovPrz3SxZy6maCo-TigDI5eUGwzL4
Message-ID: <CALWfF7KHyKmDcEL9=mYzfCRWc_cymNscoFdeXr8P2frJeww5vA@mail.gmail.com>
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Enable the NPU on some rk3588 boards
To: ricardo@pardini.net
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, nicolas.frattaroli@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_185841_553278_43DBB96D 
X-CRM114-Status: GOOD (  14.07  )
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

T24gVHVlLCBEZWMgMzAsIDIwMjUgYXQgMjoyMOKAr1BNIFJpY2FyZG8gUGFyZGluaSB2aWEgQjQg
UmVsYXkKPGRldm51bGwrcmljYXJkby5wYXJkaW5pLm5ldEBrZXJuZWwub3JnPiB3cm90ZToKPgo+
IFRoaXMgc2VyaWVzIGVuYWJsZXMgdGhlIE5QVSBvbiBhIGZldyBSb2NrY2hpcCByazM1ODggYm9h
cmRzLgo+IEluIGV2ZXJ5IGNhc2UgaGVyZSwgdGhlIHJlcXVpcmVkIHJlZ3VsYXRvciB3YXMgYWxy
ZWFkeSBkZXNjcmliZWQuCk5vdyB0aGF0IHRoZSBwZF9ucHUgaGFzIGRlZmluZWQgdGhlIGRlcGVu
ZGVuY3kgdG8gdGhlIHZkZF9ucHVfczAsCnNob3VsZG4ndCB0aGUgcmVndWxhdG9yLWFsd2F5cy1v
biBiZSByZW1vdmVkIGZyb20gdGhlIHJlZ3VsYXRvcj8gV2hlbgp0aGUgUm9jazVCIGVuYWJsZWQg
dGhlIE5QVSwgaXQgZGlkbid0IGRlZmluZSB0aGUgcmVndWxhdG9yIHdpdGggYWx3YXlzCm9uLiBb
MV0KCk1vcmUgc3BlY2lmaWNhbGx5LCB0aGUgY29tbWl0IG1lc3NhZ2UgZm9yIHRoZSBpbnRyb2R1
Y3Rpb24gb2YgdGhlCnBkX25wdSBsYWJlbCBtZW50aW9ucyBob3cgdGhlIHJlZ3VsYXRvciBubyBs
b25nZXIgbmVlZHMgdG8gYmUgYWx3YXlzCm9uLiBbMl0KClsxXSBodHRwczovL2xvcmUua2VybmVs
Lm9yZy9saW51eC1yb2NrY2hpcC8yMDI1MDcyMS02LTEwLXJvY2tldC12OS0xMC03N2ViZDQ4NDk0
MWVAdG9tZXV2aXpvc28ubmV0LwpbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9j
a2NoaXAvMjAyNTA3MjEtNi0xMC1yb2NrZXQtdjktNy03N2ViZDQ4NDk0MWVAdG9tZXV2aXpvc28u
bmV0LwoKSmltbXkKCj4KPiBTaWduZWQtb2ZmLWJ5OiBSaWNhcmRvIFBhcmRpbmkgPHJpY2FyZG9A
cGFyZGluaS5uZXQ+Cj4gLS0tCj4gUmljYXJkbyBQYXJkaW5pICgzKToKPiAgICAgICBhcm02NDog
ZHRzOiByb2NrY2hpcDogRW5hYmxlIHRoZSBOUFUgb24gTmFub1BDIFQ2L1Q2LUxUUwo+ICAgICAg
IGFybTY0OiBkdHM6IHJvY2tjaGlwOiBFbmFibGUgdGhlIE5QVSBvbiBGcmllbmRseUVsZWMgQ00z
NTg4Cj4gICAgICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEVuYWJsZSB0aGUgTlBVIG9uIFR1cmlu
ZyBSSzEKPgo+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU4OC1mcmllbmRseWVsZWMtY20zNTg4LmR0
c2kgICB8IDM0ICsrKysrKysrKysrKysrKysrKysrKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1uYW5vcGMtdDYuZHRzaSB8IDM1ICsrKysrKysrKysrKysrKysrKysrKysK
PiAgLi4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10dXJpbmctcmsxLmR0c2kgfCAz
NCArKysrKysrKysrKysrKysrKysrKysKPiAgMyBmaWxlcyBjaGFuZ2VkLCAxMDMgaW5zZXJ0aW9u
cygrKQo+IC0tLQo+IGJhc2UtY29tbWl0OiA5NDQ4NTk4YjIyYzUwYzhhNWJiNzdhOTEwM2UyZDQ5
ZjEzNGM5NTc4Cj4gY2hhbmdlLWlkOiAyMDI1MTIzMC1hcm02NC1kdHMtcm9ja2NoaXAtcmszNTg4
LW5wdS1lbmFibGVtZW50cy0xZTI4MzBkMmU3YjAKPgo+IEJlc3QgcmVnYXJkcywKPiAtLQo+IFJp
Y2FyZG8gUGFyZGluaSA8cmljYXJkb0BwYXJkaW5pLm5ldD4KPgo+Cj4KPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
