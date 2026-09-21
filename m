Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71641C982ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Sep 2026 23:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYd/VDnBsSoKvI+mzml4Qzoum6F39YiohFl6odnhMvc=; b=wtu/FAdwxWNxct
	LCCo7RZCOhmIqoo37cF4nzLfky6kpNUsKdjsWcVQqEY5ugaOcDwAexk/vPyXx9mXsiaRg7ILClKtF
	uOenThlk+dDn7rysID8nEK8QZoAZDo7A86gY2L6xhAa8Xp5AmZxxAIw+mT2OpqrFpiw6+AHy6MMVf
	F2NvHJqJiThZyqAoIvtyfftz7bQcjSzaxt2P+XKEdAI8dSANyCLNRJUXwJ//zJcqoOMMJbjmqkVDl
	PhrduktnsCqYGnaBm8pd5fMOksuIeAWCh6kv+v/KrNx0FC+E1n7i3dro2sCpTun1YQGZBpYXGZPUB
	7+G8/Qhd0AM81C6CGPag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8nh1-00000003iGY-1pph;
	Mon, 21 Sep 2026 23:45:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8nfx-00000003hSx-3IoG;
	Mon, 21 Sep 2026 23:44:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id D479960A53;
	Mon, 21 Sep 2026 23:43:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A2B41F00893;
	Mon, 21 Sep 2026 23:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790034236;
	bh=ZG4q1bWR2eMGYdwDsubP8MPzWiDbvYTpOk4BFn7wEjk=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=kN2kcqegqTrBXWD/LP2j0qpShjoMhypaQ04GgiCeWD/cTHdjADw7IgIxgUCBUpSrJ
	 HIUKVpRQAECQ3rnpwScVKxCNzCzfYKJ1CfG2sYvvYGAfWUvTzpv7DUZhoeUhbmkU36
	 OU7PMMYWLGmZEf15yOx7qdoxqLLuJkOXBUMLtNnjfe7sUe91tbTzFHq1DROx+sZe3I
	 mQH6j5tPUvb/1Q8MbwVEqW291mEa1TGMzy+3NtxOn5nUVrkaufWAQFnWAyayA0MVCI
	 l0yG5qwCy1TJCRlSX3FJOTXvKT8qMj9zPlM2UqZKxvoU759FW2nWTnQXI74cFI2y/9
	 Sk/mcIkUcFIPw==
Subject: Re: [PATCH net-next v7 10/11] arm64: dts: rockchip:
 rk3568-photonicat: enable SGMII LAN port
From: netdev-bot+sashiko@kernel.org
To: coiaprant@gmail.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org,
 maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
 romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org,
 linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org
