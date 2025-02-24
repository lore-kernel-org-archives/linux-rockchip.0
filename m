Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2436EC021B3
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Feb 2025 09:49:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cIJTzTakeW9LbvUhrRK0sHeeoFgCOqZhIhXH3GGBqgA=; b=niRC0yrzZvBcZU
	AOc9NXkMI7GJS+DnxY0zHTnW6M4uuVvcjtguW+G9/BQOuJHEFEpvS8ocxodHLWABJ7kyEtEseBgui
	FZ2yYESRoJeaECNNCgrgXsFICep0JKGB3QyLZoWSdubSX5R7qhekZ3kK5+o2RVbqrKnjxY5A/HwDW
	S7oDkrTt6mbPWyrXEtlJwKYLxnpB2G4i9MQg7gi/edynGxDxSj+QX9Fxd4QNSIUKjnSz2LxX+hjkO
	KOq3apjVcNJZ8hU+HZy1873HlQkqeuSrsNhc+NuwS1oRzD8Grm7m4sO+NQ6DlTjYfWYKIAEXq/B54
	qKY1DV8pQNXyxMchWTRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmV5h-0000000CytA-1LO4;
	Mon, 24 Feb 2025 09:49:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmUvq-0000000CxAg-1Ky6;
	Mon, 24 Feb 2025 09:39:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 191A261192;
	Mon, 24 Feb 2025 09:39:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73131C4CEDD;
	Mon, 24 Feb 2025 09:39:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740389961;
	bh=3PKhhqDl4PavsonkGg8Yx9ObgvEzeG4jz8Tmf0mpBko=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=u6uMHcNFouGfid1zt39RmM5n/d/QvxqWMP6UjEwnVFHVnd3OIbt8vvkwNIA1OEd+C
	 ok1+0bImlugkG6eFWSnf9e9TVWoHLVgzzrmmGho1/VvnXjOY/rtS9KUrVtYozgmAS4
	 QGEoHlzy6QWkHj6fqXky/sEEfU+Nv0ZU3GqHZlJEvv1MGCS6un2Gxt8vZYW5bSWGtU
	 kf0RFfuOdIoXDwW8krT9nrJchhwbcdQVsK6mKXu9Ja/eO15iW7tjYlq6Wpdy4q61fx
	 AfLXqBLBFqgNUYXknclqQRIxgEXkVLVRMCr5zU8uk1KzBcR1/GNfkun6iV4kCQBf/r
	 nECuGAbkRVSrg==
