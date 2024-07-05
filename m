Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 270AFC30658
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jul 2024 11:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDZ9RKg82mS8ETccj7RDE0VYSAAjzP9xB6HXG9/aUqU=; b=JlUMzKwh4+TjcE
	4FP64wGky25bue5kCHI7ccgvyoJfTWXEiYiSMnx9DS/flZcd6wLx4iHQtyBOtGdj4rTJsLpBvS1mc
	vf+9bRli13YUzdhQAQhoTxOcimyqYbM8HKAAzdaNbugd29gO9vQ5RgPiuC5plkx3HOlMIhgAlzYrw
	cwN7wx4EUxGn5XQe/ecGOH4wqYkUroK/v0kt15/ZpofHBWlZ9CxCLehiRXLCzaAlZXPiSnCPxZ1Qd
	hEdrzRRR46tiTysqkScBSwDQfaHnolB06QA9JZtE1aiV9W6BSa5OXQde3djN/m5d4ZiMNB7EIns14
	qU3EcgukwVK6r4BL4Ydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPgxj-0000000FlZX-1zhE;
	Fri, 05 Jul 2024 11:18:47 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPgxT-0000000FlTk-06fq
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jul 2024 11:18:33 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2ee910d6aaeso15095631fa.1
        for <linux-rockchip@lists.infradead.org>; Fri, 05 Jul 2024 04:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720178309; x=1720783109; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OgGdrMJAOOlmaDA5n6UZ/NcHyTcSq/fRMMLBh3RpPPA=;
        b=WE4RZ5iog5RJavJG7+crNEyXkR4wGWblrcdJS2pFf1eR7CsYZN/uUhCFPteiCdTK8P
         W6XLgG+8j+5zuPUOt+mh3QhDxxc3H+2/yIPBEwSsDjLUUos7n/T09zna8o5z5gXA57EC
         iUyK/qqudAfDcLxewYL/YcyG6dfU/Vng+M4XqoAlxapYQjf89s2ytZkptinVC1fv65ef
         sVUOGeqiJFg49kS6nmMzuC8TPpIWjUCvZ83ouWV5t/HHCMdJnt3y6qx+fhsvGVIkW6Nw
         zf/gXWJrzFWrvTPJ/pmViLo41lJ069dBFTYyNC4prY1rGDpuhnQ/WsxhvOQ1NwTWScyR
         I2lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720178309; x=1720783109;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OgGdrMJAOOlmaDA5n6UZ/NcHyTcSq/fRMMLBh3RpPPA=;
        b=GE4fVAL0L4OIunwxvF7/XhQ2hcvrodapbKuU6pbCXammDvbAsQAyAgouak/4wLh7n7
         YxH90I0ExBVnsljpXyprfiiq4IjL0bnab6tnh0RCjhZDzl3lf94XwqkuF4aG191LBKPD
         MRsa16yGCDFJrBCFDFrUOhgki0/fNeGO9mlrnbVw21B54x2B+HjWjBskJEGREMUTHJQm
         zlGbIqV9U3JRpabfyrNZicqBVpq1iAYNmYSI3a7xtQq2wkSuV78r10Dajv3vbGEkLHqv
         2BeDd72TrAepmn6ExvzKk/2kRSKjJzVVAE5rm3JFn2e5Z4i7KpVxOkvA08kbx6vAu0Ac
         R/+A==
X-Forwarded-Encrypted: i=1; AJvYcCUVxG68hncbXykelwpdgmLoGG6n9XpwJgXrsYDxAAgDMxrRTajUNhqSdzSstmTblAfIFW8Pq/CNxOGbc7BoLnHN3b4tqvbuRvr9zGBWzAaN3F3H
X-Gm-Message-State: AOJu0YxyvxVUR0IIP7lrfC1eC/Oz6ouGec0LiBePF1MA8jAV2W6AcMJV
	iVJG5qJQ7EqThh6tpho5QmTAmCQFu9bfs4TJxn3tjkFdH9BSOsw7QsW3IiSORio=
X-Google-Smtp-Source: AGHT+IHyMkgn3/gFNE4gv4OJO59bQCoHWgHlPXJAezaplNmRkJ1y1keb/pz2mmb4jwElkz5448BGKA==
X-Received: by 2002:a2e:2e06:0:b0:2ee:8815:8b28 with SMTP id 38308e7fff4ca-2ee8edd3ec5mr24871001fa.33.1720178308668;
        Fri, 05 Jul 2024 04:18:28 -0700 (PDT)