Date: Mon, 21 Sep 2026 23:43:54 +0000
Message-ID: <179003423458.2160803.7280358019218159785@kernel.org>
In-Reply-To: <20260917204624.2427486-11-coiaprant@gmail.com>
References: <20260917204624.2427486-11-coiaprant@gmail.com>
X-sashiko-severity: Low
MIME-Version: 1.0
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVW5yZWxhdGVkIGZ1bmN0aW9uYWwgRFQg
Y2hhbmdlIGJ1bmRsZWQgaW50byBhbiAiZW5hYmxlIFNHTUlJIExBTgogIHBvcnQiIHBhdGNoOiB0
aGUgaHVuayB1bmRlciBgJm1kaW8xYCBhZGRzIGEgYGxlZHMgeyBsZWRAMTsgbGVkQDI7IH1g4oCm
CgotLQoKYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJrMzU2OC1waG90b25pY2F0OiBlbmFibGUgU0dN
SUkgTEFOIHBvcnQKClRoaXMgZW5hYmxlcyBHTUFDMCBvbiB0aGUgQXJpYWJvYXJkIFBob3Rvbmlj
YXQgYnkgYWRkaW5nIHRoZSBYUENTIFNHTUlJCnBsdW1iaW5nIChjb21icGh5MiBtYWMtc2VsLCB4
cGNzL3hwY3NfbWlpMCwgZ21hYzAgcHJvcGVydGllcykgYW5kIGRlc2NyaWJpbmcKdGhlIE1vdG9y
Y29tbSBZVDg1MjFTQyBQSFkgb24gYSBuZXcgbWRpbzAgbm9kZS4gIEl0IGFsc28gYWRkcyBhIFBI
WSBMRUQKZGVzY3JpcHRpb24gdG8gdGhlIGV4aXN0aW5nIFJHTUlJIFBIWSBvbiBtZGlvMS4KCj4g
ZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBob3Rvbmlj
YXQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcGhvdG9uaWNhdC5k
dHMKPiBpbmRleCA1OGMxMDUyYmE4ZWYzLi5mZGFhNGEyYTQzMjhiIDEwMDY0NAo+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXBob3RvbmljYXQuZHRzCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcGhvdG9uaWNhdC5kdHMKClsgLi4u
IF0KCj4gQEAgLTM1MCw2ICszOTEsMjUgQEAgcmdtaWlfcGh5OiBldGhlcm5ldC1waHlAMyB7Cj4g
IAkJcmVzZXQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BDMCBHUElPX0FDVElWRV9MT1c+Owo+ICAJCXJ4
LWludGVybmFsLWRlbGF5LXBzID0gPDE1MDA+Owo+ICAJCXR4LWludGVybmFsLWRlbGF5LXBzID0g
PDE1MDA+Owo+ICsKPiArCQlsZWRzIHsKPiArCQkJI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKwkJ
CSNzaXplLWNlbGxzID0gPDA+Owo+ICsKPiArCQkJbGVkQDEgewo+ICsJCQkJcmVnID0gPDE+Owo+
ICsJCQkJY29sb3IgPSA8TEVEX0NPTE9SX0lEX0FNQkVSPjsKPiArCQkJCWZ1bmN0aW9uID0gTEVE
X0ZVTkNUSU9OX1dBTjsKPiArCQkJCWRlZmF1bHQtc3RhdGUgPSAia2VlcCI7Cj4gKwkJCX07Cj4g
Kwo+ICsJCQlsZWRAMiB7Cj4gKwkJCQlyZWcgPSA8Mj47Cj4gKwkJCQljb2xvciA9IDxMRURfQ09M
T1JfSURfR1JFRU4+Owo+ICsJCQkJZnVuY3Rpb24gPSBMRURfRlVOQ1RJT05fV0FOOwo+ICsJCQkJ
ZGVmYXVsdC1zdGF0ZSA9ICJrZWVwIjsKPiArCQkJfTsKPiArCQl9Owo+ICAJfTsKPiAgfTsKCltT
ZXZlcml0eTogTG93XQoKVGhpcyBpc24ndCBhIGJ1ZywgYnV0IGNvdWxkIHRoaXMgaHVuayBnbyBp
bnRvIGEgc2VwYXJhdGUgcGF0Y2g/ICBJdCBjaGFuZ2VzCnRoZSBwcmUtZXhpc3RpbmcgUkdNSUkg
V0FOIFBIWSAocmdtaWlfcGh5IHVuZGVyICZtZGlvMSksIHdoaWNoIGlzIGFscmVhZHkKZW5hYmxl
ZCBhbmQgd29ya2luZyBiZWZvcmUgdGhpcyBwYXRjaDoKCmFyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXBob3RvbmljYXQuZHRzOgoJJmdtYWMxIHsKCQlwaHktaGFuZGxlID0gPCZy
Z21paV9waHk+OwoJCXBoeS1tb2RlID0gInJnbWlpLWlkIjsKCQlzdGF0dXMgPSAib2theSI7Cgl9
OwoKTm9uZSBvZiB0aGUgU0dNSUkgZW5hYmxlbWVudCBpbiB0aGlzIHBhdGNoICgmY29tYnBoeTIK
cm9ja2NoaXAsc2dtaWktbWFjLXNlbCwgJmdtYWMwLCAmbWRpbzAvc2dtaWlfcGh5LCAmeHBjcywg
JnhwY3NfbWlpMCkKZGVwZW5kcyBvbiB0aGUgbWRpbzEgbGVkcyBub2RlLgoKSXQgaXMgYWxzbyBu
b3QgcHVyZWx5IGRlc2NyaXB0aXZlIC0gZHJpdmVycy9uZXQvcGh5L21vdG9yY29tbS5jIGltcGxl
bWVudHMKdGhlIExFRCBjYWxsYmFja3MgZm9yIHRoaXMgUEhZICh5dDg1MjFfbGVkX2h3X2lzX3N1
cHBvcnRlZCgpLAp5dDg1MjFfbGVkX2h3X2NvbnRyb2xfc2V0KCksIHl0ODUyMV9sZWRfaHdfY29u
dHJvbF9nZXQoKSksIHNvIFBIWSBMRUQgY2xhc3MKZGV2aWNlcyBnZXQgaW5zdGFudGlhdGVkIGZv
ciB0aGUgV0FOIFBIWSBhcyBhIHJlc3VsdCBvZiB0aGlzIGNoYW5nZS4KClNwbGl0IGludG8gaXRz
IG93biBwYXRjaCwgdGhlIFdBTiBMRUQgZGVzY3JpcHRpb24gYW5kIHRoZSBMQU4gcG9ydAplbmFi
bGVtZW50IGNhbiBiZSBiaXNlY3RlZCBhbmQgcmV2ZXJ0ZWQgaW5kZXBlbmRlbnRseSwgYW5kIHRo
ZSBzdWJqZWN0IGxpbmUKd291bGQgcmVmbGVjdCB0aGF0IHRoZSBXQU4gUEhZIGRlc2NyaXB0aW9u
IGNoYW5nZWQgdG9vLiAgVGhlIGNvbW1pdCBtZXNzYWdlCm1lbnRpb25zIGl0OgoKICAgIEFsc28g
YWRkIExFRCBjb25maWd1cmF0aW9uIGZvciB0aGUgZXhpc3RpbmcgUkdNSUkgUEhZIG9uIG1kaW8x
IGZvcgogICAgY29uc2lzdGVuY3kuCgpidXQgdGhlIHN1YmplY3Qgb25seSBtZW50aW9ucyB0aGUg
U0dNSUkgTEFOIHBvcnQuCgpbIC4uLiBdCgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6
Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYvc2FzaGlrby8jL3BhdGNoc2V0LzIwMjYwOTE3MjA0
NjI0LjI0Mjc0ODYtMS1jb2lhcHJhbnQlNDBnbWFpbC5jb20KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
