Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EADB3C55184
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 08:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKmDS8q4dZYa8IpSmVES/wSwe3YdFSaygCfA+RhO7o4=; b=eqSjNCkw+tSzyd
	bjSGhQkuxgDEd9RsfnTrnYUAv7dAenx8T8ej2rXv+zRNoiL+JflNLz6kdr4LtOmH/5VOxlaIWZ3lj
	jbi1eT2nrrrRyQu/orchq8PeNurc+2zsKLI65SStdWxZjJ77RB4iAiDAqQNg0BrPiqJ/GjDjMYkvc
	5x4O2Ov8MyMjnubpRG3WZZplKKhcHyFazKxlo+GeMXrfvjn8WIP0UPDsoPl7WE2NovXnacgWkADvU
	4dyIuMKQGN6MN4WVIQG5af9s4h6R/P/BzvVIYJIemhavaNP9nXcEFqoRnWGiqZPr2lIRyia11tDJZ
	Bx14LSB8IoLekjPUOf0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqnuh-0000000Gb71-1UHs;
	Mon, 03 Aug 2026 08:20:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqnuf-0000000Gb6o-38fT;
	Mon, 03 Aug 2026 08:20:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 87F9A43726;
	Mon,  3 Aug 2026 08:20:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EBDA81F000E9;
	Mon,  3 Aug 2026 08:20:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785745244;
	bh=oL77ikjGFVW7QH8ozMC74CWfxuPdNOXGLUeFKsMycB8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=V/BStKSGhLspBCfJaAyL/O1UrXPMY+cIrEN87pQ4cFZRFUCkbLwpEucGYZibMqVUt
	 rKKPxVnP+n5lL5+QJBLYnF+MpSPAAGezZoKLMJvhMp4OLpqwLpztg/FQYzZ4H8GwMh
	 GOALuLZvqqoAMl7nXGjm5sameAlhvDcgs/wH+OjxV3QiFTrTF/9kYsvLGDtkOpU+6c
	 SCg+kUQuMhTZJUEp1v2kzIWMJWknuU8nUcZQQeYCNN9B6D2EyCrsQJ5sESITvN3QG8
	 eJNr0lxm1BPCHAzj9aB1hycB4I//WCPwH3r6mAvQcxxUppMfIXhy2msFbxRPgwV/n7
	 kqW0dHeBirljA==