Received: from ?IPV6:2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0? ([2a05:6e02:1041:c10:c49e:e1a5:3210:b8c0])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3678fe13ef4sm7369352f8f.117.2024.07.05.04.18.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jul 2024 04:18:28 -0700 (PDT)
Message-ID: <2aa71d0f-6e4a-4056-9deb-a46526b423a9@linaro.org>
Date: Fri, 5 Jul 2024 13:18:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RESEND 00/22] dt-bindings: thermal: few cleanups
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Zhang Rui <rui.zhang@intel.com>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Fabio Estevam <festevam@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-sunxi@lists.linux.dev, imx@lists.linux.dev,
 linux-tegra@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Florian Fainelli <f.fainelli@gmail.com>,
 linux-rpi-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Conor Dooley <conor.dooley@microchip.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Amit Kucheria <amitk@kernel.org>,
 =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>,
 Heiko Stuebner <heiko@sntech.de>, Biju Das <biju.das.jz@bp.renesas.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
References: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20240705-dt-bindings-thermal-allof-v1-0-554061b52fbc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240705_041831_108811_DF7CDF07 
X-CRM114-Status: GOOD (  10.74  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMDUvMDcvMjAyNCAxMTo1MSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBIaSwKPiAK
PiBSZXNlbmRpbmcgKHdpdGggYWRkZWQgdGFncykgYmVjYXVzZSBwYXRjaHNldCB3YXMgc3RpbGwg
bm90IGFwcGxpZWQuCj4gRGFuaWVsLCBjYW4geW91IHBpY2sgaXQgdXA/CgpZZXMKCj4gRmV3IGNs
ZWFudXBzIHdpdG91dCBwcmFjdGljYWwgaW1wYWN0LCBleGNlcHQgbWF5YmUgdGhlIEFtbG9naWMg
c2NoZW1hCj4gKGJyaW5naW5nIHJlcXVpcmVkIGNlbGxzKS4KPiAKPiBMaW5rIHRvIHYxOiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQwNjE0LWR0LWJpbmRpbmdzLXRoZXJtYWwtYWxsb2Yt
djEtMC0zMGIyNWE2YWUyNGVAbGluYXJvLm9yZwo+IAo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0
b2YKPiAKPiAtLS0KPiBLcnp5c3p0b2YgS296bG93c2tpICgyMik6Cj4gICAgICAgIGR0LWJpbmRp
bmdzOiB0aGVybWFsOiBzYW1zdW5nLGV4eW5vczogc3BlY2lmeSBjZWxscwo+ICAgICAgICBkdC1i
aW5kaW5nczogdGhlcm1hbDogYW1sb2dpYzogcmVmZXJlbmNlIHRoZXJtYWwtc2Vuc29yIHNjaGVt
YQo+ICAgICAgICBkdC1iaW5kaW5nczogdGhlcm1hbDogYWxsd2lubmVyLHN1bjhpLWE4M3QtdGhz
OiByZWZlcmVuY2UgdGhlcm1hbC1zZW5zb3Igc2NoZW1hCj4gICAgICAgIGR0LWJpbmRpbmdzOiB0
aGVybWFsOiBicmNtLGF2cy1ybzogcmVmZXJlbmNlIHRoZXJtYWwtc2Vuc29yIHNjaGVtYQo+ICAg
ICAgICBkdC1iaW5kaW5nczogdGhlcm1hbDogZ2VuZXJpYy1hZGM6IHJlZmVyZW5jZSB0aGVybWFs
LXNlbnNvciBzY2hlbWEKPiAgICAgICAgZHQtYmluZGluZ3M6IHRoZXJtYWw6IGlteDhtbTogcmVm
ZXJlbmNlIHRoZXJtYWwtc2Vuc29yIHNjaGVtYQo+ICAgICAgICBkdC1iaW5kaW5nczogdGhlcm1h
bDogbnZpZGlhLHRlZ3JhMTg2LWJwbXA6IHJlZmVyZW5jZSB0aGVybWFsLXNlbnNvciBzY2hlbWEK
PiAgICAgICAgZHQtYmluZGluZ3M6IHRoZXJtYWw6IG52aWRpYSx0ZWdyYTMwLXRzZW5zb3I6IHJl
ZmVyZW5jZSB0aGVybWFsLXNlbnNvciBzY2hlbWEKPiAgICAgICAgZHQtYmluZGluZ3M6IHRoZXJt
YWw6IHFjb20tc3BtaS1hZGMtdG0taGM6IHJlZmVyZW5jZSB0aGVybWFsLXNlbnNvciBzY2hlbWEK
PiAgICAgICAgZHQtYmluZGluZ3M6IHRoZXJtYWw6IHFjb20tc3BtaS1hZGMtdG01OiByZWZlcmVu
Y2UgdGhlcm1hbC1zZW5zb3Igc2NoZW1hCj4gICAgICAgIGR0LWJpbmRpbmdzOiB0aGVybWFsOiBx
Y29tLXRzZW5zOiByZWZlcmVuY2UgdGhlcm1hbC1zZW5zb3Igc2NoZW1hCj4gICAgICAgIGR0LWJp
bmRpbmdzOiB0aGVybWFsOiBxb3JpcTogcmVmZXJlbmNlIHRoZXJtYWwtc2Vuc29yIHNjaGVtYQo+
ICAgICAgICBkdC1iaW5kaW5nczogdGhlcm1hbDogcmNhci1nZW4zOiByZWZlcmVuY2UgdGhlcm1h
bC1zZW5zb3Igc2NoZW1hCj4gICAgICAgIGR0LWJpbmRpbmdzOiB0aGVybWFsOiByb2NrY2hpcDog
cmVmZXJlbmNlIHRoZXJtYWwtc2Vuc29yIHNjaGVtYQo+ICAgICAgICBkdC1iaW5kaW5nczogdGhl
cm1hbDogcnpnMmw6IHJlZmVyZW5jZSB0aGVybWFsLXNlbnNvciBzY2hlbWEKPiAgICAgICAgZHQt
YmluZGluZ3M6IHRoZXJtYWw6IHNvY2lvbmV4dCx1bmlwaGllcjogcmVmZXJlbmNlIHRoZXJtYWwt
c2Vuc29yIHNjaGVtYQo+ICAgICAgICBkdC1iaW5kaW5nczogdGhlcm1hbDogc3ByZDogcmVmZXJl
bmNlIHRoZXJtYWwtc2Vuc29yIHNjaGVtYQo+ICAgICAgICBkdC1iaW5kaW5nczogdGhlcm1hbDog
c3Qsc3RtMzI6IHJlZmVyZW5jZSB0aGVybWFsLXNlbnNvciBzY2hlbWEKPiAgICAgICAgZHQtYmlu
ZGluZ3M6IHRoZXJtYWw6IHRpLGFtNjU0OiByZWZlcmVuY2UgdGhlcm1hbC1zZW5zb3Igc2NoZW1h
Cj4gICAgICAgIGR0LWJpbmRpbmdzOiB0aGVybWFsOiB0aSxqNzJ4eDogcmVmZXJlbmNlIHRoZXJt
YWwtc2Vuc29yIHNjaGVtYQo+ICAgICAgICBkdC1iaW5kaW5nczogdGhlcm1hbDogc2ltcGxpZnkg
ZmV3IGJpbmRpbmdzCj4gICAgICAgIGR0LWJpbmRpbmdzOiB0aGVybWFsOiBjbGVhbnVwIGV4YW1w
bGVzIGluZGVudGF0aW9uCj4gCj4gICAuLi4vYmluZGluZ3MvdGhlcm1hbC9hbGx3aW5uZXIsc3Vu
OGktYTgzdC10aHMueWFtbCB8ICA2ICstCj4gICAuLi4vYmluZGluZ3MvdGhlcm1hbC9hbWxvZ2lj
LHRoZXJtYWwueWFtbCAgICAgICAgICB8IDIyICsrLS0tCj4gICAuLi4vYmluZGluZ3MvdGhlcm1h
bC9icmNtLGF2cy1yby10aGVybWFsLnlhbWwgICAgICB8IDIyICsrLS0tCj4gICAuLi4vZGV2aWNl
dHJlZS9iaW5kaW5ncy90aGVybWFsL2JyY20sYXZzLXRtb24ueWFtbCB8IDE3ICsrLS0KPiAgIC4u
Li9iaW5kaW5ncy90aGVybWFsL2JyY20sYmNtMjgzNS10aGVybWFsLnlhbWwgICAgIHwgIDEgLQo+
ICAgLi4uL2JpbmRpbmdzL3RoZXJtYWwvZnNsLHNjdS10aGVybWFsLnlhbWwgICAgICAgICAgfCAg
MSAtCj4gICAuLi4vYmluZGluZ3MvdGhlcm1hbC9nZW5lcmljLWFkYy10aGVybWFsLnlhbWwgICAg
ICB8ICA1ICstCj4gICAuLi4vYmluZGluZ3MvdGhlcm1hbC9pbXg4bW0tdGhlcm1hbC55YW1sICAg
ICAgICAgICB8ICA1ICstCj4gICAuLi4vYmluZGluZ3MvdGhlcm1hbC9sb29uZ3NvbixsczJrLXRo
ZXJtYWwueWFtbCAgICB8ICAxIC0KPiAgIC4uLi9iaW5kaW5ncy90aGVybWFsL21lZGlhdGVrLGx2
dHMtdGhlcm1hbC55YW1sICAgIHwgIDEgLQo+ICAgLi4uL2JpbmRpbmdzL3RoZXJtYWwvbnZpZGlh
LHRlZ3JhMTI0LXNvY3RoZXJtLnlhbWwgfCAgMSAtCj4gICAuLi4vdGhlcm1hbC9udmlkaWEsdGVn
cmExODYtYnBtcC10aGVybWFsLnlhbWwgICAgICB8IDEyICstLQo+ICAgLi4uL2JpbmRpbmdzL3Ro
ZXJtYWwvbnZpZGlhLHRlZ3JhMzAtdHNlbnNvci55YW1sICAgfCAgOSArLQo+ICAgLi4uL2JpbmRp
bmdzL3RoZXJtYWwvcWNvbSxzcG1pLXRlbXAtYWxhcm0ueWFtbCAgICAgfCAgMSAtCj4gICAuLi4v
YmluZGluZ3MvdGhlcm1hbC9xY29tLXNwbWktYWRjLXRtLWhjLnlhbWwgICAgICB8ICA4ICstCj4g
ICAuLi4vYmluZGluZ3MvdGhlcm1hbC9xY29tLXNwbWktYWRjLXRtNS55YW1sICAgICAgICB8ICA4
ICstCj4gICAuLi4vZGV2aWNldHJlZS9iaW5kaW5ncy90aGVybWFsL3Fjb20tdHNlbnMueWFtbCAg
ICB8IDk2ICsrKysrKysrKystLS0tLS0tLS0tLS0KPiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3RoZXJtYWwvcW9yaXEtdGhlcm1hbC55YW1sIHwgIDUgKy0KPiAgIC4uLi9iaW5kaW5ncy90aGVy
bWFsL3JjYXItZ2VuMy10aGVybWFsLnlhbWwgICAgICAgIHwgNjkgKysrKysrKystLS0tLS0tLQo+
ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1hbC9yY2FyLXRoZXJtYWwueWFtbCAgfCA2
MCArKysrKysrLS0tLS0tLQo+ICAgLi4uL2JpbmRpbmdzL3RoZXJtYWwvcm9ja2NoaXAtdGhlcm1h
bC55YW1sICAgICAgICAgfCAgNSArLQo+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvdGhlcm1h
bC9yemcybC10aGVybWFsLnlhbWwgfCA0MSArKysrLS0tLS0KPiAgIC4uLi9iaW5kaW5ncy90aGVy
bWFsL3NhbXN1bmcsZXh5bm9zLXRoZXJtYWwueWFtbCAgIHwgIDMgKy0KPiAgIC4uLi90aGVybWFs
L3NvY2lvbmV4dCx1bmlwaGllci10aGVybWFsLnlhbWwgICAgICAgIHwgIDUgKy0KPiAgIC4uLi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3RoZXJtYWwvc3ByZC10aGVybWFsLnlhbWwgIHwgNDcgKysrKyst
LS0tLS0KPiAgIC4uLi9iaW5kaW5ncy90aGVybWFsL3N0LHN0bTMyLXRoZXJtYWwueWFtbCAgICAg
ICAgIHwgIDUgKy0KPiAgIC4uLi9iaW5kaW5ncy90aGVybWFsL3RpLGFtNjU0LXRoZXJtYWwueWFt
bCAgICAgICAgIHwgMTUgKystLQo+ICAgLi4uL2JpbmRpbmdzL3RoZXJtYWwvdGksajcyeHgtdGhl
cm1hbC55YW1sICAgICAgICAgfCAgNSArLQo+ICAgMjggZmlsZXMgY2hhbmdlZCwgMjMwIGluc2Vy
dGlvbnMoKyksIDI0NiBkZWxldGlvbnMoLSkKPiAtLS0KPiBiYXNlLWNvbW1pdDogMGI1OGUxMDgw
NDJiMGVkMjhhNzFjZDdlZGY1MTc1OTk5OTU1YjIzMwo+IGNoYW5nZS1pZDogMjAyNDA2MTQtZHQt
YmluZGluZ3MtdGhlcm1hbC1hbGxvZi00MDFjNTBlNjFlZjIKPiAKPiBCZXN0IHJlZ2FyZHMsCgot
LSAKPGh0dHA6Ly93d3cubGluYXJvLm9yZy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNv
ZnR3YXJlIGZvciBBUk0gU29DcwoKRm9sbG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29r
LmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vib29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5h
cm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDovL3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxv
ZwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
