Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BC23E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 09:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C3rOTiO/3/K19KjUfE5zOzUwEIWyHwYdf6T1uwEJHbQ=; b=hQmDuhld/sM/d8
	BgzzIJlcv3TyZqhGNRA9YfisrAx48fuAqn9btnvwK28pWeVezqXZ15OtBucOqGiXMUvRjJpxFd0AW
	gVoPDRRk2Q0EPmpOh/SgUYbG9OHlUm5v4WAMiFJ/puf3fhTzWs1/3iObk7OL1HJFg0lpISh3kXTu/
	jykmDjDbnJnqBg2/81EREHiMqxZQsTKNIWFsYPLb8W8xQL7OvaIgDfw/v+e79zMXGbgQI/Yomk23o
	daqS6Hhw7eYF2Q2tFUUp5Zt4Fc2edEhjwgxVKL84iaRZ9FQf7SAr2NPHC+K3jkdCMEGILF2XMOD8I
	fM+br+fi9CViNEn4M4lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKwat-0000000Atej-36mU;
	Tue, 10 Dec 2024 09:31:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKwar-0000000Atca-0Qri
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 09:31:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 083125C4D3F;
	Tue, 10 Dec 2024 09:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A18D4C4CEDD;
	Tue, 10 Dec 2024 09:31:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733823108;
	bh=6lPH23Rh+QszyIdt3YFQp0lH/bK/PD+xajYaYu9MYCU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nWGwe0BAHv1eH5g70SGWxODPXVgEmgIUobhzqWDGqLscy1aaJymKUxa3sZQGjqqFx
	 s/UUmMYinsB45qygSBX1F0BAh1FWtnroJHU1uZOJHGtid/l+/GWdCrT8SWUtQfRqoJ
	 P1if5AephTjRy/Cbe15pPNVLQeLclEbqLn5M1YVN5Yk8ELlE5vtt73oI7Np9F3F7y/
	 DLLCJPMOUp2QAmSKyT1k5VJ3+svFYY7ih17kSEQ8zRxTalMvThC1lFIwpKidjlR1a1
	 Z7KLuU+RoIY6cfOGod+JX4u3pVfuTvOsH/FMTqbCm+OtJ+pd70dbfDHlIJznAyOXEm
	 aIQCqBZt0nOvA==
Date: Tue, 10 Dec 2024 10:31:45 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Kever Yang <kever.yang@rock-chips.com>, 
	linux-rockchip@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko.stuebner@cherry.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Update rockchip company
 name
Message-ID: <btlvyji7avk7n2oghn2m54ipxtreml4pe6mrysrju7brhrghmt@o3ezyi23u535>
References: <20241205082258.857018-1-kever.yang@rock-chips.com>
 <kwx76ihsftsgw3u53l33z4kodihyfcvpqpl2a2nk7aedgnr6e6@2324w7s7zmio>
 <10907239.zapYfy813O@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10907239.zapYfy813O@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_013149_191156_0131913E 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
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

T24gTW9uLCBEZWMgMDksIDIwMjQgYXQgMTE6MDM6MDhBTSArMDEwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gQW0gTW9udGFnLCA5LiBEZXplbWJlciAyMDI0LCAxMDo0Mjo1MCBDRVQgc2Nocmll
YiBLcnp5c3p0b2YgS296bG93c2tpOgo+ID4gT24gVGh1LCBEZWMgMDUsIDIwMjQgYXQgMDQ6MjI6
NThQTSArMDgwMCwgS2V2ZXIgWWFuZyB3cm90ZToKPiA+ID4gUm9ja2NoaXAgY29tcGFueSBuYW1l
IGhhcyB1cGRhdGUgdG8gYmVsb3cgbmFtZSBzaW5jZSAyMDIxOgo+ID4gPiBSb2NrY2hpcCBFbGVj
dHJvbmljcyBDby4sIEx0ZC4KPiA+IAo+ID4gU29tZSByZWZlcmVuY2Ugd291bGQgYmUgdXNlZnVs
LiBXaWtpcGVkaWEgc2F5czoKPiA+IEZ1emhvdSBSb2NrY2hpcCBFbGVjdHJvbmljcyBDby4sIEx0
ZC4KPiAKPiBJIGRpZCBnbyBkaWdnaW5nIGEgYml0Ogo+IAo+IHRoZWlyIG1haW4gZW5nbGlzaCBw
YWdlIFswXSBhdCB0aGUgdmVyeSBib3R0b20gKGluICJ2ZXJ5IHJlYWRhYmxlIgo+IGxpZ2h0IGdy
YXkgb24gZGFyay1ncmV5IDstKSApIHNheXM6Cj4gICAiUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28u
LCBMdGQuIEFsbCByaWdodHMgcmVzZXJ2ZWQiCj4gCj4gU2ltaWxhcmx5IHRoZWlyIGFib3V0LXBh
Z2UgWzFdIHNheXM6Cj4gICAiUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBMdGQuICgiUm9ja2No
aXAiLCBzdG9jayBjb2RlOiA2MDM4OTMpCj4gICAgZXN0YWJsaXNoZWQgaW4gMjAwMSAuLi4iCj4g
Cj4gCj4gSGVpa28KPiAKPiBbMF0gaHR0cHM6Ly93d3cucm9jay1jaGlwcy5jb20vYS9lbi9pbmRl
eC5odG1sCj4gWzFdIGh0dHBzOi8vd3d3LnJvY2stY2hpcHMuY29tL2EvZW4vQWJvdXRfUm9ja2No
aXAvQWJvdXRfUm9ja2NoaXAvaW5kZXguaHRtbAoKCkFja2VkLWJ5OiBLcnp5c3p0b2YgS296bG93
c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+CgpCZXN0IHJlZ2FyZHMsCktyenlz
enRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