Message-ID: <e198e8fa-6c5e-4c8d-a4de-d8bb25aab0bd@kernel.org>
Date: Mon, 3 Aug 2026 10:20:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/21] dt-bindings: mfd: x-powers: add AC200
To: James Hilliard <james.hilliard1@gmail.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>, Andre Przywara
 <andre.przywara@arm.com>, Richard Genoud <richard.genoud@bootlin.com>,
 Maxime Ripard <mripard@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Saravana Kannan <saravanak@kernel.org>,
 Lee Jones <lee@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-8-0a53cd9e21cc@gmail.com>
 <f2cc3c90-060f-40c1-a55e-e2ed91e65487@kernel.org>
 <CADvTj4q7HnOYJZE-M070-1npEdne__Ct5D9FeUNVVXa8Bsm7qQ@mail.gmail.com>
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
 S296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+wsGPBBMBCgA5AhsDBgsJCAcDAgYVCAIJCgsE
 FgIDAQIeAQIXgBYhBJvQfg4MUfjVlne3VBuTQ307QWKbBQJp2mE8AAoJEBuTQ307QWKbeaIP
 /ihHTkTW4KsN/DQ945JJbyu5tI0J80Wue7QyyLPglyKfhgb5cLLNPpOC8cCIJsc7+W3i2P38
 s2c1cOH6CYGE7E9ur3Vfme8NW2S2I/Z8VC7bZnzyS23wT17LrsdS/qCpx4o8U+pt/xdXDKph
 EGRYrIEmMpUWvyYzyYKGIe25FtaayIIKpq8eZYyFcp2f/sG5IkOW5uZzHPMPdcm87jU7fyuQ
 rAU2vx9r+ulUfQ/q9Z2roC/ode3l7t2pN7BCBCsUDp6JCrUyZrtT1e7EbA0ZRP3aOBNk2P2E
 DQOgJGjGdO5Yx2Y9LFtltu6JbsBJHi1syGRX3AtQYOMc4Y1WGoeZJmMlvKj2ZqqXNkcWi2DS
 IQEWB0uW6CqFsBBIMGDa+6OzdaVO/uAVXWDWml02Men3CILdI1MbVjoh8ECqYUY7OQ+JJvNN
 vnliuq5WM3Ghd3jg/LZZrxXjdIginRHFQCjIJYLKpLZWm1/iDFedcfzqRNYmTtqscdCNHW41
 oT3Z7BmO9xwdjuwBS6nmS6JJwkbf5Ot2QR4pB/DRU7ZwjT1qHe+9r9gF32wXVQatHNGK/VVu
 sfwOnkdxCWkp/qb2gdQRmZh+SedStWshigH6sNfuHBloF/q+hjMRc8b2m326OZdrbSHwY1Sz
 vti8Hn7n8NjdHO9LKB7BIdjkA9DA5WsqOuVCzsFNBFVDXDQBEADNkrQYSREUL4D3Gws46JEo
 Z9HEQOKtkrwjrzlw/tCmqVzERRPvz2Xg8n7+HRCrgqnodIYoUh5WsU84N03KlLueMNsWLJBv
 BaubYN4JuJIdRr4dS4oyF1/fQAQPHh8Thpiz0SAZFx6iWKB7Qrz3OrGCjTPcW6eiOMheesVS
 5hxietSmlin+SilmIAPZHx7n242u6kdHOh+/SyLImKn/dh9RzatVpUKbv34eP1wAGldWsRxb
 f3WP9pFNObSzI/Bo3kA89Xx2rO2roC+Gq4LeHvo7ptzcLcrqaHUAcZ3CgFG88CnA6z6lBZn0
 WyewEcPOPdcUB2Q7D/NiUY+HDiV99rAYPJztjeTrBSTnHeSBPb+qn5ZZGQwIdUW9YegxWKvX
 XHTwB5eMzo/RB6vffwqcnHDoe0q7VgzRRZJwpi6aMIXLfeWZ5Wrwaw2zldFuO4Dt91pFzBSO
 IpeMtfgb/Pfe/a1WJ/GgaIRIBE+NUqckM+3zJHGmVPqJP/h2Iwv6nw8U+7Yyl6gUBLHFTg2h
 YnLFJI4Xjg+AX1hHFVKmvl3VBHIsBv0oDcsQWXqY+NaFahT0lRPjYtrTa1v3tem/JoFzZ4B0
 p27K+qQCF2R96hVvuEyjzBmdq2esyE6zIqftdo4MOJho8uctOiWbwNNq2U9pPWmu4vXVFBYI
 GmpyNPYzRm0QPwARAQABwsF2BBgBCgAgAhsMFiEEm9B+DgxR+NWWd7dUG5NDfTtBYpsFAmna
 YUkACgkQG5NDfTtBYptX+BAApg32CkxwNucNEi8WfWA8oKkW0y8YDuY6ORMo9FWNGiT/OTy0
 vyJrLocrpn86zwfjVp+eCrssPYh8eqJfnWqmYv6ACQtHPYzPZQ3mSo8H97Z01oUxITzCxpXm
 ZkLgPIqtDPcC2E3dPM/fVxcyowM8XsaMA9wcsaUYrta8toOq2b9tKcjleKMfMrm0gQ9u7wUc
 QbLkwj6TCLOwucb07GXzLTNF9PZmaDUpKAZjMjmrW+le+SFvQbhamx0rxLWPR0NWntXpbCn+
 +ACch03p/JyTBVktxFsFyCt7pTPE1kEaeuXBTe/a2D9iQvRxRW19LvuO2e59/u1wYUiH/orz
 wbIC2S4dBsPAPihL3ztOU1yE86GPyQtSE0kU+/7snnLt4QGi6PChf3t5gnNjAzjUUovO8rgI
 c+5yN5heq5loYHgK6OQ9OlHzsPHO9e9MOQcKlFycs1pyijFGzDwdNUm/SchK8iWT2QApTx4A
 K9bCVaboTA2T77QYkRcRJYSsO1alGX0ome/hMLD1daXlkrNUp1HWa3K4iytLRXjCSIorWiGs
 n+q3krnpXu3TFkA8qtOFZMdnIiFuiq1yLT8hptsV5xh1TA2nsVvSYiaCr3q4s4BKjS/KrLDb
 qoxzw8ISjdUp4pA85vb6YLCmb39NgidD+7PmAr65lBNveIFynTgsja1rRQ4=
In-Reply-To: <CADvTj4q7HnOYJZE-M070-1npEdne__Ct5D9FeUNVVXa8Bsm7qQ@mail.gmail.com>
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

