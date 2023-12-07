Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2257C10F05
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 17:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJnYZvWrtzmXTwE5iJfCINtpBpef9Tv+LbUhJ+hNb8o=; b=H7vXAQ53D9HhGn
	TlfgleD2tWbZ7ubl9oCXaGzBEm3W26NRI8srQfocSikXC5NZLJZM+shzy7KZjx6G56jJrmWQwJFEX
	2sEmA6nWnkLELwnHRHesVXHOHZSX6Zg7euKqbci1DDvgtYa+xWD+PvUw4SDJ4kzLYmPVi0VLbrCo7
	TGLQR4IHvDFsnfIrdrWnNXxX04jrZS7QqVt/c3EAvOheACQgdka8q+G1+K8HsYV5Uw3VZn4XeO7yb
	jf0Dmji0bg0Gy7FZt+kHnLGssyEjRLfglpeBa2i+jEQOLQMoxfBTo3vaquv4G1LeOHk3RX7pozs5Y
	XDWr/Q8mhzvTZUdGI/Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBIdo-00DaOz-0c;
	Thu, 07 Dec 2023 17:58:28 +0000
Received: from mail-oa1-f50.google.com ([209.85.160.50])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBIdk-00DaNj-2U;
	Thu, 07 Dec 2023 17:58:26 +0000
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-1efb9571b13so783290fac.2;
        Thu, 07 Dec 2023 09:58:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701971902; x=1702576702;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XlGlC1SkIL9mmE58AXO5RRQ634yhMDTeXthN1KRiRhM=;
        b=jLMY+E0s/SC0EWYiSVQO7PUM6iMllgl2S/3fS/TeYbzk2SyzJwaWX753C4jyiMMrAI
         cOayXAM1AotbLuOfhR1/On35m5nONlr2aAk0AXix/SMkNwIAI09t6Q+/3RZm9kHkK7J5
         DFkFj0C4s+4w/R7vqugnQsDt2MqdCuQZbH8BXeWAqF/mwnWHTFnovmN89F4oPvpDCExX
         jAC0PJu304yJpp8nNcdpUvMJF+01Q6QW4UgffeaurxuJk4nx+Us5Jm58MN+mz1trLTvx
         4uQjoU9mN2zP9escYEcL/QDPUky5AUxV19ZYvVHCASGBxEHS00xPdq3hR15RNt4scRsa
         2Glw==
X-Gm-Message-State: AOJu0YworvhEI3UziHwrI2cqxsYNPScnR6YFsAOHAspe1jBKeQoEUy22
	WnA9WiZWWj57o6+EwSUZTA==
X-Google-Smtp-Source: AGHT+IHxq2Dw8sFsLLI+z4S9TgWxaf6l0cocAGF+yc2TisyC49euiJvcC1n+Yr/0HeIX18RO0y1CyA==
X-Received: by 2002:a05:6870:390c:b0:1fa:fee1:6f1e with SMTP id b12-20020a056870390c00b001fafee16f1emr3075427oap.10.1701971902619;
        Thu, 07 Dec 2023 09:58:22 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id k29-20020a05687022dd00b001fb0edac63csm58231oaf.6.2023.12.07.09.58.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 09:58:22 -0800 (PST)
Received: (nullmailer pid 2977746 invoked by uid 1000);
	Thu, 07 Dec 2023 17:58:20 -0000
Date: Thu, 7 Dec 2023 11:58:20 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Nishanth Menon <nm@ti.com>, linux-mediatek@lists.infradead.org, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Arnd Bergmann <arnd@arndb.de>, 
	Olof Johansson <olof@lixom.net>, linux-arm-msm@vger.kernel.org, linux-doc@vger.kernel.org, 
	Andrew Davis <afd@ti.com>, Andrew Lunn <andrew@lunn.ch>, linux-rockchip@lists.infradead.org, 
	Michal Simek <michal.simek@amd.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Jonathan Corbet <corbet@lwn.net>, Konrad Dybcio <konradybcio@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-amlogic@lists.infradead.org, 
	Bjorn Andersson <andersson@kernel.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	linux-kernel@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>, 
	workflows@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	Heiko Stuebner <heiko@sntech.de>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v4] docs: dt-bindings: add DTS Coding Style document
Message-ID: <170197172648.2974247.13097453111547800548.robh@kernel.org>
References: <20231203174622.18402-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231203174622.18402-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_095824_816798_7285FFB0 
X-CRM114-Status: GOOD (  17.34  )
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

