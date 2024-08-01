Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43CDEC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 18:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R27jMT3f/06Mbt26vH9sp9SyXeH7yBglqywxW7PRtGY=; b=Lyg1eAhZVPIcud
	nizWK423s0+LMIKkzQGGxMm0zyhLiMjg0xDKpIk+yJX2Ifn7xQ2AyVdeU75DgYDe0Fciwl36WfD8e
	lFbCiFFEUQ9FNAROaC4tyrFZTwRbyNVDtHJC1lpmQCZqAmjCf1Z7Maw16Uu+RguP1C02gOXu/3UQt
	oGQOBCjsOYimJdHD/oloMiyDfjpZn4njuR9WeSIl1qxY9U+E+pdaaq1YmQybMCt16o3CjLIYSZWqi
	/i49yfTYeSv3Ia8cfWu8liYI79hCqWs9RrFTMiBdh80W33xPE+0kPgmragT93EvlThp044LYPP3j/
	mSV7wOwwnxcPQVZRAfLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZaAr-00000006Lb5-0n1i;
	Thu, 01 Aug 2024 18:05:13 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZaAm-00000006LYd-2bKO
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Aug 2024 18:05:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722535507;
	bh=JQaGnDvmk/eH49aIh6Pmq8xbttq3olRoqsnPrZXpSXU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=HOnLLR9Xp9B+bYNE4eGIP+B+t7dahIZmxw6U7kafUV/U0g0oMR6q05CRIwB9vq2/D
	 L2Itl1pYxo4M9x/j0UkIcSgpFvScjnK8cMbnl2sm5LwwtqSGaVxpKvbOjEK2qjtepY
	 bdoOznSIUUzKsG1YEuDUGawfulvR9Y+0AvMu7olzGpw4wMG5FKp+CufnztS4N52H5I
	 KBjlvDj1ZlxvvQ/6LgBQqneQVW0T3GXre3xNEIOHwen2emdwbdyt53uZREgw2WMi4Z
	 CCjf3ESRu+9v9ggMLsEfoOxF5dVLFUk+jTFD1LCAbaQtSXEYt2M7kda3qGzYvHN8dr
	 5L4kH+UJWuMXA==
Received: from [100.109.49.129] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: dmitry.osipenko)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5F38437804C8;
	Thu,  1 Aug 2024 18:05:06 +0000 (UTC)
Message-ID: <20c5ee69-3510-4c15-aa40-6d61c64d8ef1@collabora.com>
Date: Thu, 1 Aug 2024 21:05:03 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/1] mfd: rk8xx: Fix shutdown handler
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Lee Jones <lee@kernel.org>, Mark Brown <broonie@kernel.org>,
 Urja <urja@urja.dev>, linux-rockchip@lists.infradead.org,
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com, stable@vger.kernel.org
References: <20240730180903.81688-1-sebastian.reichel@collabora.com>
 <c4d6da27-3b23-4a96-bad0-17f2392287ef@collabora.com>
 <22969419.5W6oEpyPa8@diego>
 <wad5fdqxwoq2wy35wbhwk5jinpgyz6xmxnt5aqddci777qctsd@qay2lr2ubkws>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <wad5fdqxwoq2wy35wbhwk5jinpgyz6xmxnt5aqddci777qctsd@qay2lr2ubkws>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_110508_877107_4DD3BDC9 
X-CRM114-Status: GOOD (  20.26  )
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

