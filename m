Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B2A5CCD193
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Oct 2025 08:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGBvG1qD5Q/nGa51cExoetDRV2G1Zlnl6oIHrDFXoYw=; b=e/2euODDw5Kpbd
	LNmEY+XbzeK0mbyYEj7VIi34O3dwbK/sqw6EyA/WInAfhuu8L3UUWP/LgbF4OR4TUg06LVEvxWYji
	aE17R1tPr3S+CAbziUkdvDZAuiW/YCAG2qRtkglGwYzqfys9Eqqvsl9HyFxKUnqB+UNQ6QqHRFCvt
	5Mb0PSinsQkt81bdXV2ffNdqa63BH8QuJp89U1sFlpFYMIzW/ZWv+/5rV66GSvsaWBdWoELujxtwi
	8jQTnUPufSW528UcM7rda6Jd5tFkJ7WK91zzSCJDQLnPfLKyId4ggl7NwcL+5ATiGCrq6O6jbf0z2
	HSv7tu9Ge4HkRf2BLFrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCwFJ-0000000CAt7-0Zcw;
	Sun, 26 Oct 2025 08:37:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCwFH-0000000CAsI-1QaL;
	Sun, 26 Oct 2025 08:36:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B59E4601D6;
	Sun, 26 Oct 2025 08:36:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B15A8C4CEE7;
	Sun, 26 Oct 2025 08:36:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761467817;
	bh=Zim3qGKsCpC2JYTbatO+MU+Eu3vnLSQRr1CABozWbcM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=XZ8fER3VQro4Ggyjf1AxjtI4qhktJF7hl645sn4jiLi+1xu3Rb9pzKp/rIr97TiHP
	 BXANLH2pvo21B8amxi23knLJGukH5FivnQCN4NQ4i25bcawBkJ1L0whBCZtKrVCW1N
	 51JGD5K3vtuFWAGAJ2A9CzHXQqBddNEwJbaHV+JqfzHCEZJO8E0ORSpAxy4kunFnCL
	 K0x0UouQeLhvVStmfrDr43WLhjhmDHV3JMupBziOky08nQAMsUxnhpg6lO/4J/hzL9
	 BKN621dXHnwBGryWBmLsvgoTz8CMc2IabBNX55YRnpxHbj8uCk+JNilSRrryrOMoYJ
	 Vy49jOFYQ+0eg==
Message-ID: <b4395d23-9004-4a01-942f-060876312317@kernel.org>
Date: Sun, 26 Oct 2025 09:36:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add devicetree for the
 NineTripod X3568 v4
To: Coia Prant <coiaprant@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Dragan Simic <dsimic@manjaro.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
References: <20251026062831.4045083-3-coiaprant@gmail.com>
 <20251026062831.4045083-7-coiaprant@gmail.com>
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
 FgIDAQIeAQIXgBYhBJvQfg4MUfjVlne3VBuTQ307QWKbBQJoF1BKBQkWlnSaAAoJEBuTQ307
 QWKbHukP/3t4tRp/bvDnxJfmNdNVn0gv9ep3L39IntPalBFwRKytqeQkzAju0whYWg+R/rwp
 +r2I1Fzwt7+PTjsnMFlh1AZxGDmP5MFkzVsMnfX1lGiXhYSOMP97XL6R1QSXxaWOpGNCDaUl
 ajorB0lJDcC0q3xAdwzRConxYVhlgmTrRiD8oLlSCD5baEAt5Zw17UTNDnDGmZQKR0fqLpWy
 786Lm5OScb7DjEgcA2PRm17st4UQ1kF0rQHokVaotxRM74PPDB8bCsunlghJl1DRK9s1aSuN
 hL1Pv9VD8b4dFNvCo7b4hfAANPU67W40AaaGZ3UAfmw+1MYyo4QuAZGKzaP2ukbdCD/DYnqi
 tJy88XqWtyb4UQWKNoQqGKzlYXdKsldYqrLHGoMvj1UN9XcRtXHST/IaLn72o7j7/h/Ac5EL
 8lSUVIG4TYn59NyxxAXa07Wi6zjVL1U11fTnFmE29ALYQEXKBI3KUO1A3p4sQWzU7uRmbuxn
 naUmm8RbpMcOfa9JjlXCLmQ5IP7Rr5tYZUCkZz08LIfF8UMXwH7OOEX87Y++EkAB+pzKZNNd
 hwoXulTAgjSy+OiaLtuCys9VdXLZ3Zy314azaCU3BoWgaMV0eAW/+gprWMXQM1lrlzvwlD/k
 whyy9wGf0AEPpLssLVt9VVxNjo6BIkt6d1pMg6mHsUEVzsFNBFVDXDQBEADNkrQYSREUL4D3
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
 YpsFAmgXUF8FCRaWWyoACgkQG5NDfTtBYptO0w//dlXJs5/42hAXKsk+PDg3wyEFb4NpyA1v
 qmx7SfAzk9Hf6lWwU1O6AbqNMbh6PjEwadKUk1m04S7EjdQLsj/MBSgoQtCT3MDmWUUtHZd5
 RYIPnPq3WVB47GtuO6/u375tsxhtf7vt95QSYJwCB+ZUgo4T+FV4hquZ4AsRkbgavtIzQisg
 Dgv76tnEv3YHV8Jn9mi/Bu0FURF+5kpdMfgo1sq6RXNQ//TVf8yFgRtTUdXxW/qHjlYURrm2
 H4kutobVEIxiyu6m05q3e9eZB/TaMMNVORx+1kM3j7f0rwtEYUFzY1ygQfpcMDPl7pRYoJjB
 dSsm0ZuzDaCwaxg2t8hqQJBzJCezTOIkjHUsWAK+tEbU4Z4SnNpCyM3fBqsgYdJxjyC/tWVT
 AQ18NRLtPw7tK1rdcwCl0GFQHwSwk5pDpz1NH40e6lU+NcXSeiqkDDRkHlftKPV/dV+lQXiu
 jWt87ecuHlpL3uuQ0ZZNWqHgZoQLXoqC2ZV5KrtKWb/jyiFX/sxSrodALf0zf+tfHv0FZWT2
 zHjUqd0t4njD/UOsuIMOQn4Ig0SdivYPfZukb5cdasKJukG1NOpbW7yRNivaCnfZz6dTawXw
 XRIV/KDsHQiyVxKvN73bThKhONkcX2LWuD928tAR6XMM2G5ovxLe09vuOzzfTWQDsm++9UKF a/A=
