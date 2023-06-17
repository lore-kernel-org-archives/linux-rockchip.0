Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 340A3EB64D9
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 18:15:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VOXLkdpb43A+qcwCZ3WdEi6Bqi7UEyf5E7wyXAT0img=; b=I7yIXl0ZgHXm9f
	My0ea717TLxFYgO+tRe0M4aJ3oy+b65mCTg8pYbebPvYvB069Qds0eE1X1ZocpWXQlBRfTUC0IWRP
	f6nJxgaYksIy407UT29ELs9u6ZEyEtxCAr1J5fU8E7Q0LlBffmYflraCZrI6bsYZfciwbEFONgC1Y
	+NXOvFq0lEeILDcHyU55ZCCbOSOgaT92b41heLqU3Qgkyivt73L54wQAbzbKSz9GAcpvvYr2pr6bo
	XvC+Oq2o5EKp+FO0L+1HIiUMT5en9CcZRqxOrTVsGTzTjiJlD0rz6siS23n+SFM6J/gMBR3mZv0+l
	LFmONOmhxh8Z84m8AXFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAaSe-0044yQ-03;
	Sat, 17 Jun 2023 18:15:44 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAaSa-0044wf-0n;
	Sat, 17 Jun 2023 18:15:41 +0000
Received: from [192.168.1.131] ([89.1.214.195]) by mrelayeu.kundenserver.de
 (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N3Kc6-1q26EK0AFO-010Pfd; Sat, 17 Jun 2023 20:15:30 +0200
Message-ID: <5d2eb5af-b674-751b-1583-e048fbf8c3a5@mweigand.net>
Date: Sat, 17 Jun 2023 20:15:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 2/3] dt-bindings: backlight: lm3630a: add entries to
 control boost frequency
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Maximilian Weigand <mweigand2017@gmail.com>, Lee Jones <lee@kernel.org>,
 Daniel Thompson <daniel.thompson@linaro.org>,
 Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>,
 Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20230602-lm3630a_boost_frequency-v1-0-076472036d1a@mweigand.net>
 <20230602-lm3630a_boost_frequency-v1-2-076472036d1a@mweigand.net>
 <17576d81-a342-0b77-367a-eb9f2b97b734@linaro.org> <7491264.lOV4Wx5bFT@diego>
 <c29b2b0c-2b0c-f79c-9de5-58a67edd5c87@linaro.org>
Content-Language: en-US
From: Maximilian Weigand <mweigand@mweigand.net>
In-Reply-To: <c29b2b0c-2b0c-f79c-9de5-58a67edd5c87@linaro.org>
X-Provags-ID: V03:K1:bV9uqzgIsGllvko+cxd+BlB62CSSsLP5A90XEJ+9cqd1n+07lc+
 AfZkzBcAE+RV8jmhmYvi7ZBTU3W3R7AlJCe1I4Kn5uQTVqpj3r/ox+IW7poeTyFs4hLMuhj
 9XrXA3fiYg+eFkeddVpPQItFoaFs3iaHTpK5cl9PbjUYoKZHT0H24ESmlq9xEHyoBHU5ca1
 Bd+ymstKQAx8B71uT2pAg==
