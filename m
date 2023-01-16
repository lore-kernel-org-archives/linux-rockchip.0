Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 359B4C54EBE
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 10:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7StMBv6UPnKQpD8TLXwaVIcaGyzUlUthxZwUd+7SS8=; b=XkCZs2rYL1MaOx
	8D6gG8XtKvIHb0xPut8WWi5stX9I9phXOFtoLExIp1bfBbu0h66lKXBBC6ib6MCAaImr46GOsDpQA
	6epvZDdDQJsWdHO0LNiANTybyIsAb0C8dFSKVFtVbeHoySxLMmqHMUKdJXwqjVLBHiV2lJluy5mB9
	63J/w4jZYQ6h0Em5COQ8BsycllDh2BC1PCuxgygBs4ajEBmPAh7C6/SjvVSJVQo/LzPZ/oGciDzvl
	0jMHR0sDEs/zzu2xTMO50gdC/wBYYL7VrEJmpKyozqGAeG2aNH4vyXWAIBhs+pyU3cMdJzxw5jM5w
	nc3zPooWtoHPe13+l3SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHMij-009ePM-FQ; Mon, 16 Jan 2023 10:28:05 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHMig-009eOQ-3S
	for linux-rockchip@lists.infradead.org; Mon, 16 Jan 2023 10:28:03 +0000
Received: from [192.168.0.192] (unknown [194.146.248.75])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 80C0F6602B33;
	Mon, 16 Jan 2023 10:27:59 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673864880;
	bh=3YLQCWLBDRjQgJbSK/lpCAaa+L3SonN+5HslDLGB3qM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Mlb+R+XkZQ7rJVx4ylunSEEY3pqJ6rmMgXpP5RyVBHZHqv0+77TabesSr8ck1IIjw
	 Ycdoh0WMX7DvIi6cM2jpTHXWPUil+ASzoLG0fAaiKaGgtuIk83T3Di8BlnjBroZ4uP
	 Rt7JMdwlFIU+lSKYnJILJUB4RB/IQKHO9rO6f9BRCWFtNnjYkc86DyqBd86UYG8YCY
	 +Gu7sP9H4yped3+Yn5Iwnbvl6PhIuvnxQgXt2Sx7flNuFaMQqyY4t2sfxhsCECdl5b
	 dzEGo8sTY8gX84ZfJjxrQoL5eYLb1o7TkedgJbiTWmRXjaHBBdv/ZenHOxTPJaTVY6
	 sbP6LWFyR7BPQ==
Message-ID: <4d2347e4-7732-1352-5009-791362596e0b@collabora.com>
Date: Mon, 16 Jan 2023 11:27:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 07/12] staging: media: rkvdec: Add a routine to fetch
 SPS attributes as a callback
Content-Language: en-US
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel-domain <kernel@collabora.com>,
 Robert Beckett <bob.beckett@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
 <20230101-patch-series-v2-6-2-rc1-v2-7-fa1897efac14@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20230101-patch-series-v2-6-2-rc1-v2-7-fa1897efac14@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_022802_379290_D71FB718 