T24gOC8xLzI0IDIwOjUyLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90ZToKPiBIaSwKPiAKPiBPbiBU
aHUsIEF1ZyAwMSwgMjAyNCBhdCAwNzo0MTo0NFBNIEdNVCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6
Cj4+IEFtIERvbm5lcnN0YWcsIDEuIEF1Z3VzdCAyMDI0LCAxNzozMTozMyBDRVNUIHNjaHJpZWIg
RG1pdHJ5IE9zaXBlbmtvOgo+Pj4gT24gNy8zMC8yNCAyMTowNSwgU2ViYXN0aWFuIFJlaWNoZWwg
d3JvdGU6Cj4+Pj4gKwkvKgo+Pj4+ICsJICogQ3VycmVudGx5IHRoZSBSb2NrY2hpcCBTUEkgZHJp
dmVyIGFsd2F5cyBzbGVlcHMgd2hlbiBkb2luZyBTUEkKPj4+PiArCSAqIHRyYW5zZmVycy4gVGhp
cyBpcyBub3QgYWxsb3dlZCBpbiB0aGUgU1lTX09GRl9NT0RFX1BPV0VSX09GRgo+Pj4+ICsJICog
aGFuZGxlciwgc28gd2UgYXJlIHVzaW5nIHRoZSBwcmVwYXJlIGhhbmRsZXIgYXMgYSB3b3JrYXJv
dW5kLgo+Pj4+ICsJICogVGhpcyBzaG91bGQgYmUgcmVtb3ZlZCBvbmNlIHRoZSBSb2NrY2hpcCBT
UEkgZHJpdmVyIGhhcyBiZWVuCj4+Pj4gKwkgKiBhZGFwdGVkLgo+Pj4+ICsJICovCj4+Pj4gKwlp
ZiAoaXNfc3BpKQo+Pj4+ICsJCXB3cl9vZmZfbW9kZSA9IFNZU19PRkZfTU9ERV9QT1dFUl9PRkZf
UFJFUEFSRTsKPj4+Cj4+PiBUaGlzIHByZXZlbnRzIHRoZSBzeXNjb3JlX3NodXRkb3duKCkgc3Rl
cCBmcm9tIGV4ZWN1dGlvbi4gSXMgaXQgYmV0dGVyCj4+PiB0aGFuIG5vdCBwb3dlcmluZyBvZmY/
Cj4+Pgo+Pj4gSSdkIHJhdGhlciBza2lwIHJlZ2lzdHJhdGlvbiBvZiB0aGUgcG93ZXItb2ZmIGhh
bmRsZXJzIGluIGEgY2FzZSBvZiBTUEkgOikKPj4KPj4gT3IgYmxhc3BoZW1vdXMgdGhvdWdodCwg
d2UgY291bGQgbGl2ZSB3aXRoIHRoZSB3YXJuaW5nLXNwbGFzaCBmb3IgYSBiaXQuCj4+Cj4+IEZy
b20gU2ViYXN0aWFuJ3MgbG9nIEkgYXNzdW1lIHRoZSBXQVJOSU5HIGNvbWVzIGZyb20gdGhlCj4+
IHdhaXRfZm9yX2NvbXBsZXRpb24oKSBpbiBzcGlfdHJhbnNmZXJfd2FpdCgpLCBhbmQgSSBndWVz
cyB0aGUgdHJhbnNmZXIKPj4gd2l0aCB0aGUgcG93ZXJvZmYgY29tbWFuZCBpdHNlbGYgd2lsbCBh
bHJlYWR5IGhhdmUgaGFwcGVuZWQgdGhlbj8KPj4KPj4gU28gdGhlIGRldmljZSBpcyBtb3N0IGxp
a2VseSBzdGlsbCBwb3dlcmVkIG9mZiBpbiB0aGF0IGNhc2U/Cj4+IE5vdCBzdXJlIGhvdyBtdWNo
IG9mICJiYWQgdGFzdGUiIHRoYXQgdGhvdWdodCBpcyB0aG91Z2ggOy0pCj4gCj4gWWVzLCBhcyBm
YXIgYXMgSSBjb3VsZCBzZWUgaXQgd29ya3MgZmluZSAodGhlIHNwbGFzaCBmcm9tIHRoZSBjb21t
aXQKPiBtZXNzYWdlIGlzIGZyb20gZXhhY3RseSB0aGlzIHNvbHV0aW9uIHJ1bm5pbmcgb24gUksz
NTg4IEVWQjEgYW5kIHRoZQo+IGJvYXJkIHdhcyBwb3dlcmVkIG9mZiBwcm9wZXJseSBhcyBmYXIg
YXMgSSBjYW4gdGVsbCkuIEJ1dCBpdCBmZWx0IGEKPiBiaXQgc3RyYW5nZSB0byBrbm93aW5nbHkg
aW50cm9kdWNlIGFuIGVycm9yIHNwbGFzaCBpbiBhIGZpeCBpbnRlbmRlZAo+IGZvciBiZWluZyBi
YWNrcG9ydGVkIHRvIHRoZSBzdGFibGUgdHJlZXMsIHNvIEkgc3dpdGNoZWQgdG8gdGhlIGN1cnJl
bnQKPiB2ZXJzaW9uIGJlZm9yZSBzZW5kaW5nLgoKQ2FuIHlvdSBhZGQgYSBidXN5LXdhaXQgdG8g
dGhlIFNQSSBkcml2ZXIgVFggZnVuYyBmb3IgdGhlIGNhc2Ugd2hlcmUKaXQncyBpbnZva2VkIHdp
dGggYSBkaXNhYmxlZCBpbnRlcnJ1cHRzPyBUaGF0IGNvdWxkIGJlIGEgYmV0dGVyCndvcmthcm91
bmQsIHNpbGVuY2luZyB0aGUgd2FybmluZyBhbmQga2VlcGluZyBwb3dlci1vZmYgd29ya2luZyBw
cm9wZXJseS4KCi0tIApCZXN0IHJlZ2FyZHMsCkRtaXRyeQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
