Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A672CE7AA8
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 10:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YWuJjhwiwA5hb2zyQkyw5rY8hA9CCsPAwZFndPqcKwQ=; b=bn/WvygZ3t9UYI
	XJd3nWBdINNeKylqK0OwP0S1ti6w9Zi51Jqa+UHNl7KqLek2KjVHGnqCiHUs/K8vc1fj51VVj2Slh
	QrznNdN+SnJpdyl0nSv8uJb/wHfjuG8PIg3tJdPfrKdog+bjAeLSn5OyJo1gRjEK07DZA61/fyu59
	LvEp9smE48uqVFSSux91UFfaHW4/lppLIn0F5Sy6Ip18YozjoT6Oe8QhkowVj3rghEannJyLDnLHV
	MaKgqXnHCPJnDwMWqQlWA1hPjGjF7fRsFAP+cD39h6x0vv2oJ5SiY2a7lzsUUiQtDcBBDS982Z9we
	p942f0jGOTu13br3aLxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJr5G-0000000C1KC-30yj;
	Fri, 14 Nov 2025 10:31:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJr5A-0000000C1IT-38tC
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 10:31:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 56C0240700;
	Fri, 14 Nov 2025 10:31:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B427CC19421;
	Fri, 14 Nov 2025 10:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763116265;
	bh=XcLb0Pkr7Wtl1rUAEO8Toa2ADaRB8mTcjUnYhfD0PKM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AnoqS+MVybFD0zmVLgTfNFH2mihkg6ModeBI3XQq6CYGS0IevVKYazmYJvMN7PpYZ
	 hHxIQDTquFiyTzItg/uzeVR2+blyJZvz964jJj4mfGxK5uDPsUwQ1Kks3yyXNc0DzZ
	 SaG5OIZIzkf8oq001an5LamWo/TuOPBBqBjYzal8NeFU9t+SaYfFCu2tEjKs18c9ry
	 x8meaCzixrBkpNmPrRw4xR1kMO49mxQFAGtyQ0mMSQm3ZPcwlZmVyyz1mVKTWF8sas
	 0eEKPpjJYiSAs7vivobvOdaC0r8NtYIEc25lz0AoxrECk7KdXEm+ADTSwFmIKk4BYy
	 AAtZrB2T6wsEA==
Message-ID: <5b58dda8-af68-41cd-af23-ec48bfc11d79@kernel.org>
Date: Fri, 14 Nov 2025 11:30:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
To: Dragan Simic <dsimic@manjaro.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
 quentin.schulz@cherry.de, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <A3AD69295D2E2D65+db2dc8bd-054f-4dda-9dd1-3cc0c0feed35@radxa.com>
 <194908a1-f956-ba0a-656f-7b1e8456b51d@manjaro.org> <1942576.CQOukoFCf9@diego>
 <21ea3b50-6000-5202-49cf-685310e6fa18@manjaro.org>
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
In-Reply-To: <21ea3b50-6000-5202-49cf-685310e6fa18@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_023108_829603_6BE7DC2A 
X-CRM114-Status: GOOD (  17.74  )
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