X-CRM114-Status: GOOD (  20.14  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2ViYXN0aWFuLAoKVyBkbml1IDEyLjAxLjIwMjMgb8KgMTM6NTYsIFNlYmFzdGlhbiBGcmlj
a2UgcGlzemU6Cj4gQWRkIGEgY2FsbGJhY2sgZm9yIGVhY2ggY29kZWMgdmFyaWFudCwgdGhhdCBm
ZXRjaGVzIGJhc2ljIGluZm9ybWF0aW9uCj4gbGlrZSByZXNvbHV0aW9uLCBiaXQtZGVwdGggYW5k
IHN1Yi1zYW1wbGluZyBmcm9tIGEgU1BTIHN0cnVjdHVyZS4gVGhpcwo+IGRhdGEgaXMgdXNlZCB0
byB2ZXJpZnkgd2hldGhlciBhIG5ldyBTUFMgc3RydWN0dXJlIGlzIHZhbGlkLgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFNlYmFzdGlhbiBGcmlja2UgPHNlYmFzdGlhbi5mcmlja2VAY29sbGFib3JhLmNv
bT4KPiAtLS0KPiAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgfCAxMCAr
KysrKysrKysrCj4gICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5oIHwgMTAg
KysrKysrKysrKwo+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMgYi9kcml2ZXJz
L3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jCj4gaW5kZXggYTQ2ZjkxODkyNmEyLi5lOGM3
NTBhNzM0M2EgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3Zk
ZWMuYwo+ICsrKyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmMKPiBAQCAt
NTIsNiArNTIsMTYgQEAgc3RhdGljIGludCBya3ZkZWNfZ2V0X3ZhbGlkX2ZtdChzdHJ1Y3Qgcmt2
ZGVjX2N0eCAqY3R4KQo+ICAgCXJldHVybiBjdHgtPmNvZGVkX2ZtdF9kZXNjLT5kZWNvZGVkX2Zt
dHNbMF07Cj4gICB9Cj4gICAKPiArc3RhdGljIGludCBya3ZkZWNfZ2V0X3Nwc19hdHRyaWJ1dGVz
KHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgsIHZvaWQgKnNwcywKPiArCQkJCSAgICAgc3RydWN0IHNw
c19hdHRyaWJ1dGVzICphdHRyaWJ1dGVzKQo+ICt7Cj4gKwljb25zdCBzdHJ1Y3Qgcmt2ZGVjX2Nv
ZGVkX2ZtdF9kZXNjICpjb2RlZF9kZXNjID0gY3R4LT5jb2RlZF9mbXRfZGVzYzsKPiArCj4gKwlp
ZiAoY29kZWRfZGVzYy0+b3BzLT5nZXRfc3BzX2F0dHJpYnV0ZXMpCj4gKwkJcmV0dXJuIGNvZGVk
X2Rlc2MtPm9wcy0+Z2V0X3Nwc19hdHRyaWJ1dGVzKGN0eCwgc3BzLCBhdHRyaWJ1dGVzKTsKPiAr
CXJldHVybiAwOwoKSXQgc2VlbXMgdGhhdCBpZiB0aGVyZSdzIG5vIC0+Z2V0X3Nwc19hdHRyaWJ1
dGVzKCksIHRoZW4gZXZlbiB0aG91Z2gKImF0dHJpYnV0ZXMiIHdvbid0IGJlIGZpbGxlZCBpbiwg
dGhlIHJlc3VsdCBpcyBhIHN1Y2Nlc3MgKGFzIHN1Z2dlc3RlZApieSB0aGUgcmV0dXJuZWQgMCku
IFRoYXQncyBtYXliZSBjb25mdXNpbmcgdG8gcG90ZW50aWFsIHVzZXJzLCBlc3BlY2lhbGx5LApp
ZiB0aGV5IGRvbid0IGUuZy4gbWVtc2V0IHRoZSBhdHRyaWJ1dGVzIHN0cnVjdCB0byB6ZXJvIC0g
dGhlIGZ1bmN0aW9uIHdpbGwKcmVwb3J0ICJzdWNjZXNzIiBidXQgdGhlIHN0cnVjdCB3aWxsIGNv
bnRhaW4gcmFuZG9tIGRhdGEuCgpJbiBQQVRDSCAwOS8xMiB5b3UgY2FsbCB0aGUgaW1wbGVtZW50
YXRpb24gZGlyZWN0bHkgKG5vdCB0aHJvdWdoIHRoZSBvcHMKc3RydWN0KSwgYW5kIHRoZXJlIHlv
dSBhY3R1YWxseSBpZ25vcmUgdGhlIHJldHVybiB2YWx1ZS4KClJlZ2FyZHMsCgpBbmRyemVqCgo+
ICt9Cj4gKwo+ICAgc3RhdGljIGludCBya3ZkZWNfdHJ5X2N0cmwoc3RydWN0IHY0bDJfY3RybCAq
Y3RybCkKPiAgIHsKPiAgIAlzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4ID0gY29udGFpbmVyX29mKGN0
cmwtPmhhbmRsZXIsIHN0cnVjdCBya3ZkZWNfY3R4LCBjdHJsX2hkbCk7Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmggYi9kcml2ZXJzL3N0YWdpbmcv
bWVkaWEvcmt2ZGVjL3JrdmRlYy5oCj4gaW5kZXggZTM1M2E0NDAzZTViLi43YjY3MDJjMzYwZmQg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuaAo+ICsr
KyBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3ZkZWMvcmt2ZGVjLmgKPiBAQCAtNjMsMTAgKzYz
LDIwIEBAIHZiMl90b19ya3ZkZWNfZGVjb2RlZF9idWYoc3RydWN0IHZiMl9idWZmZXIgKmJ1ZikK
PiAgIAkJCSAgICBiYXNlLnZiLnZiMl9idWYpOwo+ICAgfQo+ICAgCj4gK3N0cnVjdCBzcHNfYXR0
cmlidXRlcyB7Cj4gKwl1bnNpZ25lZCBpbnQgd2lkdGg7Cj4gKwl1bnNpZ25lZCBpbnQgaGVpZ2h0
Owo+ICsJdW5zaWduZWQgaW50IGx1bWFfYml0ZGVwdGg7Cj4gKwl1bnNpZ25lZCBpbnQgY2hyb21h
X2JpdGRlcHRoOwo+ICsJdW5zaWduZWQgaW50IHN1YnNhbXBsaW5nOwo+ICt9Owo+ICsKPiAgIHN0
cnVjdCBya3ZkZWNfY29kZWRfZm10X29wcyB7Cj4gICAJaW50ICgqYWRqdXN0X2ZtdCkoc3RydWN0
IHJrdmRlY19jdHggKmN0eCwKPiAgIAkJCSAgc3RydWN0IHY0bDJfZm9ybWF0ICpmKTsKPiAgIAl1
MzIgKCp2YWxpZF9mbXQpKHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgpOwo+ICsJaW50ICgqZ2V0X3Nw
c19hdHRyaWJ1dGVzKShzdHJ1Y3Qgcmt2ZGVjX2N0eCAqY3R4LCB2b2lkICpzcHMsCj4gKwkJCQkg
IHN0cnVjdCBzcHNfYXR0cmlidXRlcyAqYXR0cmlidXRlcyk7Cj4gICAJaW50ICgqc3RhcnQpKHN0
cnVjdCBya3ZkZWNfY3R4ICpjdHgpOwo+ICAgCXZvaWQgKCpzdG9wKShzdHJ1Y3Qgcmt2ZGVjX2N0
eCAqY3R4KTsKPiAgIAlpbnQgKCpydW4pKHN0cnVjdCBya3ZkZWNfY3R4ICpjdHgpOwo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
