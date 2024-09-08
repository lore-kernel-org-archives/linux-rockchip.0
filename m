Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8A90CD4F4C
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Sep 2024 08:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6zsbSMxbnY8Dzyz+sFlpWME6ElDiHPOlcc7Xgjjcyw=; b=Y3uwOMBwIzOJOZ
	rMrIoKkPHJXoRQR/WvCYIhFDNoR5yYU9wbK0nBfUn8pEGO/Mw7ZZfqbRYt03e1F4vH3Gh96WQ3ZTx
	9Rmddan27eDF8AlIdKg7JCakJl7mnG1vewWr4DBDFZp1VpzSq9yEO3z1cZ6UEKe8w8ecfr2ztvoo2
	F8aD2nNki0Ke3PicEb6fbAHCOs0keq/19k6vQA62XpcrRYqqKxm08h20Cj/rpS66vysllGdXGlBcB
	8JPJ0TFlkYXnvj7idvv2BZuwKrR+gS/Rw6PR+GkjwbaNdSnVrWcS7zwvvT1uz4t6ONzrpkcknH5P9
	3sRPKvBxqUSNJ0HvINwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snD5a-0000000GNRR-3KBI;
	Sun, 08 Sep 2024 08:16:06 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snD4F-0000000GNEY-3N9M;
	Sun, 08 Sep 2024 08:14:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E0938A41550;
	Sun,  8 Sep 2024 08:14:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4BE45C4CEC3;
	Sun,  8 Sep 2024 08:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725783281;
	bh=cgiJhlr4nnR/uILZjD9whNKFrbDvLlZZ6dEmFKExB/Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=nUdtfPnGu6eTeN6unjA6pZxdWG/XS9XZFUQrb7gEbB3broTXlo6bDA/15QWSthRnk
	 XH/+22uS6otXO9wBz+DCq+HqW09kyO7PYKcGiWCGv0nVqPSW+RCSVq58IHBNqD58H8
	 VOKuEN55UGhxEmrghl7kpeoCNZRE83dtiVfExkrItThBpi4teZOabqcTsjDGw7XwvW
	 +IfUMlo5YaC7UdDidVlQCGMSjd8zOH7IxUQNkVtofyzeoh1RdMqzrGUpxayFK7tAqp
	 yg3aLD7C+tPOw2XAAzFcDI1cbIWqXW3/svnxllISQqnzZnjcIItNhThZaviF0W46GX
	 Wat38rKxm16ZQ==
Message-ID: <917ac8d8-a483-422c-a408-cdd44793e910@kernel.org>
Date: Sun, 8 Sep 2024 10:14:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/9] mfd: Add driver for Photonicat power management MCU
To: Junhao Xie <bigfoot@classfun.cn>, devicetree@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-leds@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: LKML <linux-kernel@vger.kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Chukun Pan <amadeus@jmu.edu.cn>, Conor Dooley <conor+dt@kernel.org>,
 =?UTF-8?B?R8O8bnRlciBSw7Zjaw==?= <linux@roeck-us.net>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Jean Delvare <jdelvare@suse.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Lee Jones <lee@kernel.org>, Pavel Machek <pavel@ucw.cz>,
 Rob Herring <robh@kernel.org>, Sebastian Reichel <sre@kernel.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>
References: <20240906093630.2428329-2-bigfoot@classfun.cn>
 <de5c9c27-56fa-4163-98e1-9a98400d2408@web.de>
 <43918eda-c4e8-471a-9de4-ea72bb090803@classfun.cn>
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
In-Reply-To: <43918eda-c4e8-471a-9de4-ea72bb090803@classfun.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240908_011443_996166_DA6005E1 
X-CRM114-Status: UNSURE (   8.33  )
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

T24gMDcvMDkvMjAyNCAxNjozMywgSnVuaGFvIFhpZSB3cm90ZToKPiBPbiAyMDI0LzkvNyAxNjo0
NCwgTWFya3VzIEVsZnJpbmcgd3JvdGU6Cj4+IOKApgo+Pj4gKysrIGIvaW5jbHVkZS9saW51eC9t
ZmQvcGhvdG9uaWNhdC1wbXUuaAo+Pj4gQEAgLTAsMCArMSw4NiBAQAo+PiDigKYKPj4+ICsjaWZu
ZGVmIF9QSE9UT05JQ0FUX1BNVV9ICj4+PiArI2RlZmluZSBfUEhPVE9OSUNBVF9QTVVfSAo+PiDi
gKYKPj4KPj4gSSBzdWdnZXN0IHRvIG9taXQgbGVhZGluZyB1bmRlcnNjb3JlcyBmcm9tIHN1Y2gg
aWRlbnRpZmllcnMuCj4+IGh0dHBzOi8vd2lraS5zZWkuY211LmVkdS9jb25mbHVlbmNlL2Rpc3Bs
YXkvYy9EQ0wzNy1DLitEbytub3QrZGVjbGFyZStvcitkZWZpbmUrYStyZXNlcnZlZCtpZGVudGlm
aWVyCj4+Cj4+IFJlZ2FyZHMsCj4+IE1hcmt1cwo+IAo+IFRoYW5rcyBmb3IgeW91ciBzdWdnZXN0
aW9uLCBkb2VzIHRoaXMgbG9vayBiZXR0ZXI/Cj4gI2lmbmRlZiBNRkRfUEhPVE9OSUNBVF9QTVVf
SAo+ICNkZWZpbmUgTUZEX1BIT1RPTklDQVRfUE1VX0gKCjxmb3JtIGxldHRlcj4KRmVlbCBmcmVl
IHRvIGlnbm9yZSBhbGwgY29tbWVudHMgZnJvbSBNYXJrdXMsIHJlZ2FyZGxlc3Mgd2hldGhlciB0
aGUKc3VnZ2VzdGlvbiBpcyByZWFzb25hYmxlIG9yIG5vdC4gVGhpcyBwZXJzb24gaXMgYmFubmVk
IGZyb20gTEtNTCBhbmQKc2V2ZXJhbCBtYWludGFpbmVycyBpZ25vcmUgTWFya3VzJyBmZWVkYmFj
aywgYmVjYXVzZSBpdCBpcyBqdXN0IGEgd2FzdGUKb2YgdGltZS4KPC9mb3JtIGxldHRlcj4KCkJl
c3QgcmVnYXJkcywKS3J6eXN6dG9mCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