Message-ID: <5e740543-9bd6-483a-9722-f5d8307b6915@kernel.org>
Date: Mon, 24 Feb 2025 10:39:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: clock, reset: rockchip: Add support
 for rk3562
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
 devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20241224092310.3814460-1-kever.yang@rock-chips.com>
 <z7jb32foci6bamqqddkkp34hazi2itp6uclarsoi5pkrgso2go@bxflagkaciq6>
 <28dcac28-9060-4f65-8167-64f6a0e4532d@rock-chips.com>
 <2920539.yaVYbkx8dN@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 xsFNBFVDQq4BEAC6KeLOfFsAvFMBsrCrJ2bCalhPv5+KQF2PS2+iwZI8BpRZoV+Bd5kWvN79
 cFgcqTTuNHjAvxtUG8pQgGTHAObYs6xeYJtjUH0ZX6ndJ33FJYf5V3yXqqjcZ30FgHzJCFUu
 JMp7PSyMPzpUXfU12yfcRYVEMQrmplNZssmYhiTeVicuOOypWugZKVLGNm0IweVCaZ/DJDIH
 gNbpvVwjcKYrx85m9cBVEBUGaQP6AT7qlVCkrf50v8bofSIyVa2xmubbAwwFA1oxoOusjPIE
 J3iadrwpFvsZjF5uHAKS+7wHLoW9hVzOnLbX6ajk5Hf8Pb1m+VH/E8bPBNNYKkfTtypTDUCj
 NYcd27tjnXfG+SDs/EXNUAIRefCyvaRG7oRYF3Ec+2RgQDRnmmjCjoQNbFrJvJkFHlPeHaeS
 BosGY+XWKydnmsfY7SSnjAzLUGAFhLd/XDVpb1Een2XucPpKvt9ORF+48gy12FA5GduRLhQU
 vK4tU7ojoem/G23PcowM1CwPurC8sAVsQb9KmwTGh7rVz3ks3w/zfGBy3+WmLg++C2Wct6nM
 Pd8/6CBVjEWqD06/RjI2AnjIq5fSEH/BIfXXfC68nMp9BZoy3So4ZsbOlBmtAPvMYX6U8VwD
 TNeBxJu5Ex0Izf1NV9CzC3nNaFUYOY8KfN01X5SExAoVTr09ewARAQABzSVLcnp5c3p0b2Yg
 S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+wsGVBBMBCgA/AhsDBgsJCAcDAgYVCAIJCgsE
 FgIDAQIeAQIXgBYhBJvQfg4MUfjVlne3VBuTQ307QWKbBQJgPO8PBQkUX63hAAoJEBuTQ307
 QWKbBn8P+QFxwl7pDsAKR1InemMAmuykCHl+XgC0LDqrsWhAH5TYeTVXGSyDsuZjHvj+FRP+
 gZaEIYSw2Yf0e91U9HXo3RYhEwSmxUQ4Fjhc9qAwGKVPQf6YuQ5yy6pzI8brcKmHHOGrB3tP
 /MODPt81M1zpograAC2WTDzkICfHKj8LpXp45PylD99J9q0Y+gb04CG5/wXs+1hJy/dz0tYy
 iua4nCuSRbxnSHKBS5vvjosWWjWQXsRKd+zzXp6kfRHHpzJkhRwF6ArXi4XnQ+REnoTfM5Fk
 VmVmSQ3yFKKePEzoIriT1b2sXO0g5QXOAvFqB65LZjXG9jGJoVG6ZJrUV1MVK8vamKoVbUEe
 0NlLl/tX96HLowHHoKhxEsbFzGzKiFLh7hyboTpy2whdonkDxpnv/H8wE9M3VW/fPgnL2nPe
 xaBLqyHxy9hA9JrZvxg3IQ61x7rtBWBUQPmEaK0azW+l3ysiNpBhISkZrsW3ZUdknWu87nh6
 eTB7mR7xBcVxnomxWwJI4B0wuMwCPdgbV6YDUKCuSgRMUEiVry10xd9KLypR9Vfyn1AhROrq
 AubRPVeJBf9zR5UW1trJNfwVt3XmbHX50HCcHdEdCKiT9O+FiEcahIaWh9lihvO0ci0TtVGZ
 MCEtaCE80Q3Ma9RdHYB3uVF930jwquplFLNF+IBCn5JRzsFNBFVDXDQBEADNkrQYSREUL4D3
 Gws46JEoZ9HEQOKtkrwjrzlw/tCmqVzERRPvz2Xg8n7+HRCrgqnodIYoUh5WsU84N03KlLue
 MNsWLJBvBaubYN4JuJIdRr4dS4oyF1/fQAQPHh8Thpiz0SAZFx6iWKB7Qrz3OrGCjTPcW6ei
 OMheesVS5hxietSmlin+SilmIAPZHx7n242u6kdHOh+/SyLImKn/dh9RzatVpUKbv34eP1wA
 GldWsRxbf3WP9pFNObSzI/Bo3kA89Xx2rO2roC+Gq4LeHvo7ptzcLcrqaHUAcZ3CgFG88CnA
 6z6lBZn0WyewEcPOPdcUB2Q7D/NiUY+HDiV99rAYPJztjeTrBSTnHeSBPb+qn5ZZGQwIdUW9
 YegxWKvXXHTwB5eMzo/RB6vffwqcnHDoe0q7VgzRRZJwpi6aMIXLfeWZ5Wrwaw2zldFuO4Dt
 91pFzBSOIpeMtfgb/Pfe/a1WJ/GgaIRIBE+NUqckM+3zJHGmVPqJP/h2Iwv6nw8U+7Yyl6gU
 BLHFTg2hYnLFJI4Xjg+AX1hHFVKmvl3VBHIsBv0oDcsQWXqY+NaFahT0lRPjYtrTa1v3tem/
 JoFzZ4B0p27K+qQCF2R96hVvuEyjzBmdq2esyE6zIqftdo4MOJho8uctOiWbwNNq2U9pPWmu
 4vXVFBYIGmpyNPYzRm0QPwARAQABwsF8BBgBCgAmAhsMFiEEm9B+DgxR+NWWd7dUG5NDfTtB
 YpsFAmA872oFCRRflLYACgkQG5NDfTtBYpvScw/9GrqBrVLuJoJ52qBBKUBDo4E+5fU1bjt0
 Gv0nh/hNJuecuRY6aemU6HOPNc2t8QHMSvwbSF+Vp9ZkOvrM36yUOufctoqON+wXrliEY0J4
 ksR89ZILRRAold9Mh0YDqEJc1HmuxYLJ7lnbLYH1oui8bLbMBM8S2Uo9RKqV2GROLi44enVt
 vdrDvo+CxKj2K+d4cleCNiz5qbTxPUW/cgkwG0lJc4I4sso7l4XMDKn95c7JtNsuzqKvhEVS
 oic5by3fbUnuI0cemeizF4QdtX2uQxrP7RwHFBd+YUia7zCcz0//rv6FZmAxWZGy5arNl6Vm
 lQqNo7/Poh8WWfRS+xegBxc6hBXahpyUKphAKYkah+m+I0QToCfnGKnPqyYIMDEHCS/RfqA5
 t8F+O56+oyLBAeWX7XcmyM6TGeVfb+OZVMJnZzK0s2VYAuI0Rl87FBFYgULdgqKV7R7WHzwD
 uZwJCLykjad45hsWcOGk3OcaAGQS6NDlfhM6O9aYNwGL6tGt/6BkRikNOs7VDEa4/HlbaSJo
 7FgndGw1kWmkeL6oQh7wBvYll2buKod4qYntmNKEicoHGU+x91Gcan8mCoqhJkbqrL7+nXG2
 5Q/GS5M9RFWS+nYyJh+c3OcfKqVcZQNANItt7+ULzdNJuhvTRRdC3g9hmCEuNSr+CLMdnRBY fv0=