UI-OutboundReport: notjunk:1;M01:P0:25qzwWuEuJA=;SVGc/5dvXzWRF5cOZD0NSglS10i
 Mjr6t2rtiy83DfLVRfBX5GUKRRdMRlaWmJe34yyXjKalRWoW3tDENB5uTDSaR5+W/zLzd0fka
 ehqA+xuQKkQEMmc4FcIchWDQVmgMYHgWIIiGDgtK1F1Mk0DfQql5l45JrjJ8Yc/bPruOAo1YA
 +PYRAREqSd1M7zkCYwpafdYaIZ7J568TLPz36dHk9JqtIXNbpTU9DdP4ZKcMkQhgT1pIZASvo
 zijqDqWHGNe9P9dbPhGb47lYTkTHFXedFOi95dvk57xsnQTZi1UDi73XsRl+6DeuWU9h6H+OU
 JwCxFrq1VtokvzaVCA2JfjLlGoSFpWGpKjciNKgW7ZHWLYdQvkvCTdLbxBi3XbGSI8HZ2zt7G
 z+u9SUcbsDkLumGfXwh+58rmwffBXj+E2Jq63hKTfbJcytqcjpp81+Go+MMnetLecVZSpQWoR
 7tkThgHMmQ1RAFvcoUfpkG6ErXY05ayeVwRWEwDCxg3YIAgkTCeBparFVNhohf794HdP7/KVf
 Dus9PoqxmwhJ4+touPvIMO39BTZcBDOqm0CFYjqAW+FpU0sNzZHopm761MdGtfHKN6FogSNt+
 jsRkUI5HtJ8/ssNdKyKTth5LvSfFleua07eXEXaSYfhNxqk9CjEau2nRg+x1yx6q4Se+tKkSS
 ACUK1ubkwqRY5h3RfmlJB+Y+P4MUqW1WdUURnJp7pw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_111540_588103_BB9053E2 
X-CRM114-Status: GOOD (  13.27  )
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