T24gMTQvMTEvMjAyNSAxMToxMiwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhlbGxvIEhlaWtvLAo+
IAo+IE9uIEZyaWRheSwgTm92ZW1iZXIgMTQsIDIwMjUgMTE6MDggQ0VULCBIZWlrbyBTdMO8Ym5l
ciA8aGVpa29Ac250ZWNoLmRlPiB3cm90ZToKPj4gQW0gRnJlaXRhZywgMTQuIE5vdmVtYmVyIDIw
MjUsIDA5OjMyOjI5IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgRHJhZ2Fu
IFNpbWljOgo+Pj4gT24gRnJpZGF5LCBOb3ZlbWJlciAxNCwgMjAyNSAwOToyNCBDRVQsIEZVS0FV
TUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4gd3JvdGU6Cj4+Pj4gT24gMTEvMTQvMjUgMTY6NTEs
IEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4+Pj4+IE9uIDE0LzExLzIwMjUgMDg6NDcsIEZV
S0FVTUkgTmFva2kgd3JvdGU6Cj4+Pj4+PiBPbiAxMS8xNC8yNSAxNjo0MiwgS3J6eXN6dG9mIEtv
emxvd3NraSB3cm90ZToKPj4+Pj4+PiBPbiAxNC8xMS8yMDI1IDA4OjM3LCBGVUtBVU1JIE5hb2tp
IHdyb3RlOgo+Pj4+Pj4+PiBIaSBLcnp5c3p0b2YsCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE9uIDExLzE0
LzI1IDE2OjEyLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4+Pj4+Pj4gT24gMDUvMTEv
MjAyNSAwODowOCwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+Pj4+Pj4+PiBPbiAwNS8x
MS8yMDI1IDA3OjU3LCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+Pj4+Pj4+Pj4+PiBPbiAxMS81LzI1
IDE1OjQzLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4+Pj4+Pj4+Pj4gT24gMDUvMTEv
MjAyNSAwNjoxMywgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4+Pj4+Pj4+Pj4+PiBBZGQgZGV2aWNl
IHRyZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgUmFkeGEgQ001IElPIEJvYXJkLgo+
Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pj4gTGluazogaHR0cHM6Ly9kbC5yYWR4YS5jb20vY201
L3JhZHhhX2NtNV9wcm9kdWN0X2JyaWVmLnBkZgo+Pj4+Pj4+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IEZVS0FVTUkgTmFva2kgPG5hb2tpQHJhZHhhLmNvbT4KPj4+Pj4+Pj4+Pj4+PiBTaWduZWQtb2Zm
LWJ5OiBKb3NlcGggS29ndXQgPGpvc2VwaC5rb2d1dEBnbWFpbC5jb20+Cj4+Pj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+Pj4gV3JvbmcgRENPIGNoYWluLgo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+PiAt
LS0KPj4+Pj4+Pj4+Pj4+PiAgICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9h
cm0vcm9ja2NoaXAueWFtbCB8IDcgKysrKysrKwo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+IE5B
SywgeW91IGp1c3Qgc3RvbGVuIG93bmVyc2hpcCBvZiBhbiBhbHJlYWR5IHBvc3RlZCBwYXRjaC4K
Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4gUmVhZCAiQ2hhbmdlcyBpbiB2NiIgYW5kIHBhdGNoZXM7
IG15IHBhdGNoZXMgYXJlIG5vdCB0aGUgc2FtZSBhcyB2NS4KPj4+Pj4+Pj4+Pj4gWW91ciByZXBs
eSBpcyB0b3RhbGx5IGluYXBwcm9wcmlhdGUuCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBJbmFwcHJv
cHJpYXRlIGlzIHRha2luZyBhdXRob3JzaGlwIG9mIHNvbWVvbmUncyBwYXRjaCwgYmVjYXVzZSB3
ZSBhbGwKPj4+Pj4+Pj4+PiBleHBlY3QgdG8gcHJlc2VydmUgdGhlIG9yaWdpbmFsIGF1dGhvcnNo
aXAuIFRoYXQncyBub3Qgb25seSBiYXNpYwo+Pj4+Pj4+Pj4+IGRlY2VuY3kgYnV0IGFjdHVhbGx5
IGEgc3RhbmRhcmQuCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBBZGRpdGlvbmFsbHksIHJlYWQgSm9z
ZXBoJ3MgcmVwbHkgdGhhdCBoZSB3YW50cyB0byBjb250aW51ZSB0aGUgd29yazoKPj4+Pj4+Pj4+
PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0FNV1NNN2lIdEF4ZXdXNEprUnFSc2lmVm5j
Y3FlRnZpYUNnZU95cHJLRHI5MkZPdXJnQG1haWwuZ21haWwuY29tLwo+Pj4+Pj4+Pj4+Cj4+Pj4+
Pj4+Pj4gWW91IGNsZWFybHkgZG8gbm90IHVuZGVyc3RhbmQgaG93IHRvIGNvbnRpbnVlIHdpdGgg
c29tZW9uZSdzIHdvcmsuCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBJdCBpcyBzdGlsbCBhIE5BSy4K
Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBBbmQgSSBzdGlsbCB3YWl0IGZvciBqdXN0aWZpY2F0aW9uIHdo
eSB5b3UgdG9vayBhdXRob3JzaGlwIG9mIHRoaXMKPj4+Pj4+Pj4+IHBhdGNoLCBiZWNhdXNlIHRv
IG15IGV5ZSB5b3UgY2hhbmdlZCBoZXJlIG5vdGhpbmcuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gU28g
d2hhdCBkaWQgeW91IGNoYW5nZSBIRVJFIHRoYXQgeW91IHRoaW5rIHlvdSBhcmUgdGhlIGF1dGhv
ciBub3c/Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IENoYW5nZXMgaW4gdjY6Cj4+Pj4+Pj4+IChQYXRjaCAx
LzMpCj4+Pj4+Pj4+IC0gRml4IGRlc2NyaXB0aW9uOyAiUmFkeGEgQ001IiBpcyB0aGUgY29ycmVj
dCBuYW1lCj4+Pj4+Pj4KPj4+Pj4+PiBIRVJFLCBpbiB0aGlzIHBhdGNoLiBEb24ndCBwYXN0ZSBt
ZSBodW5kcmVkcyBvZiB1bnJlbGF0ZWQgY29kZS4gV3JpdGUKPj4+Pj4+PiBjb25jaXNlIGFuZCBw
cmVjaXNlIGFuc3dlcnMvY29tbWVudHMuCj4+Pj4+Pgo+Pj4+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvbGludXgtcm9ja2NoaXAvQUUwNzM1QTZDNzk3Q0NGRisxMDQ5NmQ3My03YzBhLTQ4ODQt
OTU2MS0yNDcyMTMwNWEyNGZAcmFkeGEuY29tLwo+Pj4+Pj4KPj4+Pj4+IHwgQnkgdGhlIHdheSwg
YXQgc29tZSBwb2ludCBJIHN3aXRjaGVkIGZyb20gImNvbnRpbnVpbmcgeW91ciB3b3JrIiB0bwo+
Pj4+Pj4gfCAicmVjcmVhdGluZyBhIG5ldyBvbmUgYmFzZWQgb24gbXkgY3VycmVudCB3b3JrLiIg
VGhlIHJlc3VsdHMgb2YgbXkKPj4+Pj4+IHwgY3VycmVudCB3b3JrKCozKSBoYXZlIGNoYW5nZWQg
c2lnbmlmaWNhbnRseS4KPj4+Pj4KPj4+Pj4gU28gbmV4dCB0aW1lIEkgd2lsbCB0YWtlIHlvdXIg
cGF0Y2gsIHlvdXIgY29kZSwgc2F5ICJJIHJlY3JlYXRlZCBpdCIgYW5kCj4+Pj4+IHN1Ym1pdCB1
bmRlciBteSBhdXRob3JzaGlwIGFuZCBmb3IgeW91IGl0IGlzIGZpbmU/Cj4+Pj4KPj4+PiBSZWdh
cmRpbmcgQ001IHBhdGNoZXMsIEknbSBmaW5lLgo+Pj4+Cj4+Pj4+IFBsZWFzZSB0YWtlIEpvc2Vw
aCdzIHBhdGNoIGluc3RlYWQuIFJlYWQgc3VibWl0dGluZyBwYXRjaGVzIGRvYyB0bwo+Pj4+PiB1
bmRlcnN0YW5kIHdoaWNoIG9uZSBtb3JlIHRhZyBoYXMgdG8gYmUgYWRkZWQgd2hlbiBzZW5kaW5n
IHNvbW9lbmUKPj4+Pj4gZWxzZSdzIHdvcmsuCj4+Pj4+Cj4+Pj4+IEluIHRoZSBmdXR1cmUsIEkg
c2luY2VyZWx5IHN1Z2dlc3QgYXZvaWRpbmcgcmUtY3JlYXRpbmcgcGVvcGxlJ3Mgd29yawo+Pj4+
PiBidXQgYnVpbGRpbmcgb24gdG9wLCBiZWNhdXNlIHlvdSBqdXN0IGR1cGxpY2F0ZSB0aGUgZWZm
b3J0Lgo+Pj4+Cj4+Pj4gSSB1bmRlcnN0YW5kIHRoYXQgeW91IGRvbid0IHVuZGVyc3RhbmQgaG93
IEkgbWFkZSBlZmZvcnRzIHRvIGJ1aWxkIG15IAo+Pj4+IHdvcmsgb24gdG9wIG9mIEpvc2VwaCdz
IHBhdGNoZXMuCj4+Pgo+Pj4gTWF5YmUgYSBzb2x1dGlvbiBmb3IgdGhpcyBodWdlIG1lc3MgY291
bGQgYmUgdGhhdCBOYW9raSBzdWJtaXRzCj4+PiB1bm1vZGlmaWVkIHBhdGNoZXMgZnJvbSBKb3Nl
cGggZmlyc3QsIHVzaW5nIHRoZSBzdGFuZGFyZCBwcm9jZWR1cmUKPj4+IGZvciB0aGF0LCBhbmQg
dGhlbiB0aGUgYWRkaXRpb25hbCBwYXRjaChlcykgdGhhdCBpbXByb3ZlIEpvc2VwaCdzCj4+PiB3
b3JrPyAgQWxsIHRoYXQgaW4gdGhlIHNhbWUgc2VyaWVzLgo+Pgo+PiBUaGVyZSBpcyBhbHNvIENv
LWRldmVsb3BlZC1ieSBhcyBhbiBvcHRpb24uCj4gCj4gQWgsIHRoYXQncyB3aGF0IHRoZSBhYm92
ZS1kZXNjcmliZWQgb3B0aW9uICMxIGludm9sdmVzLCBidXQgaXQgYWxzbyAKPiByYWlzZXMgc29t
ZSBwb3NzaWJsZSBjb25jZXJucywgZGVzY3JpYmVkIGluIG9uZSBvZiBteSByZXNwb25zZXMuIFsx
XQoKVGhlcmUgYXJlIG5vIGNvbmNlcm5zIHRvIGJlIHJhaXNlZC4gUGxlYXNlIHJlYWQgRENPLiBU
aGUgb3JpZ2luYWwgYXV0aG9yCkdBVkUgY2VydGlmaWVkIHdoYXQgaXMgbmVjZXNzYXJ5LCB0aHVz
IGFueSBwZXJzb24gdGFraW5nIHRoaXMgd29yawphbHJlYWR5IGNhbiB5b3UgdGhhdCBjZXJ0aWZp
Y2F0aW9uLiBZb3UgcmFpc2VkIHNvbWUgdW5jZXJ0YWludHkgIkknbSBub3QKc3VyZSBob3cgZmFp
ciBpcyBpdCBmb3Igc29tZW9uZSB0byBiZWNvbWUgcmVzcG9uc2libGUiIHdoaWNoIGlzIGp1c3Qg
bm90CnJpZ2h0IGhlcmUuIEl0IGlzIGNvbXBsZXRlbHkgZmFpciBhbmQgY29tcGxldGVseSBjb3Jy
ZWN0IGZyb20gRENPIHBvaW50Cm9mIHZpZXcsIGJlY2F1c2UgdGhlIGNlcnRpZmljYXRpb24gd2Fz
IGFscmVhZHkgcHJvdmlkZWQuIEFsc28gZnJvbQpjZXJ0aWZpY2F0aW9uIHBvaW50LCB0aGVyZSBp
cyBubyAid2Vha2VyIiBmb3JtLiBFaXRoZXIgeW91IGNlcnRpZnkgb3Igbm90LgoKQmVzdCByZWdh
cmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