Ck9uIFN1biwgMDMgRGVjIDIwMjMgMTg6NDY6MjIgKzAxMDAsIEtyenlzenRvZiBLb3psb3dza2kg
d3JvdGU6Cj4gRG9jdW1lbnQgcHJlZmVycmVkIGNvZGluZyBzdHlsZSBmb3IgRGV2aWNldHJlZSBz
b3VyY2VzIChEVFMgYW5kIERUU0kpLAo+IHRvIGJyaW5nIGNvbnNpc3RlbmN5IGFtb25nIGFsbCAo
c3ViKWFyY2hpdGVjdHVyZXMgYW5kIGVhc2UgaW4gcmV2aWV3cy4KPiAKPiBDYzogQW5kcmV3IERh
dmlzIDxhZmRAdGkuY29tPgo+IGNjOiBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+Cj4gQ2M6
IEFuZ2Vsb0dpb2FjY2hpbm8gRGVsIFJlZ25vIDxhbmdlbG9naW9hY2NoaW5vLmRlbHJlZ25vQGNv
bGxhYm9yYS5jb20+Cj4gQ2M6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4gQ2M6IEJq
b3JuIEFuZGVyc3NvbiA8YW5kZXJzc29uQGtlcm5lbC5vcmc+Cj4gQ2M6IENoZW4tWXUgVHNhaSA8
d2Vuc0BrZXJuZWwub3JnPgo+IENjOiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292
QGxpbmFyby5vcmc+Cj4gQ2M6IEpvbmF0aGFuIENvcmJldCA8Y29yYmV0QGx3bi5uZXQ+Cj4gQ2M6
IE1hdHRoaWFzIEJydWdnZXIgPG1hdHRoaWFzLmJnZ0BnbWFpbC5jb20+Cj4gQ2M6IE1pY2hhbCBT
aW1layA8bWljaGFsLnNpbWVrQGFtZC5jb20+Cj4gQ2M6IE5laWwgQXJtc3Ryb25nIDxuZWlsLmFy
bXN0cm9uZ0BsaW5hcm8ub3JnPgo+IENjOiBOaXNoYW50aCBNZW5vbiA8bm1AdGkuY29tPgo+IENj
OiBPbG9mIEpvaGFuc3NvbiA8b2xvZkBsaXhvbS5uZXQ+Cj4gQ2M6IFJhZmHFgiBNacWCZWNraSA8
emFqZWM1QGdtYWlsLmNvbT4KPiBBY2tlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5laWwuYXJtc3Ry
b25nQGxpbmFyby5vcmc+Cj4gQWNrZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2gu
ZGU+Cj4gUmV2aWV3ZWQtYnk6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRl
YXNvbmJvYXJkLmNvbT4KPiBBY2tlZC1ieTogS29ucmFkIER5YmNpbyA8a29ucmFkeWJjaW9Aa2Vy
bmVsLm9yZz4KPiBSZXZpZXdlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2Fz
QGdsaWRlci5iZT4KPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0
b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4gCj4gLS0tCj4gCj4gTWVyZ2luZyBpZGVhOiBSb2Iv
RFQgYmluZGluZ3MKPiAKPiBDaGFuZ2VzIGluIHY0Cj4gPT09PT09PT09PT09PQo+IDEuIERyb3Ag
bGFiZWwgYXQgdGhlIHRvcCAoSm9uKQo+IDIuIEdyYW1tYXIgZml4ZXMgKExhdXJlbnQsIERyYWdh
bikKPiAzLiAiVW5sZXNzIGEgYnVzIGRlZmluZXMgZGlmZmVyZW50bHksIHVuaXQgYWRkcmVzc2Vz
IHNoYWxsIC4uLiIgKFJvYikKPiA0LiBVc2UgaGV4IGluIGV4YW1wbGUgb2YgZG1hLWNvbnRyb2xs
ZXIgKEFuZHJldykKPiA1LiBFeGFtcGxlOiBzb2NAIC0+IHNvY0AwCj4gNi4gUmV2ZXJzZSBwb2lu
dHMgMiBhbmQgMyBpbiAiSW5kZW50YXRpb24iIChBbmRyZXcpCj4gNy4gVXNlIGZ1bGwgcGF0aCB0
byBjb2Rpbmcgc3R5bGUgZG9jIChDb25vcikKPiAKPiBDaGFuZ2VzIGluIHYzCj4gPT09PT09PT09
PT09PQo+IDEuIHNob3VsZC0+c2hhbGwgKEFuZ2VsbykKPiAyLiBDb21tZW50cyAvLyAtPiAvKiAo
QW5nZWxvLCBNaWNoYWwpCj4gMy4gVXNlIGltYWdpbmFyeSBleGFtcGxlIGluICJPcmRlciBvZiBQ
cm9wZXJ0aWVzIGluIERldmljZSBOb2RlIgo+ICAgIChBbmdlbG8pCj4gNC4gQWRkZWQgcGFyYWdy
YXBocyBmb3IgdGhyZWUgc2VjdGlvbnMgd2l0aCBqdXN0aWZpY2F0aW9ucyBvZiBjaG9zZW4KPiAg
ICBzdHlsZS4KPiA1LiBBbGxvdyB0d28gc3R5bGUgb2Ygb3JkZXJpbmcgb3ZlcnJpZGVzIGluIGJv
YXJkIERUUzogYWxwaGFiZXRpY2FsbHkgb3IKPiAgICBieSBvcmRlciBvZiBEVFNJIChSb2IpLgo+
IDYuIEkgZGlkIG5vdCBpbmNvcnBvcmF0ZSBmZWVkYmFjayBhYm91dCwgZHVlIHRvIGxhY2sgb2Yg
Y29uc2Vuc3VzIGFuZCBteQo+ICAgIGRpc2FncmVlbWVudDoKPiAgICBhLiBTb00gYmVpbmcgRFRT
IHdpdGhvdXQgRFRTSSBpbiAiT3JnYW5pemluZyBEVFNJIGFuZCBEVFMiCj4gCj4gQ2hhbmdlcyBp
biB2Mgo+ID09PT09PT09PT09PT0KPiAxLiBIb3BlZnVsbHkgaW5jb3Jwb3JhdGUgZW50aXJlIGZl
ZWRiYWNrIGZyb20gY29tbWVudHM6Cj4gYS4gRml4IFwgeyA9PiAvIHsgKFJvYikKPiBiLiBOYW1l
OiBkdHMtY29kaW5nLXN0eWxlIChSb2IpCj4gYy4gRXhjZXB0aW9ucyBmb3Igb3JkZXJpbmcgbm9k
ZXMgYnkgbmFtZSBmb3IgUmVuZXNhcyBhbmQgcGluY3RybCAoR2VlcnQsCj4gICAgS29ucmFkKQo+
IGQuIE9yZGVyaW5nIHByb3BlcnRpZXMgYnkgY29tbW9uL3ZlbmRvciAoUm9iKQo+IGUuIEFycmF5
IGVudHJpZXMgaW4gPD4gKFJvYikKPiAKPiAyLiBOZXcgY2hhcHRlcjogT3JnYW5pemluZyBEVFNJ
IGFuZCBEVFMKPiAKPiAzLiBTZXZlcmFsIGdyYW1tYXIgZml4ZXMgKG1pc3NpbmcgYXJ0aWNsZXMp
Cj4gCj4gQ2M6IGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBDYzogbGludXgt
bWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1zYW1zdW5nLXNvY0B2Z2Vy
Lmtlcm5lbC5vcmcKPiBDYzogbGludXgtYW1sb2dpY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gQ2M6
IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IENjOiBsaW51eC1hcm0tbXNt
QHZnZXIua2VybmVsLm9yZwo+IENjOiB3b3JrZmxvd3NAdmdlci5rZXJuZWwub3JnCj4gQ2M6IGxp
bnV4LWRvY0B2Z2VyLmtlcm5lbC5vcmcKPiAtLS0KPiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3Mv
ZHRzLWNvZGluZy1zdHlsZS5yc3QgIHwgMTk2ICsrKysrKysrKysrKysrKysrKwo+ICBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvaW5kZXgucnN0ICAgfCAgIDEgKwo+ICAyIGZpbGVz
IGNoYW5nZWQsIDE5NyBpbnNlcnRpb25zKCspCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZHRzLWNvZGluZy1zdHlsZS5yc3QKPiAKCkkgYWRk
ZWQgdGhlIHF1b3RlcyBhcyBkaXNjdXNzZWQgYW5kIGFwcGxpZWQsIHRoYW5rcyEKClJvYgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