SGksCgpPbiAxNy4wNi4yMyAxOTo0MiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPiBPbiAx
Ny8wNi8yMDIzIDE4OjM0LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4gQW0gU2Ftc3RhZywgMTcu
IEp1bmkgMjAyMywgMTI6MTI6MTcgQ0VTVCBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6Cj4+
PiBPbiAxNC8wNi8yMDIzIDIxOjA4LCBNYXhpbWlsaWFuIFdlaWdhbmQgd3JvdGU6Cj4+Pj4gRnJv
bTogTWF4aW1pbGlhbiBXZWlnYW5kIDxtd2VpZ2FuZEBtd2VpZ2FuZC5uZXQ+Cj4+Pj4KPj4+PiBB
ZGQgJ3RpLGJvb3N0X3VzZV8xbWh6JyB0byBzd2l0Y2ggYmV0d2VlbiA1MDAga0h6IGFuZCAxIE1I
eiBib29zdAo+Pj4+IGNvbnZlcnRlciBzd2l0Y2hpbmcgZnJlcXVlbmN5LCBhbmQgYWRkICd0aSxi
b29zdF9mcmVxdWVuY3lfc2hpZnQnIHRvCj4+Pj4gYWN0aXZhdGUgYSBmcmVxdWVuY3kgc2hpZnQg
dG8gNTYwIGtIeiBvciAxLjEyIE1IeiwgcmVzcGVjdGl2ZWx5Lgo+Pj4+Cj4+Pj4gU2lnbmVkLW9m
Zi1ieTogTWF4aW1pbGlhbiBXZWlnYW5kIDxtd2VpZ2FuZEBtd2VpZ2FuZC5uZXQ+Cj4+Pj4gLS0t
Cj4+Pj4gIC4uLi9iaW5kaW5ncy9sZWRzL2JhY2tsaWdodC9sbTM2MzBhLWJhY2tsaWdodC55YW1s
ICAgICAgICAgICB8IDEyICsrKysrKysrKysrKwo+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5z
ZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9sZWRzL2JhY2tsaWdodC9sbTM2MzBhLWJhY2tsaWdodC55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2xlZHMvYmFja2xpZ2h0L2xtMzYzMGEtYmFja2xp
Z2h0LnlhbWwKPj4+PiBpbmRleCAzYzliNDA1NGVkOWEuLmVmN2VhMGFkMmQyNSAxMDA2NDQKPj4+
PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbGVkcy9iYWNrbGlnaHQv
bG0zNjMwYS1iYWNrbGlnaHQueWFtbAo+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9sZWRzL2JhY2tsaWdodC9sbTM2MzBhLWJhY2tsaWdodC55YW1sCj4+Pj4gQEAg
LTMzLDYgKzMzLDE4IEBAIHByb3BlcnRpZXM6Cj4+Pj4gICAgICBkZXNjcmlwdGlvbjogR1BJTyB0
byB1c2UgdG8gZW5hYmxlL2Rpc2FibGUgdGhlIGJhY2tsaWdodCAoSFdFTiBwaW4pLgo+Pj4+ICAg
ICAgbWF4SXRlbXM6IDEKPj4+PiAgCj4+Pj4gKyAgdGksYm9vc3RfdXNlXzFtaHo6Cj4+Pgo+Pj4g
Tm8gdW5kZXJzY29yZXMgaW4gcHJvcGVydHkgbmFtZXMuCj4+Pgo+Pj4+ICsgICAgZGVzY3JpcHRp
b246IHwKPj4+Cj4+PiBEbyBub3QgbmVlZCAnfCcgdW5sZXNzIHlvdSBuZWVkIHRvIHByZXNlcnZl
IGZvcm1hdHRpbmcuCj4+Pgo+Pj4+ICsgICAgICBJZiBwcmVzZW50LCBjaGFuZ2UgdGhlIGJvb3N0
IGNvbnZlcnRlciBzd2l0Y2hpbmcgZnJlcXVlbmN5IGZyb20gdGhlCj4+Pj4gKyAgICAgIGRlZmF1
bHQgNTAwIGtIeiB0byAxIE1Iei4gUmVmZXIgdG8gZGF0YSBzaGVldCBmb3IgaGFyZHdhcmUgcmVx
dWlyZW1lbnRzLgo+Pj4+ICsgICAgdHlwZTogYm9vbGVhbgo+Pj4+ICsKPj4+PiArICB0aSxib29z
dF9mcmVxdWVuY3lfc2hpZnQ6Cj4+Pj4gKyAgICBkZXNjcmlwdGlvbjogfAo+Pj4+ICsgICAgICBJ
ZiBwcmVzZW50LCBjaGFuZ2UgYm9vc3QgY29udmVydGVyIHN3aXRjaGluZyBmcmVxdWVuY3kgZnJv
bSA1MDAga0h6IHRvCj4+Pj4gKyAgICAgIDU2MCBrSHogb3IgZnJvbSAxIE1oeiB0byAxLjEyIE1o
eiwgcmVzcGVjdGl2ZWx5Lgo+Pj4KPj4+IFNvIGp1c3QgbWFrZSBpdCBhIHByb3BlcnR5IGNob29z
aW5nIHRoZSBmcmVxdWVuY3ksIG5vdCBib29scywgd2l0aAo+Pj4gcHJvcGVyIHVuaXQgc3VmZml4
Lgo+Pgo+PiBpLmUuCj4+IHRpLGJvb3N0LWZyZXF1ZW5jeS1oeiA9IDx4PjsKPj4gd2l0aCB4IGJl
aW5nIDUwMDAwMCwgNTYwMDAwLCAxMDAwMDAwLCAxMTIwMDAwCj4+Cj4+IHdpdGggdGhlIGRyaXZl
ciBmYWlsaW5nIHdoZW4gdGhlIGZyZXF1ZW5jeSBpcyBub3QgYWNoaWV2YWJsZQo+PiB3aXRoIHRo
ZSB0d28ga25vYnMgb2YgMW1oeiBhbmQgc2hpZnQuCj4gCj4gWWVhaCwgd2l0aCBhIGRlZmF1bHQg
dmFsdWUgKDUwMDAwMCwgSSBndWVzcykuCgpUaGFua3MgZm9yIHRoZSBmZWVkYmFjaywgdGhpcyBp
cyBxdWl0ZSBvYnZpb3VzbHkgdGhlIGJldHRlciBzb2x1dGlvbiEgSQp3aWxsIHJld29yayB0aGUg
c3VibWlzc2lvbiBhY2NvcmRpbmdseS4KCkJlc3QgcmVnYXJkcwoKTWF4aW1pbGlhbgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