In-Reply-To: <2920539.yaVYbkx8dN@diego>
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

T24gMjQvMDIvMjAyNSAxMDoxNCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCAy
NC4gRmVicnVhciAyMDI1LCAwOTo0Nzo0MCBNRVogc2NocmllYiBLZXZlciBZYW5nOgo+PiBIaSBL
cnp5c3p0b2YsCj4+Cj4+IE9uIDIwMjQvMTIvMjcgMTY6MjgsIEtyenlzenRvZiBLb3psb3dza2kg
d3JvdGU6Cj4+PiBPbiBUdWUsIERlYyAyNCwgMjAyNCBhdCAwNToyMzowOVBNICswODAwLCBLZXZl
ciBZYW5nIHdyb3RlOgo+Pj4+IEZyb206IEZpbmxleSBYaWFvIDxmaW5sZXkueGlhb0Byb2NrLWNo
aXBzLmNvbT4KPj4+Pgo+Pj4+IEFkZCB0aGUgZHQtYmluZGluZ3MgaGVhZGVyIGZvciB0aGUgcmsz
NTYyLCB0aGF0IGdldHMgc2hhcmVkIGJldHdlZW4KPj4+PiB0aGUgY2xvY2sgY29udHJvbGxlciBh
bmQgdGhlIGNsb2NrIHJlZmVyZW5jZXMgaW4gdGhlIGR0cy4KPj4+PiBBZGQgc29mdHJlc2V0IElE
IGZvciByazM1NjIuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBGaW5sZXkgWGlhbyA8ZmlubGV5
LnhpYW9Acm9jay1jaGlwcy5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogTGlhbmcgQ2hlbiA8Y2xA
cm9jay1jaGlwcy5jb20+Cj4+Pj4gU2lnbmVkLW9mZi1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFu
Z0Byb2NrLWNoaXBzLmNvbT4KPj4+PiAtLS0KPj4+Pgo+Pj4+IENoYW5nZXMgaW4gdjI6Cj4+Pj4g
LSByZW5hbWUgdGhlIGZpbGUgdG8gcm9ja2NoaXAscmszNTYyLWNydS5oCj4+Pj4gLSByZW1vdmUg
Q0xLX05SX0NMS1MKPj4+PiAtIGFkZCBuZXcgZmlsZSBmb3IgcmVzZXQgSUQKPj4+PiAtIHVwZGF0
ZSB0byB1c2UgZHVhbCBsaWNlbnNlCj4+Pj4KPj4+PiAgIC4uLi9kdC1iaW5kaW5ncy9jbG9jay9y
b2NrY2hpcCxyazM1NjItY3J1LmggICB8IDM3NyArKysrKysrKysrKysrKysrKysKPj4+PiAgIC4u
Li9kdC1iaW5kaW5ncy9yZXNldC9yb2NrY2hpcCxyazM1NjItY3J1LmggICB8IDM2MCArKysrKysr
KysrKysrKysrKwo+Pj4KPj4+IE5vLCB0aGF0J3Mgbm90IGEgc2VwYXJhdGUgcGF0Y2guIEhlYWRl
cnMgKkFMV0FZUyogZ28gd2l0aCB0aGUgYmluZGluZ3MKPj4+IHBhdGNoLgo+PiBXaWxsIGZpeC4K
Pj4+PiAgIDIgZmlsZXMgY2hhbmdlZCwgNzM3IGluc2VydGlvbnMoKykKPj4+PiAgIGNyZWF0ZSBt
b2RlIDEwMDY0NCBpbmNsdWRlL2R0LWJpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU2Mi1jcnUu
aAo+Pj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcm9j
a2NoaXAscmszNTYyLWNydS5oCj4+Pj4KPj4+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5k
aW5ncy9jbG9jay9yb2NrY2hpcCxyazM1NjItY3J1LmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL2Ns
b2NrL3JvY2tjaGlwLHJrMzU2Mi1jcnUuaAo+Pj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+Pj4g
aW5kZXggMDAwMDAwMDAwMDAwLi5hZDA3YWQzYTEyYWQKPj4+PiAtLS0gL2Rldi9udWxsCj4+Pj4g
KysrIGIvaW5jbHVkZS9kdC1iaW5kaW5ncy9jbG9jay9yb2NrY2hpcCxyazM1NjItY3J1LmgKPj4+
PiBAQCAtMCwwICsxLDM3NyBAQAo+Pj4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQ
TC0yLjAgT1IgTUlUKSAqLwo+Pj4gV2h5IG5vdCB1c2luZyBsaWNlbnNlIHJlcXVlc3RlZCBieSBj
aGVja3BhdGNoPwo+Pgo+PiBUaGUgY2hlY2twYXRjaCBkb2VzIG5vdCByZXBvcnQgZXJyb3Ivd2Fy
bmluZyBmb3IgdGhpcyBsaWNlbnNlLCBhbmQgdGhpcyAKPj4gaXMgdGhlIHNhbWUgYXMgbWFueSBv
dGhlciBTb0NzLgo+Pgo+PiBXaGljaCBsaWNlbnNlIGlzIHJlY29tbWVuZCBpbiB0aGUgaGVhZGVy
IGZpbGU/Cj4gCj4gSSBzdXBwb3NlCj4gCj4gLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IChH
UEwtMi4wLW9ubHkgT1IgTUlUKSAqLwo+IAo+IEFjY29yZGluZyB0byBbMF0gIkdQTC0yLjAiIGFu
ZCAiR1BMLTIuMC1vbmx5IiBhcmUgZXF1aXZhbGVudCwgYnV0IEkgZ3Vlc3MKPiAiR1BMLTIuMC1v
bmx5IiBzaW1wbHkgbWFrZXMgdGhlICJvbmx5IiBwYXJ0IG1vcmUgdmlzaWJsZS4KCk5vLCByYXRo
ZXIgdXNlIHRoZSBvbmUgZXhwcmVzc2VkIGluIGNoZWNrcGF0Y2guCgpCZXN0IHJlZ2FyZHMsCkty
enlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