In-Reply-To: <20251026062831.4045083-7-coiaprant@gmail.com>
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

T24gMjYvMTAvMjAyNSAwNzoyOCwgQ29pYSBQcmFudCB3cm90ZToKPiBUaGUgTmluZVRyaXBvZCBY
MzU2OCB2NCBpcyBhbiBSSzM1NjgtYmFzZWQgU0JDLCBqdXN0IGxpa2UgdGhlIFJLMzU2OC1FVkIu
Cj4gSXQgYWx3YXlzIHVzZXMgc29sZGVyZWQgY29ubmVjdGlvbnMgYmV0d2VlbiB0aGUgWDM1NjhD
VjIgY29yZSBib2FyZCBhbmQgdGhlIFgzNTY4YnY0IElPIGJvYXJkLgo+IAo+IFRoZSBYMzU2OCBi
b2FyZCBoYXMgbXVsdGlwbGUgaGFyZHdhcmUgcmV2aXNpb25zLCBhbmQgd2UgY3VycmVudGx5IHN1
cHBvcnQgdjQuCj4gCj4gU3BlY2lmaWNhdGlvbjoKPiAtIFNvQzogUm9ja0NoaXAgUkszNTY4IEFS
TTY0ICg0IGNvcmVzKQo+IC0gZU1NQzogMTYtMTI4IEdCCj4gLSBSQU06IDItOCBHQgo+IC0gUG93
ZXI6IERDIDEyViAyQQo+IC0gRXRoZXJuZXQ6IDJ4IFlUODUyMVNDIFJHTUlJICgxMC8xMDAvMTAw
MCBNYnBzKQo+IC0gV2lyZWxlc3MgcmFkaW86IDgwMi4xMWIvZy9uL2FjL2F4IGR1YWwtYmFuZAo+
IC0gTEVEOgo+ICAgUG93ZXI6IEFsd2F5c09uCj4gICBVc2VyOiBHUElPCj4gLSBCdXR0b246Cj4g
ICBWT0wrOiBTQVJBREMvMCA8MzVrIMK1Vj4KPiAgIFZPTC06IFNBUkFEQy8wIDw0NTBrIMK1Vj4K
PiAgIFBvd2VyL1Jlc2V0OiBQTUlDIFJLODA5Cj4gLSBDQU4KPiAgIENBTi8xOiA0LXBpbiAoUEgg
Mi4wKQo+IC0gUFdNCj4gICBQV00vNDogQmFja2xpZ2h0IERTSS8wIERTSS8xCj4gICBQV00vNzog
SVIgUmVjZWl2ZXIgW21heSBub3QgaW5zdGFsbF0KPiAtIFVBUlQ6Cj4gICBVQVJULzI6IERlYnVn
IFRUTCAtIDE1MDAwMDAgOE4xICgxLjI1bW0pCj4gICBVQVJULzM6IFRUTCAoUEggMi4wKQo+ICAg
VUFSVC80OiBUVEwgKFBIIDIuMCkKPiAgIFVBUlQvODogQVA2Mjc1UyBCbHVldG9vdGgKPiAgIFVB
UlQvOTogVFRMIChQSCAyLjApCj4gLSBJMkM6Cj4gICBJMkMvMDogUE1JQyBSSzgwOQo+ICAgSTJD
LzE6IFRvdWNoc2NyZWVuIERTSS8wIERTSS8xCj4gICBJMkMvNDogQ2FtZXJhCj4gICBJMkMvNTog
UlRDQDUxIFBDRjg1NjMKPiAtIEkyUzoKPiAgIEkyUy8wOiBtaW5pSERNSSBTb3VuZAo+ICAgSTJT
LzE6IFJLODA5IEF1ZGlvIENvZGVjCj4gICBJMlMvMzogQVA2Mjc1UyBCbHVldG9vdGggU291bmQK
PiAtIFNETU1DOgo+ICAgU0RNTUMvMDogbWljcm9TRCAoVEYpIHNsb3QKPiAgIFNETU1DLzI6IEFQ
NjI3NVMgU0RJTyBXaUZpIGNhcmQKPiAtIENhbWVyYTogMXggQ1NJCj4gLSBWaWRlbzogbWluaUhE
TUkgLyBEU0kwIChNSVBJL0xWRFMpIC8gRFNJMSAoTUlQSS9FRFApCj4gLSBBdWRpbzogbWluaUhE
TUkgLyBNSUMgb24tYm9hcmQgLyBTcGVha2VyIC8gU1BESUYgLyAzLjVtbSBIZWFkcGhvbmVzIC8g
QVA2Mjc1UyBCbHVldG9vdGgKPiAtIFVTQjoKPiAgIFVTQiAyLjAgSE9TVCB4Mgo+ICAgVVNCIDIu
MCBIT1NUIHgzICg0LXBpbikKPiAgIFVTQiAyLjAgT1RHIHgxIChzaGFyZWQgd2l0aCBVU0IgMy4w
IE9URy9IT1NUKSBbc2xvdCBtYXkgbm90IGluc3RhbGxdCj4gICBVU0IgMy4wIEhPU1QgeDEKPiAg
IFVTQiAzLjAgT1RHL0hPU1QgeDEKPiAtIFNBVEE6IDF4IFNBVEEgMy4wIHdpdGggUG93ZXIvNC1w
aW4gW3Nsb3QgbWF5IG5vdCBpbnN0YWxsXQo+IC0gUENJZTogMXggUENJZSAzLjAgeDIgKHg0IGNv
bm5lY3RlcikgW2Nsb2NrL3Nsb3QgbWF5IG5vdCBpbnN0YWxsXQo+IAo+IExpbms6Cj4gLSBodHRw
czovL2FwcGxldHNhcGkuNTJzb2x1dGlvbi5jb20vbWVkaWEvWDM1NjhWNCVFNSVCQyU4MCVFNSU4
RiU5MSVFNiU5RCVCRiVFNyVBMSVBQyVFNCVCQiVCNiVFNiU4OSU4QiVFNSU4NiU4Qy5wZGYKPiAt
IGh0dHBzOi8vYmxvZy5nb3YuY29va2luZy9hcmNoaXZlcy9yZXNlYXJjaC1uaW5ldHJpcG9kLXgz
NTY4LXY0LWFuZC1mbGFzaC5odG1sCj4gCj4gU2lnbmVkLW9mZi1ieTogQ29pYSBQcmFudCA8Y29p
YXByYW50QGdtYWlsLmNvbT4KPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwoKCldoaWxlIGFk
ZGluZyB2ZW5kb3IgcHJlZml4IGNvdWxkIGZhbGwgaW50byBhZGRpbmcgcXVpcmtzIChpdCdzIG5v
dC4uLiksCmJ1dCBob3cgaXMgbmV3IHN1cHBvcnQgc3VwcG9zZWQgdG8gYmUgYnVnZml4IG9yIHF1
aXJrPwoKVGhhdCdzIGRlZmluaXRlbHkgbm90IHJpZ2h0LgoKCkJlc3QgcmVnYXJkcywKS3J6eXN6
dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
