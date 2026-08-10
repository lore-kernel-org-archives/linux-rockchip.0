Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B17E1C5AD4E
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 05:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3PXPBNQy9CDhRyEsJaxNhDdSRDsqGUa+GdvSZ1UcMQ=; b=fRo9Hpvv1k3pi+
	fVM8kzCztm7Y1Z5DS2js+Se2uLtHpOv7j4eeg+jL16kQEksfNFMjjwR/k3OfGNk/YULPQdy3Xc5T3
	k7pZF8BaeC3eGQYLK6MvlkQg0C4D7xIJKjcxraNGSN3wT+WjXQjlrVZnFCPewx4JLqWDT8FlYxvd9
	ezJUox314nQf9ho098r70FZr/dgv773EGJIF/WMyZFcWT7pHaYQdG1z1zhAbaMG0HusXDVryvzz77
	xCvkGPREb0O63335QBh1f/Mj7ps+HMVkWl0Ze44MDlPBc6DfLLAemf3Emwm48y90WUQuFwFzlDvb7
	bv/5Ms1ph/WAIARAZcdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtIrh-0000000B411-1mbz;
	Mon, 10 Aug 2026 05:48:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtIrf-0000000B40n-1dfw;
	Mon, 10 Aug 2026 05:47:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7F98D60052;
	Mon, 10 Aug 2026 05:47:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 183E61F000E9;
	Mon, 10 Aug 2026 05:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786340878;
	bh=e12Vml8kySCL2YtJfN+x2fzhchm8Vnhyh0hOFJAhkzU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=WVIVsZo346XIwjlaw/M5hRU2DuX8wfE1uXs8bltqgGaowq5Vz/bSFr4wVfsYOcwia
	 lMto+kwX9rrILApNvDQ5MOUwSgzZdeB61XTOaXxNJSmgZTk1NOuHoXCu2CZcuT8oaH
	 JqI+wnR77R3BILdMnPS3b6LyT1yOQglrnk9MU1npykurH2i7ISOgUJWVCTxaYR+dph
	 7gR9F7OHd+7vPhPThPUzgs74f1xeHrDnZzFu/jX0skKQAgEDKuV0A1ezgh7a0S2QVT
	 hKZ5WP+NFUlMELj/sy6+xCbG4wnZD5sLIq2wWqdOktgGpQNLSRG0XZyFiuDqtG3UoE
	 dASOCsYLFWuMw==
Message-ID: <63bbce33-9427-4585-a1bb-dc4af05e981f@kernel.org>
Date: Mon, 10 Aug 2026 07:47:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: defconfig: enable Rockchip Multimedia drivers
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Detlev Casanova <detlev.casanova@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@collabora.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20260808-rockchip-defconfig-additions-v3-1-0ed67877e94d@collabora.com>
 <5738059.NG923GbCHz@diego>
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
In-Reply-To: <5738059.NG923GbCHz@diego>
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

T24gMDgvMDgvMjAyNiAxNjowNiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gU2Ftc3RhZywg
OC4gQXVndXN0IDIwMjYsIDAyOjQyOjI2IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNj
aHJpZWIgU2ViYXN0aWFuIFJlaWNoZWw6Cj4+IEVuYWJsZSBtdWx0aW1lZGlhIHJlbGF0ZWQgZHJp
dmVycyB1c2VkIGJ5IHRoZSBSYWR4YSBST0NLIDVCICh1c2VkIGFzIGFuCj4+IGV4YW1wbGUsIHRo
ZSBjb25maWcgb3B0aW9ucyBhcmUgcmVsZXZhbnQgZm9yIG1vc3QgUm9ja2NoaXAgUkszNTg4IGFu
ZAo+PiBSSzM1NzYgYm9hcmRzKSwgc28gdGhhdCBhbGwgaGFyZHdhcmUgaXMgc3VwcG9ydGVkIGJ5
IHRoZSBkZWZhdWx0IGNvbmZpZy4KPj4KPj4gICogU3lub3BzeXMgTUlQSSBDU0kyUlggLSBSSzM1
ODggQ1NJMiBDb250cm9sbGVyCj4+ICAqIFJLVkRFQyAtIFJLMzU4OC9SSzM1NzYgdmlkZW8gZGVj
b2RlciBmb3IgSC4yNjQgYW5kIEguMjY1Cj4+ICAqIFNvbnkgSU1YNDE1IC0gU2Vuc29yIHVzZWQg
YnkgdGhlIFJhZHhhIENhbSA0SyBtb2R1bGUKPj4gICogUm9ja2V0IC0gUkszNTg4IE5QVSBkcml2
ZXIKPj4gICogVmVyaXNpbGljb24gSU9NTVUgLSBJT01NVSB1c2VkIGJ5IFJLMzU4OCBBVjEgdmlk
ZW8gZGVjb2Rlcgo+PiAgKiBJbm5vc2lsaWNvbiBDU0kgRC1QSFkgLSBSSzM1ODggQ1NJIFBIWSAo
b25lIG9mIHRoZW0pCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJh
c3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IAo+IEknbSBub3Qgc3VyZSB3aGF0IHRoZSBh
Y3R1YWwgcnVsZSBmb3IgZGVmY29uZmlnIGNoYW5nZXMgaXMuCj4gCj4gSW4gc29tZSBwYXN0IHRo
cmVhZCBJIHJlbWVtYmVyIChob3BlZnVsbHkgY29ycmVjdGx5KSBLcnp5c3p0b2Ygc2F5aW5nCj4g
dGhhdCB0aGUgYXJtNjQgZGVmY29uZmlnIGlzIG5vdCBzdXBwb3NlZCB0byBiZSBhIGRpc3Ryby1j
b25maWcsIHNvCj4gZW5hYmxpbmcgZWFjaCBhbmQgZXZlcnkgZHJpdmVyIHdhcyBub3QgdGhlIGdv
YWwuCj4gCj4gT24gdGhlIG90aGVyIGhhbmQsIGhlIGRpZCBub3QgcmVwZWF0IHRoYXQgaW4gaGlz
IHJlcGx5IHRvIHlvdXIgdjEgOy0pIC4KPiAKPiBXZSdyZSBhdCAtcmM3IHRvbW9ycm93LCBzbyBp
dCdkIGJlIDcuNCBtYXRlcmlhbCBhbnl3YXksIHNvIGVub3VnaCB0aW1lCj4gdG8gZ2V0ICJjb21w
bGFpbnRzIiBJIGd1ZXNzIDstKSAuCgpJIGJlbGlldmUgZGVmY29uZmlnIGlzIHN0aWxsIG1vc3Rs
eSBmb3IgdXMgYW5kIHRoZSBwYXRjaCBmaXRzIHRoaXMKcHVycG9zZSAtIHlvdSBuZWVkIHRoZXNl
IHRvIGZ1bGx5IHVzZSBtZW50aW9uZWQgdXBzdHJlYW0gaGFyZHdhcmUuCgpJIGxlYXJudCB0aGF0
IGZldyBkaXN0cm9zIChJIHRoaW5rIEZlZG9yYSkgdXNlIGRlZmNvbmZpZyBkaXJlY3RseQppbnN0
ZWFkIG9mIGN1c3RvbWl6aW5nIGl0IGxpa2UgVWJ1bnR1IGRvZXMsIHNvIGFueXdheSBtYXliZSB3
ZSBzaG91bGQKZW5hYmxlIGV2ZXJ5dGhpbmcgZm9yIGdpdmVuIGhhcmR3YXJlLgoKQmVzdCByZWdh
cmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