T24gMDMvMDgvMjAyNiAwOTo1NCwgSmFtZXMgSGlsbGlhcmQgd3JvdGU6Cj4gT24gTW9uLCBBdWcg
MywgMjAyNiBhdCAxOjA34oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3Jn
PiB3cm90ZToKPj4KPj4gT24gMDMvMDgvMjAyNiAwNzoxNCwgSmFtZXMgSGlsbGlhcmQgd3JvdGU6
Cj4+PiBUaGUgQUMyMDAgaXMgYW4gSTJDLWNvbnRyb2xsZWQgbWl4ZWQtc2lnbmFsIGNvbXBhbmlv
biBJQyBjb250YWluaW5nCj4+PiBhdWRpbywgdmlkZW8sIFJUQyBhbmQgRmFzdCBFdGhlcm5ldCBQ
SFkgZnVuY3Rpb25zLgo+Pgo+PiBUaGlzIGZhaWxzIHdoZW4gYXBwbGllZCwgYmVjYXVzZSB5b3Ug
ZGlkIG5vdCBleHBsYWluIHRoZQo+PiBkZXBlbmRlbmNpZXMvbWVyZ2luZyBvZiB0aGlzIHBhdGNo
c2V0Lgo+Pgo+PiBUaGlzIGlzIFRIRSBNT1NUIGltcG9ydGFudCBpbmZvcm1hdGlvbiBvZiBjb3Zl
ciBsZXR0ZXIuIFRoZSBmaXJzdCB0aGluZwo+PiB0byBleHBsYWluLgo+IAo+IEkgZGlkIG1lbnRp
b24gaW4gdGhlIGNvdmVyIGxldHRlciB0aGF0IHRoZSBwd20gc2VyaWVzIGlzIGEgZGVwZW5kZW5j
eToKPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA3MDMxNTIyMTUuMTkyODU5LTEt
cmljaGFyZC5nZW5vdWRAYm9vdGxpbi5jb20vCgpBcHBseSB0aGlzIHBhdGNoIGFuZCB0ZXN0LgoK
PiAKPiBXaXRoIHRoZSBwd20gc2VyaWVzIGZpcnN0IHRoaXMgc2hvdWxkIGFwcGx5IG9uIHRvcCBv
ZiBtYXN0ZXIuIFNob3VsZAo+IEkganVzdCBtZW50aW9uIHRoYXQgaXQgYXBwbGllcyBvbiBtYXN0
ZXIgb3Igc2hvdWxkIEkgcmVmZXJlbmNlIGEgc3BlY2lmaWMKPiBjb21taXQgaGFzaCBvciBzb21l
dGhpbmc/Cj4gCj4+Pgo+Pj4gRGVzY3JpYmUgdGhlIHBhcmVudCBkZXZpY2UsIGl0cyBpbnB1dCBj
bG9jaywgcmVxdWlyZWQgZnVuY3Rpb24gc3VwcGxpZXMsCj4+PiB0aGUgb3B0aW9uYWwgU0lEIGJh
bmRnYXAgY2FsaWJyYXRpb24gY2VsbCB1c2VkIGJ5IHRoZSB2ZW5kb3IgaW5pdGlhbGl6YXRpb24K
Pj4+IHNlcXVlbmNlLCBhbmQgaXRzIG9wdGlvbmFsIEV0aGVybmV0IFBIWSBjb250cm9sIGNoaWxk
LiBEb2N1bWVudCB0aGUgMjQgYW5kCj4+PiAyNyBNSHogcmF0ZXMgZW5jb2RlZCBieSB0aGUgcHVi
bGljIEVQSFkgY2xvY2sgc2VsZWN0b3IuCj4+Pgo+Pgo+PiAuLi4KPj4KPj4+ICtyZXF1aXJlZDoK
Pj4+ICsgIC0gY29tcGF0aWJsZQo+Pj4gKyAgLSByZWcKPj4+ICsgIC0gY2xvY2tzCj4+PiArICAt
IGFjLWxkb2luLXN1cHBseQo+Pj4gKyAgLSBlcGh5LXZjYy1zdXBwbHkKPj4+ICsgIC0gcnRjLXZj
Yy1zdXBwbHkKPj4+ICsgIC0gdHYtdmNjLXN1cHBseQo+Pj4gKwo+Pj4gK2RlcGVuZGVuY2llczoK
Pj4+ICsgIGludGVycnVwdHM6IFsgaW50ZXJydXB0LWNvbnRyb2xsZXIgXQo+Pj4gKyAgaW50ZXJy
dXB0LWNvbnRyb2xsZXI6IFsgJyNpbnRlcnJ1cHQtY2VsbHMnLCBpbnRlcnJ1cHRzIF0KPj4+ICsg
ICcjaW50ZXJydXB0LWNlbGxzJzogWyBpbnRlcnJ1cHQtY29udHJvbGxlciBdCj4+PiArICBudm1l
bS1jZWxsczogWyBudm1lbS1jZWxsLW5hbWVzIF0KPj4+ICsgIG52bWVtLWNlbGwtbmFtZXM6IFsg
bnZtZW0tY2VsbHMgXQo+Pgo+PiBXaHkgZG8geW91IG5lZWQgYWxsIHRoZXNlIGRlcGVuZGVuY2ll
cz8gV2hhdCBhcmUgeW91IHRyeWluZyB0byBleHByZXNzPwo+IAo+IExvb2tzIGxpa2Ugd2UgcHJv
YmFibHkgY2FuIGdldCByaWQgb2YgYWxsIGV4Y2VwdCB0aGVzZToKPiBpbnRlcnJ1cHQtY29udHJv
bGxlcjogWyBpbnRlcnJ1cHRzIF0KPiBudm1lbS1jZWxsczogWyBudm1lbS1jZWxsLW5hbWVzIF0K
PiAKPiBJIHdhcyBqdXN0IHRyeWluZyB0byBleHByZXNzIHRoZSBNRkQgY29udHJvbGxlciBkZXBl
bmRlbmNpZXMuCj4gCj4+PiArCj4+PiArYWRkaXRpb25hbFByb3BlcnRpZXM6IGZhbHNlCj4+PiAr
Cj4+PiArZXhhbXBsZXM6Cj4+PiArICAtIHwKPj4+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdz
L2ludGVycnVwdC1jb250cm9sbGVyL2lycS5oPgo+Pj4gKwo+Pj4gKyAgICBpMmMgewo+Pj4gKyAg
ICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4+PiArICAgICAgICAjc2l6ZS1jZWxscyA9IDww
PjsKPj4+ICsKPj4+ICsgICAgICAgIG1peGVkLXNpZ25hbEAxMCB7Cj4+Cj4+IC4uLgo+Pgo+Pj4g
Ky4uLgo+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHQtYmluZGluZ3MvbWZkL3gtcG93ZXJzLGFj
MjAwLmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL21mZC94LXBvd2VycyxhYzIwMC5oCj4+PiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NAo+Pj4gaW5kZXggMDAwMDAwMDAwMDAwLi5jYzU5ZTJhYjQ5MTIKPj4+
IC0tLSAvZGV2L251bGwKPj4+ICsrKyBiL2luY2x1ZGUvZHQtYmluZGluZ3MvbWZkL3gtcG93ZXJz
LGFjMjAwLmgKPj4+IEBAIC0wLDAgKzEsMTMgQEAKPj4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRp
ZmllcjogKEdQTC0yLjAtb25seSBPUiBCU0QtMi1DbGF1c2UpICovCj4+PiArLyoKPj4+ICsgKiBJ
bnRlcnJ1cHQgbnVtYmVycyBvZiB0aGUgWC1Qb3dlcnMgQUMyMDAgaW50ZXJydXB0IGNvbnRyb2xs
ZXIuCj4+PiArICovCj4+PiArCj4+PiArI2lmbmRlZiBfRFRfQklORElOR1NfTUZEX1hfUE9XRVJT
X0FDMjAwX0gKPj4+ICsjZGVmaW5lIF9EVF9CSU5ESU5HU19NRkRfWF9QT1dFUlNfQUMyMDBfSAo+
Pj4gKwo+Pj4gKyNkZWZpbmUgQUMyMDBfSVJRX1RWRSAgICAgICAgICAgICAgICAgICAgICAgIDAK
Pj4+ICsjZGVmaW5lIEFDMjAwX0lSUV9FUEhZICAgICAgICAgICAgICAgICAgICAgICAxCj4+PiAr
I2RlZmluZSBBQzIwMF9JUlFfUlRDICAgICAgICAgICAgICAgICAgICAgICAgMgo+Pgo+PiBIYXJk
d2FyZSBjb25zdGFudHMgYXJlIG5vdCByZWFsbHkgYmluZGluZ3MsIGV2ZW4gdGhvdWdoIHlvdSB1
c2UgdGhlbSBpbgo+PiB0aGUgZHJpdmVyLgo+IAo+IFNob3VsZCBJIGRvIHNvbWV0aGluZyBkaWZm
ZXJlbnQgZm9yIHRoaXM/CgpJIHdvdWxkIGp1c3QgZHJvcCB0aGUgZGVmaW5lcyBhbmQgdGhlIGhl
YWRlciwgYmVjYXVzZSB0aGVzZSBhcmUgZml4ZWQKaGFyZHdhcmUgbnVtYmVycy4KCgpCZXN0IHJl
Z2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
